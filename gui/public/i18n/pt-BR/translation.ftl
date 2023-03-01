### SlimeVR complete GUI translations


# Please developers (not translators) don't reuse a key inside another key
# or concat text with a translation string in the code, use the appropriate
# features like variables and selectors in each appropriate case!
# And also comment the string if it's something not easy to translate, so you help
# translators on what it means


## Websocket (server) status

websocket-connecting = Conectando ao servidor
websocket-connection_lost = Conexão perdida com o servidor. Reconectando...

## Tips

tips-find_tracker = Não tem certeza qual tracker é qual? Balance o tracker e ele destacará o item correspondente.
tips-do_not_move_heels = Tenha certeza de não mexer seus calcanhares durante a gravação!

## Body parts

body_part-NONE = Não atribuído
body_part-HEAD = Cabeça
body_part-NECK = Pescoço
body_part-RIGHT_SHOULDER = Ombro direito
body_part-RIGHT_UPPER_ARM = Braço superior direito
body_part-RIGHT_LOWER_ARM = Antebraço direito
body_part-RIGHT_HAND = Mão Direita
body_part-RIGHT_UPPER_LEG = Coxa direita
body_part-RIGHT_LOWER_LEG = Canela direita
body_part-RIGHT_FOOT = Pé direito
body_part-CHEST = Peito
body_part-WAIST = Cintura
body_part-HIP = Quadril
body_part-LEFT_SHOULDER = Ombro esquerdo
body_part-LEFT_UPPER_ARM = Braço superior esquerdo
body_part-LEFT_LOWER_ARM = Antebraço esquerdo
body_part-LEFT_HAND = Mão esquerda
body_part-LEFT_UPPER_LEG = Coxa esquerda
body_part-LEFT_LOWER_LEG = Canela esquerda
body_part-LEFT_FOOT = Pé esquerdo

## Proportions

skeleton_bone-NONE = Nada
skeleton_bone-HEAD = Deslocamento da Cabeça
skeleton_bone-NECK = Tamanho do Pescoço
skeleton_bone-CHEST = Chest Length
skeleton_bone-CHEST_OFFSET = Chest Offset
skeleton_bone-WAIST = Waist Length
skeleton_bone-HIP = Hip Length
skeleton_bone-HIP_OFFSET = Compensação do Quadril
skeleton_bone-HIPS_WIDTH = Largura do Quadril
skeleton_bone-UPPER_LEG = Upper Leg Length
skeleton_bone-LOWER_LEG = Lower Leg Length
skeleton_bone-FOOT_LENGTH = Tamanho do Pé
skeleton_bone-FOOT_SHIFT = Compensação do Pé
skeleton_bone-SKELETON_OFFSET = Compensação do Esqueleto
skeleton_bone-SHOULDERS_DISTANCE = Distância dos Ombros
skeleton_bone-SHOULDERS_WIDTH = Largura dos Ombros
skeleton_bone-UPPER_ARM = Tamanho do Braço Superior
skeleton_bone-LOWER_ARM = Distância do Antebraço
skeleton_bone-HAND_Y = Distância da mão Y
skeleton_bone-HAND_Z = Distância da mão Z
skeleton_bone-ELBOW_OFFSET = Compensação do Cotovelo

## Tracker reset buttons

reset-reset_all = Redefinir todas as proporções
reset-full = Reset
reset-mounting = Reset de Posição
reset-quick = Reset Rápido

## Serial detection stuff

serial_detection-new_device-p0 = Novo dispositivo de serial detectado!
serial_detection-new_device-p1 = Insira suas credenciais de Wi-Fi!
serial_detection-new_device-p2 = Selecione o que quer fazer com ele
serial_detection-open_wifi = Conectar ao Wi-Fi
serial_detection-open_serial = Abrir o Console Serial
serial_detection-submit = Enviar!
serial_detection-close = Fechar

## Navigation bar

navbar-home = Início
navbar-body_proportions = Proporções do corpo
navbar-trackers_assign = Atribuição de Tracker
navbar-mounting = Calibragem de Posição
navbar-onboarding = Assistente de Configuração
navbar-settings = Opções

## Bounding volume hierarchy recording

bvh-start_recording = Gravar BVH
bvh-recording = Gravando...

## Widget: Overlay settings

widget-overlay = Overlay
widget-overlay-is_visible_label = Mostrar Overlay na SteamVR
widget-overlay-is_mirrored_label = Mostrar Overlay como espelho

## Widget: Drift compensation

widget-drift_compensation-clear = Refazer compensação de drift

## Widget: Developer settings

widget-developer_mode = Modo de desenvolvedor
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

