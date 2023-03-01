### SlimeVR complete GUI translations


# Please developers (not translators) don't reuse a key inside another key
# or concat text with a translation string in the code, use the appropriate
# features like variables and selectors in each appropriate case!
# And also comment the string if it's something not easy to translate, so you help
# translators on what it means


## Websocket (server) status

websocket-connecting = Conectando al servidor
websocket-connection_lost = Conexión al servidor perdida. Intentando reconectar...

## Tips

tips-find_tracker = ¿No estás seguro de cuál sensor es cuál? Agita un sensor y se resaltará donde está asignado.
tips-do_not_move_heels = ¡Asegúrate de no mover los talones en la grabación!

## Body parts

body_part-NONE = Sin asignar
body_part-HEAD = Cabeza
body_part-NECK = Cuello
body_part-RIGHT_SHOULDER = Hombro derecho
body_part-RIGHT_UPPER_ARM = Brazo superior derecho
body_part-RIGHT_LOWER_ARM = Antebrazo derecho
body_part-RIGHT_HAND = Mano derecha
body_part-RIGHT_UPPER_LEG = Muslo derecho
body_part-RIGHT_LOWER_LEG = Tobillo derecho
body_part-RIGHT_FOOT = Pie derecho
body_part-CHEST = Pecho
body_part-WAIST = Cintura
body_part-HIP = Cadera
body_part-LEFT_SHOULDER = Hombro izquierdo
body_part-LEFT_UPPER_ARM = Brazo superior izquierdo
body_part-LEFT_LOWER_ARM = Antebrazo izquierdo
body_part-LEFT_HAND = Mano izquierda
body_part-LEFT_UPPER_LEG = Muslo izquierdo
body_part-LEFT_LOWER_LEG = Tobillo izquierdo
body_part-LEFT_FOOT = Pie izquierdo

## Proportions

skeleton_bone-NONE = Nada
skeleton_bone-HEAD = Inclinación de cabeza
skeleton_bone-NECK = Largo del cuello
skeleton_bone-CHEST = Chest Length
skeleton_bone-CHEST_OFFSET = Chest Offset
skeleton_bone-WAIST = Waist Length
skeleton_bone-HIP = Hip Length
skeleton_bone-HIP_OFFSET = Desplazamiento de la cadera
skeleton_bone-HIPS_WIDTH = Ancho de la cadera
skeleton_bone-UPPER_LEG = Upper Leg Length
skeleton_bone-LOWER_LEG = Lower Leg Length
skeleton_bone-FOOT_LENGTH = Largo de pies
skeleton_bone-FOOT_SHIFT = Desplazamiento de pies
skeleton_bone-SKELETON_OFFSET = Desplazamiento del esqueleto
skeleton_bone-SHOULDERS_DISTANCE = Distancia de los hombros
skeleton_bone-SHOULDERS_WIDTH = Ancho de los hombros
skeleton_bone-UPPER_ARM = Largo del brazo superior
skeleton_bone-LOWER_ARM = Distancia del antebrazo
skeleton_bone-HAND_Y = Distancia Y de la mano
skeleton_bone-HAND_Z = Distancia Z de la mano
skeleton_bone-ELBOW_OFFSET = Desplazamiento del codo

## Tracker reset buttons

reset-reset_all = Reiniciar todas las proporciones
reset-full = Reiniciar
reset-mounting = Reiniciar montura
reset-quick = Reinicio rápido

## Serial detection stuff

serial_detection-new_device-p0 = ¡Nuevo dispositivo serial detectado!
serial_detection-new_device-p1 = ¡Ingresa tus credenciales del Wi-Fi!
serial_detection-new_device-p2 = Por favor selecciona que quieres hacer con el
serial_detection-open_wifi = Conectarse al Wi-Fi
serial_detection-open_serial = Abrir consola serial
serial_detection-submit = ¡Enviar!
serial_detection-close = Cerrar

## Navigation bar

navbar-home = Inicio
navbar-body_proportions = Proporciones corporales
navbar-trackers_assign = Asignación de sensores
navbar-mounting = Calibración de montura
navbar-onboarding = Asistente de configuración
navbar-settings = Ajustes

## Bounding volume hierarchy recording

bvh-start_recording = Grabar BVH
bvh-recording = Grabando...

## Widget: Overlay settings

widget-overlay = Overlay
widget-overlay-is_visible_label = Mostrar interfaz en SteamVR
widget-overlay-is_mirrored_label = Mostrar interfaz reflejada

## Widget: Drift compensation

widget-drift_compensation-clear = Limpiar compensación de desviación

## Widget: Developer settings

widget-developer_mode = Developer Mode
widget-developer_mode-high_contrast = High contrast
widget-developer_mode-precise_rotation = Precise rotation
widget-developer_mode-fast_data_feed = Fast data feed
widget-developer_mode-filter_slimes_and_hmd = Filter slimes and HMD
widget-developer_mode-sort_by_name = Sort by name
widget-developer_mode-raw_slime_rotation = Raw rotation
widget-developer_mode-more_info = More info

