import { useLocalization } from '@fluent/react';
import classNames from 'classnames';
import { useEffect, useState } from 'react';
import { useNavigate } from 'react-router-dom';
import {
  RpcMessage,
  StartWifiProvisioningRequestT,
  StopWifiProvisioningRequestT,
  WifiProvisioningStatus,
  WifiProvisioningStatusResponseT,
} from 'solarxr-protocol';
import { useLayout } from '../../../hooks/layout';
import { useOnboarding } from '../../../hooks/onboarding';
import { useTrackers } from '../../../hooks/tracker';
import { useWebsocketAPI } from '../../../hooks/websocket-api';
import { ArrowLink } from '../../commons/ArrowLink';
import { Button } from '../../commons/Button';
import { LoaderIcon } from '../../commons/icon/LoaderIcon';
import { TipBox } from '../../commons/TipBox';
import { Typography } from '../../commons/Typography';
import { TrackerCard } from '../../tracker/TrackerCard';

const BOTTOM_HEIGHT = 80;

const statusLabelMap = {
  [WifiProvisioningStatus.NONE]:
    'onboarding-connect_tracker-connection_status-none',
  [WifiProvisioningStatus.SERIAL_INIT]:
    'onboarding-connect_tracker-connection_status-serial_init',
  [WifiProvisioningStatus.PROVISIONING]:
    'onboarding-connect_tracker-connection_status-provisioning',
  [WifiProvisioningStatus.CONNECTING]:
    'onboarding-connect_tracker-connection_status-connecting',
  [WifiProvisioningStatus.LOOKING_FOR_SERVER]:
    'onboarding-connect_tracker-connection_status-looking_for_server',
  [WifiProvisioningStatus.DONE]:
    'onboarding-connect_tracker-connection_status-done',
  [WifiProvisioningStatus.CONNECTION_ERROR]:
    'onboarding-connect_tracker-connection_status-connection_error',
  [WifiProvisioningStatus.COULD_NOT_FIND_SERVER]:
    'onboarding-connect_tracker-connection_status-could_not_find_server',
};

export function ConnectTrackersPage() {
  const { l10n } = useLocalization();
  const { layoutHeight, ref } = useLayout<HTMLDivElement>();
  const { trackers, useConnectedTrackers } = useTrackers();
  const { applyProgress, state, skipSetup } = useOnboarding();
  const navigate = useNavigate();
  const { sendRPCPacket, useRPCPacket } = useWebsocketAPI();
  const [provisioningStatus, setProvisioningStatus] =
    useState<WifiProvisioningStatus>(WifiProvisioningStatus.NONE);

  applyProgress(0.4);

  const connectedTrackers = useConnectedTrackers();

  useEffect(() => {
    if (!state.wifi) {
      navigate('/onboarding/wifi-creds');
    }

    const req = new StartWifiProvisioningRequestT();
    req.ssid = state.wifi?.ssid as string;
    req.password = state.wifi?.password as string;

    sendRPCPacket(RpcMessage.StartWifiProvisioningRequest, req);
    return () => {
      sendRPCPacket(
        RpcMessage.StopWifiProvisioningRequest,
        new StopWifiProvisioningRequestT()
      );
    };
  }, []);

  useRPCPacket(
    RpcMessage.WifiProvisioningStatusResponse,
    ({ status }: WifiProvisioningStatusResponseT) => {
      setProvisioningStatus(status);
    }
  );

  const isError =
    provisioningStatus === WifiProvisioningStatus.CONNECTION_ERROR ||
    provisioningStatus === WifiProvisioningStatus.COULD_NOT_FIND_SERVER;

  return (
    <div className="flex flex-col items-center">
      <div className="flex gap-10 w-full max-w-7xl ">
        <div className="flex flex-col w-full max-w-sm">
          {!state.alonePage && (
            <ArrowLink to="/onboarding/wifi-creds">
              {l10n.getString('onboarding-connect_tracker-back')}
            </ArrowLink>
          )}
          <Typography variant="main-title">
            {l10n.getString('onboarding-connect_tracker-title')}
          </Typography>
          <Typography color="secondary">
            {l10n.getString('onboarding-connect_tracker-description-p0')}
          </Typography>
          <Typography color="secondary">
            {l10n.getString('onboarding-connect_tracker-description-p1')}
          </Typography>
          <div className="flex flex-col gap-2 py-5">
            {/* <ArrowLink
              to="/onboarding/connect"
              direction="right"
              variant="boxed"
            >
              I have other types of trackers
            </ArrowLink> */}
            <ArrowLink
              to="/settings/serial"
              state={{ SerialPort: 'Auto' }}
              direction="right"
              variant={state.alonePage ? 'boxed-2' : 'boxed'}
            >
              {l10n.getString('onboarding-connect_tracker-issue-serial')}
            </ArrowLink>
          </div>
          <TipBox>{l10n.getString('tips-find_tracker')}</TipBox>

          <div
            className={classNames(
              'rounded-xl h-16 flex gap-2 p-3 lg:w-full mt-4',
              state.alonePage ? 'bg-background-60' : 'bg-background-70',
              isError && 'border-2 border-status-critical'
            )}
          >
            <div className="flex flex-col justify-center fill-background-10">
              <LoaderIcon
                youSpinMeRightRoundBabyRightRound={!isError}
              ></LoaderIcon>
            </div>
            <div className="flex flex-col">
              <Typography bold>
                {l10n.getString('onboarding-connect_tracker-usb')}
              </Typography>
              <Typography color="secondary">
                {l10n.getString(statusLabelMap[provisioningStatus])}
              </Typography>
            </div>
          </div>
        </div>
        <div className="flex flex-col flex-grow">
          <Typography color="secondary" bold>
            {l10n.getString('onboarding-connect_tracker-connected_trackers', {
              amount: connectedTrackers.length,
            })}
          </Typography>

          <div
            className="flex-grow overflow-y-scroll"
            ref={ref}
            style={{ height: layoutHeight - BOTTOM_HEIGHT }}
          >
            <div className="grid lg:grid-cols-2 md:grid-cols-1 gap-2 mx-3 pt-3">
              {Array.from({
                ...connectedTrackers,
                length: Math.max(trackers.length, 20),
              }).map((tracker, index) => (
                <div key={index}>
                  {!tracker && (
                    <div
                      className={classNames(
                        'rounded-xl  h-16',
                        state.alonePage
                          ? 'bg-background-80'
                          : 'bg-background-70'
                      )}
                    ></div>
                  )}
                  {tracker && (
                    <TrackerCard
                      tracker={tracker.tracker}
                      device={tracker.device}
                      smol
                    ></TrackerCard>
                  )}
                </div>
              ))}
            </div>
          </div>
        </div>
      </div>
      <div
        style={{ height: BOTTOM_HEIGHT }}
        className="flex items-center w-full"
      >
        <div className="w-full flex">
          <div className="flex flex-grow">
            {!state.alonePage && (
              <Button variant="secondary" to="/" onClick={skipSetup}>
                {l10n.getString('onboarding-skip')}
              </Button>
            )}
          </div>
          <div className="flex gap-3">
            {!state.alonePage && (
              <Button variant="primary" to="/onboarding/trackers-assign">
                {l10n.getString('onboarding-connect_tracker-next')}
              </Button>
            )}
            {state.alonePage && (
              <Button variant="primary" to="/">
                {l10n.getString('onboarding-connect_tracker-next')}
              </Button>
            )}
          </div>
        </div>
      </div>
    </div>
  );
}