tracker-status-none = Sem Status
tracker-status-busy = Ocupado
tracker-status-error = Erro
tracker-status-disconnected = Desconectado
tracker-status-occluded = Ocluso
tracker-status-ok = Conectado

## Tracker status columns

tracker-table-column-name = Nome
tracker-table-column-type = Tipo
tracker-table-column-battery = Bateria
tracker-table-column-ping = Ping
tracker-table-column-tps = TPS
tracker-table-column-temperature = Temp. °C
tracker-table-column-linear-acceleration = Accel. X/Y/Z
tracker-table-column-rotation = Rotação X/Y/Z
tracker-table-column-position = Posição X/Y/Z
tracker-table-column-url = URL

## Tracker rotation

tracker-rotation-front = Frente
tracker-rotation-left = Esquerda
tracker-rotation-right = Direita
tracker-rotation-back = Atrás

## Tracker information

tracker-infos-manufacturer = Fabricante
tracker-infos-display_name = Nome de exibição
tracker-infos-custom_name = Nome personalizado
tracker-infos-url = URL do Tracker
tracker-infos-version = Versão do firmware
tracker-infos-hardware_rev = Revisão do hardware

## Tracker settings

tracker-settings-back = Voltar para lista de trackers
tracker-settings-title = Opções dos trackers
tracker-settings-assignment_section = Atribuição
tracker-settings-assignment_section-description = Qual parte do seu corpo o tracker está atribuído para.
tracker-settings-assignment_section-edit = Editar atribuição
tracker-settings-mounting_section = Posicionamento
tracker-settings-mounting_section-description = Aonde o tracker está posicionado?
tracker-settings-mounting_section-edit = Editar posição
tracker-settings-drift_compensation_section = Ligar a compensação de drift
tracker-settings-drift_compensation_section-description = Esse tracker deverá compensar pelo drift quando a compensação de drift estiver ligado?
tracker-settings-drift_compensation_section-edit = Ligar a compensação de drift
# The .<name> means it's an attribute and it's related to the top key.
# In this case that is the settings for the assignment section.
tracker-settings-name_section = Nome do tracker
tracker-settings-name_section-description = Dê um apelido fofo :)
tracker-settings-name_section-placeholder = Coxa esquerda de NightyBeast

## Tracker part card info

tracker-part_card-no_name = Sem nome
tracker-part_card-unassigned = Não atribuído

## Body assignment menu

body_assignment_menu = Aonde você quer que esse tracker fique?
body_assignment_menu-description = Escolha um local onde você quer que esse tracker seja atribuído. Alternativamente você pode escolher arrumar todos os tracker de uma vez, ao invés de um por um.
body_assignment_menu-show_advanced_locations = Mostrar locais de atribuição avançados
body_assignment_menu-manage_trackers = Arrumar todos os trackers
body_assignment_menu-unassign_tracker = Desatribuir tracker

## Tracker assignment menu

# A -translation_key (with a dash in the front) means that it's a label.
# It can only be used in the translation file, it's nice for reusing names and that kind of stuff.
#
# We are using it here because english doesn't require changing the text in each case but
# maybe your language does.
-tracker_selection-part = Which tracker to assign to your
tracker_selection_menu-NONE = Which tracker do you want to be unassigned?
tracker_selection_menu-HEAD = { -tracker_selection-part } head?
tracker_selection_menu-NECK = { -tracker_selection-part } neck?
tracker_selection_menu-RIGHT_SHOULDER = { -tracker_selection-part } right shoulder?
tracker_selection_menu-RIGHT_UPPER_ARM = { -tracker_selection-part } right upper arm?
tracker_selection_menu-RIGHT_LOWER_ARM = { -tracker_selection-part } right lower arm?
tracker_selection_menu-RIGHT_HAND = { -tracker_selection-part } right hand?
tracker_selection_menu-RIGHT_UPPER_LEG = { -tracker_selection-part } right thigh?
tracker_selection_menu-RIGHT_LOWER_LEG = { -tracker_selection-part } right ankle?
tracker_selection_menu-RIGHT_FOOT = { -tracker_selection-part } right foot?
tracker_selection_menu-RIGHT_CONTROLLER = { -tracker_selection-part } right controller?
tracker_selection_menu-CHEST = { -tracker_selection-part } chest?
tracker_selection_menu-WAIST = { -tracker_selection-part } waist?
tracker_selection_menu-HIP = { -tracker_selection-part } hip?
tracker_selection_menu-LEFT_SHOULDER = { -tracker_selection-part } left shoulder?
tracker_selection_menu-LEFT_UPPER_ARM = { -tracker_selection-part } left upper arm?
tracker_selection_menu-LEFT_LOWER_ARM = { -tracker_selection-part } left lower arm?
tracker_selection_menu-LEFT_HAND = { -tracker_selection-part } left hand?
tracker_selection_menu-LEFT_UPPER_LEG = { -tracker_selection-part } left thigh?
tracker_selection_menu-LEFT_LOWER_LEG = { -tracker_selection-part } left ankle?
tracker_selection_menu-LEFT_FOOT = { -tracker_selection-part } left foot?
tracker_selection_menu-LEFT_CONTROLLER = { -tracker_selection-part } left controller?
tracker_selection_menu-unassigned = Trackers não atribuídos
tracker_selection_menu-assigned = Trackers atribuídos
tracker_selection_menu-dont_assign = Não atribuir
# This line cares about multilines.
# <b>text</b> means that the text should be bold.
tracker_selection_menu-neck_warning =
    <b>Atenção:</b> O tracker de pescoço pode ser mortal se ajustado muito apertado,
    o strap pode cortar a circulação para sua cabeça!
