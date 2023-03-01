import { useLocalization } from '@fluent/react';
import classNames from 'classnames';
import { IPv4 } from 'ip-num/IPNumber';
import { useEffect, useMemo, useState } from 'react';
import { useForm } from 'react-hook-form';
import { useParams } from 'react-router-dom';
import { AssignTrackerRequestT, BodyPart, RpcMessage } from 'solarxr-protocol';
import { useConfig } from '../../hooks/config';
import { useDebouncedEffect } from '../../hooks/timeout';
import { useTrackerFromId } from '../../hooks/tracker';
import { useWebsocketAPI } from '../../hooks/websocket-api';
import {
  getYawInDegrees,
  MountingOrientationDegreesToQuatT,
} from '../../maths/quaternion';
import { ArrowLink } from '../commons/ArrowLink';
import { Button } from '../commons/Button';
import { CheckBox } from '../commons/Checkbox';
import { FootIcon } from '../commons/icon/FootIcon';
import { WarningIcon } from '../commons/icon/WarningIcon';
import { Input } from '../commons/Input';
import { Typography } from '../commons/Typography';
import { MountingSelectionMenu } from '../onboarding/pages/mounting/MountingSelectionMenu';
import { IMUVisualizerWidget } from '../widgets/IMUVisualizerWidget';
import { SingleTrackerBodyAssignmentMenu } from './SingleTrackerBodyAssignmentMenu';
import { TrackerCard } from './TrackerCard';

export const rotationToQuatMap = {
  FRONT: 180,
  LEFT: 90,
  RIGHT: -90,
  BACK: 0,
};

const rotationsLabels = {
  [rotationToQuatMap.BACK]: 'tracker-rotation-back',
  [rotationToQuatMap.FRONT]: 'tracker-rotation-front',
  [rotationToQuatMap.LEFT]: 'tracker-rotation-left',
  [rotationToQuatMap.RIGHT]: 'tracker-rotation-right',
};