## Widget: IMU Visualizer

widget-imu_visualizer = Rotation
widget-imu_visualizer-rotation_raw = Raw
widget-imu_visualizer-rotation_preview = Preview

## Tracker status

tracker-status-none = Sin estado
tracker-status-busy = Ocupado
tracker-status-error = Error
tracker-status-disconnected = Desconectado
tracker-status-occluded = Ocluido
tracker-status-ok = Conectado

## Tracker status columns

tracker-table-column-name = Nombre
tracker-table-column-type = Tipo
tracker-table-column-battery = Batería
tracker-table-column-ping = Latencia
tracker-table-column-tps = TPS
tracker-table-column-temperature = Temp. °C
tracker-table-column-linear-acceleration = Accel. X/Y/Z
tracker-table-column-rotation = Rotación X/Y/Z
tracker-table-column-position = Posición X/Y/Z
tracker-table-column-url = URL

## Tracker rotation

tracker-rotation-front = Frente
tracker-rotation-left = Izquierda
tracker-rotation-right = Derecha
tracker-rotation-back = Atrás

## Tracker information

tracker-infos-manufacturer = Fabricante
tracker-infos-display_name = Nombre
tracker-infos-custom_name = Nombre personalizado
tracker-infos-url = URL del sensor
tracker-infos-version = Versión del firmware
tracker-infos-hardware_rev = Revisión del hardware

## Tracker settings

tracker-settings-back = Volver a la lista de sensores
tracker-settings-title = Ajustes de los sensores
tracker-settings-assignment_section = Asignación
tracker-settings-assignment_section-description = Parte del cuerpo asignado al sensor.
tracker-settings-assignment_section-edit = Editar asignación
tracker-settings-mounting_section = Posición de montura
tracker-settings-mounting_section-description = ¿Dónde está montado el sensor?
tracker-settings-mounting_section-edit = Editar montura
tracker-settings-drift_compensation_section = Permitir compensación de desviación
tracker-settings-drift_compensation_section-description = ¿Este sensor deberia compensar la desviación?
tracker-settings-drift_compensation_section-edit = Permitir compensación de desviación
# The .<name> means it's an attribute and it's related to the top key.
# In this case that is the settings for the assignment section.
tracker-settings-name_section = Nombre del sensor
tracker-settings-name_section-description = Dale un apodo bonito :)
tracker-settings-name_section-placeholder = Pata izquierda de Manteca

## Tracker part card info

tracker-part_card-no_name = Sin nombre
tracker-part_card-unassigned = Sin asignar

## Body assignment menu

body_assignment_menu = ¿Dónde quieres que esté este sensor?
body_assignment_menu-description = Selecciona la posición donde quieres asignar este sensor. También puedes escoger administrar todos los sensores al mismo tiempo en vez de uno por uno.
body_assignment_menu-show_advanced_locations = Mostrar posiciones de asignación avanzadas
body_assignment_menu-manage_trackers = Administrar todos los sensores
body_assignment_menu-unassign_tracker = Desasignar sensor

## Tracker assignment menu

# A -translation_key (with a dash in the front) means that it's a label.
# It can only be used in the translation file, it's nice for reusing names and that kind of stuff.
#
# We are using it here because english doesn't require changing the text in each case but
# maybe your language does.
-tracker_selection-part = ¿Qué sensor asignar a tu
tracker_selection_menu-NONE = ¿Qué sensor quieres que esté sin asignar?
tracker_selection_menu-HEAD = { -tracker_selection-part } cabeza?
tracker_selection_menu-NECK = { -tracker_selection-part } cuello?
tracker_selection_menu-RIGHT_SHOULDER = { -tracker_selection-part } hombro derecho?
tracker_selection_menu-RIGHT_UPPER_ARM = { -tracker_selection-part } brazo superior derecho?
tracker_selection_menu-RIGHT_LOWER_ARM = { -tracker_selection-part } antebrazo derecho?
tracker_selection_menu-RIGHT_HAND = { -tracker_selection-part } mano derecha?
tracker_selection_menu-RIGHT_UPPER_LEG = { -tracker_selection-part } muslo derecho?
tracker_selection_menu-RIGHT_LOWER_LEG = { -tracker_selection-part } tobillo derecho?
tracker_selection_menu-RIGHT_FOOT = { -tracker_selection-part } pie derecho?
tracker_selection_menu-RIGHT_CONTROLLER = { -tracker_selection-part } mando derecho?
tracker_selection_menu-CHEST = { -tracker_selection-part } pecho?
tracker_selection_menu-WAIST = { -tracker_selection-part } cintura?
tracker_selection_menu-HIP = { -tracker_selection-part } cadera?
tracker_selection_menu-LEFT_SHOULDER = { -tracker_selection-part } hombro izquierdo?
tracker_selection_menu-LEFT_UPPER_ARM = { -tracker_selection-part } brazo superior izquierdo?
tracker_selection_menu-LEFT_LOWER_ARM = { -tracker_selection-part } antebrazo izquierdo?
tracker_selection_menu-LEFT_HAND = { -tracker_selection-part } mano izquierda?
tracker_selection_menu-LEFT_UPPER_LEG = { -tracker_selection-part } muslo izquierdo?
tracker_selection_menu-LEFT_LOWER_LEG = { -tracker_selection-part } tobillo izquiero?
tracker_selection_menu-LEFT_FOOT = { -tracker_selection-part } pie izquierdo?
tracker_selection_menu-LEFT_CONTROLLER = { -tracker_selection-part } mando izquierdo?
tracker_selection_menu-unassigned = Sensores sin asignar
tracker_selection_menu-assigned = Sensores asignados
tracker_selection_menu-dont_assign = No asignar
# This line cares about multilines.
# <b>text</b> means that the text should be bold.
tracker_selection_menu-neck_warning =
    <b>Advertencia:</b> Un sensor de cuello puede ser mortal si se ajusta demasiado,
    ¡La correa podría cortar la circulación a tu cabeza!
