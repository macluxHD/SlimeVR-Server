### SlimeVR complete GUI translations


# Please developers (not translators) don't reuse a key inside another key
# or concat text with a translation string in the code, use the appropriate
# features like variables and selectors in each appropriate case!
# And also comment the string if it's something not easy to translate, so you help
# translators on what it means


## Websocket (server) status

websocket-connecting = جاري التوصيل بالسيرفر
websocket-connection_lost = انقطع الاتصال بالسيرفر. يتم إعادة التوصيل...

## Tips

tips-find_tracker = لست متأكد من أجهزة التعقب؟ قم بتحريك الجهاز لتحديد العنصر المناسب.
tips-do_not_move_heels = يرجى عدم تحريك كاحليك أثناء التسجيل!

## Body parts

body_part-NONE = غير محدد
body_part-HEAD = الرأس
body_part-NECK = العنق
body_part-RIGHT_SHOULDER = الكتف الأيمن
body_part-RIGHT_UPPER_ARM = العضد الأيمن
body_part-RIGHT_LOWER_ARM = الساعد الأيمن
body_part-RIGHT_HAND = اليد اليمنى
body_part-RIGHT_UPPER_LEG = الفخذ الأيمن
body_part-RIGHT_LOWER_LEG = الكاحل الأيمن
body_part-RIGHT_FOOT = القدم اليمنى
body_part-CHEST = الصدر
body_part-WAIST = الخصر
body_part-HIP = الورك
body_part-LEFT_SHOULDER = الكتف الأيسر
body_part-LEFT_UPPER_ARM = العضد الأيسر
body_part-LEFT_LOWER_ARM = الساعد الأيسر
body_part-LEFT_HAND = اليد اليسرى
body_part-LEFT_UPPER_LEG = الفخذ الأيسر
body_part-LEFT_LOWER_LEG = الكاحل الأيسر
body_part-LEFT_FOOT = القدم اليسرى

## Proportions

skeleton_bone-NONE = غير محدد
skeleton_bone-HEAD = إمالة الرأس
skeleton_bone-NECK = طول العنق
skeleton_bone-CHEST = طول الصدر
skeleton_bone-CHEST_OFFSET = درجة تشريد الصدر
skeleton_bone-WAIST = طول الخصر
skeleton_bone-HIP = طول الورك
skeleton_bone-HIP_OFFSET = درجة تشريد الورك
skeleton_bone-HIPS_WIDTH = عرض الورك
skeleton_bone-UPPER_LEG = طول الفخذ
skeleton_bone-LOWER_LEG = طول الساق السفلي
skeleton_bone-FOOT_LENGTH = طول القدم
skeleton_bone-FOOT_SHIFT = إمالة القدم
skeleton_bone-SKELETON_OFFSET = درجة تشريد الهيكل العظمي
skeleton_bone-SHOULDERS_DISTANCE = مسافة الكتفين
skeleton_bone-SHOULDERS_WIDTH = عرض الكتفين
skeleton_bone-UPPER_ARM = طول العضد
skeleton_bone-LOWER_ARM = طول الساعد
skeleton_bone-HAND_Y = مسافة اليد Y
skeleton_bone-HAND_Z = مسافة اليد Z
skeleton_bone-ELBOW_OFFSET = درجة تشريد الكوع

## Tracker reset buttons

reset-reset_all = إعادة تعيين جميع النسب
reset-full = اعاده تعيين
reset-mounting = إعادة تعيين التركيب
reset-quick = إعادة تعيين سريعة

## Serial detection stuff

serial_detection-new_device-p0 = تم اكتشاف جهاز تسلسلي جديد!
serial_detection-new_device-p1 = أدخل بيانات اعتماد الواي فاي  الخاصة بك!
serial_detection-new_device-p2 = يرجى تحديد ما تريد القيام به
serial_detection-open_wifi = اتصل بشبكة الواي فاي
serial_detection-open_serial = افتح وحدة التحكم التسلسلية
serial_detection-submit = إرسال!
serial_detection-close = أغلق

## Navigation bar

navbar-home = الصفحة الرئيسية
navbar-body_proportions = نسب الجسم
navbar-trackers_assign = تعيين جهاز التعقب
navbar-mounting = معايرة التركيب
navbar-onboarding = معالج الإعداد
navbar-settings = الإعدادات

## Bounding volume hierarchy recording

bvh-start_recording = سجل بي في ايتش
bvh-recording = تسجيل...

## Widget: Overlay settings

widget-overlay = التراكب
widget-overlay-is_visible_label = إظهار التراكب في ستيم في ار
widget-overlay-is_mirrored_label = عكس تراكب الشاشة

## Widget: Drift compensation

widget-drift_compensation-clear = حذف تعويض الانجراف

## Widget: Developer settings

widget-developer_mode = وضع المطوّر
widget-developer_mode-high_contrast = تباين عالي
widget-developer_mode-precise_rotation = دوران دقيق
widget-developer_mode-fast_data_feed = تغذية البيانات السريعة
widget-developer_mode-filter_slimes_and_hmd = تصفية السليمس و ايتش أم دي
widget-developer_mode-sort_by_name = فرز بالاسم
widget-developer_mode-raw_slime_rotation = الدوران الصافي
widget-developer_mode-more_info = المزيد

## Widget: IMU Visualizer

widget-imu_visualizer = دوران
widget-imu_visualizer-rotation_raw = صافي
widget-imu_visualizer-rotation_preview = عرض مسبق

## Tracker status

