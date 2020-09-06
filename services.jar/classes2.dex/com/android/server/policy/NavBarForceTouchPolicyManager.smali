.class public Lcom/android/server/policy/NavBarForceTouchPolicyManager;
.super Ljava/lang/Object;
.source "NavBarForceTouchPolicyManager.java"


# static fields
.field private static final DEBUG:Z

.field private static final EPSILON:F = 1.0E-5f

.field private static final EVENT_CENTER_KEY:I = 0x2

.field private static final EVENT_INVALID:I = 0x0

.field private static final EVENT_LEFT_KEY:I = 0x1

.field private static final EVENT_RIGHT_KEY:I = 0x3

.field private static final KEY_PROPORTION_INVISIBLE:D = 0.33340001106262207

.field private static final KEY_PROPORTION_VISIBLE:D = 0.22220000624656677

.field private static final PENDING_DISMISS_KEYGUARD_TIMEOUT_MILLIS:I = 0x5dc

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mContext:Landroid/content/Context;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mHandler:Landroid/os/Handler;

.field private mHapticPlayedOnPressed:Z

.field private mHomeConsumed:Z

.field private mInitialDisplayHeight:I

.field private mInitialDisplayWidth:I

.field private mNavBarVisibleOnPressed:Z

.field private mPendingDismissKeyguard:Z

.field private mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mPendingDismissKeyguard:Z

    return-void
.end method