tracker_selection_menu-neck_warning-done = Entiendo los riesgos
tracker_selection_menu-neck_warning-cancel = Cancelar

## Mounting menu

mounting_selection_menu = ¿Dónde quieres colocar el sensor?
mounting_selection_menu-close = Cerrar

## Sidebar settings

settings-sidebar-title = Ajustes
settings-sidebar-general = General
settings-sidebar-tracker_mechanics = Mecánicas del sensor
settings-sidebar-fk_settings = Ajustes de FK
settings-sidebar-gesture_control = Control de gestos
settings-sidebar-interface = Interfaz
settings-sidebar-osc_router = Router OSC
settings-sidebar-utils = Utilidades
settings-sidebar-serial = Consola serial

## SteamVR settings

settings-general-steamvr = SteamVR
settings-general-steamvr-subtitle = Sensores en SteamVR
# Not all translation keys support multiline, only the ones that specify it will actually
# split it in lines (that also means you can split in lines however you want in those).
# The first spaces (not tabs) for indentation will be ignored, just to make the file look nice when writing.
# This one is one of this cases that cares about multilines
settings-general-steamvr-description =
    Habilita o deshabilita sensores de SteamVR en específico.
    Útil para juegos y aplicaciones que solo soportan ciertos sensores..
settings-general-steamvr-trackers-waist = Cintura
settings-general-steamvr-trackers-chest = Pecho
settings-general-steamvr-trackers-feet = Pies
settings-general-steamvr-trackers-knees = Rodillas
settings-general-steamvr-trackers-elbows = Codos
settings-general-steamvr-trackers-hands = Manos

## Tracker mechanics

settings-general-tracker_mechanics = Mecánicas del sensor
settings-general-tracker_mechanics-filtering = Filtrado
# This also cares about multilines
settings-general-tracker_mechanics-filtering-description =
    Selecciona un tipo de filtro para tus sensores.
    Predicción predice el movimiento mientras que el suavizado suaviza el movimiento.
settings-general-tracker_mechanics-filtering-type = Tipos de filtro
settings-general-tracker_mechanics-filtering-type-none = Sin filtro
settings-general-tracker_mechanics-filtering-type-none-description = Usa las rotaciones como son. No se realizará ningún filtrado.
settings-general-tracker_mechanics-filtering-type-smoothing = Suavizado
settings-general-tracker_mechanics-filtering-type-smoothing-description = Suaviza los movimientos pero añade algo de latencia.
settings-general-tracker_mechanics-filtering-type-prediction = Predicción
settings-general-tracker_mechanics-filtering-type-prediction-description = Reduce la latencia y los movimientos serán más inmediatos, pero puede incrementar la inestabilidad.
settings-general-tracker_mechanics-filtering-amount = Cantidad
settings-general-tracker_mechanics-drift_compensation = Compensación de desviación
# This cares about multilines
settings-general-tracker_mechanics-drift_compensation-description =
    Compensa la desviación del eje vertical de los sensores aplicando una rotación inversa.
    Cambia la fuerza de la compensación y hasta cuantos reinicios tomar en cuenta.
settings-general-tracker_mechanics-drift_compensation-enabled-label = Compensación de desviación
settings-general-tracker_mechanics-drift_compensation-amount-label = Fuerza de la compensación
settings-general-tracker_mechanics-drift_compensation-max_resets-label = Utilizar hasta los últimos x reinicios

## FK/Tracking settings