tracker-status-none = لا توجد حالة
tracker-status-busy = مشغول
tracker-status-error = خطأ
tracker-status-disconnected = فقد الاتصال
tracker-status-occluded = محجوب
tracker-status-ok = حسنًا

## Tracker status columns

tracker-table-column-name = الاسم
tracker-table-column-type = النوع
tracker-table-column-battery = البطارية
tracker-table-column-ping = بينج
tracker-table-column-tps = تي بي أس
tracker-table-column-temperature = درجة الحرارة درجة مئوية
tracker-table-column-linear-acceleration = تسارع X/Y/Z
tracker-table-column-rotation = دوران X / Y / Z
tracker-table-column-position = موضع X/Y/Z
tracker-table-column-url = عنوان URL

## Tracker rotation

tracker-rotation-front = المقدمة
tracker-rotation-left = اليسار
tracker-rotation-right = اليمين
tracker-rotation-back = الخلف

## Tracker information

tracker-infos-manufacturer = المصنّع
tracker-infos-display_name = اسم العرض
tracker-infos-custom_name = اسم مخصص
tracker-infos-url = عنوان URL لجهاز التعقب
tracker-infos-version = إصدار البرنامج الثابت
tracker-infos-hardware_rev = مراجعة الأجهزة

## Tracker settings

tracker-settings-back = ارجع إلى قائمة أجهزة التعقب
tracker-settings-title = إعدادات جهاز التعقب
tracker-settings-assignment_section = التكليف
tracker-settings-assignment_section-description = أي جزء من الجسم تم تعيين جهاز التعقب له.
tracker-settings-assignment_section-edit = تعديل التكليف
tracker-settings-mounting_section = مكان التركيب
tracker-settings-mounting_section-description = أين تم تركيب جهاز التعقب؟
tracker-settings-mounting_section-edit = تعديل التركيب
tracker-settings-drift_compensation_section = السماح بتعويض الانجراف
tracker-settings-drift_compensation_section-description = هل يجب أن يعوض جهاز التعقب عن انحرافه عند تمكين تعويض الانجراف؟
tracker-settings-drift_compensation_section-edit = السماح بتعويض الانجراف
# The .<name> means it's an attribute and it's related to the top key.
# In this case that is the settings for the assignment section.
tracker-settings-name_section = اسم جهاز التعقب
tracker-settings-name_section-description = أعطها لقب لطيف :)
tracker-settings-name_section-placeholder = ساق نايتي بيست اليسرى

## Tracker part card info

tracker-part_card-no_name = لا يوجد اسم
tracker-part_card-unassigned = غير محدد

## Body assignment menu

body_assignment_menu = أين تريد أن يكون هذا الجهاز التعقب؟
body_assignment_menu-description = اختر الموقع الذي تريد تعيين هذا جهاز التعقب. بدلاً من ذلك، يمكنك اختيار إدارة جميع أجهزة التعقب مرة واحدة بدلاً من إدارة كل جهاز تلو الآخر.
body_assignment_menu-show_advanced_locations = إظهار مواقع التعيين المتقدمة
body_assignment_menu-manage_trackers = إدارة جميع أجهزة التعقب
body_assignment_menu-unassign_tracker = إلغاء تعيين جهاز التعقب

## Tracker assignment menu

# A -translation_key (with a dash in the front) means that it's a label.
# It can only be used in the translation file, it's nice for reusing names and that kind of stuff.
#
# We are using it here because english doesn't require changing the text in each case but
# maybe your language does.
-tracker_selection-part = أي جهاز تعقب لتعيينه إلى
tracker_selection_menu-NONE = ما هو جهاز تعقب تريد أن يكون غير معين؟
tracker_selection_menu-HEAD = { -tracker_selection-part } الرأس؟
tracker_selection_menu-NECK = { -tracker_selection-part } العنق؟
tracker_selection_menu-RIGHT_SHOULDER = { -tracker_selection-part } الكتف الأيمن؟
tracker_selection_menu-RIGHT_UPPER_ARM = { -tracker_selection-part } العضد الأيمن؟
tracker_selection_menu-RIGHT_LOWER_ARM = { -tracker_selection-part } الساعد الأيمن؟
tracker_selection_menu-RIGHT_HAND = { -tracker_selection-part } اليد اليمنى؟
tracker_selection_menu-RIGHT_UPPER_LEG = { -tracker_selection-part } الفخذ الأيمن؟
tracker_selection_menu-RIGHT_LOWER_LEG = { -tracker_selection-part } الكاحل الأيمن؟
tracker_selection_menu-RIGHT_FOOT = { -tracker_selection-part } القدم اليمنى؟
tracker_selection_menu-RIGHT_CONTROLLER = { -tracker_selection-part } وحدة التحكم اليمنى؟
tracker_selection_menu-CHEST = { -tracker_selection-part } الصدر؟
tracker_selection_menu-WAIST = { -tracker_selection-part } الخصر؟
tracker_selection_menu-HIP = { -tracker_selection-part } الورك؟
tracker_selection_menu-LEFT_SHOULDER = { -tracker_selection-part } الكتف الأيسر؟
tracker_selection_menu-LEFT_UPPER_ARM = { -tracker_selection-part } العضد الأيسر؟
tracker_selection_menu-LEFT_LOWER_ARM = { -tracker_selection-part } الساعد الأيسر؟
tracker_selection_menu-LEFT_HAND = { -tracker_selection-part } اليد اليسرى؟
tracker_selection_menu-LEFT_UPPER_LEG = { -tracker_selection-part } الفخذ الأيسر؟
tracker_selection_menu-LEFT_LOWER_LEG = { -tracker_selection-part } الكاحل الأيسر؟
tracker_selection_menu-LEFT_FOOT = { -tracker_selection-part } القدم اليسرى؟
tracker_selection_menu-LEFT_CONTROLLER = { -tracker_selection-part } وحدة تحكم اليسار؟
tracker_selection_menu-unassigned = أجهزة تعقب غير معينة
tracker_selection_menu-assigned = أجهزة تعقب معينة
tracker_selection_menu-dont_assign = لا تعين
# This line cares about multilines.
# <b>text</b> means that the text should be bold.
tracker_selection_menu-neck_warning =
    <b>تحذير:</b> يمكن أن يكون جهاز تعقب الرقبة مميتا إذا تم شدها كثيراً،
    يمكن للحزام أن يقطع الدورة الدموية إلى رأسك!