tracker_selection_menu-neck_warning-done = Eu entendo os riscos
tracker_selection_menu-neck_warning-cancel = Cancelar

## Mounting menu

mounting_selection_menu = Aonde você quer que esse tracker fique?
mounting_selection_menu-close = Fechar

## Sidebar settings

settings-sidebar-title = Opções
settings-sidebar-general = Geral
settings-sidebar-tracker_mechanics = Mecânicas do Tracker
settings-sidebar-fk_settings = Opções de Tracker
settings-sidebar-gesture_control = Controle de Gestos
settings-sidebar-interface = Interface
settings-sidebar-osc_router = Roteador OSC
settings-sidebar-utils = Utilidades
settings-sidebar-serial = Console Serial

## SteamVR settings

settings-general-steamvr = SteamVR
settings-general-steamvr-subtitle = Trackers do SteamVR
# Not all translation keys support multiline, only the ones that specify it will actually
# split it in lines (that also means you can split in lines however you want in those).
# The first spaces (not tabs) for indentation will be ignored, just to make the file look nice when writing.
# This one is one of this cases that cares about multilines
settings-general-steamvr-description =
    Ativar ou desativar partes específicas do tracking.
    Útil se você quer mais controle do que o SlimeVR faz.
settings-general-steamvr-trackers-waist = Cintura
settings-general-steamvr-trackers-chest = Peito
settings-general-steamvr-trackers-feet = Pés
settings-general-steamvr-trackers-knees = Joelhos
settings-general-steamvr-trackers-elbows = Cotovelos
settings-general-steamvr-trackers-hands = Mãos

## Tracker mechanics

settings-general-tracker_mechanics = Mecânicas do Tracker
settings-general-tracker_mechanics-filtering = Filtros
# This also cares about multilines
settings-general-tracker_mechanics-filtering-description =
    Escolha o tipo de filtro para seus trackers.
    Predição prediz movimentação enquanto suavização suaviza o movimento.
settings-general-tracker_mechanics-filtering-type = Tipo de filtro
settings-general-tracker_mechanics-filtering-type-none = Sem filtro
settings-general-tracker_mechanics-filtering-type-none-description = Utiliza as rotações como registradas. Sem qualquer tipo de filtro.
settings-general-tracker_mechanics-filtering-type-smoothing = Suavização
settings-general-tracker_mechanics-filtering-type-smoothing-description = Suaviza o movimento porém introduz um pouco de latência.
settings-general-tracker_mechanics-filtering-type-prediction = Predição
settings-general-tracker_mechanics-filtering-type-prediction-description = Reduz latência e torna os movimentos mais responsivos, porém aumenta tremulação (Jitter).
settings-general-tracker_mechanics-filtering-amount = Quantidade
settings-general-tracker_mechanics-drift_compensation = Compensação de drift
# This cares about multilines
settings-general-tracker_mechanics-drift_compensation-description =
    Compensa o drift de guinada (yaw) aplicando uma rotação inversa.
    Mudar a quantidade de compensação e até quantos resets vão ser levados em conta.
settings-general-tracker_mechanics-drift_compensation-enabled-label = Compensação de drift
settings-general-tracker_mechanics-drift_compensation-amount-label = Quantidade de compensação
settings-general-tracker_mechanics-drift_compensation-max_resets-label = Use até x últimos resets

## FK/Tracking settings