settings-general-fk_settings = Ajustes de sensores
settings-general-fk_settings-leg_tweak = Corrección de piernas
settings-general-fk_settings-leg_tweak-description = El clip del suelo puede reducir o incluso eliminar el traspaso del piso pero puede causar problemas cuando te arrodilles. Corrección del patinaje corrige el patinaje, pero puede disminuir la precisión de ciertos movimientos.
# Floor clip:
# why the name - came from the idea of noclip in video games, but is the opposite where clipping to the floor is a desired feature
# definition - Prevents the foot trackers from going lower than they where when a reset was performed
settings-general-fk_settings-leg_tweak-floor_clip = Clip del suelo
# Skating correction:
# why the name - without this enabled the feet will often slide across the ground as if your skating across the ground,
# since this largely prevents this it corrects for it hence skating correction (note this may be renamed to sliding correction)
# definition - Guesses when each foot is in contact with the ground and uses that information to improve tracking
settings-general-fk_settings-leg_tweak-skating_correction = Corrección del patinaje
settings-general-fk_settings-leg_tweak-skating_correction-amount = Agresividad de la corrección del patinaje
settings-general-fk_settings-arm_fk = Trackeo de brazos
settings-general-fk_settings-arm_fk-description = Cambia cómo el movimiento de los brazos es detectado.
settings-general-fk_settings-arm_fk-force_arms = Forzar brazos desde el HMD
settings-general-fk_settings-skeleton_settings = Ajustes de esqueleto
settings-general-fk_settings-skeleton_settings-description = Habilita o deshabilita los ajustes de esqueleto. Es recomendado dejar estos ajustes habilitados.
settings-general-fk_settings-skeleton_settings-extended_spine = Extención de columna
settings-general-fk_settings-skeleton_settings-extended_pelvis = Extención de pelvis
settings-general-fk_settings-skeleton_settings-extended_knees = Extención de rodillas
settings-general-fk_settings-vive_emulation-title = Vive emulation
settings-general-fk_settings-vive_emulation-description = Emulate the waist tracker problems that Vive trackers have. This is a joke and makes tracking worse.
settings-general-fk_settings-vive_emulation-label = Enable Vive emulation

## Gesture control settings (tracker tapping)

settings-general-gesture_control = Control de gestos
settings-general-gesture_control-subtitle = Reinicio basado en toques
settings-general-gesture_control-description = Permite la ejecución de un reinicio al tocar un sensor. El sensor más alto en el torso es utilizado para el reinicio rápido, el sensor más alto en tu pierna izquierda es utilizado para el reinicio, y el sensor más alto en tu pierna derecha es utilizado para reiniciar la montura. Cabe destacar que los toques deben suceder dentro de 0.6 segundos para ser registrados.
# This is a unit: 3 taps, 2 taps, 1 tap
# $amount (Number) - Amount of taps (touches to the tracker's case)
settings-general-gesture_control-taps =
    { $amount ->
        [one] 1 toque
       *[other] { $amount } toques
    }
settings-general-gesture_control-quickResetEnabled = Activar toques para reinicio rápido
settings-general-gesture_control-quickResetDelay = Retraso de reinicio rápido
settings-general-gesture_control-quickResetTaps = Toques para reinicio rápido
settings-general-gesture_control-resetEnabled = Activar toques para reinicio
settings-general-gesture_control-resetDelay = Retraso de reinicio
settings-general-gesture_control-resetTaps = Toques para reinicio
settings-general-gesture_control-mountingResetEnabled = Activar toques para reinicio de montura
settings-general-gesture_control-mountingResetDelay = Retraso de reinicio de montura
settings-general-gesture_control-mountingResetTaps = Toques para reinicio de montura

## Interface settings

settings-general-interface = Interfaz
settings-general-interface-dev_mode = Modo desarrollador
settings-general-interface-dev_mode-description = Este modo puede ser útil si es que necesitas información a fondo o para un nivel de interacción más avanzado con los sensores conectados.
settings-general-interface-dev_mode-label = Modo desarrollador
settings-general-interface-serial_detection = Detección de dispositivo serial
settings-general-interface-serial_detection-description = Esta opción mostrará un notificación cada vez que conectes un nuevo dispositivo serial que pueda ser un sensor. Ayuda a mejorar el proceso de configuración de un sensor.
settings-general-interface-serial_detection-label = Detección de dispositivo serial
settings-general-interface-lang = Selecciona un idioma
settings-general-interface-lang-description = Cambia el idioma que quieras usar.
settings-general-interface-lang-placeholder = Selecciona el idioma a utilizar

## Serial settings

settings-serial = Consola serial
# This cares about multilines
settings-serial-description =
    Esta es la comunicación serial actualizada en vivo.
    Puede ser util para saber si el firmware tiene problemas.
settings-serial-connection_lost = Conexión serial perdida, reconectando...
settings-serial-reboot = Reinciar
settings-serial-factory_reset = Restauración de fábrica
# This cares about multilines
# <b>text</b> means that the text should be bold
settings-serial-factory_reset-warning =
    <b>Advertencia:</b> Esto reiniciará el sensor a sus ajustes de fábrica.
    ¡Esto significa que los ajustes de calibración y Wi-Fi <b>se perderán</b>!
