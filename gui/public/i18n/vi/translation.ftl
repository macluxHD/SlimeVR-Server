### SlimeVR complete GUI translations


# Please developers (not translators) don't reuse a key inside another key
# or concat text with a translation string in the code, use the appropriate
# features like variables and selectors in each appropriate case!
# And also comment the string if it's something not easy to translate, so you help
# translators on what it means


## Websocket (server) status

websocket-connecting = Đang kết nối với máy chủ
websocket-connection_lost = Kết nối với máy chủ đã mất. Đang kết nối lại...

## Tips

tips-find_tracker = Không rõ tracker nào đang được chọn? Di chuyển nó và trong menu sẽ sáng lên tracker đó
tips-do_not_move_heels = Không di chuyển gót chân trong khi đo

## Body parts

body_part-NONE = Chưa được gán
body_part-HEAD = Đầu
body_part-NECK = Cổ
body_part-RIGHT_SHOULDER = Vai phải
body_part-RIGHT_UPPER_ARM = Bắp tay phải
body_part-RIGHT_LOWER_ARM = Cẳng tay phải
body_part-RIGHT_HAND = Tay phải
body_part-RIGHT_UPPER_LEG = Bắp chân phải
body_part-RIGHT_LOWER_LEG = Cẳng chân phải
body_part-RIGHT_FOOT = Bàn chân phải
body_part-RIGHT_CONTROLLER = Tay cầm bên phải
body_part-CHEST = Ngực
body_part-WAIST = Eo
body_part-HIP = Hông
body_part-LEFT_SHOULDER = Vai trái
body_part-LEFT_UPPER_ARM = Bắp tay trái
body_part-LEFT_LOWER_ARM = Cẳng tay trái
body_part-LEFT_HAND = Tay trái
body_part-LEFT_UPPER_LEG = Bắp chân trái
body_part-LEFT_LOWER_LEG = Cẳng chân trái
body_part-LEFT_FOOT = Bàn chân trái
body_part-LEFT_CONTROLLER = Tay cầm bên trái

## Proportions

skeleton_bone-NONE = Chưa được gán
skeleton_bone-HEAD = Sai số đầu
skeleton_bone-NECK = Chiều dài cổ
skeleton_bone-CHEST = Khoảng cách ngực
skeleton_bone-CHEST_OFFSET = Sai số ngực
skeleton_bone-WAIST = Khoảng cách eo
skeleton_bone-HIP = Khoảng cách hông
skeleton_bone-HIP_OFFSET = Sai số hông
skeleton_bone-HIPS_WIDTH = Chiều rộng hông
skeleton_bone-UPPER_LEG = Chiều dài bắp chân
skeleton_bone-LOWER_LEG = Chiều dài cẳng chân
skeleton_bone-FOOT_LENGTH = Chiều dài bàn chân
skeleton_bone-FOOT_SHIFT = Sai số bàn chân
skeleton_bone-SKELETON_OFFSET = Sai số thân
skeleton_bone-SHOULDERS_DISTANCE = Khoảng cách vai
skeleton_bone-SHOULDERS_WIDTH = Chiều rộng vai
skeleton_bone-UPPER_ARM = Chiều dài bắp tay
skeleton_bone-LOWER_ARM = Chiều dài cẳng tay
skeleton_bone-CONTROLLER_Y = Khoảng cách tay cầm theo trục Y
skeleton_bone-CONTROLLER_Z = Khoảng cách tay cầm theo trục Z
skeleton_bone-ELBOW_OFFSET = Sai số khuỷu tay

## Tracker reset buttons

reset-reset_all = Đặt lại tất cả bộ phận
reset-full = Đặt lại
reset-mounting = Đặt lại hướng gắn tracker
reset-quick = Đặt lại nhanh

## Serial detection stuff

serial_detection-new_device-p0 = Tìm thấy thiết bị mới!
serial_detection-new_device-p1 = Nhập thông tin Wi-Fi
serial_detection-new_device-p2 = Chọn hành động cần thực hiện
serial_detection-open_wifi = Kết nối đến Wi-Fi
serial_detection-open_serial = Mở cổng Serial
serial_detection-submit = Gửi
serial_detection-close = Đóng

## Navigation bar

navbar-home = Trang chủ
navbar-body_proportions = Tỉ lệ cơ thể
navbar-trackers_assign = Phân bố tracker
navbar-mounting = Cân chỉnh hướng gắn tracker
navbar-onboarding = Trình thiết lập
navbar-settings = Cài đặt