settings-general-fk_settings = Opções de Tracker
settings-general-fk_settings-leg_tweak = Ajustes de perna
settings-general-fk_settings-leg_tweak-description = Atravessar o chão pode reduzir ou até eliminar o clipping(atravessar) com o chão porém pode causar problemas quando ajoelhado. Correção de Deslize corrige o ice skating(deslize dos trackers no chão), porém pode diminuir a precisão de certos padrões de movimento.
# Floor clip:
# why the name - came from the idea of noclip in video games, but is the opposite where clipping to the floor is a desired feature
# definition - Prevents the foot trackers from going lower than they where when a reset was performed
settings-general-fk_settings-leg_tweak-floor_clip = Atravessar o chão
# Skating correction:
# why the name - without this enabled the feet will often slide across the ground as if your skating across the ground,
# since this largely prevents this it corrects for it hence skating correction (note this may be renamed to sliding correction)
# definition - Guesses when each foot is in contact with the ground and uses that information to improve tracking
settings-general-fk_settings-leg_tweak-skating_correction = Correção de deslize
settings-general-fk_settings-leg_tweak-skating_correction-amount = Força da correção de deslize
settings-general-fk_settings-arm_fk = Opções do Braço
settings-general-fk_settings-arm_fk-description = Muda o jeito que os braços são rastreados.
settings-general-fk_settings-arm_fk-force_arms = Forçar braços do HMD
settings-general-fk_settings-skeleton_settings = Opções do esqueleto
settings-general-fk_settings-skeleton_settings-description = Ligar ou desligar opções do esqueleto. É recomendado deixar eles ligados.
settings-general-fk_settings-skeleton_settings-extended_spine = Estender coluna
settings-general-fk_settings-skeleton_settings-extended_pelvis = Estender pélvis
settings-general-fk_settings-skeleton_settings-extended_knees = Estender joelho
settings-general-fk_settings-vive_emulation-title = Emulação de Vive
settings-general-fk_settings-vive_emulation-description = Emule o problema de tracker da cintura que o Vive tracker tem. Isso é uma piada e faz o tracking ficar pior.
settings-general-fk_settings-vive_emulation-label = Ativar emulação de Vive

## Gesture control settings (tracker tapping)

settings-general-gesture_control = Controle de gestos
settings-general-gesture_control-subtitle = Resets baseados em toques
settings-general-gesture_control-description = Faz com oque os resets sejam ativados tocando um tracker. O Tracker mais alto no seu torso é usado para o Reset Rápido, o tracker mais alto na sua perna esquerda é usado para o Reset, e o tracker mais alto na sua perna direita é usado para o Reset de Posição. Os toques devem ocorrer dentro de 0.6 segundos para serem registrados.
# This is a unit: 3 taps, 2 taps, 1 tap
# $amount (Number) - Amount of taps (touches to the tracker's case)
settings-general-gesture_control-taps =
    { $amount ->
        [one] 1 tap
       *[other] { $amount } taps
    }
settings-general-gesture_control-quickResetEnabled = Ativar toque para reset rápido
settings-general-gesture_control-quickResetDelay = Delay do reset rápido
settings-general-gesture_control-quickResetTaps = Toques para o reset rápido
settings-general-gesture_control-resetEnabled = Ativar toque para reset
settings-general-gesture_control-resetDelay = Delay do reset
settings-general-gesture_control-resetTaps = Toques para o reset
settings-general-gesture_control-mountingResetEnabled = Toques para o reset de posição
settings-general-gesture_control-mountingResetDelay = Delay do reset de posição
settings-general-gesture_control-mountingResetTaps = Toques para o reset de posição

## Interface settings

settings-general-interface = Interface
settings-general-interface-dev_mode = Modo de desenvolvedor
settings-general-interface-dev_mode-description = Este modo pode ser útil se precisar de dados específicos ou para interagir com trackers conectados a um nível mais avançado
settings-general-interface-dev_mode-label = Modo de desenvolvedor
settings-general-interface-serial_detection = Detecção de dispositivo serial
settings-general-interface-serial_detection-description = Esta opção mostrará um pop-up toda vez que você conectar um novo dispositivo serial que pode ser um tracker. Ajuda a melhorar o processo de configuração de um tracker
settings-general-interface-serial_detection-label = Detecção de dispositivo serial
settings-general-interface-lang = Selecione o idioma
settings-general-interface-lang-description = Alterar o idioma padrão que pretende utilizar
settings-general-interface-lang-placeholder = Selecione o idioma que vai usar

## Serial settings

settings-serial = Console Serial
# This cares about multilines
settings-serial-description =
    Este é um feed de informações ao vivo para comunicação serial.
    Pode ser útil se você precisar saber se o firmware está tendo problemas.
settings-serial-connection_lost = Conexão com o serial perdida, Reconectando...
settings-serial-reboot = Reiniciar
settings-serial-factory_reset = Restaurar para o padrão de fábrica
# This cares about multilines
# <b>text</b> means that the text should be bold
settings-serial-factory_reset-warning =
    <b>Atenção:</b> Isso vai restaurar o tracker para o padrão de fábrica.
    Que significa que as opções de Wi-Fi e calibrações <b>vão ser todos perdidos!</b>