tracker_selection_menu-neck_warning-done = أفهم المخاطر
tracker_selection_menu-neck_warning-cancel = إلغاء

## Mounting menu

mounting_selection_menu = أين تريد أن يكون جهاز التعقب؟
mounting_selection_menu-close = أغلق

## Sidebar settings

settings-sidebar-title = الإعدادات
settings-sidebar-general = الاعدادات العامة
settings-sidebar-tracker_mechanics = ميكانيكا جهاز التعقب
settings-sidebar-fk_settings = إعدادات التعقب
settings-sidebar-gesture_control = التحكم بالإيماءات
settings-sidebar-interface = واجهة المستخدم
settings-sidebar-osc_router = راوتر أوه أس سي
settings-sidebar-utils = الأدوات المساعدة
settings-sidebar-serial = وحدة التحكم التسلسلية

## SteamVR settings

settings-general-steamvr = ستيم في ار
settings-general-steamvr-subtitle = أجهزة تعقب ستيم في ار
# Not all translation keys support multiline, only the ones that specify it will actually
# split it in lines (that also means you can split in lines however you want in those).
# The first spaces (not tabs) for indentation will be ignored, just to make the file look nice when writing.
# This one is one of this cases that cares about multilines
settings-general-steamvr-description =
    تمكين أو تعطيل أجهزة التعقب المحددة لستيم في ار.
    مفيد فقط للألعاب أو التطبيقات التي تدعم أجهزة تعقب معينة.
settings-general-steamvr-trackers-waist = الخصر
settings-general-steamvr-trackers-chest = الصدر
settings-general-steamvr-trackers-feet = القدمين
settings-general-steamvr-trackers-knees = الركبتين
settings-general-steamvr-trackers-elbows = الكوعين
settings-general-steamvr-trackers-hands = اليدين

## Tracker mechanics

settings-general-tracker_mechanics = ميكانيكا جهاز التعقب
settings-general-tracker_mechanics-filtering = تصفية
# This also cares about multilines
settings-general-tracker_mechanics-filtering-description =
    اختر نوع التصفية لأجهزة التعقب الخاصة بك.
    يتنبأ التنبؤ بالحركة بينما يعمل على تنعيم الحركة.
settings-general-tracker_mechanics-filtering-type = نوع التصفية
settings-general-tracker_mechanics-filtering-type-none = بدون تصفية
settings-general-tracker_mechanics-filtering-type-none-description = استخدم التدوير كما هو. لن تفعل أي تصفية
settings-general-tracker_mechanics-filtering-type-smoothing = التنعيم
settings-general-tracker_mechanics-filtering-type-smoothing-description = ينعم الحركات لكنه يزيد من وقت الاستجابة.
settings-general-tracker_mechanics-filtering-type-prediction = التنبؤ
settings-general-tracker_mechanics-filtering-type-prediction-description = يقلل من وقت الإستجابة ويجعل الحركات أكثر سرعة ، ولكنه قد يزيد من التوتر.
settings-general-tracker_mechanics-filtering-amount = المبلغ
settings-general-tracker_mechanics-drift_compensation = تعويض الانجراف
# This cares about multilines
settings-general-tracker_mechanics-drift_compensation-description =
    يعوض عن انجراف انعراج وحدة IMU بتطبيق دوران عكسي.
    قم بتغيير كمية التعويض وعدد عمليات إعادة التعيين التي يتم أخذها في الاعتبار.
settings-general-tracker_mechanics-drift_compensation-enabled-label = تعويض الانجراف
settings-general-tracker_mechanics-drift_compensation-amount-label = مبلغ التعويض
settings-general-tracker_mechanics-drift_compensation-max_resets-label = استخدام ما يصل إلى x عمليات إعادة التعيين الأخيرة

## FK/Tracking settings

