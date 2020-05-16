.class Lcom/android/server/desktopmode/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field static final ACTION_ADD_PACKAGE_PREVENT_START_BLACKLIST_CHANGED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.ADD_PACKAGE_PREVENT_START_BLACKLIST_CHANGED_INTERNAL"

.field static final ACTION_DEX_KEYGUARD_STATE_UPDATE:Ljava/lang/String; = "com.samsung.desktopkeyguard.KEYGUARD_STATE_UPDATE"

.field static final ACTION_PEN_INSERT:Ljava/lang/String; = "com.samsung.pen.INSERT"

.field static final ACTION_WALLPAPER_ENGINE_SHOWN:Ljava/lang/String; = "com.samsung.android.intent.action.WALLPAPER_ENGINE_SHOWN"

.field static final ACTION_WALLPAPER_SHOWN:Ljava/lang/String; = "com.sec.android.app.desktoplauncher.intent.action.WALLPAPER_SHOWN"

.field static final ANDROID_INTERNAL_PKGNAME:Ljava/lang/String; = "com.android.internal.app"

.field static final CCIC_DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/sec/ccic"

.field static final CCIC_DOCK_USBPD_IDS_PATH:Ljava/lang/String; = "/sys/class/sec/ccic/usbpd_ids"

.field static final CCIC_FILE_PATH:Ljava/lang/String; = "/sys/class/sec/ccic/state"

.field static final DEFAULT_VALUE:I = -0x1

.field static final DEX_DEFAULT_SCREEN_OFF_TIMEOUT:I = 0x927c0

.field static final DISPLAYPORT_FILE_PATH:Ljava/lang/String; = "/sys/class/dp_sec/dex"

.field static final DISPLAYPORT_STATE_DISCONNECTED:I = 0x0

.field static final DP_VERSION_FILE_PATH:Ljava/lang/String; = "/sys/class/dp_sec/dex_ver"

.field static final EXTRA_BT_DEVICE_DEEP_SLEEP:I = 0x13

.field static final EXTRA_NOTIFICATION_ACTION_CLICK_DISPLAY_ID:Ljava/lang/String; = "ACTION_CLICK_DISPLAYID"

.field static final EXTRA_NOTIFICATION_CLICK_DISPLAY_ID:Ljava/lang/String; = "CLICK_DISPLAYID"

.field static final KCC_PACKAGE:Ljava/lang/String; = "com.sec.knox.kccagent"

.field static final KIDS_MODE_PKGNAME:Ljava/lang/String; = "com.sec.android.app.kidshome"

.field static final LAUNCHER_PACKAGE:Ljava/lang/String; = "com.sec.android.app.desktoplauncher"

.field static final LOW_BATTERY_WARNING_THRESHOLD:I = 0x1e

.field static final LOW_CHARGER_POWER_WARNING_THRESHOLD:I = 0xf

.field static final LOW_MEMORY_WARNING_THRESHOLD:J = 0x19000000L

.field static final MONITOR_INFO_PATH:Ljava/lang/String; = "/sys/class/dp_sec/monitor_info"

.field static final PD_VERSION_FILE_PATH:Ljava/lang/String; = "/sys/class/sec/ccic/acc_device_version"

.field static final PSM_RESTRICTED_DEVICE_PERFORMANCE:Ljava/lang/String; = "restricted_device_performance"

.field static final SAMSUNG_CONTACTS_PKGNAME:Ljava/lang/String; = "com.samsung.android.contacts"

.field static final SPEN_DISABLED_PATH:Ljava/lang/String; = "/sys/class/sec/sec_epen/epen_disable_mode"

.field static final SPEN_ENABLED_PATH:Ljava/lang/String; = "/sys/class/sec/sec_epen/input/enabled"

.field static final SPEN_ENABLED_SLEEP:I = 0x0

.field static final SPEN_ENABLED_WAKEUP:I = 0x1

.field static final SPEN_MODE_FILE_PATH:Ljava/lang/String; = "/sys/class/sec/sec_epen/dex_enable"

.field static final TSP_PRESSURE_ENABLED_PATH:Ljava/lang/String; = "/sys/class/sec/tsp/pressure_enable"

.field static final UI_SERVICE_CLASS:Ljava/lang/String; = "com.sec.android.desktopmode.uiservice.DesktopModeUiService"

.field static final UI_SERVICE_PACKAGE:Ljava/lang/String; = "com.sec.android.desktopmode.uiservice"

.field static final UI_SERVICE_TILESERVICE_COMPONENT:Ljava/lang/String; = "com.sec.android.desktopmode.uiservice.DesktopModeTile"

.field static final UI_SERVICE_TILESERVICE_COMPONENT_FOR_DESKTOP_DISPLAY:Ljava/lang/String; = "com.sec.android.desktopmode.uiservice.DesktopDisplayDesktopModeTile"

.field static final UI_SERVICE_TOUCHPAD_COMPONENT:Ljava/lang/String; = "com.sec.android.desktopmode.uiservice.activity.TouchpadUiActivity"

.field static final USB_HOST_DEVICE_UEVENT:Ljava/lang/String; = "DEVTYPE=usb_interface"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