settings-serial-factory_reset-warning-ok = Sé lo que estoy haciendo
settings-serial-factory_reset-warning-cancel = Cancelar
settings-serial-get_infos = Obtener información
settings-serial-serial_select = Selecciona un puerto serial
settings-serial-auto_dropdown_item = Auto

## OSC router settings

settings-osc-router = Router OSC
# This cares about multilines
settings-osc-router-description =
    Redirecciona mensajes OSC recibidos de otro programa.
    Útil para usar otro programa OSC con VRChat por ejemplo.
settings-osc-router-enable = Habilitar
settings-osc-router-enable-description = Habilita el reenvío de mensajes.
settings-osc-router-enable-label = Habilitar
settings-osc-router-network = Puertos de conexión
# This cares about multilines
settings-osc-router-network-description =
    Establece los puertos de entrada y salida de datos
    Estos pueden ser lo mismos puertos usados en el servidor de SlimeVR.
settings-osc-router-network-port_in =
    .label = Puerto de entrada
    .placeholder = Puerto de entrada (por defecto: 9002)
settings-osc-router-network-port_out =
    .label = Puerto de salida
    .placeholder = Puerto de salida (por defecto: 9000)
settings-osc-router-network-address = Dirección de red
settings-osc-router-network-address-description = Establece la direción a la cuál se enviarán los datos.
settings-osc-router-network-address-placeholder = Dirección IPv4

## OSC VRChat settings

settings-osc-vrchat = Sensores OSC de VRChat
# This cares about multilines
settings-osc-vrchat-description =
    Cambiar ajustes específicos de VRChat para recibir datos del HMD y enviar
    datos de los sensores para seguimiento de cuerpo completo (funciona en Quest nativo).
settings-osc-vrchat-enable = Habilitar
settings-osc-vrchat-enable-description = Habilita el envio y recibo de datos.
settings-osc-vrchat-enable-label = Habilitar
settings-osc-vrchat-network = Puertos de conexión
settings-osc-vrchat-network-description = Establece los puertos de entrada y salida de datos a VRChat.
settings-osc-vrchat-network-port_in =
    .label = Puerto de entrada
    .placeholder = Puerto de entrada (por defecto: 9001)
settings-osc-vrchat-network-port_out =
    .label = Puerto de salida
    .placeholder = Puerto de salida (por defecto: 9000)
settings-osc-vrchat-network-address = Dirección de red
settings-osc-vrchat-network-address-description = Establece la dirección donde se enviarán los datos de VRChat (revisa los ajustes de Wi-Fi de tu dispositivo que tenga el juego).
settings-osc-vrchat-network-address-placeholder = Dirección IP de VRChat
settings-osc-vrchat-network-trackers = Sensores
settings-osc-vrchat-network-trackers-description = Habilita el envío de sensores específicos mediante OSC.
settings-osc-vrchat-network-trackers-chest = Pecho
settings-osc-vrchat-network-trackers-waist = Cintura
settings-osc-vrchat-network-trackers-knees = Rodillas
settings-osc-vrchat-network-trackers-feet = Pies
settings-osc-vrchat-network-trackers-elbows = Codos

## Setup/onboarding menu

onboarding-skip = Saltar configuración
onboarding-continue = Continuar
onboarding-wip = Trabajo en progreso

## Wi-Fi setup

onboarding-wifi_creds-back = Volver a la introducción
onboarding-wifi_creds = Ingresar credenciales del Wi-Fi
# This cares about multilines
onboarding-wifi_creds-description =
    Los sensores utilizarán estas credenciales para conectarse inalámbricamente.
    Por favor usa las credenciales del Wi-Fi al cuál estás conectado actualmente.
onboarding-wifi_creds-skip = Saltar ajustes de Wi-Fi
onboarding-wifi_creds-submit = ¡Enviar!
onboarding-wifi_creds-ssid =
    .label = Nombre del WiFi
    .placeholder = Ingresa el nombre del WiFi
onboarding-wifi_creds-password =
    .label = Contraseña
    .placeholder = Ingresa la contraseña

## Mounting setup

onboarding-reset_tutorial-back = Volver a la calibración de montura
onboarding-reset_tutorial = Reiniciar tutorial
onboarding-reset_tutorial-description = Esta aún parte no está finalizada, por favor presione continuar

## Setup start

onboarding-home = Bienvenido a SlimeVR
# This cares about multilines and it's centered!!
onboarding-home-description =
    ¡Acercando el seguimiento
    de cuerpo completo a todos!
onboarding-home-start = ¡Comencemos!

## Enter VR part of setup