settings-general-fk_settings = إعدادات التعقب
settings-general-fk_settings-leg_tweak = تعديلات الساق
settings-general-fk_settings-leg_tweak-description = يمكن أن يقلل أدت التقليم الأرضية من تقليم الأرض أو حتى يزيله ، ولكنه قد يسبب مشاكل عند الركوع على ركبتيك. تصحيح التزحلق على الجليد يصحح التزحلق على الجليد ، لكن يمكنه أن يقلل الدقة في أنماط حركة معينة
# Floor clip:
# why the name - came from the idea of noclip in video games, but is the opposite where clipping to the floor is a desired feature
# definition - Prevents the foot trackers from going lower than they where when a reset was performed
settings-general-fk_settings-leg_tweak-floor_clip = فلور كليب
# Skating correction:
# why the name - without this enabled the feet will often slide across the ground as if your skating across the ground,
# since this largely prevents this it corrects for it hence skating correction (note this may be renamed to sliding correction)
# definition - Guesses when each foot is in contact with the ground and uses that information to improve tracking
settings-general-fk_settings-leg_tweak-skating_correction = تصحيح التزحلق
settings-general-fk_settings-leg_tweak-skating_correction-amount = قوة تصحيح التزحلق
settings-general-fk_settings-arm_fk = تعقب الذراع
settings-general-fk_settings-arm_fk-description = تغيير طريقة تعقب الذراعين.
settings-general-fk_settings-arm_fk-force_arms = إجبار الذراعين من ايتش أم دي
settings-general-fk_settings-skeleton_settings = إعدادات الهيكل العظمي
settings-general-fk_settings-skeleton_settings-description = تبديل إعدادات الهيكل العظمي أو إيقافه. يوصى بتركها شغالة.
settings-general-fk_settings-skeleton_settings-extended_spine = العمود الفقري الممتد
settings-general-fk_settings-skeleton_settings-extended_pelvis = الحوض الممتد
settings-general-fk_settings-skeleton_settings-extended_knees = الركبة الممتدة
settings-general-fk_settings-vive_emulation-title = محاكاة فايف
settings-general-fk_settings-vive_emulation-description = محاكاة مشاكل تعقب الخصر التي تعاني منها أجهزة تعقب فايف. هذه مزحة وتجعل التتبع أسوأ.
settings-general-fk_settings-vive_emulation-label = تمكين محاكاة فايف

## Gesture control settings (tracker tapping)

settings-general-gesture_control = التحكم بالإيماءات
settings-general-gesture_control-subtitle = عمليات إعادة التعيين المستندة على النقر
settings-general-gesture_control-description = يسمح بتشغيل عملية إعادة التعيين من خلال النقر على جهاز التعقب. يتم استخدام جهاز التعقب الأعلى على جذعك لإعادة ضبط سريع ، ويتم استخدام جهاز التعقب الأعلى على ساقك اليسرى لإعادة ضبط ، ويتم استخدام جهاز التعقب الأعلى على ساقك اليمنى إعادة ضبط التركيب . تجدر الإشارة إلى أن النقرات يجب أن تتم خلال 0.6 ثانية لكي يتم تسجيلها.
# This is a unit: 3 taps, 2 taps, 1 tap
# $amount (Number) - Amount of taps (touches to the tracker's case)
settings-general-gesture_control-taps =
    { $amount ->
        [zero] { $amount } نقرات
        [one] نقرة واحدة
        [two] نقرتان
        [few] { $amount } نقرات
        [many] { $amount } نقرات
       *[other] { $amount } نقرات
    }
settings-general-gesture_control-quickResetEnabled = تمكين النقر لإعادة الضبط السريع
settings-general-gesture_control-quickResetDelay = تأخير إعادة الضبط السريع
settings-general-gesture_control-quickResetTaps = نقرات لإعادة الضبط السريع
settings-general-gesture_control-resetEnabled = تمكين النقر لإعادة التعيين
settings-general-gesture_control-resetDelay = إعادة تعيين التأخير
settings-general-gesture_control-resetTaps = نقرات لإعادة الضبط
settings-general-gesture_control-mountingResetEnabled = تمكين النقر لإعادة تعيين التركيب
settings-general-gesture_control-mountingResetDelay = تأخير إعادة تعيين التركيب
settings-general-gesture_control-mountingResetTaps = نقرات لإعادة تعيين التركيب

## Interface settings

settings-general-interface = واجهة المستخدم
settings-general-interface-dev_mode = وضع المطوّر
settings-general-interface-dev_mode-description = يمكن أن يكون هذا الوضع مفيدًا إذا كنت بحاجة إلى بيانات متعمقة أو للتفاعل مع أجهزة التعقب المتصلة على مستوى أكثر تقدمًا.
settings-general-interface-dev_mode-label = وضع المطوّر
settings-general-interface-serial_detection = الكشف عن جهاز تسلسلي
settings-general-interface-serial_detection-description = سيعرض هذا الخيار نافذة منبثقة في كل مرة تقوم فيها بتوصيل جهاز تسلسلي جديد يمكن أن يكون جهاز تعقب. يساعد في تحسين عملية إعداد جهاز التعقب.
settings-general-interface-serial_detection-label = الكشف عن جهاز تسلسلي
settings-general-interface-lang = اختر اللغة
settings-general-interface-lang-description = قم بتغيير اللغة الافتراضية التي تريد استخدامها.
settings-general-interface-lang-placeholder = اختر اللغة التي تريد استخدامها

## Serial settings

settings-serial = وحدة التحكم التسلسلية
# This cares about multilines
settings-serial-description =
    هذا هو موجز معلومات مباشر للاتصال التسلسلي.
    قد يكون مفيدًا إذا كنت بحاجة إلى معرفة إن كان البرنامج الثابت به خلل.
settings-serial-connection_lost = تم فقد الاتصال بالمسلسل ، جاري إعادة الاتصال...
settings-serial-reboot = إعادة التشغيل
settings-serial-factory_reset = إعادة التعيين إلى إعدادات المصنع
# This cares about multilines
# <b>text</b> means that the text should be bold
settings-serial-factory_reset-warning =
    <b>تحذير:</b> سيؤدي هذا إلى إعادة تعيين المتعقب إلى إعدادات المصنع.
    مما يعني أن إعدادات واي فاي والمعايرة <b>ستفقد جميعا!</b>
settings-serial-factory_reset-warning-ok = أنا أعرف ماذا أفعل
settings-serial-factory_reset-warning-cancel = إلغاء
settings-serial-get_infos = احصل على معلومات
settings-serial-serial_select = اختر منفذ تسلسلي
settings-serial-auto_dropdown_item = تلقائي

