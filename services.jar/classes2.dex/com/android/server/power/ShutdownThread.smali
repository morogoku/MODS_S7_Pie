.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$Led;,
        Lcom/android/server/power/ShutdownThread$Slog;,
        Lcom/android/server/power/ShutdownThread$LogFileWriter;,
        Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;,
        Lcom/android/server/power/ShutdownThread$ExtractColor;
    }
.end annotation


# static fields
.field private static final ACTION_CLEAR_COVER_STATE_CHANGE:Ljava/lang/String; = "com.samsung.cover.STATE_CHANGE"

.field private static final ACTION_ENTER_KNOX_DESKTOP_MODE:Ljava/lang/String;

.field private static final ACTION_EXIT_KNOX_DESKTOP_MODE:Ljava/lang/String;

.field private static final ACTION_POWER_OFF_CANCEL:Ljava/lang/String; = "POWER_OFF_CANCEL"

.field public static final ACTION_SHOW_GLOBAL_ACTIONS:Ljava/lang/String; = "android.intent.action.SHOW_GLOBAL_ACTIONS"

.field private static final ACTIVITY_MANAGER_STOP_PERCENT:I = 0x4

.field public static final AUDIT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.audit_safemode"

.field private static final BIN_TYPE_PRODUCTSHIP:Z

.field private static final BIN_TYPE_USER:Z

.field private static final BLACK_THEME_TEXT_MESSAGE_SCALE:F = 1.12f

.field private static final BROADCAST_STOP_PERCENT:I = 0x2

.field private static final BUTTON_DESCRIPTION_INDEX:I = 0x2

.field private static final BUTTON_IMAGE_INDEX:I = 0x0

.field private static final BUTTON_TITLE_INDEX:I = 0x1

.field private static final BUTTON_VIEW_SIZE:F = 1.3f

.field private static final DESCRIP_TEXT_PADDING:I = 0x18

.field private static final DESCRIP_TEXT_SIZE:I = 0xd

.field private static final FINISHED:I = 0x2

.field private static final FORCE_SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.property_forcedshutdown"

.field private static final LedOffValue:I = 0x6

.field private static final LedOnValue:I = 0x6

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x7530

.field private static final MAX_UNCRYPT_WAIT_TIME:I = 0xdbba0

.field private static final MINIMODE_SLEEP_TIME:I = 0x12c

.field private static final MOUNT_SERVICE_STOP_PERCENT:I = 0x14

.field private static M_STYLE_CONFIRM:Z = false

.field private static final NFC_PERSISTENT_LOG_TYPE:I = 0x2

.field private static N_STYLE_CONFIRM:Z = false

.field private static final PACKAGE_MANAGER_STOP_PERCENT:I = 0x6

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field private static final POWER_CONNECTED:I = 0x1

.field private static final RADIO_STOP_PERCENT:I = 0x12

.field public static final REASON_NO_POWER:Ljava/lang/String; = "no power"

.field private static final REASON_SILENT:Ljava/lang/String; = "silent.sec"

.field private static final REBOOT_CHARGERMODE_PROPERTY:Ljava/lang/String; = "ro.rebootchargermode"

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field private static final RECOVERY_CAUSE_FILE:Ljava/lang/String; = "/sys/class/sec/sec_debug/recovery_cause"

.field private static final RMT_SYNC_PROP:Ljava/lang/String; = "storage.efs_sync.done"

.field public static final RO_SAFEMODE_PROPERTY:Ljava/lang/String; = "ro.sys.safemode"

.field private static final SEP_VERSION_8_1:I = 0x138e4

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_BROADCAST_FEATURE:Ljava/lang/String; = "dev.shutdownbroadcast.on"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final STARTED:I = 0x1

.field private static final SUPPORT_DEX:Z = false

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static final TEXT_MESSAGE_SIZE:F = 15.0f

.field private static final TIMEOUT_EXTENDS_RATIO:I = 0x8

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final UNCRYPT_STATUS_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_status"

.field private static final UNSTARTED:I = 0x0

.field private static final VENDOR_SUBSYS_MAX_WAIT_MS:I = 0x2710

.field private static final VENDOR_SUBSYS_STATE_CHECK_INTERVAL_MS:I = 0x64

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static buttonView:Landroid/widget/LinearLayout;

.field private static coverOpen:Z

.field private static final delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static dexModeEnabled:Z

.field private static dlgAnim:Lcom/android/server/power/ShutdownDialog;

.field private static fadeoutView:Landroid/widget/RelativeLayout;

.field private static mCallerName:Ljava/lang/String;

.field private static mDexModeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private static mIsSupportedBlur:Z

.field private static mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private static mOemClassLoader:Ldalvik/system/PathClassLoader;

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mRebootSafeMode:Z

.field private static mRebootUpdate:Z

.field private static mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private static mSecureLockReceiver:Landroid/content/BroadcastReceiver;

.field private static mTts:Landroid/speech/tts/TextToSpeech;

.field private static m_rebootByBixby:Z

.field private static m_shutdownByBixby:Z

.field private static progressMessage:Ljava/lang/CharSequence;

.field private static progressStatus:I

.field private static rootView:Landroid/widget/RelativeLayout;

.field private static sConfirmDialog:Landroid/app/Dialog;

.field private static final sInstance:Lcom/android/server/power/ShutdownThread;

.field private static sIsConfirming:Z

.field private static sIsItemLongpressed:Z

.field private static sIsNeedWhiteTheme:Z

.field private static sIsRestrict:Z

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;

.field private static sRebootSafeModeByBixby:Z

.field private static sSupportBlackWhiteTheme:Z

.field private static s_Context:Landroid/content/Context;

.field private static subsysProp:Ljava/lang/String;

.field private static final uncryptProgressSync:Ljava/lang/Object;

.field private static uncryptStep:I


# instance fields
.field private mActionDone:Z

.field private mActionDoneMount:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private final mActionDoneSyncMount:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string/jumbo v0, "user"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_USER:Z

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsRestrict:Z

    new-instance v2, Lcom/android/server/power/ShutdownThread;

    invoke-direct {v2}, Lcom/android/server/power/ShutdownThread;-><init>()V

    sput-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    sput-object v2, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v2, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-string/jumbo v2, "ro.build.scafe"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "americano"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    const-string/jumbo v3, "mocha"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    goto :goto_65

    :cond_63
    move v3, v1

    goto :goto_66

    :cond_65
    :goto_65
    move v3, v0

    :goto_66
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->M_STYLE_CONFIRM:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_70

    move v2, v1

    goto :goto_71

    :cond_70
    move v2, v0

    :goto_71
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->N_STYLE_CONFIRM:Z

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/power/ShutdownThread;->rootView:Landroid/widget/RelativeLayout;

    sput-object v2, Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;

    sput-object v2, Lcom/android/server/power/ShutdownThread;->fadeoutView:Landroid/widget/RelativeLayout;

    sput-object v2, Lcom/android/server/power/ShutdownThread;->s_Context:Landroid/content/Context;

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsItemLongpressed:Z

    sput-object v2, Lcom/android/server/power/ShutdownThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsNeedWhiteTheme:Z

    sget v2, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v3, 0x138e4

    if-lt v2, v3, :cond_93

    move v2, v1

    goto :goto_94

    :cond_93
    move v2, v0

    :goto_94
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->sSupportBlackWhiteTheme:Z

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mIsSupportedBlur:Z

    const-string/jumbo v1, "vendor.peripheral.shutdown_critical_list"

    const-string v2, "ERROR"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/power/ShutdownThread;->subsysProp:Ljava/lang/String;

    sget-object v1, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_KNOX_DESKTOP_MODE:Ljava/lang/String;

    sput-object v1, Lcom/android/server/power/ShutdownThread;->ACTION_ENTER_KNOX_DESKTOP_MODE:Ljava/lang/String;

    sget-object v1, Landroid/app/UiModeManager;->SEM_ACTION_EXIT_KNOX_DESKTOP_MODE:Ljava/lang/String;

    sput-object v1, Lcom/android/server/power/ShutdownThread;->ACTION_EXIT_KNOX_DESKTOP_MODE:Ljava/lang/String;

    sput v0, Lcom/android/server/power/ShutdownThread;->uncryptStep:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->uncryptProgressSync:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread$1;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mDexModeChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/power/ShutdownThread$2;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread$2;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/power/ShutdownThread$3;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread$3;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const-string v0, "ShutdownThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    return-void