settings-serial-factory_reset-warning-ok = Eu sei o que estou fazendo
settings-serial-factory_reset-warning-cancel = Cancelar
settings-serial-get_infos = Obter informações
settings-serial-serial_select = Selecione uma porta serial
settings-serial-auto_dropdown_item = Auto

## OSC router settings

settings-osc-router = Roteador OSC
# This cares about multilines
settings-osc-router-description =
    Encaminhar mensagens OSC de outro programa.
    Útil para usar outro programa OSC com VRChat, por exemplo.
settings-osc-router-enable = Ativar
settings-osc-router-enable-description = Ligar ou desligar o encaminhamento de mensagens
settings-osc-router-enable-label = Ativar
settings-osc-router-network = Portas de rede
# This cares about multilines
settings-osc-router-network-description =
    Defina as portas para receber e enviar dados
    Esses podem ser as mesmas portas usadas no servidor do SlimeVR
settings-osc-router-network-port_in =
    .label = Porta de entrada
    .placeholder = Porta de entrada (padrão: 9002)
settings-osc-router-network-port_out =
    .label = Porta de saída
    .placeholder = Porta de saída (padrão: 9000)
settings-osc-router-network-address = Endereço de rede
settings-osc-router-network-address-description = Defina o endereço para mandar dados
settings-osc-router-network-address-placeholder = Endereço IPV4

## OSC VRChat settings

settings-osc-vrchat = VRChat OSC Trackers
# This cares about multilines
settings-osc-vrchat-description =
    Mudar opções específicas do VRChat para receber e mandar dados do HMD
    dados de trackers para FBT (funciona no Quest standalone).
settings-osc-vrchat-enable = Ativar
settings-osc-vrchat-enable-description = Ligar ou desligar o envio e recebimento de dados
settings-osc-vrchat-enable-label = Ativar
settings-osc-vrchat-network = Portas de rede
settings-osc-vrchat-network-description = Defina as portas para receber e enviar dados para o VRChat
settings-osc-vrchat-network-port_in =
    .label = Porta de entrada
    .placeholder = Porta de entrada (padrão: 9001)
settings-osc-vrchat-network-port_out =
    .label = Porta de saída
    .placeholder = Porta de saída (padrão: 9000)
settings-osc-vrchat-network-address = Endereço de rede
settings-osc-vrchat-network-address-description = Escolha qual o endereço para enviar dados para o VRChat (verifique as suas opções de Wi-Fi no seu dispositivo)
settings-osc-vrchat-network-address-placeholder = Endereço de ip do VRChat
settings-osc-vrchat-network-trackers = Trackers
settings-osc-vrchat-network-trackers-description = Ligar ou desligar o envio e recepção de dados.
settings-osc-vrchat-network-trackers-chest = Peito
settings-osc-vrchat-network-trackers-waist = Cintura
settings-osc-vrchat-network-trackers-knees = Joelhos
settings-osc-vrchat-network-trackers-feet = Pés
settings-osc-vrchat-network-trackers-elbows = Cotovelos

## Setup/onboarding menu

onboarding-skip = Pular configurações
onboarding-continue = Continuar
onboarding-wip = Trabalho em progresso

## Wi-Fi setup

onboarding-wifi_creds-back = Voltar para introdução
onboarding-wifi_creds = Insira as credenciais de Wi-Fi
# This cares about multilines
onboarding-wifi_creds-description =
    Os Trackers vão usar essas credenciais para conectar à rede sem fio
    Use as credenciais da rede em que você está atualmente conectado
onboarding-wifi_creds-skip = Pular as configurações de Wi-Fi
onboarding-wifi_creds-submit = Enviar!
onboarding-wifi_creds-ssid =
    .label = SSID
    .placeholder = Enter SSID
onboarding-wifi_creds-password =
    .label = Password
    .placeholder = Enter password

## Mounting setup

onboarding-reset_tutorial-back = Voltar para a Calibragem de Posição
onboarding-reset_tutorial = Resetar Tutorial
onboarding-reset_tutorial-description = Esse recurso não está concluído, apenas aperte continue

## Setup start

onboarding-home = Bem vindo ao SlimeVR
# This cares about multilines and it's centered!!
onboarding-home-description =
    Trazendo full-body tracking
    para todos
onboarding-home-start = Vamos configurar!

## Enter VR part of setup

onboarding-enter_vr-back = Voltar para atribuição de Trackers
onboarding-enter_vr-title = Hora de entrar no VR!
onboarding-enter_vr-description = Coloque todos os seus trackers e entre no VR!
onboarding-enter_vr-ready = Estou pronto

## Setup done