## Bounding volume hierarchy recording

bvh-start_recording = Ghi BVH
bvh-recording = Đang ghi...

## Widget: Overlay settings

widget-overlay = Overlay
widget-overlay-is_visible_label = Xem overlay trên SteamVR
widget-overlay-is_mirrored_label = Xem overlay trong gương

## Widget: Developer settings

widget-developer_mode = Chế độ nhà phát triển
widget-developer_mode-high_contrast = Chế độ tương phản cao
widget-developer_mode-precise_rotation = Hiển thị góc quay chính xác
widget-developer_mode-fast_data_feed = Tăng tốc độ gửi dữ liệu
widget-developer_mode-filter_slimes_and_hmd = Lọc dữ liệu tracker và kính
widget-developer_mode-sort_by_name = Sắp xếp theo tên
widget-developer_mode-raw_slime_rotation = Sử dụng giá trị góc quay thực cho tracker
widget-developer_mode-more_info = Thêm thông tin

## Widget: IMU Visualizer

widget-imu_visualizer = Góc quay
widget-imu_visualizer-rotation_raw = Gốc
widget-imu_visualizer-rotation_preview = Qua xử lí

## Tracker status

tracker-status-none = Không có trạng thái
tracker-status-busy = Bận
tracker-status-error = Lỗi
tracker-status-disconnected = Đã ngắt kết nối
tracker-status-occluded = Nghẽn
tracker-status-ok = Đã kết nối

## Tracker status columns

tracker-table-column-name = Tên
tracker-table-column-type = Loại
tracker-table-column-battery = Pin
tracker-table-column-ping = Ping
tracker-table-column-tps = TPS
tracker-table-column-temperature = Nhiệt độ (°C)
tracker-table-column-linear-acceleration = Tốc độ X/Y/Z
tracker-table-column-rotation = Góc quay X/Y/Z
tracker-table-column-position = Tọa độ X/Y/Z
tracker-table-column-url = Đường dẫn

## Tracker rotation

tracker-rotation-front = Trước
tracker-rotation-left = Trái
tracker-rotation-right = Phải
tracker-rotation-back = Sau

## Tracker information

tracker-infos-manufacturer = Nhà sản xuất
tracker-infos-display_name = Tên hiển thị
tracker-infos-custom_name = Tên gọi
tracker-infos-url = Đường dẫn

## Tracker settings

tracker-settings-back = Quay lại danh sách tracker
tracker-settings-title = Cài đặt
tracker-settings-assignment_section = Vị trí
tracker-settings-assignment_section-description = Vị trí của tracker trên cơ thể
tracker-settings-assignment_section-edit = Thay đổi vị trí
tracker-settings-mounting_section = Vị trí đặt
tracker-settings-mounting_section-description = Tracker được đặt ở đâu?
tracker-settings-mounting_section-edit = Thay đổi chỗ đặt
tracker-settings-drift_compensation_section = Cho phép bù trừ sai số
tracker-settings-drift_compensation_section-description = Tracker này được phép bù trừ cho sai số của nó không?
tracker-settings-drift_compensation_section-edit = Cho phép bù trừ sai số
# The .<name> means it's an attribute and it's related to the top key.
# In this case that is the settings for the assignment section.
tracker-settings-name_section = Tên tracker
tracker-settings-name_section-description = Đặt cho nó một cái tên đẹp :3
tracker-settings-name_section-placeholder = Chân trái của JINODK

## Tracker part card info

tracker-part_card-no_name = Không tên
tracker-part_card-unassigned = Chưa gán vị trí

## Body assignment menu

body_assignment_menu = Bạn muốn gán tracker này cho bộ phận nào?
body_assignment_menu-description = Chọn vị trí bạn muốn gán tracker, ngoài ra bạn cũng có thể quản lí vị trí tất cả các tracker cùng một lúc
body_assignment_menu-show_advanced_locations = Xem thêm vị trí đặt
body_assignment_menu-manage_trackers = Quản lí tất cả tracker
body_assignment_menu-unassign_tracker = Bỏ gán tracker

## Tracker assignment menu