onboarding-enter_vr-back = Volver a la asignación de sensores
onboarding-enter_vr-title = ¡Es hora de entrar a la RV!
onboarding-enter_vr-description = ¡Ponte todos tus sensores y luego entra a la RV!
onboarding-enter_vr-ready = Estoy listo

## Setup done

onboarding-done-title = ¡Estás listo!
onboarding-done-description = Disfruta moverte en la realidad virtual
onboarding-done-close = Cerrar la guía

## Tracker connection setup

onboarding-connect_tracker-back = Volver a las credenciales Wi-Fi
onboarding-connect_tracker-title = Conecta tus sensores
onboarding-connect_tracker-description-p0 = Ahora la parte divertida, ¡Conectar todos tus sensores!
onboarding-connect_tracker-description-p1 = Simplemente conecta todos los sensores que aún no están conectados, por medio de un puerto USB.
onboarding-connect_tracker-issue-serial = ¡Tengo problemas conectándolos!
onboarding-connect_tracker-usb = Sensor USB
onboarding-connect_tracker-connection_status-none = Buscando sensores
onboarding-connect_tracker-connection_status-serial_init = Conectando al dispositivo serial
onboarding-connect_tracker-connection_status-provisioning = Enviando credenciales Wi-Fi
onboarding-connect_tracker-connection_status-connecting = Enviando credenciales Wi-Fi
onboarding-connect_tracker-connection_status-looking_for_server = Buscando servidor
onboarding-connect_tracker-connection_status-connection_error = Incapaz de conectar al Wi-Fi
onboarding-connect_tracker-connection_status-could_not_find_server = No se pudo encontrar el servidor
onboarding-connect_tracker-connection_status-done = Conectado con el servidor
# $amount (Number) - Amount of trackers connected (this is a number, but you can use CLDR plural rules for your language)
# More info on https://www.unicode.org/cldr/cldr-aux/charts/22/supplemental/language_plural_rules.html
# English in this case only has 2 plural rules, which are "one" and "other",
# we use 0 in an explicit way because there is no plural rule in english for 0, so we directly say
# if $amount is 0 then we say "No trackers connected"
onboarding-connect_tracker-connected_trackers =
    { $amount ->
        [0] No hay sensores conectados
        [one] 1 sensor conectado
       *[other] { $amount } sensores conectados
    }
onboarding-connect_tracker-next = He conectado todos mis sensores

## Tracker assignment setup

onboarding-assign_trackers-back = Volver a las credenciales Wi-Fi
onboarding-assign_trackers-title = Asignación de sensores
onboarding-assign_trackers-description = Debes escoger dónde van los sensores. Has clic en la ubicación donde quieras colocar un sensor
# Look at translation of onboarding-connect_tracker-connected_trackers on how to use plurals
# $assigned (Number) - Trackers that have been assigned a body part
# $trackers (Number) - Trackers connected to the server
onboarding-assign_trackers-assigned =
    { $assigned } de { $trackers ->
        [one] 1 sensor asignado
       *[other] { $trackers } sensores asignados
    }
onboarding-assign_trackers-advanced = Mostrar ubicación de asignaciones avanzados.
onboarding-assign_trackers-next = He asignado todos los sensores

## Tracker assignment warnings

# Note for devs, number is used for representing boolean states per bit.
# $unassigned (Number) - Bits are based on BodyAssignment.ASSIGNMENT_RULES order
onboarding-assign_trackers-warning-LEFT_FOOT =
    { $unassigned ->
        [0] El pie izquierdo está asignado, pero necesitas el tobillo izquierdo, el muslo izquierdo y que el pecho, la cadera o la cintura estén asignados.
        [1] El pie izquierdo está asignado, pero necesitas que el muslo izquierdo y el pecho, la cadera o la cintura estén asignados.
        [2] El pie izquierdo está asignado, pero necesitas que el tobillo izquierdo y el pecho, la cadera o la cintura estén asignados.
        [3] El pie izquierdo está asignado, pero necesitas que el pecho, la cadera o la cintura estén asignados.
        [4] El pie izquierdo está asignado, pero necesitas que el tobillo izquierdo y el muslo izquierdo estén asignados.
        [5] El pie izquierdo está asignado, pero necesitas que el muslo izquierdo igual esté asignado.
        [6] El pie izquierdo está asignado, pero necesitas que el tobillo izquierdo igual esté asignado.
       *[unknown] El pie izquierdo está asignado, pero necesitas asignar la parte del cuerpo desconocida sin asignar.
    }