onboarding-done-title = Está tudo pronto!
onboarding-done-description = Aproveite sua experiência com full body
onboarding-done-close = Fechar o guia

## Tracker connection setup

onboarding-connect_tracker-back = Voltar para as credenciais de Wi-Fi
onboarding-connect_tracker-title = Conectar os trackers
onboarding-connect_tracker-description-p0 = Agora para a parte divertida, conectando todos os seus trackers!
onboarding-connect_tracker-description-p1 = Simplesmente conecte todos que ainda não estão conectados, via porta USB.
onboarding-connect_tracker-issue-serial = Estou tendo problemas para conectar!
onboarding-connect_tracker-usb = Tracker USB
onboarding-connect_tracker-connection_status-none = Procurando por trackers
onboarding-connect_tracker-connection_status-serial_init = Conectando ao dispositivo serial
onboarding-connect_tracker-connection_status-provisioning = Enviando credenciais de Wi-Fi
onboarding-connect_tracker-connection_status-connecting = Enviando credenciais de Wi-Fi
onboarding-connect_tracker-connection_status-looking_for_server = Procurando servidor
onboarding-connect_tracker-connection_status-connection_error = Não é possível conectar ao Wi-Fi
onboarding-connect_tracker-connection_status-could_not_find_server = Não foi possível conectar ao servidor
onboarding-connect_tracker-connection_status-done = Conectado ao servidor
# $amount (Number) - Amount of trackers connected (this is a number, but you can use CLDR plural rules for your language)
# More info on https://www.unicode.org/cldr/cldr-aux/charts/22/supplemental/language_plural_rules.html
# English in this case only has 2 plural rules, which are "one" and "other",
# we use 0 in an explicit way because there is no plural rule in english for 0, so we directly say
# if $amount is 0 then we say "No trackers connected"
onboarding-connect_tracker-connected_trackers =
    { $amount ->
        [0] No trackers
        [one] 1 tracker
       *[other] { $amount } trackers
    } connected
onboarding-connect_tracker-next = Eu conectei todos os meus trackers

## Tracker assignment setup

onboarding-assign_trackers-back = Voltar para as credenciais de Wi-Fi
onboarding-assign_trackers-title = Atribuir trackers
onboarding-assign_trackers-description = Vamos escolher onde cada tracker vai. Clique no local onde você quer colocar o tracker
# Look at translation of onboarding-connect_tracker-connected_trackers on how to use plurals
# $assigned (Number) - Trackers that have been assigned a body part
# $trackers (Number) - Trackers connected to the server
onboarding-assign_trackers-assigned =
    { $assigned } of { $trackers ->
        [one] 1 tracker
       *[other] { $trackers } trackers
    } assigned
onboarding-assign_trackers-advanced = Mostrar locais de atribuição avançados
onboarding-assign_trackers-next = Atribui todos os trackers

## Tracker assignment warnings

# Note for devs, number is used for representing boolean states per bit.
# $unassigned (Number) - Bits are based on BodyAssignment.ASSIGNMENT_RULES order
onboarding-assign_trackers-warning-LEFT_FOOT =
    { $unassigned ->
        [0] Pé esquerdo está atribuído, porém a canela esquerda, coxa esquerda e peito, quadril ou cintura também precisam ser atribuídos!
        [1] Pé esquerdo está atribuído, porém a coxa esquerda e peito, quadril ou cintura também precisam ser atribuídos!
        [2] Pé esquerdo está atribuído, porém a canela esquerda e peito, quadril ou cintura também precisam ser atribuídos!
        [3] Pé esquerdo está atribuído, porém peito, quadril ou cintura também precisam ser atribuídos!
        [4] Pé esquerdo está atribuído, porém a canela esquerda e coxa esquerda também precisam ser atribuídos!
        [5] Pé esquerdo está atribuído, porém a coxa esquerda também precisa ser atribuída!
        [6] Pé esquerdo está atribuído, porém a canela esquerda também precisa ser atribuída!
       *[unknown] Pé esquerdo está atribuído, porém a parte do corpo desconhecida não atribuída também precisa ser atribuída!
    }
# $unassigned (Number) - Bits are based on BodyAssignment.ASSIGNMENT_RULES order
onboarding-assign_trackers-warning-RIGHT_FOOT =
    { $unassigned ->
        [0] Pé direito está atribuído, porém a canela direita, coxa direita e peito, quadril ou cintura também precisam ser atribuídos!
        [1] Pé direito está atribuído, porém a coxa direita e peito, quadril ou cintura também precisam ser atribuídos!
        [2] Pé direito está atribuído, porém a canela direita e peito, quadril ou cintura também precisam ser atribuídos!
        [3] Pé direito está atribuído, porém peito, quadril ou cintura também precisam ser atribuídos!
        [4] Pé direito está atribuído, porém a canela direita e coxa direita também precisam ser atribuídos!
        [5] Pé direito está atribuído, porém a coxa direita também precisa ser atribuída!
        [6] Pé direito está atribuído, porém a canela direita também precisa ser atribuída!
       *[unknown] Pé direito está atribuído, porém a parte do corpo desconhecida não atribuída também precisa ser atribuída!
    }