# A -translation_key (with a dash in the front) means that it's a label.
# It can only be used in the translation file, it's nice for reusing names and that kind of stuff.
#
# We are using it here because english doesn't require changing the text in each case but
# maybe your language does.
-tracker_selection-part = Tracker nào cho vị trí
tracker_selection_menu-NONE = Bạn muốn bỏ gán tracker nào?
tracker_selection_menu-HEAD = { -tracker_selection-part } đầu?
tracker_selection_menu-NECK = { -tracker_selection-part } cổ?
tracker_selection_menu-RIGHT_SHOULDER = { -tracker_selection-part } vai phải?
tracker_selection_menu-RIGHT_UPPER_ARM = { -tracker_selection-part } bắp tay phải?
tracker_selection_menu-RIGHT_LOWER_ARM = { -tracker_selection-part } cẳng tay phải?
tracker_selection_menu-RIGHT_HAND = { -tracker_selection-part } tay phải?
tracker_selection_menu-RIGHT_UPPER_LEG = { -tracker_selection-part } bắp chân phải?
tracker_selection_menu-RIGHT_LOWER_LEG = { -tracker_selection-part } cẳng chân phải?
tracker_selection_menu-RIGHT_FOOT = { -tracker_selection-part } bàn chân phải?
tracker_selection_menu-RIGHT_CONTROLLER = { -tracker_selection-part } tay cầm bên phải?
tracker_selection_menu-CHEST = { -tracker_selection-part } ngực?
tracker_selection_menu-WAIST = { -tracker_selection-part } eo?
tracker_selection_menu-HIP = { -tracker_selection-part } hông?
tracker_selection_menu-LEFT_SHOULDER = { -tracker_selection-part } vai trái?
tracker_selection_menu-LEFT_UPPER_ARM = { -tracker_selection-part } bắp tay trái?
tracker_selection_menu-LEFT_LOWER_ARM = { -tracker_selection-part } cẳng tay trái?
tracker_selection_menu-LEFT_HAND = { -tracker_selection-part } tay trái?
tracker_selection_menu-LEFT_UPPER_LEG = { -tracker_selection-part } bắp chân trái?
tracker_selection_menu-LEFT_LOWER_LEG = { -tracker_selection-part } cẳng chân trái?
tracker_selection_menu-LEFT_FOOT = { -tracker_selection-part } bàn chân trái?
tracker_selection_menu-LEFT_CONTROLLER = { -tracker_selection-part } tay cầm bên trái?
tracker_selection_menu-unassigned = Chưa gắn vị trí
tracker_selection_menu-assigned = Đã gán vị trí
tracker_selection_menu-dont_assign = Không gắn

## Mounting menu

mounting_selection_menu = Bạn muốn gắn tracker này cho bộ phận nào?
mounting_selection_menu-close = Đóng

## Sidebar settings

settings-sidebar-title = Cài đặt
settings-sidebar-general = Cài đặt chung
settings-sidebar-tracker_mechanics = Cơ chế tracker
settings-sidebar-fk_settings = Cài đặt tracker
settings-sidebar-gesture_control = Cử chỉ điều khiển
settings-sidebar-interface = Giao diện
settings-sidebar-osc_router = Router OSC
settings-sidebar-utils = Công cụ
settings-sidebar-serial = Cổng Serial

## SteamVR settings

settings-general-steamvr = SteamVR
settings-general-steamvr-subtitle = Tracker SteamVR
# Not all translation keys support multiline, only the ones that specify it will actually
# split it in lines (that also means you can split in lines however you want in those).
# The first spaces (not tabs) for indentation will be ignored, just to make the file look nice when writing.
# This one is one of this cases that cares about multilines
settings-general-steamvr-description =
    Bật hoặc tắt tracker SteamVR.
    Hữu dụng nếu game chỉ hỗ trợ số lượng tracker giới hạn.
settings-general-steamvr-trackers-waist = Eo
settings-general-steamvr-trackers-chest = Ngực
settings-general-steamvr-trackers-feet = Bàn chân
settings-general-steamvr-trackers-knees = Đầu gối
settings-general-steamvr-trackers-elbows = Khuỷu tay
settings-general-steamvr-trackers-hands = Tay

## Tracker mechanics

settings-general-tracker_mechanics = Cơ chế tracker
settings-general-tracker_mechanics-filtering = Lọc nhiễu
# This also cares about multilines
settings-general-tracker_mechanics-filtering-description =
    Chọn kiểu lọc nhiễu cho tracker
    "Dự đoán" sẽ dự đoán chuyển động trong khi "Khử nhiễu" sẽ làm chuyển động mềm mại hơn