.end method

.method public static IsShutDownConfirming()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    return v0
.end method

.method public static IsShutDownStarted()Z
    .registers 2

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v0, :cond_e

    const-string v0, "ShutdownThread"

    const-string/jumbo v1, "shut down already running , return true"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->uncryptProgressSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/server/power/ShutdownThread;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-object v0
.end method

.method static synthetic access$1000()V
    .registers 0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->initBixbyVariables()V

    return-void
.end method

.method static synthetic access$1100()Landroid/app/Dialog;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1200()Landroid/content/BroadcastReceiver;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/content/Context;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$1400()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sSupportBlackWhiteTheme:Z

    return v0
.end method

.method static synthetic access$1500()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mIsSupportedBlur:Z

    return v0
.end method

.method static synthetic access$1600(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 2

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->captureScreen(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsNeedWhiteTheme:Z

    return v0
.end method

.method static synthetic access$1702(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->sIsNeedWhiteTheme:Z

    return p0
.end method

.method static synthetic access$1800()Landroid/widget/RelativeLayout;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1802(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .registers 1

    sput-object p0, Lcom/android/server/power/ShutdownThread;->rootView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$1900()Landroid/widget/LinearLayout;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1902(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .registers 1

    sput-object p0, Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/content/Context;Z)Landroid/widget/ImageView;
    .registers 3

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->getButtonView(Landroid/content/Context;Z)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Landroid/content/Context;Z)Landroid/widget/TextView;
    .registers 3

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->getTextView(Landroid/content/Context;Z)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Landroid/content/Context;Z)Landroid/widget/TextView;
    .registers 3

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->getDescriptionView(Landroid/content/Context;Z)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300()Landroid/widget/RelativeLayout;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->fadeoutView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2302(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .registers 1

    sput-object p0, Lcom/android/server/power/ShutdownThread;->fadeoutView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$2400()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsItemLongpressed:Z

    return v0
.end method

.method static synthetic access$2402(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->sIsItemLongpressed:Z

    return p0
.end method

.method static synthetic access$2500(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->runConfirm(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2600()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    return v0
.end method

.method static synthetic access$2602(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    return p0
.end method

.method static synthetic access$2700()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    return v0
.end method

.method static synthetic access$2702(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    return p0
.end method

.method static synthetic access$2802(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    return p0
.end method

.method static synthetic access$2900()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    return v0
.end method

.method static synthetic access$2902(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    return p0
.end method

.method static synthetic access$300()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->dexModeEnabled:Z

    return v0
.end method

.method static synthetic access$3000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3002(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->dexModeEnabled:Z

    return p0
.end method

.method static synthetic access$3100(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;
    .registers 3

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->getButtonDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200()I
    .registers 1

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->getTitleText()I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->getDescriptionText(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3400()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    return v0
.end method

.method static synthetic access$3500()V
    .registers 0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->animateDismiss()V

    return-void
.end method

.method static synthetic access$3600()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->M_STYLE_CONFIRM:Z

    return v0
.end method

.method static synthetic access$3700()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3802(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    return p0
.end method

.method static synthetic access$3900(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->startShutdownDialog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400()I
    .registers 1

    sget v0, Lcom/android/server/power/ShutdownThread;->uncryptStep:I

    return v0
.end method

.method static synthetic access$4000(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->textToSpeech(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(I)I
    .registers 1

    sput p0, Lcom/android/server/power/ShutdownThread;->uncryptStep:I

    return p0
.end method

.method static synthetic access$4200(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$4400()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z

    return v0
.end method

.method static synthetic access$4500()Ljava/util/concurrent/locks/ReentrantLock;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$4600()Lcom/android/server/power/ShutdownDialog;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    return-object v0
.end method

.method static synthetic access$4700()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_USER:Z

    return v0
.end method

.method static synthetic access$4800()Landroid/speech/tts/TextToSpeech;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/power/ShutdownThread;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$600()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    return v0
.end method

.method static synthetic access$700()Ljava/lang/CharSequence;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->progressMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$702(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 1

    sput-object p0, Lcom/android/server/power/ShutdownThread;->progressMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$800()I
    .registers 1

    sget v0, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    return v0
.end method

.method static synthetic access$802(I)I
    .registers 1

    sput p0, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    return p0
.end method

.method static synthetic access$812(I)I
    .registers 2

    sget v0, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    add-int/2addr v0, p0

    sput v0, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    return v0
.end method

.method static synthetic access$900(Landroid/content/Context;ZLjava/lang/CharSequence;I)Landroid/app/ProgressDialog;
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/power/ShutdownThread;->getProgressDialog(Landroid/content/Context;ZLjava/lang/CharSequence;I)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method private static animateDismiss()V
    .registers 4

    sget-object v0, Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_26

    sget-object v0, Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/server/power/ShutdownThread$6;

    invoke-direct {v3}, Lcom/android/server/power/ShutdownThread$6;-><init>()V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2d

    :cond_26
    const-string v0, "ShutdownThread"

    const-string v1, "ButtonView is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    return-void
.end method

.method private static beginShutdownSequence(Landroid/content/Context;Z)V
    .registers 11

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v1, :cond_13

    const-string v1, "ShutdownThread"

    const-string v2, "!@Shutdown sequence already running, returning."

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->sendPowerOffCancelBroadcast(Landroid/content/Context;)V

    monitor-exit v0

    return-void

    :cond_13
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_fd

    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->startState()V

    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->openLogFileWriter()V

    const-string v0, "ShutdownThread"

    const-string v2, "!@beginShutdownSequence"

    invoke-static {v0, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->setInputKeysDisable(Z)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move v2, p1

    const-string/jumbo v3, "powerofftriggered"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "isShutDownForRCS"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v3, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const-string/jumbo v4, "power"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, v3, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    :try_start_57
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const-string v7, "ShutdownThread-cpu"

    invoke-virtual {v6, v1, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, v5, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v1, v1, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v1, v1, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_73
    .catch Ljava/lang/SecurityException; {:try_start_57 .. :try_end_73} :catch_74

    goto :goto_80

    :catch_74
    move-exception v1

    const-string v5, "ShutdownThread"

    const-string v6, "!@No permission to acquire wake lock"

    invoke-static {v5, v6, v1}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v4, v5, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    :goto_80
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const-string/jumbo v5, "shutdown"

    const-string v6, "1"

    invoke-virtual {v1, v5, v6}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v4, v5, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    if-eqz v5, :cond_c9

    :try_start_9e
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v7, 0x1a

    const-string v8, "ShutdownThread-screen"

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_bc
    .catch Ljava/lang/SecurityException; {:try_start_9e .. :try_end_bc} :catch_bd

    goto :goto_c9

    :catch_bd
    move-exception v3

    const-string v5, "ShutdownThread"

    const-string v6, "!@No permission to acquire wake lock"

    invoke-static {v5, v6, v3}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v4, v5, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_c9
    :goto_c9
    const-string v3, "ShutdownThread"

    const-string v4, "!@normal"

    invoke-static {v3, v4}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "recovery-update"

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f6

    :try_start_db
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/storage/IStorageManager;->setKeyforFBEfota()V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_e9} :catch_ea

    goto :goto_f2

    :catch_ea
    move-exception v3

    const-string v4, "ShutdownThread"

    const-string v5, "!@Exception during updating FOTA in FBE"

    invoke-static {v4, v5, v3}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    :goto_f2
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->startRecoveryDialog(Landroid/content/Context;)V

    goto :goto_f9

    :cond_f6
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->startShutdownDialog(Landroid/content/Context;)V

    :goto_f9
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->startShutdownThread()V

    return-void

    :catchall_fd
    move-exception v1

    :try_start_fe
    monitor-exit v0
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_fd

    throw v1
.end method

.method private static blackMiniModeBar(Landroid/content/Context;)V
    .registers 4

    const-wide/16 v0, 0x12c

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "ShutdownThread"

    const-string v2, "InterruptedException"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    :goto_e
    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lcom/android/server/power/ShutdownThread;->sendMiniModeUiIntent(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static canGlobalActionsShow()Z
    .registers 1

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownConfirming()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static captureScreen(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 20

    move-object/from16 v1, p0

    const/4 v2, 0x0

    if-nez v1, :cond_d

    const-string v0, "ShutdownThread"

    const-string v3, "captureScreen() : mContext is NULL!!!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_d
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v3, v0

    const-string/jumbo v0, "window"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    move v0, v5

    move v7, v6

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_3e

    const/4 v9, 0x3

    if-eq v8, v9, :cond_3e

    :goto_3b
    move v15, v7

    move v7, v0

    goto :goto_41

    :cond_3e
    move v0, v6

    move v7, v5

    goto :goto_3b

    :goto_41
    const/16 v16, 0x0

    const/16 v17, 0x4e20

    const v13, 0x30d40

    :try_start_48
    new-instance v9, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {v9, v0, v0, v7, v15}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4e} :catch_5f

    const/4 v14, 0x0

    const/4 v0, 0x0

    move v10, v7

    move v11, v15

    move/from16 v12, v17

    move v2, v15

    move v15, v0

    :try_start_56
    invoke-static/range {v9 .. v15}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5a} :catch_5d

    move-object/from16 v16, v0

    goto :goto_77

    :catch_5d
    move-exception v0

    goto :goto_61

    :catch_5f
    move-exception v0

    move v2, v15

    :goto_61
    const-string v9, "ShutdownThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "captureScreen : failed to access screenshot API : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_77
    if-nez v16, :cond_a1

    const-string v0, "ShutdownThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "captureScreen : Could not capture the screen! screenBitmap == null, lcdWidth="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " lcdHeight="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " rotation="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    return-object v9

    :cond_a1
    return-object v16
.end method

.method private static createConfirmDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .registers 5

    new-instance v0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/server/power/ShutdownThread$4;

    const v2, 0x1030011

    invoke-direct {v1, p0, v2, p0}, Lcom/android/server/power/ShutdownThread$4;-><init>(Landroid/content/Context;ILandroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/server/power/ShutdownThread$4;->init()Landroid/app/Dialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/power/ShutdownThread;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-object v1, v0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v1
.end method

.method private static deviceOemShutdown()V
    .registers 10

    const-string v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shutdown critical subsyslist is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/power/ShutdownThread;->subsysProp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ShutdownThread"

    const-string v1, "Waiting for a maximum of 10000ms"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/power/ShutdownThread;->subsysProp:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    const/4 v3, 0x1

    array-length v4, v0

    :goto_31
    const/4 v3, 0x1

    const/4 v5, 0x0

    move v6, v3

    move v3, v5

    :goto_35
    if-ge v3, v4, :cond_62

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "vendor.peripheral."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v0, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".state"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ERROR"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ONLINE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5f

    const/4 v6, 0x0

    :cond_5f
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    :cond_62
    if-nez v6, :cond_6b

    const-wide/16 v7, 0x64

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    :cond_6b
    const/4 v3, 0x1

    if-eq v6, v3, :cond_73

    if-lt v1, v2, :cond_71

    goto :goto_73

    :cond_71
    move v3, v6

    goto :goto_31

    :cond_73
    :goto_73
    if-eq v6, v3, :cond_c2

    nop

    :goto_76
    move v3, v5

    array-length v5, v0

    if-ge v3, v5, :cond_c9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "vendor.peripheral."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v0, v3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".state"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "ERROR"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "ONLINE"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_be

    const-string v7, "ShutdownThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Subsystem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " did not shut down within timeout"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_be
    add-int/lit8 v3, v3, 0x1

    move v5, v3

    goto :goto_76

    :cond_c2
    const-string v3, "ShutdownThread"

    const-string v5, "Vendor subsystem(s) shutdown successful"

    invoke-static {v3, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c9
    return-void
.end method

.method private static deviceRebootOrShutdown(Ljava/lang/String;ZLjava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/android/server/power/ShutdownThread;->mOemClassLoader:Ldalvik/system/PathClassLoader;

    invoke-virtual {v1, p0}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_7} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_41

    :try_start_7
    const-string/jumbo v2, "rebootOrShutdown"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v0

    aput-object p2, v3, v6

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_2b} :catch_38
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2b} :catch_2f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_2b} :catch_4a

    nop

    nop

    nop

    return v6

    :catch_2f
    move-exception v2

    :try_start_30
    const-string v3, "ShutdownThread"

    const-string v4, "!@unchecked exception raised"

    invoke-static {v3, v4, v2}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    return v0

    :catch_38
    move-exception v2

    const-string v3, "ShutdownThread"

    const-string v4, "!@call method fail rebootOrShutdown"

    invoke-static {v3, v4, v2}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    :try_end_40
    .catch Ljava/lang/ClassNotFoundException; {:try_start_30 .. :try_end_40} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_40} :catch_41

    return v0

    :catch_41
    move-exception v1

    const-string v2, "ShutdownThread"

    const-string v3, "!@unchecked exception raised"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_4a
    move-exception v1

    const-string v2, "ShutdownThread"

    const-string v3, "!@can\'t found class"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static getButtonDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;
    .registers 3

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->N_STYLE_CONFIRM:Z

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sSupportBlackWhiteTheme:Z

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-nez v0, :cond_10

    :cond_c
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    if-eqz v0, :cond_18

    :cond_10
    const v0, 0x1080b5c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_17
    goto :goto_3f

    :cond_18
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v0, :cond_2e

    if-nez p1, :cond_26

    const v0, 0x1080b58

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_17

    :cond_26
    const v0, 0x1080b59

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_17

    :cond_2e
    if-nez p1, :cond_38

    const v0, 0x1080b54

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_17

    :cond_38
    const v0, 0x1080b55

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_3f
    return-object v0
.end method

.method private static getButtonView(Landroid/content/Context;Z)Landroid/widget/ImageView;
    .registers 8

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->getButtonDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3fa66666    # 1.3f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v4, v5

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private static getDescriptionText(Landroid/content/Context;)I
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string v1, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->N_STYLE_CONFIRM:Z

    if-eqz v1, :cond_2d

    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->sSupportBlackWhiteTheme:Z

    if-eqz v1, :cond_2d

    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-nez v1, :cond_31

    :cond_2d
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    if-eqz v1, :cond_35

    :cond_31
    const v1, 0x104039f

    :goto_34
    goto :goto_6b

    :cond_35
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v1, :cond_3d

    const v1, 0x10408a0

    goto :goto_34

    :cond_3d
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->M_STYLE_CONFIRM:Z

    if-eqz v1, :cond_61

    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v1, :cond_53

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_4f

    const v1, 0x104039e

    goto :goto_34

    :cond_4f
    const v1, 0x104039d

    goto :goto_34

    :cond_53
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_5d

    const v1, 0x104039c

    goto :goto_34

    :cond_5d
    const v1, 0x104039b

    goto :goto_34

    :cond_61
    const/4 v1, 0x2

    if-ne v0, v1, :cond_68

    const v1, 0x10409bb

    goto :goto_6b

    :cond_68
    const v1, 0x10409ba

    :goto_6b
    return v1
.end method

.method private static getDescriptionView(Landroid/content/Context;Z)Landroid/widget/TextView;
    .registers 10

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    const/high16 v4, 0x439b0000    # 310.0f

    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v6, v4

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {v3, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->getDescriptionText(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x2

    const/high16 v6, 0x41500000    # 13.0f

    invoke-virtual {v1, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 v5, 0x11

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    if-eqz p1, :cond_57

    const v5, 0x1060263

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_61

    :cond_57
    const v5, 0x1060261

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_61
    return-object v1
.end method

.method private static getProgressDialog(Landroid/content/Context;ZLjava/lang/CharSequence;I)Landroid/app/ProgressDialog;
    .registers 8

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x10408a7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_29

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setProgress(I)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_36

    :cond_29
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const v2, 0x10408a6

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_36
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x96b

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    return-object v0
.end method

.method private static getReasonforshutdownFileName()Ljava/io/File;
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/log/power_off_reset_reason.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/log/power_off_reset_reason_backup.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1b4

    const/4 v5, -0x1

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x2800

    cmp-long v3, v6, v8

    if-lez v3, :cond_a5

    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v6, "ShutdownThread"

    const-string v7, "The size of power_off_reset_reason.txt is over than 10KB. Rename to power_off_reset_reason_backup.txt for backup."

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_76

    const-string v6, "ShutdownThread"

    const-string/jumbo v7, "power_off_reset_reason_backup.txt file is already exist. So, delete it."

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_76

    const-string v4, "ShutdownThread"

    const-string/jumbo v5, "power_off_reset_reason_backup.txt delete fail"

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_76
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_9d

    const-string v6, "ShutdownThread"

    const-string/jumbo v7, "rename to power_off_reset_reason_backup.txt"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    const-string v4, "ShutdownThread"

    const-string/jumbo v5, "power_off_reset_reason.txt is re-created."

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_9d
    const-string v4, "ShutdownThread"

    const-string/jumbo v5, "rename to power_off_reset_reason_backup.txt fail"

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a5
    return-object v2
.end method

.method public static getRestrict()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsRestrict:Z

    return v0
.end method

.method private static getTextView(Landroid/content/Context;Z)Landroid/widget/TextView;
    .registers 6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->getTitleText()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x2

    if-eqz p1, :cond_30

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const v2, 0x1060260

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_40

    :cond_30
    const v3, 0x41866666    # 16.8f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const v2, 0x106025e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_40
    return-object v1
.end method

.method private static getTitleText()I
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->N_STYLE_CONFIRM:Z

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sSupportBlackWhiteTheme:Z

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-nez v0, :cond_10

    :cond_c
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    if-eqz v0, :cond_14

    :cond_10
    const v0, 0x10403b4

    :goto_13
    goto :goto_27

    :cond_14
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v0, :cond_1c

    const v0, 0x10408a1

    goto :goto_13

    :cond_1c
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v0, :cond_24

    const v0, 0x10403b3

    goto :goto_13

    :cond_24
    const v0, 0x10403ad

    :goto_27
    return v0
.end method

.method public static hasTSafeLock(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x0

    const-string v1, "com.skt.t_smart_charge"

    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_15

    const-string v4, "com.skt.t_smart_charge"

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_17

    if-eqz v4, :cond_14

    const/4 v2, 0x1

    nop

    :cond_14
    move v0, v2

    :cond_15
    nop

    return v0

    :catch_17
    move-exception v3

    return v2
.end method

.method private static initBixbyVariables()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->s_Context:Landroid/content/Context;

    sput-object v0, Lcom/android/server/power/ShutdownThread;->rootView:Landroid/widget/RelativeLayout;

    sput-object v0, Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;

    sput-object v0, Lcom/android/server/power/ShutdownThread;->fadeoutView:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsItemLongpressed:Z

    return-void
.end method

.method private static isConfirmAvailable(Landroid/content/Context;)Z
    .registers 9

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_18

    move v1, v2

    goto :goto_19

    :cond_18
    move v1, v3

    :goto_19
    const-string/jumbo v4, "temp"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/server/power/ShutdownThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v5, :cond_2b

    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/android/server/power/ShutdownThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    :cond_2b
    sget-boolean v5, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    if-nez v5, :cond_33

    sget-boolean v5, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v5, :cond_44

    :cond_33
    sget-boolean v5, Lcom/android/server/power/ShutdownThread;->sSupportBlackWhiteTheme:Z

    if-eqz v5, :cond_44

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_function_val"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_44

    return v3

    :cond_44
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->isTSafeLock(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_63

    if-eqz v1, :cond_63

    sget-boolean v5, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-nez v5, :cond_63

    sget-boolean v5, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    if-nez v5, :cond_63

    const v5, 0x10403d9

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return v3

    :cond_63
    const-string/jumbo v5, "true"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v7, "isPowerOffAllowed"

    invoke-static {p0, v6, v7, v5}, Lcom/android/server/power/ShutdownThread;->isEDM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "false"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_83

    const-string v2, "ShutdownThread"

    const-string/jumbo v6, "power or restart : restricted by MDM "

    invoke-static {v2, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_83
    if-eqz v1, :cond_a5

    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-nez v6, :cond_a5

    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    if-nez v6, :cond_a5

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "android.intent.action.SHOW_GLOBAL_ACTIONS"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v6, Lcom/android/server/power/ShutdownThread;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->sendBendedPendingIntent(Landroid/content/Context;)V

    sget-object v6, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    return v3

    :cond_a5
    return v2
.end method

.method private static isEDM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    const-string v0, ""

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz p0, :cond_30

    const/4 v1, 0x0

    aget-object v1, p3, v1

    const-string/jumbo v2, "temp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v7

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_30

    :cond_23
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v2, v7

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :cond_30
    :goto_30
    if-eqz v8, :cond_47

    :try_start_32
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v8, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_42

    move-object v0, v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_47

    :catchall_42
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_47
    :goto_47
    return-object v0
.end method

.method public static isFOTAAvailable()Z
    .registers 1

    sget-object v0, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private static isPossibleRebootSafeMode(Landroid/content/Context;)Z
    .registers 6

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string/jumbo v1, "no_safe_boot"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    return v2

    :cond_14
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v1

    if-eqz v1, :cond_1b

    return v2

    :cond_1b
    const-string v1, "enterprise_policy"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_38

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isSafeModeAllowed()Z

    move-result v3

    if-nez v3, :cond_38

    const-string v3, "ShutdownThread"

    const-string/jumbo v4, "safe mode is not allowed by IT admin"

    invoke-static {v3, v4}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_38
    const/4 v2, 0x1

    return v2
.end method

.method private isPoweredPlugged()Z
    .registers 5

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v1, v1, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "plugged"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v3, 0x0

    :goto_1c
    return v3
.end method

.method private static isTSafeLock(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->hasTSafeLock(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    :cond_b
    const-string/jumbo v1, "off_menu_setting"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "off_menu_setting"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    move v0, v3

    nop

    :cond_1e
    return v0
.end method

.method private static isTablet()Z
    .registers 2

    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method private static isTalkBackEnabled(Landroid/content/Context;)Z
    .registers 10

    const/16 v0, 0x3a

    const-string v1, "com.google.android.marvin.talkback"

    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v3, 0x3a

    invoke-direct {v2, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enabled_accessibility_services"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1a

    const-string v3, ""

    :cond_1a
    move-object v4, v2

    invoke-virtual {v4, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :goto_1e
    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_46

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_46

    const-string v8, "com.google.android.marvin.talkback"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_46

    const-string v8, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_46

    const/4 v8, 0x1

    return v8

    :cond_46
    goto :goto_1e

    :cond_47
    const/4 v5, 0x0

    return v5
.end method

.method public static isTouchInside(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    const/4 v2, 0x0

    aget v3, v0, v2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    const/4 v4, 0x1

    aget v5, v0, v4

    int-to-float v5, v5

    sub-float/2addr v3, v5

    const/4 v5, 0x0

    cmpg-float v6, v1, v5

    if-ltz v6, :cond_35

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v1, v6

    if-gtz v6, :cond_35

    cmpg-float v5, v3, v5

    if-ltz v5, :cond_35

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_34

    goto :goto_35

    :cond_34
    return v4

    :cond_35
    :goto_35
    return v2
.end method

.method private static needQcOemShutdown()Z
    .registers 7

    const-string/jumbo v0, "ro.chipname"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "8084"

    const-string v2, "exynos"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    if-ge v4, v2, :cond_20

    aget-object v5, v1, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1d

    return v3

    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_20
    new-instance v2, Ldalvik/system/PathClassLoader;

    const-string v3, "/system/framework/oem-services.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v2, Lcom/android/server/power/ShutdownThread;->mOemClassLoader:Ldalvik/system/PathClassLoader;

    const/4 v2, 0x1

    return v2
.end method

.method private static needSyncQcRmtStorage()Z
    .registers 3

    const-string/jumbo v0, "ro.hardware"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "qcom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string/jumbo v1, "storage.efs_sync.done"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_21

    const/4 v2, 0x1

    return v2

    :cond_21
    const/4 v1, 0x0

    return v1
.end method

.method private static readSalesCode()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    :try_start_2
    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_18

    const-string/jumbo v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_19

    move-object v0, v1

    :cond_18
    goto :goto_1a

    :catch_19
    move-exception v1

    :goto_1a
    return-object v0
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 6

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reboot reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", confirm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    invoke-static {p0, p2, v0}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 7

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reboot reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", confirm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", caller : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    sput-object p3, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    invoke-static {p0, p2, v0}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 11

    const-string v0, "ShutdownThread"

    const-string v1, "!@call oem shutdown..."

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ro.baseband"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->needSyncQcRmtStorage()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->syncQcRmtStorage()V

    :cond_1a
    sget-object v1, Lcom/android/server/power/ShutdownThread;->subsysProp:Ljava/lang/String;

    const-string v2, "ERROR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->deviceOemShutdown()V

    :cond_27
    const-string v1, "ShutdownThread"

    const-string v2, "!@waitForAnimEnd"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    if-eqz v1, :cond_39

    sget-object v1, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/server/power/ShutdownDialog;->waitForAnimEnd(I)Z

    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "!@"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_46

    const-string/jumbo v2, "reboot : "

    goto :goto_49

    :cond_46
    const-string/jumbo v2, "shutdown : "

    :goto_49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_52

    const-string/jumbo v2, "null"

    goto :goto_53

    :cond_52
    move-object v2, p2

    :goto_53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ShutdownThread"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->waitIfTimeoutDumpWorking()V

    if-eqz p1, :cond_7a

    const-string/jumbo v2, "poweroff_sound=suspend"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->closeLogFileWriter()V

    :try_start_6d
    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_70} :catch_71

    :goto_70
    goto :goto_96

    :catch_71
    move-exception v2

    const-string v3, "ShutdownThread"

    const-string v4, "!@Reboot failed, will attempt shutdown instead"

    invoke-static {v3, v4, v2}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_70

    :cond_7a
    if-eqz p0, :cond_96

    new-instance v2, Landroid/os/SystemVibrator;

    invoke-direct {v2, p0}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    const-wide/16 v3, 0x1f4

    :try_start_83
    sget-object v5, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_88} :catch_89

    goto :goto_91

    :catch_89
    move-exception v5

    const-string v6, "ShutdownThread"

    const-string v7, "!@Failed to vibrate during shutdown."

    invoke-static {v6, v7, v5}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    :goto_91
    :try_start_91
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_94
    .catch Ljava/lang/InterruptedException; {:try_start_91 .. :try_end_94} :catch_95

    goto :goto_96

    :catch_95
    move-exception v3

    :cond_96
    :goto_96
    const-string v2, "ShutdownThread"

    const-string v3, "!@Performing low-level shutdown..."

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->closeLogFileWriter()V

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown(Ljava/lang/String;)V

    return-void
.end method

.method public static rebootSafeMode(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 6

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->isPossibleRebootSafeMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reboot safe reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", confirm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    invoke-static {p0, p2, v0}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/server/power/ShutdownThread;->rebootSafeMode(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private static restoreMiniModeBarAndSleep(Landroid/content/Context;Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/android/server/power/ShutdownThread;->sendMiniModeUiIntent(Landroid/content/Context;ZZ)V

    if-eqz p1, :cond_14

    const-wide/16 v0, 0x12c

    :try_start_8
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    const-string v1, "ShutdownThread"

    const-string v2, "InterruptedException"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    :cond_14
    :goto_14
    return-void
.end method

.method private static runConfirm(Landroid/content/Context;)V
    .registers 8

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->isConfirmAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/16 v0, 0x12c

    sget-object v1, Lcom/android/server/power/ShutdownThread;->fadeoutView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    sget-object v1, Lcom/android/server/power/ShutdownThread;->fadeoutView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_4e

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e4ccccd    # 0.2f

    const v6, 0x3e2e147b    # 0.17f

    invoke-direct {v4, v6, v6, v5, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    new-instance v2, Lcom/android/server/power/ShutdownThread$5;

    invoke-direct {v2, p0}, Lcom/android/server/power/ShutdownThread$5;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_4e
    .array-data 4
        0x99
        0xff
    .end array-data
.end method

.method public static saveReasonforshutdown(Ljava/lang/Exception;)V
    .registers 8

    const-string v0, "ShutdownThread"

    const-string v1, "ShutdownThread.saveReasonforshutdown"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->getReasonforshutdownFileName()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_c
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v1, v2

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yy/MM/dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v5, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    if-eqz v5, :cond_4a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "caller : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reason : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_6a} :catch_80
    .catchall {:try_start_c .. :try_end_6a} :catchall_74

    nop

    :try_start_6b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    :goto_6e
    goto :goto_87

    :catch_6f
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6e

    :catchall_74
    move-exception v2

    if-eqz v1, :cond_7f

    :try_start_77
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    goto :goto_7f

    :catch_7b
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_7f
    :goto_7f
    throw v2

    :catch_80
    move-exception v2

    if-eqz v1, :cond_87

    :try_start_83
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_6f

    goto :goto_6e

    :cond_87
    :goto_87
    return-void
.end method

.method private static sendBendedPendingIntent(Landroid/content/Context;)V
    .registers 6

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SHOW_GLOBAL_ACTIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "afterKeyguardGone"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "dismissType"

    const-string/jumbo v4, "shutdown"

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ShutdownThread"

    const-string/jumbo v4, "send secure lock intent"

    invoke-static {v1, v4}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static sendMiniModeUiIntent(Landroid/content/Context;ZZ)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "suppressCoverUI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "miniModeUI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "sender"

    const-string v2, "ShutdownThread"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static sendPowerOffCancelBroadcast(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "POWER_OFF_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static setInputKeysDisable(Z)V
    .registers 5

    const-string v0, "input"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v0

    if-nez v0, :cond_23

    const-string v1, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceManager.checkService fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_23
    return-void
.end method

.method private setRebootProgress(ILjava/lang/CharSequence;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/ShutdownThread$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/ShutdownThread$10;-><init>(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static shutdown(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 6

    const-string v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shutdown reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", confirm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    invoke-static {p0, p2, v0}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static shutdown(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 7

    const-string v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shutdown reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", confirm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", caller : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    sput-object p3, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    invoke-static {p0, p2, v0}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .registers 5

    const-string v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shutdown confirm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    invoke-static {p0, p1, v0}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static shutdown(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 6

    const-string v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shutdown confirm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    return-void
.end method

.method static shutdownInner(Landroid/content/Context;ZZ)V
    .registers 10

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v1, :cond_13

    const-string v1, "ShutdownThread"

    const-string v2, "!@Request to shutdown already running, returning."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->sendPowerOffCancelBroadcast(Landroid/content/Context;)V

    monitor-exit v0

    return-void

    :cond_13
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    if-eqz v1, :cond_20

    if-eqz p1, :cond_20

    const-string v1, "ShutdownThread"

    const-string v2, "!@duplicate shutdown confirm dialog request."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->sIsRestrict:Z
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_d5

    :try_start_26
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v3, :cond_2e

    sget-object v3, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v3, :cond_50

    :cond_2e
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v3

    if-eqz v3, :cond_50

    if-nez p2, :cond_50

    invoke-virtual {v3, v1}, Landroid/sec/enterprise/RestrictionPolicy;->isPowerOffAllowed(Z)Z

    move-result v4

    if-nez v4, :cond_50

    const-string v4, "ShutdownThread"

    const-string v5, "Shutdown Disabled by Administrator"

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsRestrict:Z

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->sendPowerOffCancelBroadcast(Landroid/content/Context;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_4e} :catch_51
    .catchall {:try_start_26 .. :try_end_4e} :catchall_d5

    :try_start_4e
    monitor-exit v0

    return-void

    :cond_50
    goto :goto_52

    :catch_51
    move-exception v3

    :goto_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_d5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v3, 0x20

    if-ne v0, v3, :cond_64

    goto :goto_65

    :cond_64
    move v1, v2

    :goto_65
    move v0, v1

    new-instance v1, Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_6e

    const v3, 0x1030128

    goto :goto_71

    :cond_6e
    const v3, 0x103012b

    :goto_71
    invoke-direct {v1, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "It is not an exception!! just save the trace for process which called shutdown thread!! ShutdownThread.shutdown"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/server/power/ShutdownThread;->saveReasonforshutdown(Ljava/lang/Exception;)V

    if-eqz p1, :cond_bc

    const-string/jumbo v4, "silent.sec"

    sget-object v5, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bc

    const-string v2, "ShutdownThread"

    const-string v4, "!@########POWEROFF START WITH CONFIRM######"

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v1, Lcom/android/server/power/ShutdownThread;->s_Context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "reason"

    const-string/jumbo v5, "shutdown_confirm_dialog_close"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_b0

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    :cond_b0
    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->createConfirmDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v4

    sput-object v4, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    goto :goto_d4

    :cond_bc
    const-wide/16 v4, 0x32

    :try_start_be
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c1
    .catch Ljava/lang/InterruptedException; {:try_start_be .. :try_end_c1} :catch_c2

    goto :goto_ca

    :catch_c2
    move-exception v4

    const-string v5, "ShutdownThread"

    const-string v6, "InterruptedException"

    invoke-static {v5, v6, v4}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    :goto_ca
    const-string v4, "ShutdownThread"

    const-string v5, "!@########POWEROFF START WITHOUT CONFIRM######"

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;Z)V

    :goto_d4
    return-void

    :catchall_d5
    move-exception v1

    :try_start_d6
    monitor-exit v0
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d5

    throw v1
.end method

.method private shutdownRadios(I)V
    .registers 14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    const/4 v2, 0x1

    new-array v2, v2, [Z

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    new-instance v11, Lcom/android/server/power/ShutdownThread$13;

    move-object v4, v11

    move-object v5, p0

    move-object v6, v3

    move-wide v7, v0

    move v9, p1

    move-object v10, v2

    invoke-direct/range {v4 .. v10}, Lcom/android/server/power/ShutdownThread$13;-><init>(Lcom/android/server/power/ShutdownThread;Landroid/net/wifi/WifiManager;JI[Z)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    int-to-long v5, p1

    :try_start_25
    invoke-virtual {v4, v5, v6}, Ljava/lang/Thread;->join(J)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_2a

    :catch_29
    move-exception v5

    :goto_2a
    const/4 v5, 0x0

    aget-boolean v5, v2, v5

    if-nez v5, :cond_36

    const-string v5, "ShutdownThread"

    const-string v6, "Timed out waiting for NFC and Radio shutdown."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    return-void
.end method

.method private static startGoogleShutdownDialog(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x1040888

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x10409bc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x400000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private static startRecoveryDialog(Landroid/content/Context;)V
    .registers 6

    sget-object v0, Lcom/android/server/power/ShutdownThread;->uncryptProgressSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    sput v1, Lcom/android/server/power/ShutdownThread;->uncryptStep:I

    sget-object v2, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_18

    sget-object v2, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_19

    :cond_18
    move v1, v3

    :goto_19
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    const v1, 0x10408a5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    sput-object v1, Lcom/android/server/power/ShutdownThread;->progressMessage:Ljava/lang/CharSequence;

    sput v3, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    sget-object v3, Lcom/android/server/power/ShutdownThread;->progressMessage:Ljava/lang/CharSequence;

    sget v4, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    invoke-static {p0, v2, v3, v4}, Lcom/android/server/power/ShutdownThread;->getProgressDialog(Landroid/content/Context;ZLjava/lang/CharSequence;I)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v1, v1, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    monitor-exit v0

    return-void

    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_4 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method private startShutdownDialog()V
    .registers 5

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/power/ShutdownThread$7;

    invoke-direct {v2, p0, v0}, Lcom/android/server/power/ShutdownThread$7;-><init>(Lcom/android/server/power/ShutdownThread;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v1, "ShutdownThread"

    const-string v2, "ShutdownDialog start wait"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_17
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_23

    :catch_1b
    move-exception v1

    const-string v2, "ShutdownThread"

    const-string v3, "ShutdownDialog start wait fail"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    return-void
.end method

.method private static startShutdownDialog(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/android/server/power/ShutdownDialog;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    const-string v0, "ShutdownThread"

    const-string v1, "Shutdown animation will start"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/LibQmg;->checkSupportQmg()Z

    move-result v0

    if-eqz v0, :cond_45

    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog;->existAnim()Z

    move-result v0

    if-eqz v0, :cond_45

    const-string/jumbo v0, "silent.sec"

    sget-object v1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs/auto_reboot/silence_LCDoff.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3a

    :cond_34
    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/power/ShutdownDialog;->setSilentShutdown(Z)V

    :cond_3a
    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog;->prepareShutdown()V

    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog;->show()V

    goto :goto_4b

    :cond_45
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->startGoogleShutdownDialog(Landroid/content/Context;)V

    :goto_4b
    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    if-eqz v0, :cond_54

    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog;->show()V

    :cond_54
    return-void
.end method

.method private static startShutdownThread()V
    .registers 7

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v1, Lcom/android/server/power/ShutdownThread$8;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$8;-><init>()V

    iput-object v1, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownThread;->start()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "ShutdownThread"

    const-string v6, "Android will be shutdown"

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static/range {v1 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/ShutdownThread$9;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$9;-><init>()V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_34
    return-void
.end method

.method private static syncQcRmtStorage()V
    .registers 6

    const/16 v0, 0x64

    const-string/jumbo v1, "storage.efs_sync.done"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_c
    const/16 v3, 0x1e

    if-ge v2, v3, :cond_41

    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    const-string v3, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@rmtStorage sync not yet "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v5, v2, 0x64

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x64

    :try_start_32
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_37

    :catch_36
    move-exception v3

    :goto_37
    const-string/jumbo v3, "storage.efs_sync.done"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_41
    return-void
.end method

.method public static systemReboot(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "systemReboot - reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    invoke-static {p0, v1, v0}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static systemReboot(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "systemReboot - reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", caller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    sput-object p2, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    invoke-static {p0, v1, v0}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static systemShutdown(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    return-void
.end method

.method private static textToSpeech(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/16 v1, 0x11

    new-array v1, v1, [D

    fill-array-data v1, :array_34

    if-eqz v0, :cond_24

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    const/16 v4, 0xf

    if-le v3, v4, :cond_21

    const/16 v3, 0xf

    :cond_21
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_26

    :cond_24
    const-wide/16 v2, 0x0

    :goto_26
    new-instance v4, Landroid/speech/tts/TextToSpeech;

    new-instance v5, Lcom/android/server/power/ShutdownThread$16;

    invoke-direct {v5, v2, v3, p1}, Lcom/android/server/power/ShutdownThread$16;-><init>(DLjava/lang/String;)V

    invoke-direct {v4, p0, v5}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    sput-object v4, Lcom/android/server/power/ShutdownThread;->mTts:Landroid/speech/tts/TextToSpeech;

    return-void

    nop

    :array_34
    .array-data 8
        0x0
        0x3f7cac083126e979L    # 0.007
        0x3f847ae147ae147bL    # 0.01
        0x3f916872b020c49cL    # 0.017
        0x3f9999999999999aL    # 0.025
        0x3f9eb851eb851eb8L    # 0.03
        0x3fa1eb851eb851ecL    # 0.035
        0x3fa810624dd2f1aaL    # 0.047
        0x3faeb851eb851eb8L    # 0.06
        0x3fb4395810624dd3L    # 0.079
        0x3fb999999999999aL    # 0.1
        0x3fc0a3d70a3d70a4L    # 0.13
        0x3fc47ae147ae147bL    # 0.16
        0x3fd3333333333333L    # 0.3
        0x3fe6666666666666L    # 0.7
        0x0
        0x401c000000000000L    # 7.0
    .end array-data
.end method

.method private uncrypt()V
    .registers 7

    const-string v0, "ShutdownThread"

    const-string v1, "Calling uncrypt and monitoring the progress..."

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/power/ShutdownThread$14;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$14;-><init>(Lcom/android/server/power/ShutdownThread;)V

    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    new-instance v3, Lcom/android/server/power/ShutdownThread$15;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/power/ShutdownThread$15;-><init>(Lcom/android/server/power/ShutdownThread;Landroid/os/RecoverySystem$ProgressListener;[Z)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    const-wide/32 v4, 0xdbba0

    :try_start_1d
    invoke-virtual {v3, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    move-exception v4

    :goto_22
    aget-boolean v2, v1, v2

    if-nez v2, :cond_2d

    const-string v2, "ShutdownThread"

    const-string v4, "Timed out waiting for uncrypt."

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    const-string v2, "ShutdownThread"

    const-string/jumbo v4, "uncrypt finished."

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x64

    sput v2, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    iget-object v2, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    const v4, 0x10408a6

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    sput-object v2, Lcom/android/server/power/ShutdownThread;->progressMessage:Ljava/lang/CharSequence;

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget v4, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    sget-object v5, Lcom/android/server/power/ShutdownThread;->progressMessage:Ljava/lang/CharSequence;

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-direct {v2}, Lcom/android/server/power/ShutdownThread;->startShutdownDialog()V

    return-void
.end method

.method private static waitIfTimeoutDumpWorking()V
    .registers 4

    :try_start_0
    sget-object v0, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "ShutdownThread"

    const-string v1, "!@Wait for dumpstate"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "ShutdownThread"

    const-string v1, "!@Dumpstate finished "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    :cond_23
    const-string v0, "ShutdownThread"

    const-string v1, "!@Dumpstate timeouted!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_2a} :catch_32
    .catchall {:try_start_0 .. :try_end_2a} :catchall_30

    :cond_2a
    :goto_2a
    sget-object v0, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3b

    :catchall_30
    move-exception v0

    goto :goto_3c

    :catch_32
    move-exception v0

    :try_start_33
    const-string v1, "ShutdownThread"

    const-string v2, "delayDumpLock TryLock"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_30

    goto :goto_2a

    :goto_3b
    return-void

    :goto_3c
    sget-object v1, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method actionDone()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v1
.end method

.method actionDoneMount()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneMount:Z

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public run()V
    .registers 32

    move-object/from16 v1, p0

    # invokes: Lcom/android/server/power/ShutdownThread$Led;->On()V
    invoke-static {}, Lcom/android/server/power/ShutdownThread$Led;->access$4100()V

    new-instance v6, Lcom/android/server/power/ShutdownThread$11;

    invoke-direct {v6, v1}, Lcom/android/server/power/ShutdownThread$11;-><init>(Lcom/android/server/power/ShutdownThread;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_16

    const-string v2, "1"

    goto :goto_18

    :cond_16
    const-string v2, "0"

    :goto_18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_22

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    goto :goto_24

    :cond_22
    const-string v2, ""

    :goto_24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x5b

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "sys.shutdown.requested"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-nez v0, :cond_48

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    if-eqz v0, :cond_50

    :cond_48
    const-string/jumbo v0, "persist.sys.safemode"

    const-string v2, "1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_50
    const-string v0, "ShutdownThread"

    const-string v2, "!@Sending shutdown broadcast..."

    invoke-static {v0, v2}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v11, v1, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    const/high16 v0, 0x10000000

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x1000000

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, v1, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    iget-object v7, v1, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v12

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z

    const-wide/16 v2, 0x2710

    if-nez v0, :cond_94

    const-string/jumbo v0, "no power"

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    goto :goto_94

    :cond_8b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v7, 0x13880

    add-long/2addr v4, v7

    goto :goto_99

    :cond_94
    :goto_94
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v2

    :goto_99
    nop

    iget-object v7, v1, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v7

    :goto_9d
    :try_start_9d
    iget-boolean v0, v1, Lcom/android/server/power/ShutdownThread;->mActionDone:Z
    :try_end_9f
    .catchall {:try_start_9d .. :try_end_9f} :catchall_433

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    const-wide/16 v17, 0x0

    const/4 v10, 0x0

    if-nez v0, :cond_f3

    :try_start_a8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19
    :try_end_ac
    .catchall {:try_start_a8 .. :try_end_ac} :catchall_ec

    move-object/from16 v21, v12

    sub-long v11, v4, v19

    cmp-long v0, v11, v17

    if-gtz v0, :cond_c1

    :try_start_b4
    const-string v0, "ShutdownThread"

    const-string v2, "!@Shutdown broadcast timed out"

    invoke-static {v0, v2}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f5

    :catchall_bc
    move-exception v0

    move-wide/from16 v28, v4

    goto/16 :goto_438

    :cond_c1
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v0, :cond_da

    sub-long v8, v2, v11

    long-to-double v8, v8

    mul-double/2addr v8, v15

    mul-double/2addr v8, v13

    const-wide v13, 0x40c3880000000000L    # 10000.0

    div-double/2addr v8, v13

    double-to-int v0, v8

    sput v0, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget v8, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    invoke-direct {v0, v8, v10}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_da
    .catchall {:try_start_b4 .. :try_end_da} :catchall_bc

    :cond_da
    :try_start_da
    iget-object v0, v1, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v8, 0x1f4

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_e5
    .catch Ljava/lang/InterruptedException; {:try_start_da .. :try_end_e5} :catch_e6
    .catchall {:try_start_da .. :try_end_e5} :catchall_bc

    goto :goto_e7

    :catch_e6
    move-exception v0

    :goto_e7
    nop

    move-object/from16 v12, v21

    const/4 v11, 0x0

    goto :goto_9d

    :catchall_ec
    move-exception v0

    move-object/from16 v21, v12

    move-wide/from16 v28, v4

    goto/16 :goto_438

    :cond_f3
    move-object/from16 v21, v12

    :goto_f5
    :try_start_f5
    monitor-exit v7
    :try_end_f6
    .catchall {:try_start_f5 .. :try_end_f6} :catchall_42f

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v0, :cond_104

    const/4 v0, 0x2

    sput v0, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget v2, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    invoke-direct {v0, v2, v10}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    :cond_104
    const-string v0, "dev.shutdownbroadcast.on"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "On"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_125

    :try_start_118
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v3, 0x7

    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->requestBugReport(I)V
    :try_end_120
    .catch Landroid/os/RemoteException; {:try_start_118 .. :try_end_120} :catch_121

    goto :goto_125

    :catch_121
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_125
    :goto_125
    const-string v0, "ShutdownThread"

    const-string v3, "!@Shutting down activity manager..."

    invoke-static {v0, v3}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v3

    if-eqz v3, :cond_13f

    const/16 v0, 0x2710

    :try_start_13a
    invoke-interface {v3, v0}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_13d
    .catch Landroid/os/RemoteException; {:try_start_13a .. :try_end_13d} :catch_13e

    goto :goto_13f

    :catch_13e
    move-exception v0

    :cond_13f
    :goto_13f
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v0, :cond_14d

    const/4 v0, 0x4

    sput v0, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget v7, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    invoke-direct {v0, v7, v10}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    :cond_14d
    const-string v0, "ShutdownThread"

    const-string v7, "!@Shutting down package manager..."

    invoke-static {v0, v7}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/server/pm/PackageManagerService;

    if-eqz v8, :cond_163

    invoke-virtual {v8}, Lcom/android/server/pm/PackageManagerService;->shutdown()V

    :cond_163
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v0, :cond_171

    const/4 v0, 0x6

    sput v0, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget v7, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    invoke-direct {v0, v7, v10}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    :cond_171
    const/16 v0, 0x2ee0

    invoke-direct {v1, v0}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    const/16 v7, 0x12

    if-eqz v0, :cond_185

    sput v7, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget v9, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    invoke-direct {v0, v9, v10}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    :cond_185
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z

    if-nez v0, :cond_19e

    new-instance v0, Ljava/io/File;

    const-string v9, "/proc/sysrq-trigger"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_19e

    const-string v7, "ShutdownThread"

    const-string v9, "!@/proc/sysrq-trigger not exists!"

    invoke-static {v7, v9}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_19e
    new-instance v0, Lcom/android/server/power/ShutdownThread$12;

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$12;-><init>(Lcom/android/server/power/ShutdownThread;)V

    move-object v9, v0

    const-string v0, "ShutdownThread"

    const-string v11, "!@Shutting down MountService"

    invoke-static {v0, v11}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    iput-boolean v11, v1, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    const-wide/16 v19, 0x7530

    add-long v11, v11, v19

    iget-object v10, v1, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v10

    const/4 v7, 0x1

    :try_start_1ba
    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    new-instance v13, Ljava/io/File;

    const-string v14, "/proc/sysrq-trigger"

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_1dc

    const-string v14, "ShutdownThread"

    const-string v15, "!@MountService shutdown skip"

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, v1, Lcom/android/server/power/ShutdownThread;->mActionDoneMount:Z

    goto :goto_1e9

    :cond_1dc
    if-eqz v0, :cond_1e2

    invoke-interface {v0, v9}, Landroid/os/storage/IStorageManager;->shutdown(Landroid/os/storage/IStorageShutdownObserver;)V

    goto :goto_1e9

    :cond_1e2
    const-string v14, "ShutdownThread"

    const-string v15, "!@MountService unavailable for shutdown"

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e9
    .catch Ljava/lang/Exception; {:try_start_1ba .. :try_end_1e9} :catch_1f3
    .catchall {:try_start_1ba .. :try_end_1e9} :catchall_1ea

    :goto_1e9
    goto :goto_1fb

    :catchall_1ea
    move-exception v0

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    :goto_1ef
    move-wide/from16 v28, v4

    goto/16 :goto_42b

    :catch_1f3
    move-exception v0

    :try_start_1f4
    const-string v13, "ShutdownThread"

    const-string v14, "!@Exception during MountService shutdown"

    invoke-static {v13, v14, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    :goto_1fb
    iget-boolean v0, v1, Lcom/android/server/power/ShutdownThread;->mActionDoneMount:Z

    if-nez v0, :cond_286

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    sub-long v13, v11, v13

    const-string v0, "ShutdownThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@MountService delay : "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", systemTime : "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_219
    .catchall {:try_start_1f4 .. :try_end_219} :catchall_424

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    :try_start_21d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22b
    .catchall {:try_start_21d .. :try_end_22b} :catchall_281

    cmp-long v0, v13, v17

    if-gtz v0, :cond_23c

    :try_start_22f
    const-string v0, "ShutdownThread"

    const-string v2, "!@Shutdown wait timed out"

    invoke-static {v0, v2}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_236
    .catchall {:try_start_22f .. :try_end_236} :catchall_23a

    nop

    move-wide/from16 v28, v4

    goto :goto_28c

    :catchall_23a
    move-exception v0

    goto :goto_1ef

    :cond_23c
    sub-long v2, v19, v13

    long-to-double v2, v2

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v15

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v22

    const-wide v24, 0x40dd4c0000000000L    # 30000.0

    div-double v2, v2, v24

    double-to-int v0, v2

    :try_start_24e
    sput v0, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    sget v0, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    const/16 v2, 0x12

    add-int/2addr v0, v2

    sput v0, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget v3, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    const/4 v7, 0x0

    invoke-direct {v0, v3, v7}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_25f
    .catchall {:try_start_24e .. :try_end_25f} :catchall_281

    :try_start_25f
    iget-object v0, v1, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;
    :try_end_261
    .catch Ljava/lang/InterruptedException; {:try_start_25f .. :try_end_261} :catch_26f
    .catchall {:try_start_25f .. :try_end_261} :catchall_281

    move-wide/from16 v28, v4

    const-wide/16 v2, 0x1f4

    :try_start_265
    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_26c
    .catch Ljava/lang/InterruptedException; {:try_start_265 .. :try_end_26c} :catch_26d
    .catchall {:try_start_265 .. :try_end_26c} :catchall_42d

    goto :goto_277

    :catch_26d
    move-exception v0

    goto :goto_274

    :catch_26f
    move-exception v0

    move-wide/from16 v28, v4

    const-wide/16 v2, 0x1f4

    :goto_274
    :try_start_274
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_277
    nop

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-wide/from16 v4, v28

    const/4 v7, 0x1

    goto/16 :goto_1fb

    :catchall_281
    move-exception v0

    move-wide/from16 v28, v4

    goto/16 :goto_42b

    :cond_286
    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-wide/from16 v28, v4

    :goto_28c
    monitor-exit v10
    :try_end_28d
    .catchall {:try_start_274 .. :try_end_28d} :catchall_42d

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v0, :cond_29e

    const/16 v0, 0x14

    sput v0, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->uncrypt()V

    :cond_29e
    const-string/jumbo v0, "ro.rebootchargermode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "sys.property_forcedshutdown"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "ShutdownThread"

    const-string v4, "!@Check power connected"

    invoke-static {v0, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->isPoweredPlugged()Z

    move-result v4

    const-string/jumbo v0, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d5

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-nez v0, :cond_2d5

    const-string v0, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d5

    if-eqz v4, :cond_2d5

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    const-string v0, "charging"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :cond_2d5
    const-string/jumbo v0, "ro.alarm_boot"

    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string/jumbo v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v0, :cond_3cf

    const-string/jumbo v0, "recovery"

    sget-object v10, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_303

    const-string/jumbo v0, "recovery-update"

    sget-object v10, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ff

    goto :goto_303

    :cond_2ff
    :goto_2ff
    move-object/from16 v30, v2

    goto/16 :goto_3d1

    :cond_303
    :goto_303
    const-string v0, "ShutdownThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "reboot, reason is "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    const/4 v13, 0x0

    :try_start_31e
    new-instance v0, Ljava/io/File;

    const-string v14, "/sys/class/sec/sec_debug/recovery_cause"

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_37b

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/FileReader;

    const-string v15, "/sys/class/sec/sec_debug/recovery_cause"

    invoke-direct {v14, v15}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v10, v0

    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_37b

    const-string v0, "ShutdownThread"

    const-string v14, "Leave a log in recovery cause node because the node is empty"

    invoke-static {v0, v14}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/FileWriter;

    const-string v14, "/sys/class/sec/sec_debug/recovery_cause"

    const/4 v15, 0x0

    invoke-direct {v0, v14, v15}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    move-object v13, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Do "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " reboot, called by "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    if-eqz v14, :cond_369

    sget-object v14, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    goto :goto_36c

    :cond_369
    const-string/jumbo v14, "unknown"

    :goto_36c
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\n"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_37b
    .catch Ljava/lang/Exception; {:try_start_31e .. :try_end_37b} :catch_39b
    .catchall {:try_start_31e .. :try_end_37b} :catchall_396

    :cond_37b
    if-eqz v10, :cond_383

    :try_start_37d
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    goto :goto_383

    :catch_381
    move-exception v0

    goto :goto_389

    :cond_383
    :goto_383
    if-eqz v13, :cond_394

    invoke-virtual {v13}, Ljava/io/FileWriter;->close()V
    :try_end_388
    .catch Ljava/lang/Exception; {:try_start_37d .. :try_end_388} :catch_381

    goto :goto_394

    :goto_389
    nop

    const-string v14, "ShutdownThread"

    const-string/jumbo v15, "recovery cause file close exception"

    invoke-static {v14, v15, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto/16 :goto_2ff

    :cond_394
    :goto_394
    goto/16 :goto_2ff

    :catchall_396
    move-exception v0

    move-object v14, v13

    move-object v13, v10

    move-object v10, v0

    goto :goto_3af

    :catch_39b
    move-exception v0

    :try_start_39c
    const-string v14, "ShutdownThread"

    const-string/jumbo v15, "recovery cause exception"

    invoke-static {v14, v15, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    :try_end_3a4
    .catchall {:try_start_39c .. :try_end_3a4} :catchall_396

    if-eqz v10, :cond_3a9

    :try_start_3a6
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    :cond_3a9
    if-eqz v13, :cond_394

    invoke-virtual {v13}, Ljava/io/FileWriter;->close()V
    :try_end_3ae
    .catch Ljava/lang/Exception; {:try_start_3a6 .. :try_end_3ae} :catch_381

    goto :goto_394

    :goto_3af
    nop

    if-eqz v13, :cond_3b8

    :try_start_3b2
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V

    goto :goto_3b8

    :catch_3b6
    move-exception v0

    goto :goto_3c0

    :cond_3b8
    :goto_3b8
    if-eqz v14, :cond_3cc

    invoke-virtual {v14}, Ljava/io/FileWriter;->close()V
    :try_end_3bd
    .catch Ljava/lang/Exception; {:try_start_3b2 .. :try_end_3bd} :catch_3b6

    move-object/from16 v30, v2

    goto :goto_3ce

    :goto_3c0
    nop

    const-string v15, "ShutdownThread"

    move-object/from16 v30, v2

    const-string/jumbo v2, "recovery cause file close exception"

    invoke-static {v15, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_3ce

    :cond_3cc
    move-object/from16 v30, v2

    :goto_3ce
    throw v10

    :cond_3cf
    move-object/from16 v30, v2

    :goto_3d1
    const-string/jumbo v0, "mrvl"

    const-string/jumbo v2, "ro.board.platform"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e7

    const-string/jumbo v0, "power_off=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_3e7
    const-string v0, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "!@ run, "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v10, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v10, :cond_3fb

    const-string/jumbo v10, "reboot"

    goto :goto_3fe

    :cond_3fb
    const-string/jumbo v10, "shutdown"

    :goto_3fe
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " requested reason="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v10, :cond_40d

    sget-object v10, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    goto :goto_410

    :cond_40d
    const-string/jumbo v10, "null"

    :goto_410
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v10, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v0, v2, v10}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    return-void

    :catchall_424
    move-exception v0

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-wide/from16 v28, v4

    :goto_42b
    :try_start_42b
    monitor-exit v10
    :try_end_42c
    .catchall {:try_start_42b .. :try_end_42c} :catchall_42d

    throw v0

    :catchall_42d
    move-exception v0

    goto :goto_42b

    :catchall_42f
    move-exception v0

    move-wide/from16 v28, v4

    goto :goto_438

    :catchall_433
    move-exception v0

    move-wide/from16 v28, v4

    move-object/from16 v21, v12

    :goto_438
    :try_start_438
    monitor-exit v7
    :try_end_439
    .catchall {:try_start_438 .. :try_end_439} :catchall_43a

    throw v0

    :catchall_43a
    move-exception v0

    goto :goto_438
.end method