# $unassigned (Number) - Bits are based on BodyAssignment.ASSIGNMENT_RULES order
onboarding-assign_trackers-warning-LEFT_LOWER_LEG =
    { $unassigned ->
        [0] Canela esquerda está atribuída, porém a coxa esquerda e peito, quadril ou cintura também precisam ser atribuídos!
        [1] Canela esquerda está atribuída, porém peito, quadril ou cintura também precisam ser atribuídos!
        [2] Canela esquerda está atribuída, porém a coxa direita também precisa ser atribuída!
       *[unknown] Canela esquerda está atribuída, porém a parte do corpo desconhecida não atribuída também precisa ser atribuída!
    }
# $unassigned (Number) - Bits are based on BodyAssignment.ASSIGNMENT_RULES order
onboarding-assign_trackers-warning-RIGHT_LOWER_LEG =
    { $unassigned ->
        [0] Canela direita está atribuída, porém a coxa direita e peito, quadril ou cintura também precisam ser atribuídos!
        [1] Canela direita está atribuída, porém peito, quadril ou cintura também precisam ser atribuídos!
        [2] Canela direita está atribuída, porém a coxa direita também precisa ser atribuída!
       *[unknown] Canela direita está atribuída, porém a parte do corpo desconhecida não atribuída também precisa ser atribuída!
    }
# $unassigned (Number) - Bits are based on BodyAssignment.ASSIGNMENT_RULES order
onboarding-assign_trackers-warning-LEFT_UPPER_LEG =
    { $unassigned ->
        [0] Coxa esquerda está atribuída, porém peito, quadril ou cintura também precisam ser atribuídos!
       *[unknown] Coxa esquerda está atribuída, porém a parte do corpo desconhecida não atribuída também precisa ser atribuída!
    }
# $unassigned (Number) - Bits are based on BodyAssignment.ASSIGNMENT_RULES order
onboarding-assign_trackers-warning-RIGHT_UPPER_LEG =
    { $unassigned ->
        [0] Coxa direita está atribuída, porém peito, quadril ou cintura também precisam ser atribuídos!
       *[unknown] Coxa direita está atribuída, porém a parte do corpo desconhecida não atribuída também precisa ser atribuída!
    }
# $unassigned (Number) - Bits are based on BodyAssignment.ASSIGNMENT_RULES order
onboarding-assign_trackers-warning-HIP =
    { $unassigned ->
        [0] Quadril está atribuído, porém o peito também precisa ser atribuído!
       *[unknown] Quadril está atribuído, porém a parte do corpo desconhecida não atribuída também precisa ser atribuída!
    }
# $unassigned (Number) - Bits are based on BodyAssignment.ASSIGNMENT_RULES order
onboarding-assign_trackers-warning-WAIST =
    { $unassigned ->
        [0] Cintura está atribuído, porém o peito também precisa ser atribuído!
       *[unknown] Cintura está atribuído, porém a parte do corpo desconhecida não atribuída também precisa ser atribuída!
    }

## Tracker manual mounting setup

onboarding-manual_mounting-back = Voltar para entrar no VR
onboarding-manual_mounting = Posicionamento Manual
onboarding-manual_mounting-description = Clique em cada tracker e selecione de que maneira estão posicionados
onboarding-manual_mounting-auto_mounting = Posicionamento automática
onboarding-manual_mounting-next = Próximo passo

## Tracker automatic mounting setup