settings-general-tracker_mechanics-filtering-type = Kiểu lọc
settings-general-tracker_mechanics-filtering-type-none = Không lọc
settings-general-tracker_mechanics-filtering-type-none-description = Sử dụng giá trị thực, không áp dụng bất kì bộ lọc nào
settings-general-tracker_mechanics-filtering-type-smoothing = Khử nhiễu
settings-general-tracker_mechanics-filtering-type-smoothing-description = Làm chuyển động mềm mại hơn nhưng có thể tăng độ trễ
settings-general-tracker_mechanics-filtering-type-prediction = Dự đoán
settings-general-tracker_mechanics-filtering-type-prediction-description = Giảm độ trễ và làm chuyển động chân thật hơn, có thể khiến chuyển động không mượt mà
settings-general-tracker_mechanics-filtering-amount = Mức độ lọc
settings-general-tracker_mechanics-drift_compensation = Bù trừ sai số
# This cares about multilines
settings-general-tracker_mechanics-drift_compensation-description =
    Bù trừ sai lệch trục ngang của cảm biến bằng cách thêm một sai lệch chống lại nó
    Thay đổi mức độ bù trừ và số lần đặt lại được áp dụng bù trừ
settings-general-tracker_mechanics-drift_compensation-enabled-label = Bù trừ sai số
settings-general-tracker_mechanics-drift_compensation-amount-label = Mức độ bù trừ
settings-general-tracker_mechanics-drift_compensation-max_resets-label = Số lần đặt lại được áp dụng bù trừ

## FK/Tracking settings

settings-general-fk_settings = Cài đặt nâng cao
settings-general-fk_settings-leg_tweak = Chân
settings-general-fk_settings-leg_tweak-description = "Ngăn xuyên sàn" có thể giảm thiểu khả năng chân xuống thấp hơn sàn sau khi đặt lại vị trí tracker, có thể gây vấn đề nếu đang đứng bằng đầu gối. "Sửa trượt" giúp giảm thiểu tình trạng chân có chuyển động nhỏ so với sàn khi đứng yên, có thể làm giảm độ chính xác với một số chuyển động cụ thể
# Floor clip:
# why the name - came from the idea of noclip in video games, but is the opposite where clipping to the floor is a desired feature
# definition - Prevents the foot trackers from going lower than they where when a reset was performed
settings-general-fk_settings-leg_tweak-floor_clip = Ngăn xuyên sàn
# Skating correction:
# why the name - without this enabled the feet will often slide across the ground as if your skating across the ground,
# since this largely prevents this it corrects for it hence skating correction (note this may be renamed to sliding correction)
# definition - Guesses when each foot is in contact with the ground and uses that information to improve tracking
settings-general-fk_settings-leg_tweak-skating_correction = Sửa trượt
settings-general-fk_settings-leg_tweak-skating_correction-amount = Mức độ sửa
settings-general-fk_settings-arm_fk = Track cánh tay
settings-general-fk_settings-arm_fk-description = Thay đổi cách cánh tay được track
settings-general-fk_settings-arm_fk-force_arms = Lấy dữ liệu cánh tay từ kính
settings-general-fk_settings-skeleton_settings = Cài đặt khung cơ thể
settings-general-fk_settings-skeleton_settings-description = Bật hoặc tắt các cài đặt về khung cơ thể. Các lựa chọn này nên được giữ bật
settings-general-fk_settings-skeleton_settings-extended_spine = Xương sống kéo dài
settings-general-fk_settings-skeleton_settings-extended_pelvis = Xương chậu kéo dài
settings-general-fk_settings-skeleton_settings-extended_knees = Đầu gối kéo dài
settings-general-fk_settings-vive_emulation-title = Giả lập tracker Vive
settings-general-fk_settings-vive_emulation-description = Giả lập cách tracker của Vive gặp vấn đề với việc theo dõi eo, đây là 1 tính năng được làm cho vui và sẽ làm giảm độ chính xác
settings-general-fk_settings-vive_emulation-label = Giả lập tracker Vive

## Gesture control settings (tracker tapping)