## OSC router settings

settings-osc-router = راوتر أوه أس سي
# This cares about multilines
settings-osc-router-description =
    إعادة توجيه رسائل أوه أس سي من برنامج آخر.
    مفيد لاستخدام برنامج أوه أس سي آخر مع في ار تشات على سبيل المثال.
settings-osc-router-enable = تمكين
settings-osc-router-enable-description = تبديل إعادة توجيه الرسائل.
settings-osc-router-enable-label = تمكين
settings-osc-router-network = منافذ الشبكة
# This cares about multilines
settings-osc-router-network-description =
    اضبط المنافذ للاستماع وإرسال البيانات.
        يمكن أن تكون هذه هي نفس المنافذ الأخرى المستخدمة في خادم سلايم في ار.
settings-osc-router-network-port_in =
    .label = منفذ الدخول
    .placeholder = منفذ الدخول (الإفتراضي: 9002)
settings-osc-router-network-port_out =
    .label = منفذ الخروج
    .placeholder = منفذ الخروج (الإفتراضي: 9000)
settings-osc-router-network-address = عنوان الشبكة
settings-osc-router-network-address-description = قم بتعيين العنوان لإرسال البيانات إليه.
settings-osc-router-network-address-placeholder = عنوان آي بي في 4

## OSC VRChat settings

settings-osc-vrchat = أجهزة تعقب "في ار تشات أوه أس سي"
# This cares about multilines
settings-osc-vrchat-description =
    قم بتغيير الإعدادات الخاصة ب في ار تشات لتلقي بيانات ايتش أم دي وإرسالها
    بيانات أجهزة تعقب لتعقب الجسم (يعمل على كوست مستقل).
settings-osc-vrchat-enable = تمكين
settings-osc-vrchat-enable-description = بتبديل إرسال واستقبال البيانات.
settings-osc-vrchat-enable-label = تمكين
settings-osc-vrchat-network = منافذ الشبكة
settings-osc-vrchat-network-description = قم بتعيين المنافذ للاستماع وإرسال البيانات إلى في ار تشات
settings-osc-vrchat-network-port_in =
    .label = منفذ الدخول
    .placeholder = منفذ الدخول (الإفتراضي: 9001)
settings-osc-vrchat-network-port_out =
    .label = منفذ الخروج
    .placeholder = منفذ الخروج (الإفتراضي: 9000)
settings-osc-vrchat-network-address = عنوان الشبكة
settings-osc-vrchat-network-address-description = اختر العنوان الذي تريد إرسال البيانات إلى في ار تشات (تحقق من إعدادات واي فاي على جهازك)
settings-osc-vrchat-network-address-placeholder = عنوان آي بي الخاص بفي ار تشات
settings-osc-vrchat-network-trackers = أجهزة التعقب
settings-osc-vrchat-network-trackers-description = تبديل إرسال أجهزة تتبع محددة عبر أوه أس سي.
settings-osc-vrchat-network-trackers-chest = الصدر
settings-osc-vrchat-network-trackers-waist = الخصر
settings-osc-vrchat-network-trackers-knees = الركبتين
settings-osc-vrchat-network-trackers-feet = القدمين
settings-osc-vrchat-network-trackers-elbows = الكوعين

## Setup/onboarding menu

onboarding-skip = تخطى الإعداد
onboarding-continue = ‏‏متابعة
onboarding-wip = جاري العمل

## Wi-Fi setup

onboarding-wifi_creds-back = العودة إلى المقدمة
onboarding-wifi_creds = إدخل بيانات اعتماد واي فاي
# This cares about multilines
onboarding-wifi_creds-description =
    ستستخدم أجهزة التعقب بيانات الاعتماد هذه للاتصال لاسلكيًا.
    الرجاء استخدام بيانات الاعتماد التي تتصل بها حاليًا.
onboarding-wifi_creds-skip = تخطى إعدادات واي فاي
onboarding-wifi_creds-submit = إرسال!
onboarding-wifi_creds-ssid =
    .label = اسم الواي فاي
    .placeholder = أدخل اسم الواي فاي
onboarding-wifi_creds-password =
    .label = كلمة السر
    .placeholder = أدخل كلمة السر

## Mounting setup

onboarding-reset_tutorial-back = العودة إلى معايرة التركيب
onboarding-reset_tutorial = إعادة البرنامج التعليمي
onboarding-reset_tutorial-description = هذه الميزة لم تنته بعد، فقط اضغط على متابعة

## Setup start

onboarding-home = مرحبا بكم في سلايم في ار
# This cares about multilines and it's centered!!
onboarding-home-description =
    جلب التعقب كامل الجسم
    للجميع
onboarding-home-start = هيا نتجهز!

## Enter VR part of setup

onboarding-enter_vr-back = العودة إلى تعيين أجهزة التعقب
onboarding-enter_vr-title = حان وقت دخول في ار!
onboarding-enter_vr-description = ضع كل أجهزة التعقب ثم أدخل في ار!
onboarding-enter_vr-ready = أنا جاهز

## Setup done

onboarding-done-title = أنت جاهز تمامًا!
onboarding-done-description = استمتع بتجربة تتبع الجسم بالكامل!
onboarding-done-close = إغلاق الدليل

## Tracker connection setup