onboarding-automatic_mounting-back = Voltar para entrar no VR
onboarding-automatic_mounting-title = Calibragem de Posicionamento
onboarding-automatic_mounting-description = Para os trackers do SlimeVR funcionar, nós precisamos atribuir a rotação de posicionamento dos seus trackers para alinhar com a posição física de seus trackers.
onboarding-automatic_mounting-manual_mounting = Definir manualmente a posição
onboarding-automatic_mounting-next = Próximo passo
onboarding-automatic_mounting-prev_step = Passo anterior
onboarding-automatic_mounting-done-title = Rotações de posição calibradas.
onboarding-automatic_mounting-done-description = Sua calibragem de posicionamento está completa!
onboarding-automatic_mounting-done-restart = Voltar ao início
onboarding-automatic_mounting-mounting_reset-title = Reset de Posição
onboarding-automatic_mounting-mounting_reset-step-0 = 1. Agache-se em uma pose de "esqui" com as pernas dobradas, a parte superior do corpo inclinada para a frente e os braços dobrados.
onboarding-automatic_mounting-mounting_reset-step-1 = 2. Pressione o botão "Resetar Posição" e aguarde 3 segundos antes que as rotações de posição dos trackers sejam redefinidas.
onboarding-automatic_mounting-preparation-title = Preparação
onboarding-automatic_mounting-preparation-step-0 = 1. Fique de pé com os braços ao lado do corpo.
onboarding-automatic_mounting-preparation-step-1 = 2. Pressione o botão "Reset" e aguarde 3 segundos antes que os rastreadores sejam reiniciados.
onboarding-automatic_mounting-put_trackers_on-title = Coloque seus trackers
onboarding-automatic_mounting-put_trackers_on-description = Para calibrar as rotações de posicionamento, usaremos os trackers que você atribuiu. Coloque todos os seus trackers, você pode ver qual é qual na figura na direita.
onboarding-automatic_mounting-put_trackers_on-next = Coloquei todos os meus trackers

## Tracker manual proportions setup

onboarding-manual_proportions-back = Voltar para o tutorial de reset
onboarding-manual_proportions-title = Proporções de corpo manuais
onboarding-manual_proportions-precision = Ajuste de precisão
onboarding-manual_proportions-auto = Calibragem Automática

## Tracker automatic proportions setup

onboarding-automatic_proportions-back = Voltar para o tutorial de reset
onboarding-automatic_proportions-title = Meça seu corpo
onboarding-automatic_proportions-description = Para os trackers SlimeVR funcionarem, precisamos saber o tamanho dos seus ossos. Essa curta calibragem vai medir isso para você.
onboarding-automatic_proportions-manual = Calibragem manual
onboarding-automatic_proportions-prev_step = Passo anterior
onboarding-automatic_proportions-put_trackers_on-title = Coloque seus trackers
onboarding-automatic_proportions-put_trackers_on-description = Para calibrar suas proporções, usaremos os trackers que você atribuiu. Coloque todos os seus trackers, você pode ver quais são quais na figura à direita.
onboarding-automatic_proportions-put_trackers_on-next = Coloquei todos os meus trackers
onboarding-automatic_proportions-preparation-title = Preparação
onboarding-automatic_proportions-preparation-description = Coloque uma cadeira diretamente atrás de você dentro da sua área de jogo(Play space). Esteja preparado para sentar durante a configuração de autobone.
onboarding-automatic_proportions-preparation-next = Estou em frente a uma cadeira
onboarding-automatic_proportions-start_recording-title = Esteja preparado para se mexer
onboarding-automatic_proportions-start_recording-description = Começaremos a gravar algumas poses e movimentos específicos. Estes serão solicitados na próxima tela. Esteja preparado para começar quando o botão for pressionado!
onboarding-automatic_proportions-start_recording-next = Começar Gravação
onboarding-automatic_proportions-recording-title = GRAVAR
onboarding-automatic_proportions-recording-description-p0 = Gravação em progresso...
onboarding-automatic_proportions-recording-description-p1 = Faça os movimentos apresentados abaixo:
onboarding-automatic_proportions-recording-steps-0 = Dobre os joelhos algumas vezes.
onboarding-automatic_proportions-recording-steps-1 = Sente-se na cadeira e se levante.
onboarding-automatic_proportions-recording-steps-2 = Gire seu tronco para esquerda, e incline para direita.
onboarding-automatic_proportions-recording-steps-3 = Gire seu tronco para direita, e incline para esquerda.
onboarding-automatic_proportions-recording-steps-4 = Mexa-se até o tempo terminar.
onboarding-automatic_proportions-recording-processing = Processando o resultado
# $time (Number) - Seconds left for the automatic calibration recording to finish (max 15)
onboarding-automatic_proportions-recording-timer =
    { $time ->
        [one] 1 second left
       *[other] { $time } seconds left
    }
onboarding-automatic_proportions-verify_results-title = Verificar os resultados
onboarding-automatic_proportions-verify_results-description = Verifique os resultados abaixo, parecem corretos?
onboarding-automatic_proportions-verify_results-results = Gravando os resultados
onboarding-automatic_proportions-verify_results-processing = Processando o resultado
onboarding-automatic_proportions-verify_results-redo = Refazer a gravação
onboarding-automatic_proportions-verify_results-confirm = Eles estão corretos
onboarding-automatic_proportions-done-title = Corpo medido e salvo.
onboarding-automatic_proportions-done-description = Sua calibragem de proporção de corpo está completa!

## Home

home-no_trackers = Nenhum tracker detectado ou atribuído