# $unassigned (Number) - Bits are based on BodyAssignment.ASSIGNMENT_RULES order
onboarding-assign_trackers-warning-RIGHT_FOOT =
    { $unassigned ->
        [0] El pie derecho está asignado, pero necesitas el tobillo derecho, el muslo derecho y que el pecho, la cadera o la cintura estén asignados.
        [1] El pie derecho está asignado, pero necesitas el muslo derecho y el pecho, la cadera o la cintura estén asignados.
        [2] El pie derecho está asignado, pero necesitas el tobillo derecho y el pecho, la cadera o la cintura estén asignados.
        [3] El pie derecho está asignado, pero necesitas que el pecho, la cadera o la cintura estén asignados.
        [4] El pie derecho está asignado, pero necesitas que el tobillo derecho y el muslo derecho estén asignados.
        [5] El pie derecho está asignado, pero necesitas que el muslo derecho igual esté asignado.
        [6] El pie derecho está asignado, pero necesitas que el tobillo derecho igual esté asignado.
       *[unknown] El pie derecho está asignado, pero necesitas asignar la parte del cuerpo desconocida sin asignar.
    }
# $unassigned (Number) - Bits are based on BodyAssignment.ASSIGNMENT_RULES order
onboarding-assign_trackers-warning-LEFT_LOWER_LEG =
    { $unassigned ->
        [0] El tobillo izquierdo está asignado, pero necesitas el muslo izquierdo y que el pecho, la cadera o la cintura estén asignados.
        [1] El tobillo izquierdo está asignado, pero necesitas que el pecho, la cadera o la cintura estén asignados.
        [2] El tobillo izquierdo está asignado, pero necesitas que el muslo izquierdo igual esté asignado.
       *[unknown] El tobillo izquierdo está asignado, pero necesitas asignar la parte del cuerpo desconocida sin asignar.
    }
# $unassigned (Number) - Bits are based on BodyAssignment.ASSIGNMENT_RULES order
onboarding-assign_trackers-warning-RIGHT_LOWER_LEG =
    { $unassigned ->
        [0] El tobillo derecho está asignado, pero necesitas el muslo derecho y que el pecho, la cadera o la cintura estén asignados.
        [1] El tobillo derecho está asignado, pero necesitas que el pecho, la cadera o la cintura estén asignados.
        [2] El tobillo derecho está asignado, pero necesitas que el muslo derecho igual esté asignado.
       *[unknown] El tobillo derecho está asignado, pero necesitas asignar la parte del cuerpo desconocida sin asignar.
    }
# $unassigned (Number) - Bits are based on BodyAssignment.ASSIGNMENT_RULES order
onboarding-assign_trackers-warning-LEFT_UPPER_LEG =
    { $unassigned ->
        [0] El muslo izquierdo está asignado, pero necesitas que el pecho, la cadera o la cintura estén asignados.
       *[unknown] El muslo izquierdo está asignado, pero necesitas asignar la parte del cuerpo desconocida sin asignar.
    }
# $unassigned (Number) - Bits are based on BodyAssignment.ASSIGNMENT_RULES order
onboarding-assign_trackers-warning-RIGHT_UPPER_LEG =
    { $unassigned ->
        [0] El muslo derecho está asignado, pero necesitas que el pecho, la cadera o la cintura estén asignados.
       *[unknown] El muslo derecho está asignado, pero necesitas asignar la parte del cuerpo desconocida sin asignar.
    }
# $unassigned (Number) - Bits are based on BodyAssignment.ASSIGNMENT_RULES order
onboarding-assign_trackers-warning-HIP =
    { $unassigned ->
        [0] La cadera está asignada, pero necesitas que el pecho igual esté asignado.
       *[unknown] La cadera está asignada, pero necesitas asignar la parte del cuerpo desconocida sin asignar.
    }
# $unassigned (Number) - Bits are based on BodyAssignment.ASSIGNMENT_RULES order
onboarding-assign_trackers-warning-WAIST =
    { $unassigned ->
        [0] La cintura está asignada, pero necesitas que el pecho igual esté asignado.
       *[unknown] La cintura está asignada, pero necesitas asignar la parte del cuerpo desconocida sin asignar.
    }

## Tracker manual mounting setup

onboarding-manual_mounting-back = Volver para entrar a la RV
onboarding-manual_mounting = Montura manual
onboarding-manual_mounting-description = Has clic en todos los sensores y selecciona en que dirección están montados
onboarding-manual_mounting-auto_mounting = Montura automática
onboarding-manual_mounting-next = Siguiente paso

## Tracker automatic mounting setup