onboarding-connect_tracker-back = العودة إلى بيانات اعتماد الواي فاي
onboarding-connect_tracker-title = ربط أجهزة التعقب
onboarding-connect_tracker-description-p0 = ننتقل الآن إلى الجزء الممتع ، ربط جميع أجهزة التعقب!
onboarding-connect_tracker-description-p1 = ما عليك سوى توصيل كل ما لم يتم توصيله بعد من خلال منفذ يو أس بي.
onboarding-connect_tracker-issue-serial = أواجه مشكلة في الاتصال!
onboarding-connect_tracker-usb = جهاز تعقب يو أس بي
onboarding-connect_tracker-connection_status-none = نبحث عن أجهزة التعقب
onboarding-connect_tracker-connection_status-serial_init = نتواصل بجهاز التسلسلي
onboarding-connect_tracker-connection_status-provisioning = نرسل بيانات اعتماد واي فاي
onboarding-connect_tracker-connection_status-connecting = جارٍ إرسال بيانات اعتماد الواي فاي
onboarding-connect_tracker-connection_status-looking_for_server = نبحث عن السرفر
onboarding-connect_tracker-connection_status-connection_error = غير قادر على الاتصال بشبكة الواي فاي
onboarding-connect_tracker-connection_status-could_not_find_server = تعذر العثور على السرفر
onboarding-connect_tracker-connection_status-done = متصل بالسيرفر
# $amount (Number) - Amount of trackers connected (this is a number, but you can use CLDR plural rules for your language)
# More info on https://www.unicode.org/cldr/cldr-aux/charts/22/supplemental/language_plural_rules.html
# English in this case only has 2 plural rules, which are "one" and "other",
# we use 0 in an explicit way because there is no plural rule in english for 0, so we directly say
# if $amount is 0 then we say "No trackers connected"
onboarding-connect_tracker-connected_trackers =
    { $amount ->
        [0] لا يوجد جهاز تعقب متصل
        [zero] لا يوجد جهاز تعقب متصل
        [one] جهاز تعقب واحد متصل
        [two] جهازا تعقب متصلان
        [few] { $amount } أجهزة تعقب متصلة
        [many] { $amount } أجهزة تعقب متصلة
       *[other] { $amount } أجهزة تعقب متصلة
    }
onboarding-connect_tracker-next = لقد قمت بتوصيل جميع أجهزة التعقب

## Tracker assignment setup

onboarding-assign_trackers-back = العودة إلى بيانات اعتماد الواي فاي
onboarding-assign_trackers-title = تعيين أجهزة التعقب
onboarding-assign_trackers-description = دعنا نختار موقع أجهزة التعقب. انقر فوق المكان الذي تريد وضع جهاز تعقب فيه
# Look at translation of onboarding-connect_tracker-connected_trackers on how to use plurals
# $assigned (Number) - Trackers that have been assigned a body part
# $trackers (Number) - Trackers connected to the server
onboarding-assign_trackers-assigned =
    { $trackers ->
        [zero] { $assigned } من { $trackers } أجهزة تعقب عينت
        [one] جهاز واحد من { $trackers } أجهزة تعقب عينت
        [two] جهازان من { $trackers } أجهزة تعقب عينت
        [few] { $assigned } من { $trackers } أجهزة تعقب عينت
        [many] { $assigned } من { $trackers } أجهزة تعقب عينت
       *[other] { $assigned } من { $trackers } أجهزة تعقب عينت
    }
onboarding-assign_trackers-advanced = إظهار مواقع التعيين المتقدمة
onboarding-assign_trackers-next = لقد عينت جميع أجهزة التعقب

## Tracker assignment warnings

# Note for devs, number is used for representing boolean states per bit.
# $unassigned (Number) - Bits are based on BodyAssignment.ASSIGNMENT_RULES order
onboarding-assign_trackers-warning-LEFT_FOOT =
    { $unassigned ->
        [0] تم تحديد القدم اليسرى، ولكنك تحتاج أيضًا إلى تحديد الكاحل الأيسر والفخذ الأيسر وإما الصدر أو الورك أو الخصر!
        [1] تم تحديد القدم اليسرى، ولكنك تحتاج أيضًا إلى تحديد الفخذ الأيسر وإما الصدر أو الورك أو الخصر!
        [2] تم تحديد القدم اليسرى، ولكنك تحتاج أيضًا إلى تحديد الكاحل الأيسر وإما الصدر أو الورك أو الخصر!
        [3] تم تحديد القدم اليسرى، ولكنك تحتاج أيضًا إلى تحديد إما الصدر أو الورك أو الخصر!
        [4] تم تحديد القدم اليسرى، ولكنك تحتاج أيضًا إلى تحديد الكاحل الأيسر والفخذ الأيسر!
        [5] تم تحديد القدم اليسرى، ولكنك تحتاج أيضًا إلى تحديد الفخذ الأيسر!
        [6] تم تحديد القدم اليسرى، ولكنك تحتاج أيضًا إلى تحديد الكاحل الأيسر !
       *[unknown] تم تحديد القدم اليسرى، ولكنك تحتاج أيضًا إلى تحديد جزء جسم غير معروف غير مخصص !
    }
# $unassigned (Number) - Bits are based on BodyAssignment.ASSIGNMENT_RULES order
onboarding-assign_trackers-warning-RIGHT_FOOT =
    { $unassigned ->
        [0] تم تحديد القدم اليمنى، ولكنك تحتاج أيضًا إلى تحديد الكاحل الأيمن والفخذ الأيمن وإما الصدر أو الورك أو الخصر!
        [1] تم تحديد القدم اليمنى، ولكنك تحتاج أيضًا إلى تحديد الفخذ الأيمن وإما الصدر أو الورك أو الخصر!
        [2] تم تحديد القدم اليمنى، ولكنك تحتاج أيضًا إلى تحديد الكاحل الأيمن وإما الصدر أو الورك أو الخصر!
        [3] تم تحديد القدم اليمنى، ولكنك تحتاج أيضًا إلى تحديد إما الصدر أو الورك أو الخصر!
        [4] تم تحديد القدم اليمنى، ولكنك تحتاج أيضًا إلى تحديد الكاحل الأيمن والفخذ الأيمن!
        [5] تم تحديد القدم اليمنى، ولكنك تحتاج أيضًا إلى تحديد الفخذ الأيمن!
        [6] تم تحديد القدم اليمنى، ولكنك تحتاج أيضًا إلى تحديد الكاحل الأيمن!
       *[unknown] تم تحديد القدم اليمنى، ولكنك تحتاج أيضًا إلى تحديد جزء جسم غير معروف غير مخصص!
    }