settings-general-gesture_control = Cử chỉ điều khiển
settings-general-gesture_control-subtitle = Chạm để đặt lại
settings-general-gesture_control-description = Cho phép chạm vào tracker để đặt lại vị trí, chạm hai lần vào tracker cao nhất ở thân để đặt lại nhanh, chạm hai lần vào tracker cao nhất ở chân trái để đặt lại, chạm hai lần vào tracker cao nhất ở chân phải để đặt lại vị trí gắn tracker. Cử chỉ chỉ được tiếp nhận khi thời gian giữa hai lần chạm ngắn hơn 0.6 giây.
# This is a unit: 3 taps, 2 taps, 1 tap
# $amount (Number) - Amount of taps (touches to the tracker's case)
settings-general-gesture_control-taps =
    { $amount ->
        [one] 1 tap
       *[other] { $amount } lần
    }
settings-general-gesture_control-quickResetEnabled = Chạm để đặt lại nhanh
settings-general-gesture_control-quickResetDelay = Thời gian delay trước khi đặt lại nhanh
settings-general-gesture_control-quickResetTaps = Số lần chạm cho đặt lại nhanh
settings-general-gesture_control-resetEnabled = Chạm để đặt lại
settings-general-gesture_control-resetDelay = Thời gian delay trước khi đặt lại
settings-general-gesture_control-resetTaps = Số lần chạm cho đặt lại
settings-general-gesture_control-mountingResetEnabled = Chạm để đặt lại hướng gắn tracker
settings-general-gesture_control-mountingResetDelay = Thời gian delay trước khi đặt lại hướng gắn tracker
settings-general-gesture_control-mountingResetTaps = Số lần chạm cho đặt lại hướng gắn tracker

## Interface settings

settings-general-interface = Giao diện
settings-general-interface-dev_mode = Chế độ nhà phát triển
settings-general-interface-dev_mode-description = Hữu dụng nếu cần thêm thông tin chi tiết của tracker hay can thiệp sâu hơn vào tracker
settings-general-interface-dev_mode-label = Chế độ nhà phát triển
settings-general-interface-serial_detection = Nhận dạng thiết bị Serial mới
settings-general-interface-serial_detection-description = Hiển thị pop-up mỗi lần một thiết bị Serial mới được kết nối qua USB (có thể là tracker), giúp cải thiện quá trình thiết lập tracker
settings-general-interface-serial_detection-label = Nhận dạng thiết bị Serial mới
settings-general-interface-lang = Thay đổi ngôn ngữ (Change language)
settings-general-interface-lang-description = Đổi ngôn ngữ hiển thị (Change the default language you want to use)
settings-general-interface-lang-placeholder = Chọn ngôn ngữ để sử dụng (Select the language to use)

## Serial settings

settings-serial = Cổng Serial
# This cares about multilines
settings-serial-description =
    Đây là cổng giao tiếp Serial trực tiếp với tracker
    Hữu dụng nếu cần kiểm tra tracker có hoạt động như mong muốn hay không
settings-serial-connection_lost = Kết nối đến Serial đã mất, đang kết nối lại...
settings-serial-reboot = Khởi động lại
settings-serial-factory_reset = Khôi phục cài đặt gốc
settings-serial-get_infos = Lấy thông tin
settings-serial-serial_select = Chọn cổng Serial
settings-serial-auto_dropdown_item = Tự động

## OSC router settings

settings-osc-router = Router OSC
# This cares about multilines
settings-osc-router-description =
    Chuyển tiếp dữ liệu OSC từ phần mềm khác
    Hữu dụng cho việc sử dụng phần mềm OSC khác với VRChat, ...
settings-osc-router-enable = Chuyển tiếp dữ liệu OSC
settings-osc-router-enable-description = Cho phép chuyển tiếp dữ liệu OSC
settings-osc-router-enable-label = Chuyển tiếp dữ liệu OSC
settings-osc-router-network = Cổng mạng
# This cares about multilines
settings-osc-router-network-description =
    Đặt cổng nhận và gửi dữ liệu OSC
    Có thể dùng chung cổng với server SlimeVR
settings-osc-router-network-port_in =
    .label = Cổng vào
    .placeholder = Cổng vào (Mặc định: 9002)
settings-osc-router-network-port_out =
    .label = Cổng ra
    .placeholder = Cổng ra (Mặc định: 9000)
settings-osc-router-network-address = Địa chỉ mạng
settings-osc-router-network-address-description = Địa chỉ mạng mà SlimeVR sẽ gửi dữ liệu OSC đến
settings-osc-router-network-address-placeholder = Địa chỉ IPv4

