.class public Lcom/samsung/android/server/virtualspace/VSManagerService;
.super Lcom/samsung/android/virtualspace/IVSManagerService$Stub;
.source "VSManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/virtualspace/VSManagerService$Lifecycle;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final EXCEPTION_PACKAGES:[Ljava/lang/String;

.field private static final SAMSUNG_KEYPAD:Ljava/lang/String; = "com.sec.android.inputmethod/.SamsungKeypad"

.field static final TAG:Ljava/lang/String; = "VSManagerService"

.field static final TIMEOUT:I = 0x1388


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;

.field private mAppOps:Landroid/app/AppOpsManager;

.field private mClosing:Z

.field private final mContext:Landroid/content/Context;

.field final mDm:Landroid/hardware/display/DisplayManager;

.field private mGearVr:Lcom/samsung/android/vr/GearVrManager;

.field final mHandler:Landroid/os/Handler;

.field final mIm:Lcom/android/server/input/InputManagerService;

.field final mSAM:Lcom/android/server/am/SamsungActivityManagerService;

.field private mSB:Lcom/android/server/statusbar/StatusBarManagerService;

.field final mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

.field private mSavedAppOpsVisibility:Z

.field private mSavedImmersiveMode:Z

.field private mSavedInMouseStylusMode:Z

.field private mSavedInTouchMode:Z

.field private mSavedPIPMode:Z

.field private mSavedSelectedInputMethod:Ljava/lang/String;

.field private mSavedSelectedInputMethodSubtype:Ljava/lang/String;

.field private mSavedVolumeKeyMode:I

.field private mSession:Lcom/samsung/android/server/virtualspace/VSSession;

.field private mSoundAssistant:Lcom/samsung/android/media/SemSoundAssistantManager;

.field private final mSupportsPIP:Z

