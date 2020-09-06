.class public Lcom/android/server/policy/MultiTapKeyManager;
.super Ljava/lang/Object;
.source "MultiTapKeyManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final SAFE_DEBUG:Z

.field private static final SEC_DOUBLE_TAP_TIMEOUT:I = 0xaa

.field private static final TAG:Ljava/lang/String; = "MultiTapKeyManager"


# instance fields
.field private final INTENT_ACTION_DOUBLE_CLICK:Ljava/lang/String;

.field private final INTENT_PERMISSION_DOUBLE_CLICK:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mHomeConsumed:Z

.field private mHomeDoubleEventTime:J

.field private mHomeDoubleTapPending:Z

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mHomeFakeTripleTapPending:Z

.field private mHomeKeyLastEventTime:J

.field private mHomeTripleTapPending:Z

.field private final mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mLaunchHome:Z

.field mPolicy:Lcom/android/server/policy/PhoneWindowManager;

.field private mResetConsumed:Z

.field private mResetDoubleTapPending:Z

.field mResetDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mResetKeyLastEventTime:J

.field private mResetTripleTapPending:Z

.field mResetTripleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/MultiTapKeyManager;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeKeyLastEventTime:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeConsumed:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/policy/MultiTapKeyManager;->mLaunchHome:Z

    iput-boolean v2, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeDoubleTapPending:Z

    iput-wide v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeDoubleEventTime:J

    iput-boolean v2, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeTripleTapPending:Z

    iput-boolean v2, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeFakeTripleTapPending:Z

    const-string v3, "com.samsung.android.action.DOUBLE_CLICK"

    iput-object v3, p0, Lcom/android/server/policy/MultiTapKeyManager;->INTENT_ACTION_DOUBLE_CLICK:Ljava/lang/String;

    const-string v3, "com.samsung.android.permisson.DOUBLE_CLICK"

    iput-object v3, p0, Lcom/android/server/policy/MultiTapKeyManager;->INTENT_PERMISSION_DOUBLE_CLICK:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/server/policy/MultiTapKeyManager;->mResetTripleTapPending:Z

    iput-wide v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mResetKeyLastEventTime:J

    iput-boolean v2, p0, Lcom/android/server/policy/MultiTapKeyManager;->mResetConsumed:Z

    iput-boolean v2, p0, Lcom/android/server/policy/MultiTapKeyManager;->mResetDoubleTapPending:Z

    new-instance v0, Lcom/android/server/policy/-$$Lambda$MultiTapKeyManager$UEuaWsk2RMT5kV2eg4vYXTkdu50;

    invoke-direct {v0, p0}, Lcom/android/server/policy/-$$Lambda$MultiTapKeyManager$UEuaWsk2RMT5kV2eg4vYXTkdu50;-><init>(Lcom/android/server/policy/MultiTapKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/-$$Lambda$MultiTapKeyManager$gv6Ra912TL31sAghK5SlHFH_jtc;

    invoke-direct {v0, p0}, Lcom/android/server/policy/-$$Lambda$MultiTapKeyManager$gv6Ra912TL31sAghK5SlHFH_jtc;-><init>(Lcom/android/server/policy/MultiTapKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/-$$Lambda$MultiTapKeyManager$oFB10pFK2eB1vI6pKkeRf6a4Rrc;

    invoke-direct {v0, p0}, Lcom/android/server/policy/-$$Lambda$MultiTapKeyManager$oFB10pFK2eB1vI6pKkeRf6a4Rrc;-><init>(Lcom/android/server/policy/MultiTapKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mResetTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/-$$Lambda$MultiTapKeyManager$8bRVij8MrY9HUmFLKsdgk4OBxYk;

    invoke-direct {v0, p0}, Lcom/android/server/policy/-$$Lambda$MultiTapKeyManager$8bRVij8MrY9HUmFLKsdgk4OBxYk;-><init>(Lcom/android/server/policy/MultiTapKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mResetDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/policy/MultiTapKeyManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/policy/MultiTapKeyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iput-object p3, p0, Lcom/android/server/policy/MultiTapKeyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    return-void
.end method

.method private handleTripleTapOnHome()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeConsumed:Z

    const-string v0, "MultiTapKeyManager"

    const-string v1, "handleTripleTapOnHome()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isOneHandOpTriggeredByHomeKey()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_23

    return-void

    :cond_23
    iget-object v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->toggleOneHandOpByHomeKey()Z

    move-result v0

    if-eqz v0, :cond_2c

    return-void

    :cond_2c
    iget-object v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->startDirectAccessService()V

    goto :goto_3f

    :cond_3a
    iget-object v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->callAccessibilityTalkbackMode()V

    :goto_3f
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/policy/MultiTapKeyManager;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeDoubleTapPending:Z

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeDoubleTapPending:Z

    const-string v0, "MultiTapKeyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHomeDoubleTapTimeoutRunnable mLaunchHome = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/policy/MultiTapKeyManager;->mLaunchHome:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mLaunchHome:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    :cond_28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mLaunchHome:Z

    :cond_2b
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/policy/MultiTapKeyManager;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeTripleTapPending:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    iput-boolean v1, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeTripleTapPending:Z

    iget-object v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDoubleTapLaunchEnabled(ZLandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/policy/MultiTapKeyManager;->handleDoubleTapLaunch(I)V

    :cond_14
    iget-boolean v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeFakeTripleTapPending:Z

    if-eqz v0, :cond_1a

    iput-boolean v1, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeFakeTripleTapPending:Z

    :cond_1a
    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/android/server/policy/MultiTapKeyManager;)V
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mResetTripleTapPending:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mResetTripleTapPending:Z

    :cond_7
    return-void
.end method

.method public static synthetic lambda$new$3(Lcom/android/server/policy/MultiTapKeyManager;)V
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mResetDoubleTapPending:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mResetDoubleTapPending:Z

    :cond_7
    return-void
.end method


# virtual methods
.method public dispatchMultiTapKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/MultiTapKeyManager;->dispatchMultiTapKeyEvent(Landroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public dispatchMultiTapKeyEvent(Landroid/view/KeyEvent;Z)Z
    .registers 16

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_12

    move v2, v4

    goto :goto_13

    :cond_12
    move v2, v3

    :goto_13
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    const/4 v6, 0x3

    if-eq v0, v6, :cond_1c

    goto/16 :goto_19c

    :cond_1c
    const-wide/16 v6, 0x0

    if-nez v2, :cond_a1

    iget-object v8, p0, Lcom/android/server/policy/MultiTapKeyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    if-eqz v8, :cond_3a

    iget-object v8, p0, Lcom/android/server/policy/MultiTapKeyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    if-nez v8, :cond_3a

    if-nez v5, :cond_3a

    iget-object v8, p0, Lcom/android/server/policy/MultiTapKeyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v8, v0}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v8

    if-nez v8, :cond_3a

    move v8, v4

    goto :goto_3b

    :cond_3a
    move v8, v3

    :goto_3b
    iput-boolean v8, p0, Lcom/android/server/policy/MultiTapKeyManager;->mLaunchHome:Z

    iput-wide v6, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeKeyLastEventTime:J

    iget-boolean v6, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeConsumed:Z

    if-eqz v6, :cond_4a

    iget-boolean v6, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeFakeTripleTapPending:Z

    if-nez v6, :cond_4a

    iput-boolean v3, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeConsumed:Z

    return v4

    :cond_4a
    iget-boolean v6, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeTripleTapPending:Z

    const-wide/16 v7, 0xaa

    if-nez v6, :cond_87

    iget-boolean v6, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeFakeTripleTapPending:Z

    if-eqz v6, :cond_55

    goto :goto_87

    :cond_55
    iget-object v6, p0, Lcom/android/server/policy/MultiTapKeyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v6, v3, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDoubleTapLaunchEnabled(ZLandroid/view/KeyEvent;)Z

    move-result v6

    if-nez v6, :cond_65

    iget-object v6, p0, Lcom/android/server/policy/MultiTapKeyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isTripleTapHomeLaunchEnabled()Z

    move-result v6

    if-eqz v6, :cond_19c

    :cond_65
    iget-object v3, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v4, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeDoubleTapPending:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeKeyLastEventTime:J

    iget-object v3, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-boolean v3, Lcom/android/server/policy/MultiTapKeyManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_86

    const-string v3, "MultiTapKeyManager"

    const-string v6, "Home double tap timeout runnable posted!!"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    return v4

    :cond_87
    :goto_87
    iget-object v3, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-boolean v3, Lcom/android/server/policy/MultiTapKeyManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_a0

    const-string v3, "MultiTapKeyManager"

    const-string v6, "Home tripletap timeout runnable posted!!"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a0
    return v4

    :cond_a1
    if-nez v1, :cond_19c

    iput-boolean v3, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeConsumed:Z

    sget-boolean v8, Lcom/android/server/policy/MultiTapKeyManager;->SAFE_DEBUG:Z

    if-eqz v8, :cond_c3

    const-string v8, "MultiTapKeyManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "event.getEventTime() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeDoubleEventTime:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_fb

    sget-boolean v3, Lcom/android/server/policy/MultiTapKeyManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_f5

    const-string v3, "MultiTapKeyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Home doubletap wakeup time="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " first="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeDoubleEventTime:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f5
    iput-wide v6, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeDoubleEventTime:J

    invoke-virtual {p0, v0}, Lcom/android/server/policy/MultiTapKeyManager;->handleDoubleTapLaunch(I)V

    return v4

    :cond_fb
    iput-wide v6, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeDoubleEventTime:J

    if-nez p2, :cond_10c

    iget-boolean v8, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeDoubleTapPending:Z

    if-nez v8, :cond_13a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v8

    const/high16 v9, 0x100000

    and-int/2addr v8, v9

    if-eqz v8, :cond_13a

    :cond_10c
    iget-object v8, p0, Lcom/android/server/policy/MultiTapKeyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v8, v3, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDoubleTapLaunchEnabled(ZLandroid/view/KeyEvent;)Z

    move-result v8

    if-eqz v8, :cond_13a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    const-wide/16 v8, 0x154

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeDoubleEventTime:J

    sget-boolean v3, Lcom/android/server/policy/MultiTapKeyManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_139

    const-string v3, "MultiTapKeyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Home doubletap first event time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeDoubleEventTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_139
    return v4

    :cond_13a
    iget-boolean v8, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeDoubleTapPending:Z

    if-eqz v8, :cond_185

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeKeyLastEventTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x28

    cmp-long v8, v8, v10

    if-gtz v8, :cond_16b

    const-string v4, "MultiTapKeyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Home doubletap drop for time="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeKeyLastEventTime:J

    sub-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v6, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeKeyLastEventTime:J

    goto :goto_19c

    :cond_16b
    iput-boolean v3, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeDoubleTapPending:Z

    iget-object v3, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/android/server/policy/MultiTapKeyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isTripleTapHomeLaunchEnabled()Z

    move-result v3

    if-eqz v3, :cond_17f

    iput-boolean v4, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeTripleTapPending:Z

    goto :goto_184

    :cond_17f
    iput-boolean v4, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeFakeTripleTapPending:Z

    invoke-virtual {p0, v0}, Lcom/android/server/policy/MultiTapKeyManager;->handleDoubleTapLaunch(I)V

    :goto_184
    return v4

    :cond_185
    iget-boolean v6, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeTripleTapPending:Z

    if-eqz v6, :cond_196

    iput-boolean v3, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeTripleTapPending:Z

    iget-object v3, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/server/policy/MultiTapKeyManager;->handleTripleTapOnHome()V

    return v4

    :cond_196
    iget-boolean v4, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeFakeTripleTapPending:Z

    if-eqz v4, :cond_19c

    iput-boolean v3, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeFakeTripleTapPending:Z

    :cond_19c
    :goto_19c
    return v3
.end method

.method public handleDoubleTapLaunch(I)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/server/policy/MultiTapKeyManager;->sendBroadcastDoubleClick(I)V

    iget-object v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isEnabledLGTPolicy()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "MultiTapKeyManager"

    const-string v1, "home double tap was blocked by lgt policy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    iget-object v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDomesticOtaStart()Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "MultiTapKeyManager"

    const-string v1, "home double tap was blocked by OTA status"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_23
    iget-object v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isInteractionControlEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "MultiTapKeyManager"

    const-string v1, "home double tap was blocked by access control"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_34
    iget-object v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_44

    const-string v0, "MultiTapKeyManager"

    const-string v1, "home double tap was blocked because UserSetup not completed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_44
    iget-object v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSimLocked()Z

    move-result v0

    if-eqz v0, :cond_56

    const-string v0, "MultiTapKeyManager"

    const-string v1, "home double tap was blocked by SimLock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_56
    iget-object v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarrierLocked()Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "MultiTapKeyManager"

    const-string v1, "home double tap was blocked by CarrierLock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_66
    iget-object v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_76

    const-string v0, "MultiTapKeyManager"

    const-string v1, "home double tap was blocked because cover was closed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_76
    iget-object v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_88

    const-string v0, "MultiTapKeyManager"

    const-string v1, "double tap home key was blocked by SystemKeyRequested"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeConsumed:Z

    iget-object v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->launchDoubleTap(I)V

    return-void
.end method

.method public isHomeConsumed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mHomeConsumed:Z

    return v0
.end method

.method public sendBroadcastDoubleClick(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/policy/MultiTapKeyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_1d

    const-string v0, "MultiTapKeyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send double click broadcast keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.action.DOUBLE_CLICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "KEYCODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/MultiTapKeyManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "com.samsung.android.permisson.DOUBLE_CLICK"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method