## OSC VRChat settings

settings-osc-vrchat = VRChat OSC Trackers
# This cares about multilines
settings-osc-vrchat-description =
    Thay đổi các cài đặt liên quan đến VRChat để nhận dữ liệu từ kính và
    gửi dữ liệu tracker cho Full-body tracking (hoạt động với kính ở chế độ standalone)
settings-osc-vrchat-enable = Dữ liệu OSC
settings-osc-vrchat-enable-description = Cho phép nhận và gửi dữ liệu OSC
settings-osc-vrchat-enable-label = Giao tiếp dữ liệu OSC
settings-osc-vrchat-network = Cổng mạng
settings-osc-vrchat-network-description = Chọn cổng mạng để nhận và gửi dữ liệu OSC đến VRChat
settings-osc-vrchat-network-port_in =
    .label = Cổng vào
    .placeholder = Cổng vào (Mặc định: 9001)
settings-osc-vrchat-network-port_out =
    .label = Cổng ra
    .placeholder = Cổng ra (Mặc định: 9000)
settings-osc-vrchat-network-address = Địa chỉ mạng
settings-osc-vrchat-network-address-description = Địa chỉ mạng mà SlimeVR sẽ gửi dữ liệu OSC đến VRChat (có thể tìm thấy địa chỉ mạng trong menu cài đặt Wi-Fi)
settings-osc-vrchat-network-address-placeholder = Địa chỉ IP của thiết bị chơi VRChat
settings-osc-vrchat-network-trackers = Cấu hình Tracker
settings-osc-vrchat-network-trackers-description = Chọn các tracker mà SlimeVR sẽ gửi dữ liệu OSC đến VRChat
settings-osc-vrchat-network-trackers-chest = Ngực
settings-osc-vrchat-network-trackers-waist = Eo
settings-osc-vrchat-network-trackers-knees = Đầu gối
settings-osc-vrchat-network-trackers-feet = Bàn chân
settings-osc-vrchat-network-trackers-elbows = Khuỷu tay

## Setup/onboarding menu

onboarding-skip = Bỏ qua cài đặt
onboarding-continue = Tiếp tục
onboarding-wip = Chưa hoàn thiện

## Wi-Fi setup

onboarding-wifi_creds-back = Quay lại giới thiệu
onboarding-wifi_creds = Nhập thông tin Wi-Fi
# This cares about multilines
onboarding-wifi_creds-description =
    Tracker sẽ sử dụng thông tin này để kết nối đến mạng
    Hãy nhập thông tin mạng Wi-Fi bạn đang dùng
onboarding-wifi_creds-skip = Bỏ qua cài đặt Wi-Fi
onboarding-wifi_creds-submit = Gửi
onboarding-wifi_creds-ssid =
    .label = Tên hiển thị
    .placeholder = Nhập tên Wi-Fi
onboarding-wifi_creds-password =
    .label = Mật khẩu
    .placeholder = và mật khẩu

## Mounting setup

onboarding-reset_tutorial-back = Quay lại cân chỉnh vị trí gắn tracker
onboarding-reset_tutorial = Làm lại
onboarding-reset_tutorial-description = Tính năng này chưa hoàn thiện, vui lòng bấm tiếp tục và quay lại sau

## Setup start

onboarding-home = Chào mừng bạn đến với SlimeVR!
# This cares about multilines and it's centered!!
onboarding-home-description =
    Mang FBT đến
    với mọi người
onboarding-home-start = Bắt đầu thiết lập!

## Enter VR part of setup

onboarding-enter_vr-back = Quay lại gán tracker
onboarding-enter_vr-title = Chuẩn bị cho việc cân chỉnh trong VR
onboarding-enter_vr-description = Đeo tất cả tracker và vào VR trước khi tiếp tục
onboarding-enter_vr-ready = Sẵn sàng

## Setup done

onboarding-done-title = Hoàn thành!
onboarding-done-description = Bạn đã hoàn tất quá trình thiết lập cơ bản
onboarding-done-close = Đóng hướng dẫn

## Tracker connection setup