.field private final mWM:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    const-string v0, "com.samsung.android.hmt.vrsvc"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->EXCEPTION_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/virtualspace/IVSManagerService$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mContext:Landroid/content/Context;

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mDm:Landroid/hardware/display/DisplayManager;

    const-string v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v0, "input"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService;

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mIm:Lcom/android/server/input/InputManagerService;

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mWM:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mWM:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/SamsungActivityManagerService;->getSamsungActivityManagerService(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/SamsungActivityManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSAM:Lcom/android/server/am/SamsungActivityManagerService;

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const-string/jumbo v0, "vr"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/vr/GearVrManager;

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mGearVr:Lcom/samsung/android/vr/GearVrManager;

    new-instance v0, Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSoundAssistant:Lcom/samsung/android/media/SemSoundAssistantManager;

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.picture_in_picture"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSupportsPIP:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSManagerService;->setSession(Lcom/samsung/android/server/virtualspace/VSSession;)V

    return-void
.end method

.method private accessCheck()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.virtualspace.permission.SEM_USE_VIRTUAL_SPACE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1e

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_16

    const-string v0, "VSManagerService"

    const-string v1, "Failed permission check, ignored on debug builds"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    :cond_16
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller doesn\'t have the permission to connect to the VSManagerService"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_29

    const-string v0, "VSManagerService"

    const-string v1, "Passed permission check"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    :goto_29
    return-void
.end method

.method private enableStatusBar(Z)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSB:Lcom/android/server/statusbar/StatusBarManagerService;

    if-nez v0, :cond_14

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService;

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSB:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSB:Lcom/android/server/statusbar/StatusBarManagerService;

    if-nez v0, :cond_14

    return-void

    :cond_14
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSB:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz p1, :cond_1a

    const/4 v1, 0x0

    goto :goto_1c

    :cond_1a
    const/high16 v1, 0x3ff0000

    :goto_1c
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/SamsungWindowManagerService;->performLayout()V

    return-void
.end method

.method public static synthetic lambda$connect$0(Lcom/samsung/android/server/virtualspace/VSManagerService;Lcom/samsung/android/server/virtualspace/VSSession;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSManagerService;->sessionStarting(Lcom/samsung/android/server/virtualspace/VSSession;)V

    return-void
.end method

.method private sessionStarting(Lcom/samsung/android/server/virtualspace/VSSession;)V
    .registers 7

    const-string v0, "VSManagerService"

    const-string v1, "VS session starting"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSManagerService;->setSession(Lcom/samsung/android/server/virtualspace/VSSession;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/policy/PolicyControl;->isForceImmersiveModeApplied(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedImmersiveMode:Z

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/policy/PolicyControl;->setForceImmersiveModeEnabled(Z)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSManagerService;->enableStatusBar(Z)V

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "selected_input_method_subtype"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedSelectedInputMethodSubtype:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_input_method"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedSelectedInputMethod:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_input_method"

    const-string v4, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mAppOps:Landroid/app/AppOpsManager;

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mGearVr:Lcom/samsung/android/vr/GearVrManager;

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mGearVr:Lcom/samsung/android/vr/GearVrManager;

    invoke-virtual {v2}, Lcom/samsung/android/vr/GearVrManager;->isDock()Z

    move-result v2

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x4e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_63

    const/4 v3, 0x3

    if-ne v2, v3, :cond_61

    goto :goto_63

    :cond_61
    move v3, v0

    goto :goto_64

    :cond_63
    :goto_63
    move v3, v1

    :goto_64
    iput-boolean v3, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedAppOpsVisibility:Z

    iget-boolean v3, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedAppOpsVisibility:Z

    if-nez v3, :cond_71

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mGearVr:Lcom/samsung/android/vr/GearVrManager;

    sget-object v4, Lcom/samsung/android/server/virtualspace/VSManagerService;->EXCEPTION_PACKAGES:[Ljava/lang/String;

    invoke-virtual {v3, v0, v4, v0}, Lcom/samsung/android/vr/GearVrManager;->setOverlayRestriction(Z[Ljava/lang/String;I)V

    :cond_71
    iget-boolean v2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSupportsPIP:Z

    if-eqz v2, :cond_7d

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSAM:Lcom/android/server/am/SamsungActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/SamsungActivityManagerService;->setSupportsPictureInPicture(Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedPIPMode:Z

    :cond_7d
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/SamsungWindowManagerService;->setInTouchMode(Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedInTouchMode:Z

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/SamsungWindowManagerService;->setInMouseStylusMode(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedInMouseStylusMode:Z

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSoundAssistant:Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getVolumeKeyMode()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedVolumeKeyMode:I

    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedVolumeKeyMode:I

    if-eq v0, v1, :cond_9e

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSoundAssistant:Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemSoundAssistantManager;->setVolumeKeyMode(I)V

    :cond_9e
    return-void
.end method

.method private setSession(Lcom/samsung/android/server/virtualspace/VSSession;)V
    .registers 6

    const-string/jumbo v0, "sys.vs.mode"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_9

    move v3, v2

    goto :goto_a

    :cond_9
    move v3, v1

    :goto_a
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->setVSSession(Lcom/samsung/android/server/virtualspace/VSSession;)V

    if-eqz p1, :cond_22

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSAM:Lcom/android/server/am/SamsungActivityManagerService;

    invoke-virtual {p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getClientActivity()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/SamsungActivityManagerService;->setVSMode(ZLandroid/os/IBinder;)V

    goto :goto_28

    :cond_22
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSAM:Lcom/android/server/am/SamsungActivityManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/SamsungActivityManagerService;->setVSMode(ZLandroid/os/IBinder;)V

    :goto_28
    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    return-void
.end method


# virtual methods
.method public declared-synchronized connect(Landroid/os/IBinder;)Lcom/samsung/android/virtualspace/IVSSession;
    .registers 5

    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "VSManagerService"

    const-string v1, "VSManagerService.connect()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSManagerService;->accessCheck()V

    const/4 v0, 0x0

    if-nez p1, :cond_1b

    const-string v1, "VSManagerService"

    const-string v2, "Error: null client?"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_5e

    monitor-exit p0

    return-object v0

    :cond_1b
    :try_start_1b
    iget-boolean v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mClosing:Z

    if-eqz v1, :cond_42

    const-string v1, "VSManagerService"

    const-string v2, "Session still closing, waiting..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_5e

    const-wide/16 v1, 0x1388

    :try_start_28
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2b} :catch_2c
    .catchall {:try_start_28 .. :try_end_2b} :catchall_5e

    goto :goto_2d

    :catch_2c
    move-exception v1

    :goto_2d
    :try_start_2d
    iget-boolean v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mClosing:Z

    if-eqz v1, :cond_3a

    const-string v1, "VSManagerService"

    const-string v2, "Timed out waiting for the previous VS session to close"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_5e

    monitor-exit p0

    return-object v0

    :cond_3a
    :try_start_3a
    const-string v0, "VSManagerService"

    const-string v1, "Other session now closed, proceeding..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    :cond_42
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    if-eqz v1, :cond_4f

    const-string v1, "VSManagerService"

    const-string v2, "Error: still connected"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_3a .. :try_end_4d} :catchall_5e

    monitor-exit p0

    return-object v0

    :cond_4f
    :goto_4f
    :try_start_4f
    new-instance v0, Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;-><init>(Lcom/samsung/android/server/virtualspace/VSManagerService;Landroid/os/IBinder;)V

    new-instance v1, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSManagerService$fZr_jJvIFi2ZKlwn9SLBEFc9F1c;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSManagerService$fZr_jJvIFi2ZKlwn9SLBEFc9F1c;-><init>(Lcom/samsung/android/server/virtualspace/VSManagerService;Lcom/samsung/android/server/virtualspace/VSSession;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_5c
    .catchall {:try_start_4f .. :try_end_5c} :catchall_5e

    monitor-exit p0

    return-object v0

    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mContext:Landroid/content/Context;

    const-string v1, "VSManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualSpace Manager service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSManagerService;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/virtualspace/VSSession;->dump(Ljava/io/PrintWriter;)V

    goto :goto_38

    :cond_32
    const-string/jumbo v0, "no active session"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_38
    return-void
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getDisplay(I)Landroid/view/Display;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mDm:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method getServiceHandler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "3.0.0"

    return-object v0
.end method

.method redirectIME(II)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/SamsungWindowManagerService;->migrateImeWindows(II)V

    return-void
.end method

.method sessionClosed()V
    .registers 5

    const-string v0, "VSManagerService"

    const-string v1, "VS session finishing close"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSManagerService;->enableStatusBar(Z)V

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedSelectedInputMethod:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "selected_input_method_subtype"

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedSelectedInputMethodSubtype:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mGearVr:Lcom/samsung/android/vr/GearVrManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mGearVr:Lcom/samsung/android/vr/GearVrManager;

    invoke-virtual {v1}, Lcom/samsung/android/vr/GearVrManager;->isDock()Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-boolean v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedAppOpsVisibility:Z

    if-nez v1, :cond_3e

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mGearVr:Lcom/samsung/android/vr/GearVrManager;

    sget-object v3, Lcom/samsung/android/server/virtualspace/VSManagerService;->EXCEPTION_PACKAGES:[Ljava/lang/String;

    invoke-virtual {v1, v0, v3, v2}, Lcom/samsung/android/vr/GearVrManager;->setOverlayRestriction(Z[Ljava/lang/String;I)V

    :cond_3e
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/server/virtualspace/VSManagerService;->setSession(Lcom/samsung/android/server/virtualspace/VSSession;)V

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedVolumeKeyMode:I

    if-eq v1, v0, :cond_4d

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSoundAssistant:Lcom/samsung/android/media/SemSoundAssistantManager;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedVolumeKeyMode:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemSoundAssistantManager;->setVolumeKeyMode(I)V

    :cond_4d
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-boolean v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedInTouchMode:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SamsungWindowManagerService;->setInTouchMode(Z)Z

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-boolean v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedInMouseStylusMode:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SamsungWindowManagerService;->setInMouseStylusMode(Z)Z

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSupportsPIP:Z

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSAM:Lcom/android/server/am/SamsungActivityManagerService;

    iget-boolean v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedPIPMode:Z

    invoke-virtual {v0, v1}, Lcom/android/server/am/SamsungActivityManagerService;->setSupportsPictureInPicture(Z)Z

    :cond_66
    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedImmersiveMode:Z

    invoke-static {v0}, Lcom/android/server/policy/PolicyControl;->setForceImmersiveModeEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSAM:Lcom/android/server/am/SamsungActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/SamsungActivityManagerService;->updateOomAdj()V

    monitor-enter p0

    :try_start_71
    iput-boolean v2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mClosing:Z

    const-string v0, "VSManagerService"

    const-string v1, "VS session closed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_7f
    move-exception v0

    monitor-exit p0
    :try_end_81
    .catchall {:try_start_71 .. :try_end_81} :catchall_7f

    throw v0
.end method

.method sessionClosing()V
    .registers 3

    const-string v0, "VSManagerService"

    const-string v1, "VS session closing"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_9
    iput-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mClosing:Z

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v0
.end method

.method setScaledDisplaySize(III)V
    .registers 7

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_2c

    const-string v0, "VSManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScaledDisplaySize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/SamsungWindowManagerService;->setScaledDisplaySize(III)V

    return-void
.end method