# $unassigned (Number) - Bits are based on BodyAssignment.ASSIGNMENT_RULES order
onboarding-assign_trackers-warning-LEFT_LOWER_LEG =
    { $unassigned ->
        [0] تم تحديد الكاحل الأيسر، ولكنك تحتاج أيضًا إلى تحديد الفخذ الأيسر وإما الصدر أو الورك أو الخصر!
        [1] تم تحديد الكاحل الأيسر، ولكنك تحتاج أيضًا إلى تحديد إما الصدر أو الورك أو الخصر!
        [2] تم تحديد الكاحل الأيسر، ولكنك تحتاج أيضًا إلى تحديد الفخذ الأيسر!
       *[unknown] تم تحديد الكاحل الأيسر، ولكنك تحتاج أيضًا إلى تحديد جزء جسم غير معروف غير مخصص!
    }
# $unassigned (Number) - Bits are based on BodyAssignment.ASSIGNMENT_RULES order
onboarding-assign_trackers-warning-RIGHT_LOWER_LEG =
    { $unassigned ->
        [0] تم تحديد الكاحل الأيمن، ولكنك تحتاج أيضًا إلى تحديد الفخذ الأيمن وتحديد إما الصدر أو الورك أو الخصر!
        [1] تم تحديد الكاحل الأيمن، ولكنك تحتاج أيضًا إلى تحديد إما الصدر أو الورك أو الخصر!
        [2] تم تحديد الكاحل الأيمن، ولكنك تحتاج أيضًا إلى تحديد الفخذ الأيمن!
       *[unknown] تم تحديد الكاحل الأيمن، ولكنك تحتاج أيضًا إلى تحديد جزء جسم غير معروف غير مخصص!
    }
# $unassigned (Number) - Bits are based on BodyAssignment.ASSIGNMENT_RULES order
onboarding-assign_trackers-warning-LEFT_UPPER_LEG =
    { $unassigned ->
        [0] تم تحديد الفخذ الأيسر، ولكنك تحتاج أيضًا إلى تحديد الصدر أو الورك أو الخصر!
       *[unknown] تم تحديد الفخذ الأيسر، ولكنك تحتاج أيضًا إلى تحديد جزء جسم غير معروف غير مخصص !
    }
# $unassigned (Number) - Bits are based on BodyAssignment.ASSIGNMENT_RULES order
onboarding-assign_trackers-warning-RIGHT_UPPER_LEG =
    { $unassigned ->
        [0] تم تحديد الفخذ الأيمن ولكنك تحتاج أيضًا إلى تحديد الصدر أو الورك أو الخصر!
       *[unknown] تم تحديد الفخذ الأيمن ولكنك تحتاج أيضًا إلى تحديد جزء جسم غير معروف غير مخصص !
    }
# $unassigned (Number) - Bits are based on BodyAssignment.ASSIGNMENT_RULES order
onboarding-assign_trackers-warning-HIP =
    { $unassigned ->
        [0] تم تحديد الورك، ولكنك تحتاج إلى تحديد الصدر أيضًا!
       *[unknown] تم تحديد الورك، ولكنك تحتاج إلى تحديد جزء جسم غير معروف غير مخصص أيضًا!
    }
# $unassigned (Number) - Bits are based on BodyAssignment.ASSIGNMENT_RULES order
onboarding-assign_trackers-warning-WAIST =
    { $unassigned ->
        [0] تم تحديد الخصر، ولكنك تحتاج إلى تحديد الصدر أيضًا!
       *[unknown] تم تحديد الخصر، ولكنك تحتاج إلى تحديد جزء جسم غير معروف غير مخصص أيضًا!
    }

## Tracker manual mounting setup

onboarding-manual_mounting-back = العودة إلى دخول في ار
onboarding-manual_mounting = التركيب اليدوي
onboarding-manual_mounting-description = انقر فوق كل جهاز تعقب وحدد طريقة تركيبها
onboarding-manual_mounting-auto_mounting = التركيب التلقائي
onboarding-manual_mounting-next = الخطوة التالية

## Tracker automatic mounting setup