.method private dismissKeyguard()V
    .registers 4

    sget-boolean v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->DEBUG:Z

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissKeyguard: callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    invoke-direct {p0}, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->isUnlockWithHomeButtonEnabled()Z

    move-result v0

    if-nez v0, :cond_2d

    sget-object v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->TAG:Ljava/lang/String;

    const-string v1, "dismissKeyguard: ignored: isUnlockWithHomeButtonEnabled false"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2d
    iget-object v0, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/-$$Lambda$NavBarForceTouchPolicyManager$obf7MhpEZVM2Q29CqoiseQCJi4Y;

    invoke-direct {v1, p0}, Lcom/android/server/policy/-$$Lambda$NavBarForceTouchPolicyManager$obf7MhpEZVM2Q29CqoiseQCJi4Y;-><init>(Lcom/android/server/policy/NavBarForceTouchPolicyManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private generateKeyEvent(I)Z
    .registers 6

    invoke-direct {p0}, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->getNavBarKeyOrder()I

    move-result v0

    sget-boolean v1, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->DEBUG:Z

    if-eqz v1, :cond_26

    sget-object v1, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateKeyEvent: event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", navBarKeyOrder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    const/16 v1, 0xbb

    const/4 v2, 0x4

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_4a

    goto :goto_48

    :pswitch_2e
    if-nez v0, :cond_32

    move v1, v2

    nop

    :cond_32
    invoke-direct {p0, v1}, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->injectKeyEvent(I)V

    return v3

    :pswitch_36
    iget-boolean v1, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mHomeConsumed:Z

    if-eqz v1, :cond_3b

    goto :goto_48

    :cond_3b
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->injectKeyEvent(I)V

    return v3

    :pswitch_40
    if-nez v0, :cond_43

    goto :goto_44

    :cond_43
    move v1, v2

    :goto_44
    invoke-direct {p0, v1}, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->injectKeyEvent(I)V

    return v3

    :goto_48
    const/4 v1, 0x1

    return v1

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_40
        :pswitch_36
        :pswitch_2e
    .end packed-switch
.end method

.method private getNavBarKeyOrder()I
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "navigationbar_key_order"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private injectKeyEvent(I)V
    .registers 5

    if-gez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->injectKeyEvent(IIJ)V

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->injectKeyEvent(IIJ)V

    return-void
.end method

.method private injectKeyEvent(IIJ)V
    .registers 20

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    new-instance v14, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const v12, 0x100048

    const/16 v13, 0x101

    move-object v1, v14

    move-wide/from16 v2, p3

    move-wide/from16 v4, p3

    move/from16 v6, p2

    move/from16 v7, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v1, 0x0

    invoke-virtual {v0, v14, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method private isConventionalMode()Z
    .registers 4

    iget v0, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mInitialDisplayHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mInitialDisplayWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mDisplayHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mDisplayWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3727c5ac    # 1.0E-5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method private isGamePressureTouchLocked()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_pressure_touch_lock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    return v1
.end method

.method private isTalkBackEnabled()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method private isUnlockWithHomeButtonEnabled()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "navigationbar_unlock_with_home_button"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v2, 0x1

    nop

    :cond_12
    return v2
.end method

.method private judgeEvent(IIZ)I
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v5, 0x0

    if-eqz v4, :cond_104

    iget-object v4, v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v4

    if-nez v4, :cond_1f

    goto/16 :goto_104

    :cond_1f
    iget-object v4, v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x105018c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iget v6, v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mInitialDisplayHeight:I

    int-to-float v6, v6

    iget v7, v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mDisplayHeight:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v6, v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    if-eqz v6, :cond_49

    if-eqz v3, :cond_49

    int-to-float v6, v4

    const/high16 v7, 0x3e400000    # 0.1875f

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    goto :goto_4a

    :cond_49
    move v6, v5

    :goto_4a
    iget-object v7, v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    if-eqz v7, :cond_5a

    if-eqz v3, :cond_5a

    const-wide v7, 0x3fcc710cc0000000L    # 0.22220000624656677

    goto :goto_5f

    :cond_5a
    const-wide v7, 0x3fd5566d00000000L    # 0.33340001106262207

    :goto_5f
    sget-boolean v9, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->DEBUG:Z

    if-eqz v9, :cond_c5

    sget-object v9, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "judgeEvent: x="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", y="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", navBarVisible="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", mDisplayHeight="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mDisplayHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", mInitialDisplayWidth="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mInitialDisplayWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", mInitialDisplayHeight="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mInitialDisplayHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", mScreenOnFully="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v11, v11, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v11, v11, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", inputZone="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", deadZone="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c5
    iget v9, v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mInitialDisplayHeight:I

    sub-int v10, v4, v6

    sub-int/2addr v9, v10

    if-ge v2, v9, :cond_cd

    return v5

    :cond_cd
    iget v9, v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mInitialDisplayWidth:I

    const/4 v10, 0x3

    div-int/2addr v9, v10

    if-ge v1, v9, :cond_d5

    const/4 v5, 0x1

    return v5

    :cond_d5
    int-to-double v11, v1

    iget v9, v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mInitialDisplayWidth:I

    const/4 v13, 0x2

    div-int/2addr v9, v13

    int-to-double v14, v9

    iget v9, v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mInitialDisplayWidth:I

    move/from16 v16, v6

    int-to-double v5, v9

    mul-double/2addr v5, v7

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    div-double v5, v5, v17

    add-double/2addr v14, v5

    cmpg-double v5, v11, v14

    if-gez v5, :cond_fb

    iget v5, v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mInitialDisplayWidth:I

    div-int/2addr v5, v13

    int-to-double v5, v5

    iget v9, v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mInitialDisplayWidth:I

    int-to-double v11, v9

    mul-double/2addr v11, v7

    div-double v11, v11, v17

    sub-double/2addr v5, v11

    int-to-double v11, v1

    cmpg-double v5, v5, v11

    if-gez v5, :cond_fb

    return v13

    :cond_fb
    iget v5, v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mInitialDisplayWidth:I

    div-int/2addr v5, v10

    mul-int/2addr v5, v13

    if-ge v5, v1, :cond_102

    return v10

    :cond_102
    const/4 v5, 0x0

    return v5

    :cond_104
    :goto_104
    return v5
.end method

.method public static synthetic lambda$dismissKeyguard$0(Lcom/android/server/policy/NavBarForceTouchPolicyManager;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->pendingDismissKeyguard()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-boolean v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->DEBUG:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->TAG:Ljava/lang/String;

    const-string v1, "dismissKeyguard, pending to dismissKeyguard by going to sleep"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic lambda$pendingDismissKeyguard$1(Lcom/android/server/policy/NavBarForceTouchPolicyManager;)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mPendingDismissKeyguard:Z

    if-eqz v0, :cond_15

    sget-boolean v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->DEBUG:Z

    if-eqz v0, :cond_f

    sget-object v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->TAG:Ljava/lang/String;

    const-string v1, "dismissKeyguard, pending to dismissKeyguard by going to sleep"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const-string/jumbo v0, "timeout"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->clearPendingDismissKeyguard(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method private pendingDismissKeyguard()Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mGoingToSleep:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mPendingDismissKeyguard:Z

    iget-object v1, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/-$$Lambda$NavBarForceTouchPolicyManager$dnHPSRrJjGAIqNQBmGL8jkJHXl0;

    invoke-direct {v2, p0}, Lcom/android/server/policy/-$$Lambda$NavBarForceTouchPolicyManager$dnHPSRrJjGAIqNQBmGL8jkJHXl0;-><init>(Lcom/android/server/policy/NavBarForceTouchPolicyManager;)V

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public clearPendingDismissKeyguard(Ljava/lang/String;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mPendingDismissKeyguard:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-boolean v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->DEBUG:Z

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearPendingDismissKeyguard, reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mPendingDismissKeyguard:Z

    return-void
.end method

.method public dismissKeyguardByPendingRequest()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mPendingDismissKeyguard:Z

    if-eqz v0, :cond_c

    const-string v0, "dismissKeyguardByPendingRequest"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->clearPendingDismissKeyguard(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->dismissKeyguard()V

    :cond_c
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mVibrator:Landroid/os/Vibrator;

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method public onForcePressed(II)Z
    .registers 11

    iget-object v0, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v2

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->judgeEvent(IIZ)I

    move-result v3

    sget-boolean v4, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->DEBUG:Z

    if-eqz v4, :cond_42

    sget-object v4, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onForcePressed: event="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mHomeConsumed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mHomeConsumed:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    iput-boolean v1, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mHomeConsumed:Z

    iput-boolean v1, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mHapticPlayedOnPressed:Z

    iput-boolean v0, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mNavBarVisibleOnPressed:Z

    iget-object v4, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSamsungWindowManagerFuncs:Lcom/android/server/policy/SamsungWindowManagerPolicy$SamsungWindowManagerFuncs;

    invoke-interface {v4}, Lcom/android/server/policy/SamsungWindowManagerPolicy$SamsungWindowManagerFuncs;->hasOneHandOpSpec()Z

    move-result v4

    if-eqz v4, :cond_5b

    sget-object v1, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onForcePressed: ignored: isOneHandOpEnabled"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5b
    iget-object v4, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-direct {p0}, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->isGamePressureTouchLocked()Z

    move-result v4

    if-eqz v4, :cond_74

    sget-object v1, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onForcePressed: ignored: disabled by game launcher"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_74
    invoke-direct {p0}, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->isTalkBackEnabled()Z

    move-result v4

    if-eqz v4, :cond_83

    sget-object v1, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onForcePressed: ignored: isTalkBackEnabled"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_83
    if-eqz v3, :cond_96

    iget-object v4, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mVibrator:Landroid/os/Vibrator;

    const v5, 0xc376

    const/4 v6, -0x1

    sget-object v7, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_FORCE:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v5, v6, v7}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    iput-boolean v2, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mHapticPlayedOnPressed:Z

    :cond_96
    if-eqz v0, :cond_9e

    invoke-static {}, Lcom/android/server/policy/PolicyControl;->isGestureNavBarEnabled()Z

    move-result v4

    if-eqz v4, :cond_ab

    :cond_9e
    iget-object v4, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v4

    if-eqz v4, :cond_ab

    invoke-direct {p0}, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->dismissKeyguard()V

    :cond_ab
    if-nez v3, :cond_b0

    nop

    move v1, v2

    goto :goto_b1

    :cond_b0
    nop

    :goto_b1
    return v1
.end method

.method public onForcePressedSleep()V
    .registers 3

    sget-boolean v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->DEBUG:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onForcePressedSleep"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-direct {p0}, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->dismissKeyguard()V

    return-void
.end method

.method public onForceReleased(II)Z
    .registers 10

    sget-boolean v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->DEBUG:Z

    if-eqz v0, :cond_41

    sget-object v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onForceReleased: x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mHomeConsumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mHomeConsumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mHapticPlayedOnPressed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mHapticPlayedOnPressed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mNavBarVisibleOnPressed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mNavBarVisibleOnPressed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    iget-boolean v0, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mHapticPlayedOnPressed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_85

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mHapticPlayedOnPressed:Z

    iget-object v2, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_5f

    iget-object v2, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_5f

    move v0, v1

    nop

    :cond_5f
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->judgeEvent(IIZ)I

    move-result v2

    if-eqz v2, :cond_74

    iget-object v3, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mVibrator:Landroid/os/Vibrator;

    const v4, 0xc377

    const/4 v5, -0x1

    sget-object v6, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_FORCE:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v4, v5, v6}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_74
    if-eqz v0, :cond_80

    iget-boolean v3, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mNavBarVisibleOnPressed:Z

    if-eqz v3, :cond_80

    invoke-static {}, Lcom/android/server/policy/PolicyControl;->isGestureNavBarEnabled()Z

    move-result v3

    if-eqz v3, :cond_85

    :cond_80
    invoke-direct {p0, v2}, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->generateKeyEvent(I)Z

    move-result v1

    return v1

    :cond_85
    return v1
.end method

.method public onForceReleasedSleep(Z)V
    .registers 6

    sget-boolean v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->DEBUG:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onForceReleasedSleep: playHaptic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    if-eqz p1, :cond_2c

    iget-object v0, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mVibrator:Landroid/os/Vibrator;

    const v1, 0xc377

    const/4 v2, -0x1

    sget-object v3, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_FORCE:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v1, v2, v3}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_2c
    return-void
.end method

.method public setHomeConsumed()V
    .registers 3

    sget-boolean v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->DEBUG:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setHomeConsumed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mHomeConsumed:Z

    return-void
.end method

.method public setInitialDisplaySize(IIII)V
    .registers 5

    iput p1, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mDisplayWidth:I

    iput p2, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mDisplayHeight:I

    iput p3, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mInitialDisplayWidth:I

    iput p4, p0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->mInitialDisplayHeight:I

    return-void
.end method