onboarding-connect_tracker-back = Quay lại cài đặt Wi-Fi
onboarding-connect_tracker-title = Kết nối tracker
onboarding-connect_tracker-description-p0 = Cập nhật thông tin Wi-Fi cho tracker
onboarding-connect_tracker-description-p1 = Hãy kết nối các tracker chưa thiết lập qua cổng USB
onboarding-connect_tracker-issue-serial = Có vấn đề với việc kết nối? Kiểm tra thông tin qua cổng Serial
onboarding-connect_tracker-usb = USB Tracker
onboarding-connect_tracker-connection_status-connecting = Đang gửi thông tin Wi-Fi
onboarding-connect_tracker-connection_status-connected = Đã kết nối đến Wi-Fi
onboarding-connect_tracker-connection_status-error = Không thể kết nối đến Wi-Fi
onboarding-connect_tracker-connection_status-start_connecting = Đang tìm tracker
onboarding-connect_tracker-connection_status-handshake = Đã kết nối đến máy chủ SlimeVR
# $amount (Number) - Amount of trackers connected (this is a number, but you can use CLDR plural rules for your language)
# More info on https://www.unicode.org/cldr/cldr-aux/charts/22/supplemental/language_plural_rules.html
# English in this case only has 2 plural rules, which are "one" and "other",
# we use 0 in an explicit way because there is no plural rule in english for 0, so we directly say
# if $amount is 0 then we say "No trackers connected"
onboarding-connect_tracker-connected_trackers =
    { $amount ->
        [0] Không có tracker
        [one] 1 tracker
       *[other] { $amount } tracker
    } đã giao
onboarding-connect_tracker-next = Đã kết nối với tất cả tracker

## Tracker assignment setup

onboarding-assign_trackers-back = Quay lại cài đặt Wi-Fi
onboarding-assign_trackers-title = Gán tracker
onboarding-assign_trackers-description = Chọn vị trí bạn muốn gán tracker bằng cách nhấn vào tên bộ phận muốn gán và chọn tracker
# Look at translation of onboarding-connect_tracker-connected_trackers on how to use plurals
# $assigned (Number) - Trackers that have been assigned a body part
# $trackers (Number) - Trackers connected to the server
onboarding-assign_trackers-assigned =
    { $assigned } trên { $trackers ->
        [one] 1 tracker
       *[other] { $trackers } tracker
    } đã giao
onboarding-assign_trackers-advanced = Xem thêm vị trí đặt
onboarding-assign_trackers-next = Hoàn thành

## Tracker manual mounting setup

onboarding-manual_mounting-back = Quay lại chuẩn bị cân chỉnh
onboarding-manual_mounting = Cân chỉnh thủ công
onboarding-manual_mounting-description = Chọn từng tracker và chọn hướng nó được gắn
onboarding-manual_mounting-auto_mounting = Cân chỉnh tự động
onboarding-manual_mounting-next = Tiếp tục

## Tracker automatic mounting setup

onboarding-automatic_mounting-back = Quay lại chuẩn bị cân chỉnh
onboarding-automatic_mounting-title = Cân chỉnh hướng gắn
onboarding-automatic_mounting-description = SlimeVR cần biết hướng gắn thực của tracker để hoạt động đúng, làm theo hướng dẫn để cân chỉnh hướng gắn tự động
onboarding-automatic_mounting-manual_mounting = Cân chỉnh thủ công
onboarding-automatic_mounting-next = Tiếp tục
onboarding-automatic_mounting-prev_step = Quay lại
onboarding-automatic_mounting-done-title = Đã cân chỉnh hướng gắn
onboarding-automatic_mounting-done-description = Cài đặt vị trí đã hoàn thành!
onboarding-automatic_mounting-done-restart = Thử lại
onboarding-automatic_mounting-mounting_reset-title = Đặt lại hướng gắn
onboarding-automatic_mounting-mounting_reset-step-0 = 1. Đứng khom người như tư thế trượt tuyết với đầu gối khom lại, thân trên hướng tới trước và hai tay co lại để giữ thăng bằng như hình bên
onboarding-automatic_mounting-mounting_reset-step-1 = 2. Nhấn nút đặt lại và chờ 3 giây trước khi hệ thống cân chỉnh hướng gắn tracker
onboarding-automatic_mounting-preparation-title = Chuẩn bị tư thế
onboarding-automatic_mounting-preparation-step-0 = 1. Đứng thẳng với hai tay duỗi thẳng
onboarding-automatic_mounting-preparation-step-1 = 2. Nhấn nút đặt lại và chờ 3 giây trước khi tracker được đặt lại.
onboarding-automatic_mounting-put_trackers_on-title = Đeo tracker lên người
onboarding-automatic_mounting-put_trackers_on-description = Để cân chỉnh hướng gắn của tracker, SlimeVR sẽ tiến hành đo góc nghiêng của tracker khi đang đeo để cân chỉnh hướng gắn, hãy đeo tracker theo đúng vị trí đã thiết lập
onboarding-automatic_mounting-put_trackers_on-next = Tiếp tục