export function TrackerSettingsPage() {
  const { l10n } = useLocalization();
  const { config } = useConfig();

  const { sendRPCPacket } = useWebsocketAPI();
  const [firstLoad, setFirstLoad] = useState(false);
  const [selectRotation, setSelectRotation] = useState<boolean>(false);
  const [selectBodypart, setSelectBodypart] = useState<boolean>(false);
  const { trackernum, deviceid } = useParams<{
    trackernum: string;
    deviceid: string;
  }>();
  const { control, watch, reset, handleSubmit } = useForm<{
    trackerName: string | null;
    allowDriftCompensation: boolean | null;
  }>({
    defaultValues: {
      trackerName: null,
      allowDriftCompensation: null,
    },
    reValidateMode: 'onSubmit',
  });
  const { trackerName, allowDriftCompensation } = watch();

  const tracker = useTrackerFromId(trackernum, deviceid);

  const onDirectionSelected = (mountingOrientationDegrees: number) => {
    if (!tracker) return;

    const assignreq = new AssignTrackerRequestT();

    assignreq.mountingOrientation = MountingOrientationDegreesToQuatT(
      mountingOrientationDegrees
    );
    assignreq.bodyPosition = tracker?.tracker.info?.bodyPart || BodyPart.NONE;
    assignreq.trackerId = tracker?.tracker.trackerId;
    if (allowDriftCompensation != null)
      assignreq.allowDriftCompensation = allowDriftCompensation;
    sendRPCPacket(RpcMessage.AssignTrackerRequest, assignreq);
    setSelectRotation(false);
  };

  const onRoleSelected = (role: BodyPart) => {
    if (!tracker) return;

    const assignreq = new AssignTrackerRequestT();
    assignreq.bodyPosition = role;
    assignreq.trackerId = tracker?.tracker.trackerId;
    if (allowDriftCompensation != null)
      assignreq.allowDriftCompensation = allowDriftCompensation;
    sendRPCPacket(RpcMessage.AssignTrackerRequest, assignreq);
    setSelectBodypart(false);
  };

  const currRotationDegrees = useMemo(() => {
    return tracker?.tracker.info?.mountingOrientation
      ? getYawInDegrees(tracker?.tracker.info?.mountingOrientation)
      : rotationToQuatMap.FRONT;
  }, [tracker?.tracker.info?.mountingOrientation]);

  const updateTrackerSettings = () => {
    if (!tracker) return;
    if (allowDriftCompensation == null) return;
    if (
      trackerName == tracker.tracker.info?.customName &&
      allowDriftCompensation == tracker.tracker.info?.allowDriftCompensation
    )
      return;
    const assignreq = new AssignTrackerRequestT();
    assignreq.bodyPosition = tracker?.tracker.info?.bodyPart || BodyPart.NONE;
    assignreq.mountingOrientation =
      MountingOrientationDegreesToQuatT(currRotationDegrees);

    assignreq.displayName = trackerName;
    assignreq.trackerId = tracker?.tracker.trackerId;
    assignreq.allowDriftCompensation = allowDriftCompensation;
    sendRPCPacket(RpcMessage.AssignTrackerRequest, assignreq);
  };

  const onSettingsSubmit = () => {
    updateTrackerSettings();
  };

  useDebouncedEffect(
    () => {
      updateTrackerSettings();
    },
    [trackerName],
    1000
  );

  useEffect(() => {
    updateTrackerSettings();
  }, [allowDriftCompensation]);

  useEffect(() => {
    if (tracker && !firstLoad) setFirstLoad(true);
  }, [tracker, firstLoad]);

  useEffect(() => {
    if (firstLoad) {
      reset({
        trackerName: tracker?.tracker.info?.customName as string | null,
        allowDriftCompensation: tracker?.tracker.info?.allowDriftCompensation,
      });
    }
  }, [firstLoad]);

  return (
    <form
      className="h-full overflow-y-auto"
      onSubmit={handleSubmit(onSettingsSubmit)}
    >
      <SingleTrackerBodyAssignmentMenu
        isOpen={selectBodypart}
        onClose={() => setSelectBodypart(false)}
        onRoleSelected={onRoleSelected}
      ></SingleTrackerBodyAssignmentMenu>
      <MountingSelectionMenu
        isOpen={selectRotation}
        onClose={() => setSelectRotation(false)}
        onDirectionSelected={onDirectionSelected}
      ></MountingSelectionMenu>
      <div className="flex gap-2 md:h-full max-md:flex-wrap md:flex-row ">
        <div className="flex flex-col w-full md:max-w-xs gap-2">
          {tracker && (
            <TrackerCard
              bg={'bg-background-70'}
              device={tracker?.device}
              tracker={tracker?.tracker}
              shakeHighlight={false}
            ></TrackerCard>
          )}
          {/* <div className="flex flex-col bg-background-70 p-3 rounded-lg gap-2">
            <Typography bold>Firmware version</Typography>
            <div className="flex gap-2">
              <Typography color="secondary">
                {tracker?.device?.hardwareInfo?.firmwareVersion}
              </Typography>
              <Typography color="secondary">-</Typography>
              <Typography color="text-accent-background-10">
                Up to date
              </Typography>
            </div>
            <Button variant="primary" disabled>
              Update now
            </Button>
          </div> */}
          <div className="flex flex-col bg-background-70 p-3 rounded-lg gap-2">
            <div className="flex justify-between">
              <Typography color="secondary">
                {l10n.getString('tracker-infos-manufacturer')}
              </Typography>
              <Typography>
                {tracker?.device?.hardwareInfo?.manufacturer}
              </Typography>
            </div>
            <div className="flex justify-between">
              <Typography color="secondary">
                {l10n.getString('tracker-infos-display_name')}
              </Typography>
              <Typography>{tracker?.tracker.info?.displayName}</Typography>
            </div>
            <div className="flex justify-between">
              <Typography color="secondary">
                {l10n.getString('tracker-infos-custom_name')}
              </Typography>
              <Typography>
                {tracker?.tracker.info?.customName || '--'}
              </Typography>
            </div>
            <div className="flex justify-between">
              <Typography color="secondary">
                {l10n.getString('tracker-infos-url')}
              </Typography>
              <Typography>
                udp://
                {IPv4.fromNumber(
                  tracker?.device?.hardwareInfo?.ipAddress?.addr || 0
                ).toString()}
              </Typography>
            </div>
            <div className="flex justify-between">
              <Typography color="secondary">
                {l10n.getString('tracker-infos-version')}
              </Typography>
              <Typography>
                {tracker?.device?.hardwareInfo?.firmwareVersion || '--'}
              </Typography>
            </div>
            <div className="flex justify-between">
              <Typography color="secondary">
                {l10n.getString('tracker-infos-hardware_rev')}
              </Typography>
              <Typography>
                {tracker?.device?.hardwareInfo?.hardwareRevision || '--'}
              </Typography>
            </div>
          </div>
          {tracker?.tracker && config?.debug && (
            <IMUVisualizerWidget
              tracker={tracker?.tracker}
            ></IMUVisualizerWidget>
          )}
        </div>
        <div className="flex flex-col flex-grow  bg-background-70 rounded-lg p-5 gap-3">
          <ArrowLink to="/">
            {l10n.getString('tracker-settings-back')}
          </ArrowLink>
          <Typography variant="main-title">
            {l10n.getString('tracker-settings-title')}
          </Typography>
          <div className="flex flex-col gap-2 w-full mt-3">
            <Typography variant="section-title">
              {l10n.getString('tracker-settings-assignment_section')}
            </Typography>
            <Typography color="secondary">
              {l10n.getString(
                'tracker-settings-assignment_section-description'
              )}
            </Typography>
            <div className="flex justify-between bg-background-80 w-full p-3 rounded-lg">
              <div className="flex gap-3 items-center">
                {tracker?.tracker.info?.bodyPart !== BodyPart.NONE && (
                  <FootIcon></FootIcon>
                )}
                {tracker?.tracker.info?.bodyPart === BodyPart.NONE && (
                  <WarningIcon className="text-yellow-300" />
                )}
                <Typography
                  color={classNames({
                    'text-yellow-300':
                      tracker?.tracker.info?.bodyPart === BodyPart.NONE,
                  })}
                >
                  {l10n.getString(
                    'body_part-' +
                      BodyPart[tracker?.tracker.info?.bodyPart || BodyPart.NONE]
                  )}
                </Typography>
              </div>
              <div className="flex">
                <Button
                  variant="secondary"
                  onClick={() => setSelectBodypart(true)}
                >
                  {l10n.getString('tracker-settings-assignment_section-edit')}
                </Button>
              </div>
            </div>
          </div>
          {tracker?.tracker.info?.isImu && (
            <div className="flex flex-col gap-2 w-full mt-3">
              <Typography variant="section-title">
                {l10n.getString('tracker-settings-mounting_section')}
              </Typography>
              <Typography color="secondary">
                {l10n.getString(
                  'tracker-settings-mounting_section-description'
                )}
              </Typography>
              <div className="flex justify-between bg-background-80 w-full p-3 rounded-lg">
                <div className="flex gap-3 items-center">
                  <FootIcon></FootIcon>
                  <Typography>
                    {l10n.getString(rotationsLabels[currRotationDegrees])}
                  </Typography>
                </div>
                <div className="flex">
                  <Button
                    variant="secondary"
                    onClick={() => setSelectRotation(true)}
                  >
                    {l10n.getString('tracker-settings-mounting_section-edit')}
                  </Button>
                </div>
              </div>
            </div>
          )}
          {tracker?.tracker.info?.isImu && (
            <div className="flex flex-col gap-2 w-full mt-3">
              <Typography variant="section-title">
                {l10n.getString('tracker-settings-drift_compensation_section')}
              </Typography>
              <Typography color="secondary">
                {l10n.getString(
                  'tracker-settings-drift_compensation_section-description'
                )}
              </Typography>
              <div className="flex">
                <CheckBox
                  variant="toggle"
                  outlined
                  name="allowDriftCompensation"
                  control={control}
                  label={l10n.getString(
                    'tracker-settings-drift_compensation_section-edit'
                  )}
                />
              </div>
            </div>
          )}
          <div className="flex flex-col gap-2 w-full mt-3">
            <Typography variant="section-title">
              {l10n.getString('tracker-settings-name_section')}
            </Typography>
            <Typography color="secondary">
              {l10n.getString('tracker-settings-name_section-description')}
            </Typography>
            <Input
              placeholder={l10n.getString(
                'tracker-settings-name_section-placeholder'
              )}
              type="text"
              name="trackerName"
              control={control}
              autocomplete="false"
              rules={undefined}
              label="Tracker name"
            ></Input>
          </div>
        </div>
      </div>
    </form>
  );
}