onboarding-automatic_mounting-back = العودة إلى دخول في ار
onboarding-automatic_mounting-title = معايرة التركيب
onboarding-automatic_mounting-description = لكي تعمل أجهزة تعقب سلايم في ار، نحتاج إلى تعيين دوران تركيب أجهزة التعقب لمواءمتها مع تركيب جهاز التعقب المادي.
onboarding-automatic_mounting-manual_mounting = ضبط التركيب يدويًا
onboarding-automatic_mounting-next = الخطوة التالية
onboarding-automatic_mounting-prev_step = الخطوة السابقة
onboarding-automatic_mounting-done-title = تم معايرة دوران التركيب
onboarding-automatic_mounting-done-description = اكتملت معايرة التركيب!
onboarding-automatic_mounting-done-restart = العودة إلى البداية
onboarding-automatic_mounting-mounting_reset-title = إعادة تعيين التركيب
onboarding-automatic_mounting-mounting_reset-step-0 = 1. قرفص في وضع "التزلج" مع ثني ساقيك ، وإمالة الجزء العلوي من جسمك إلى الأمام ، وثني ذراعيك.
onboarding-automatic_mounting-mounting_reset-step-1 = 2. اضغط على زر "إعادة تعيين التركيب" وانتظر لمدة 3 ثوان قبل إعادة تعيين دوران تركيب أجهزة التعقب.
onboarding-automatic_mounting-preparation-title = التحضير
onboarding-automatic_mounting-preparation-step-0 = 1. قف بشكل مستقيم مع ذراعيك على جانبيك.
onboarding-automatic_mounting-preparation-step-1 = اضغط على زر "إعادة ضبط" و انتظر لمدة 3 ثوانٍ قبل إعادة تعيين أجهزة التعقب.
onboarding-automatic_mounting-put_trackers_on-title = ارتدي أجهزة التعقب
onboarding-automatic_mounting-put_trackers_on-description = لمعايرة دوران التركيب، سنستخدم أجهزة التعقب التي قمت بتعيينها. ارتدي جميع أجهزة التعقب، يمكنك معرفة أي منها في المستند على اليمين.
onboarding-automatic_mounting-put_trackers_on-next = ارتديت جميع أجهزة التعقب.

## Tracker manual proportions setup

onboarding-manual_proportions-back = العودة إلى برنامج تعليم إعادة التعيين
onboarding-manual_proportions-title = نسب الجسم اليدوية
onboarding-manual_proportions-precision = ضبط الدقة
onboarding-manual_proportions-auto = المعايرة التلقائية

## Tracker automatic proportions setup

onboarding-automatic_proportions-back = العودة إلى برنامج تعليم إعادة التعيين
onboarding-automatic_proportions-title = قياس جسمك
onboarding-automatic_proportions-description = لكي تعمل أجهزة تعقب سلايم في ار, نحتاج إلى معرفة طول عظامك. هذه المعايرة القصيرة ستقيسها لك.
onboarding-automatic_proportions-manual = معايرة يدوية
onboarding-automatic_proportions-prev_step = الخطوة السابقة
onboarding-automatic_proportions-put_trackers_on-title = ارتدي أجهزة التعقب
onboarding-automatic_proportions-put_trackers_on-description = لمعايرة نسب جسمك ، سنستخدم أجهزة التعقب التي قمت بتعيينها. ضع جميع أجهزة التعقب، يمكنك معرفة أين تم تعيينه في المستند على اليمين.
onboarding-automatic_proportions-put_trackers_on-next = ارتديت جميع أجهزة التعقب.
onboarding-automatic_proportions-preparation-title = التحضير
onboarding-automatic_proportions-preparation-description = ضع كرسيًا خلفك مباشرةً داخل مساحة اللعب الخاصة بك. كن مستعد للجلوس أثناء الإعداد.
onboarding-automatic_proportions-preparation-next = أنا أمام كرسي
onboarding-automatic_proportions-start_recording-title = استعد للتحرك
onboarding-automatic_proportions-start_recording-description = سنقوم الآن بتسجيل بعض الوضعيات والحركات المحددة. ستتم مطالبتك بذلك في الشاشة التالية. كن مستعدا للبدء عند الضغط على الزر!
onboarding-automatic_proportions-start_recording-next = بدء التسجيل
onboarding-automatic_proportions-recording-title = تسجيل
onboarding-automatic_proportions-recording-description-p0 = جاري التسجيل...
onboarding-automatic_proportions-recording-description-p1 = قم بالحركات الموضحة أدناه:
onboarding-automatic_proportions-recording-steps-0 = اثني الركبتين عدة مرات.
onboarding-automatic_proportions-recording-steps-1 = اجلس على كرسي ثم قف.
onboarding-automatic_proportions-recording-steps-2 = قم بتدوير الجزء العلوي من الجسم إلى اليسار ، ثم انحني إلى اليمين.
onboarding-automatic_proportions-recording-steps-3 = قم بتدوير الجزء العلوي من الجسم إلى اليمين ، ثم انحني إلى اليسار.
onboarding-automatic_proportions-recording-steps-4 = تهزهز حتى ينتهي الموقت.
onboarding-automatic_proportions-recording-processing = معالجة النتيجة
# $time (Number) - Seconds left for the automatic calibration recording to finish (max 15)
onboarding-automatic_proportions-recording-timer =
    { $time ->
        [zero] { $time } ثانية متبقية
        [one] { $time } ثانية متبقية
        [two] ثانيتين متبقية
        [few] { $time } ثوان متبقية
        [many] { $time } ثوان متبقية
       *[other] { $time } ثوان متبقية
    }
onboarding-automatic_proportions-verify_results-title = تحقق من النتائج
onboarding-automatic_proportions-verify_results-description = تحقق من النتائج أدناه ، هل تبدو صحيحة؟
onboarding-automatic_proportions-verify_results-results = تسجيل النتائج
onboarding-automatic_proportions-verify_results-processing = معالجة النتيجة
onboarding-automatic_proportions-verify_results-redo = إعادة التسجيل
onboarding-automatic_proportions-verify_results-confirm = تبدو صحيحة
onboarding-automatic_proportions-done-title = تم قياس الجسم و حفظه.
onboarding-automatic_proportions-done-description = اكتملت معايرة نسب جسمك!

## Home

home-no_trackers = لم يتم الكشف أو تعيين عن أي جهاز تعقب