onboarding-automatic_mounting-back = Volver para entrar a la RV
onboarding-automatic_mounting-title = Calibración de montura
onboarding-automatic_mounting-description = Para que los sensores SlimeVR funcionen, necesitamos asignar una posición de montura a tus sensores para que se alinien con la montura física de tu sensor.
onboarding-automatic_mounting-manual_mounting = Establecer montura manualmente
onboarding-automatic_mounting-next = Siguiente paso
onboarding-automatic_mounting-prev_step = Paso anterior
onboarding-automatic_mounting-done-title = Ubicación de monturas calibradas.
onboarding-automatic_mounting-done-description = ¡Tu calibración de monturas está completa!
onboarding-automatic_mounting-done-restart = Volver al inicio
onboarding-automatic_mounting-mounting_reset-title = Reinicio de montura
onboarding-automatic_mounting-mounting_reset-step-0 = 1. Arrodíllate en una posición de «esquiar» con tus piernas dobladas, la parte superior de tu cuerpo inclinada hacia adelante, y tus brazos doblados.
onboarding-automatic_mounting-mounting_reset-step-1 = 2. Presiona el botón «Reinicio de montura» y espera 3 segundos hasta que se reinicie la montura.
onboarding-automatic_mounting-preparation-title = Preparación
onboarding-automatic_mounting-preparation-step-0 = 1. Párate derecho con tus brazos a los costados.
onboarding-automatic_mounting-preparation-step-1 = 2. Presiona el botón «Reiniciar» y espera 3 segundos hasta que se reinicien los sensores.
onboarding-automatic_mounting-put_trackers_on-title = Ponte tus sensores
onboarding-automatic_mounting-put_trackers_on-description = Para calibrar la ubicación de tus monturas, usaremos los sensores que has asignado. Ponte todos tus sensores, puedes ver cuál es cual en la figura de la derecha.
onboarding-automatic_mounting-put_trackers_on-next = Tengo puestos todos mis sensores

## Tracker manual proportions setup

onboarding-manual_proportions-back = Volver al tutorial de reinicio
onboarding-manual_proportions-title = Proporciones de cuerpo manuales
onboarding-manual_proportions-precision = Ajuste con precisión
onboarding-manual_proportions-auto = Calibración automática

## Tracker automatic proportions setup

onboarding-automatic_proportions-back = Volver al tutorial de reinicio
onboarding-automatic_proportions-title = Mide tu cuerpo
onboarding-automatic_proportions-description = Para que los sensores de SlimeVR funcionen, necesitamos saber el largo de tus huesos. Esta breve calibración los medirá por ti.
onboarding-automatic_proportions-manual = Calibración manual
onboarding-automatic_proportions-prev_step = Paso anterior
onboarding-automatic_proportions-put_trackers_on-title = Ponte tus sensores
onboarding-automatic_proportions-put_trackers_on-description = Para calibrar tus proporciones, usaremos los sensores que acabas de asignar. Ponte todos tus sensores, puedes ver cuál es cual en la figura de la derecha.
onboarding-automatic_proportions-put_trackers_on-next = Tengo puestos todos mis sensores
onboarding-automatic_proportions-preparation-title = Preparación
onboarding-automatic_proportions-preparation-description = Coloca una silla directamente detrás de ti en tu area de juego. Prepárate para sentarte durante la configuración del autobone.
onboarding-automatic_proportions-preparation-next = Estoy al frente de una silla
onboarding-automatic_proportions-start_recording-title = Prepárate para moverte
onboarding-automatic_proportions-start_recording-description = Ahora vamos a grabar poses y movimientos en específico. Estas serán mostradas en la siguiente ventana. ¡Prepárate para empezar cuando presiones el botón!
onboarding-automatic_proportions-start_recording-next = Empezar grabación
onboarding-automatic_proportions-recording-title = REC
onboarding-automatic_proportions-recording-description-p0 = Grabación en proceso...
onboarding-automatic_proportions-recording-description-p1 = Realiza los siguientes movimientos:
onboarding-automatic_proportions-recording-steps-0 = Dobla tus rodillas unas cuantas veces.
onboarding-automatic_proportions-recording-steps-1 = Sientate en una silla y párate.
onboarding-automatic_proportions-recording-steps-2 = Gira tu torso hacia la izquierda, luego inclínate hacia la derecha.
onboarding-automatic_proportions-recording-steps-3 = Gira tu torso hacia la derecha, luego inclínate hacia la izquierda.
onboarding-automatic_proportions-recording-steps-4 = Menea tu cuerpo hasta que el tiempo se acabe.
onboarding-automatic_proportions-recording-processing = Procesando el resultado
# $time (Number) - Seconds left for the automatic calibration recording to finish (max 15)
onboarding-automatic_proportions-recording-timer =
    { $time ->
        [one] falta 1 segundo
       *[other] faltan { $time } segundos
    }
onboarding-automatic_proportions-verify_results-title = Verificando resultados
onboarding-automatic_proportions-verify_results-description = Comprueba abajo los resultados, ¿Parecen correctos?
onboarding-automatic_proportions-verify_results-results = Grabando resultados
onboarding-automatic_proportions-verify_results-processing = Procesando resultados
onboarding-automatic_proportions-verify_results-redo = Rehacer grabación
onboarding-automatic_proportions-verify_results-confirm = Son correctos
onboarding-automatic_proportions-done-title = Cuerpo medido y guardado.
onboarding-automatic_proportions-done-description = ¡La calibración de tus proporciones corporales fue completada!

## Home

home-no_trackers = No hay sensores detectados o asignados