## Tracker manual proportions setup

onboarding-manual_proportions-back = Quay lại cân chỉnh hướng gắn
onboarding-manual_proportions-title = Đo kích thước cơ thể thủ công
onboarding-manual_proportions-precision = Cân chỉnh cụ thể (giảm hệ số chỉnh)
onboarding-manual_proportions-auto = Đo kích thước cơ thể tự động

## Tracker automatic proportions setup

onboarding-automatic_proportions-back = Quay lại cân chỉnh hướng gắn
onboarding-automatic_proportions-title = Đo kích thước cơ thể
onboarding-automatic_proportions-description = Để tracker có vị trí chính xác, SlimeVR cần biết các chỉ số kích thước cơ thể, làm theo hướng dẫn để đo kích thước cơ thể tự động
onboarding-automatic_proportions-manual = Đo kích thước cơ thể thủ công
onboarding-automatic_proportions-prev_step = Quay lại
onboarding-automatic_proportions-put_trackers_on-title = Đeo tracker lên người
onboarding-automatic_proportions-put_trackers_on-description = Để đo kích thước cơ thể, SlimeVR sẽ sử dụng một thuật toán để dự đoán kích thước của các bộ phận, hãy đeo tracker theo đúng vị trí đã thiết lập như hình bên
onboarding-automatic_proportions-put_trackers_on-next = Tiếp tục
onboarding-automatic_proportions-preparation-title = Chuẩn bị
onboarding-automatic_proportions-preparation-description = Chuẩn bị một chiếc ghế trong khu vực chơi vì quá trình đo sẽ yêu cầu đến việc ngồi xuống
onboarding-automatic_proportions-preparation-next = Đã có ghế ngồi sau lưng
onboarding-automatic_proportions-start_recording-title = Chuẩn bị đo
onboarding-automatic_proportions-start_recording-description = Phần mềm sẽ đo một số chuyển động, cử chỉ cụ thể, hãy chuẩn bị cho việc di chuyển theo yêu cầu trong phần tiếp theo
onboarding-automatic_proportions-start_recording-next = Bắt đầu
onboarding-automatic_proportions-recording-title = REC
onboarding-automatic_proportions-recording-description-p0 = Đang ghi...
onboarding-automatic_proportions-recording-description-p1 = Thực hiện các thao tác sau:
onboarding-automatic_proportions-recording-steps-0 = Uốn duỗi chân vài lần (squat)
onboarding-automatic_proportions-recording-steps-1 = Ngồi lên ghế rồi đứng lên
onboarding-automatic_proportions-recording-steps-2 = Vặn thân sang trái và uốn người sang phải
onboarding-automatic_proportions-recording-steps-3 = Vặn thân sang phải và uốn người sang trái
onboarding-automatic_proportions-recording-steps-4 = Làm thêm các chuyển động khác đến khi hết thời gian
onboarding-automatic_proportions-recording-processing = Đang xử lí kết quả...
# $time (Number) - Seconds left for the automatic calibration recording to finish (max 15)
onboarding-automatic_proportions-recording-timer =
    { $time ->
        [one] 1 second
       *[other] còn lại { $time } giây
    }
onboarding-automatic_proportions-verify_results-title = Kiểm tra kết quả
onboarding-automatic_proportions-verify_results-description = So sánh kết quả với chỉ số thực, Lưu ý: kết quả chỉ mang tính tương đối
onboarding-automatic_proportions-verify_results-results = Kết quả đo
onboarding-automatic_proportions-verify_results-processing = Đang xử lí kết quả...
onboarding-automatic_proportions-verify_results-redo = Thử lại
onboarding-automatic_proportions-verify_results-confirm = Kết quả tương đối chính xác
onboarding-automatic_proportions-done-title = Đã lưu chỉ số đo
onboarding-automatic_proportions-done-description = Quá trình đo đã hoàn tất

## Home

home-no_trackers = Không tìm thấy tracker / Tracker chưa được gán
