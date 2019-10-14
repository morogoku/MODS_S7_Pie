.class public Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
.super Lcom/android/systemui/SystemUI;
.source "FingerprintDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field protected static final FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

.field protected static final FEATURE_SENSOR_IS_OPTICAL:Z

.field private static USE_AOSP_PROMPT:Z

.field private static mMaxMovingHalfSize:I

.field private static mMaxMovingSize:I


# instance fields
.field private mDepth:I

.field private mDialogShowing:Z

.field private mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

.field private mHandler:Landroid/os/Handler;

.field private mIconLocationX:I

.field private mIconLocationY:I

.field private mIsPrompt:Z

.field private mPreviousMoveTimeOneHour:J

.field private mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

.field private mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

.field private mSemPromptView:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

.field private mToken:Landroid/os/IBinder;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->USE_AOSP_PROMPT:Z

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorPosition()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    sput-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    const-string v0, "google_touch"

    const-string/jumbo v1, "optical"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->FEATURE_SENSOR_IS_OPTICAL:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mPreviousMoveTimeOneHour:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationX:I

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationY:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDepth:I

    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$1;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Lcom/android/internal/os/SomeArgs;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleShowDialog(Lcom/android/internal/os/SomeArgs;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleClearMessage(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintEvent(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleSendEvent(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintAuthenticated()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintHelp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleButtonNegative()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleUserCanceled()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleButtonPositive()V

    return-void
.end method

.method private getRandomLocationForIcon()V
    .locals 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationX:I

    iget v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationY:I

    iget v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationX:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationY:I

    if-ne v4, v5, :cond_1

    :cond_0
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationX:I

    iput v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationY:I

    iput-wide v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mPreviousMoveTimeOneHour:J

    :cond_1
    iget-wide v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mPreviousMoveTimeOneHour:J

    const-wide/32 v6, 0x36ee80

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    const/4 v5, 0x1

    if-lez v4, :cond_4

    iget v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationX:I

    sget v6, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mMaxMovingHalfSize:I

    if-ge v4, v6, :cond_2

    iget v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationX:I

    sget v6, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mMaxMovingHalfSize:I

    add-int/2addr v4, v6

    iput v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationX:I

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationX:I

    sget v6, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mMaxMovingHalfSize:I

    sub-int/2addr v4, v6

    iput v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationX:I

    :goto_0
    iget v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationY:I

    sget v6, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mMaxMovingHalfSize:I

    if-ge v4, v6, :cond_3

    iget v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationY:I

    sget v6, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mMaxMovingHalfSize:I

    add-int/2addr v4, v6

    iput v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationY:I

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationY:I

    sget v6, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mMaxMovingHalfSize:I

    sub-int/2addr v4, v6

    iput v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationY:I

    :goto_1
    iput-wide v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mPreviousMoveTimeOneHour:J

    goto/16 :goto_3

    :cond_4
    iget v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationX:I

    const/4 v6, 0x2

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    if-nez v4, :cond_5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    mul-double/2addr v11, v9

    double-to-int v4, v11

    if-ne v4, v5, :cond_8

    iget v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationX:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationX:I

    goto :goto_2

    :cond_5
    iget v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationX:I

    sget v11, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mMaxMovingSize:I

    sub-int/2addr v11, v5

    if-ne v4, v11, :cond_6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    mul-double/2addr v11, v9

    double-to-int v4, v11

    if-ne v4, v5, :cond_8

    iget v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationX:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationX:I

    goto :goto_2

    :cond_6
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    mul-double/2addr v11, v7

    double-to-int v4, v11

    if-ne v4, v6, :cond_7

    iget v11, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationX:I

    add-int/2addr v11, v5

    iput v11, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationX:I

    goto :goto_2

    :cond_7
    if-ne v4, v5, :cond_8

    iget v11, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationX:I

    sub-int/2addr v11, v5

    iput v11, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationX:I

    :cond_8
    :goto_2
    iget v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationY:I

    if-nez v4, :cond_9

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v9

    double-to-int v4, v6

    if-ne v4, v5, :cond_c

    iget v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationY:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationY:I

    goto :goto_3

    :cond_9
    iget v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationY:I

    sget v11, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mMaxMovingSize:I

    sub-int/2addr v11, v5

    if-ne v4, v11, :cond_a

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v9

    double-to-int v4, v6

    if-ne v4, v5, :cond_c

    iget v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationY:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationY:I

    goto :goto_3

    :cond_a
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    mul-double/2addr v9, v7

    double-to-int v4, v9

    if-ne v4, v6, :cond_b

    iget v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationY:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationY:I

    goto :goto_3

    :cond_b
    if-ne v4, v5, :cond_c

    iget v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationY:I

    sub-int/2addr v6, v5

    iput v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationY:I

    :cond_c
    :goto_3
    iget v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationX:I

    if-ne v2, v4, :cond_d

    iget v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationY:I

    if-ne v3, v4, :cond_d

    iget v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDepth:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDepth:I

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->getRandomLocationForIcon()V

    iget v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDepth:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDepth:I

    :cond_d
    sget-boolean v4, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v4, :cond_e

    iget v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDepth:I

    if-nez v4, :cond_e

    const-string v4, "FingerprintDialogImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "x="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", y="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const-string v4, "FingerprintDialogImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "x="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", y="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleButtonNegative()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    if-nez v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "Receiver is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/hardware/biometrics/IBiometricPromptReceiver;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintDialogImpl"

    const-string v2, "Remote exception when handling negative button"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    return-void
.end method

.method private handleButtonPositive()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    if-nez v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "Receiver is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/hardware/biometrics/IBiometricPromptReceiver;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintDialogImpl"

    const-string v2, "Remote exception when handling positive button"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    return-void
.end method

.method private handleClearMessage(I)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleClearMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIsPrompt:Z

    const/16 v1, 0x9

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "handleClearMessage : No Showing status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->USE_AOSP_PROMPT:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->resetMessage()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemPromptView:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemPromptView:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->resetMessage()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "handleClearMessage : No Showing status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->resetMessage(Z)V

    :cond_8
    :goto_1
    return-void
.end method

.method private handleFingerprintAuthenticated()V
    .locals 4

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "handleFingerprintAuthenticated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIsPrompt:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->USE_AOSP_PROMPT:Z

    const v2, 0x104035f

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemPromptView:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemPromptView:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    goto :goto_1

    :cond_3
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method private handleFingerprintError(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFingerprintError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIsPrompt:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "handleFingerprintError: Dialog already dismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->USE_AOSP_PROMPT:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showErrorMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemPromptView:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemPromptView:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->showErrorMessage(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private handleFingerprintEvent(IILjava/lang/String;)V
    .locals 5

    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFingerprintEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    goto/16 :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    if-ne p2, v1, :cond_0

    move v0, v1

    nop

    :cond_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->handleSensorView(Z)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    if-ne p2, v1, :cond_1

    move v0, v1

    nop

    :cond_1
    invoke-virtual {v2, v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->handleOverlayMaskView(Z)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->handleScreenEvent(Z)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->handleScreenEvent(Z)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    div-int/lit8 v1, p2, 0x64

    rem-int/lit8 v2, p2, 0x64

    sget-boolean v3, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v3, :cond_3

    if-eq v1, v0, :cond_3

    if-eq v2, v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->moveFingerIcon(II)V

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->getRandomLocationForIcon()V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    iget v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationX:I

    iget v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIconLocationY:I

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->moveFingerIcon(II)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-virtual {v0, p2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->hideFingerprintGuideView(I)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-virtual {v0, p2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->startIconAnimation(I)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->resumeIcon()V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->pauseIcon()V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-virtual {v0, p3}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->showErrorMessage(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_a
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIsPrompt:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemPromptView:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemPromptView:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->showHelpMessage(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->showHelpMessage(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_b
    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIsPrompt:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemPromptView:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemPromptView:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

    invoke-virtual {v1, v0, p3}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->showHelpMessage(ILjava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->showHelpMessage(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemPromptView:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemPromptView:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

    invoke-virtual {v0, p3}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->showFingerprintNameMessage(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x70
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc8
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleFingerprintHelp(Ljava/lang/String;)V
    .locals 3

    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFingerprintHelp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIsPrompt:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "handleFingerprintHelp: Dialog already dismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->USE_AOSP_PROMPT:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showHelpMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemPromptView:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemPromptView:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->showHelpMessage(ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private handleHideDialog(Z)V
    .locals 4

    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleHideDialog, userCanceled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIsPrompt:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    if-nez v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog already dismissed, userCanceled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/hardware/biometrics/IBiometricPromptReceiver;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "FingerprintDialogImpl"

    const-string v3, "RemoteException when hiding dialog"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->USE_AOSP_PROMPT:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->startDismiss()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemPromptView:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemPromptView:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->startDismiss()V

    iput-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemPromptView:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

    :cond_3
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->startDismiss()V

    iput-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    :cond_4
    :goto_1
    iput-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mToken:Landroid/os/IBinder;

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    const/16 v2, 0x271a

    invoke-interface {v0, v2}, Landroid/hardware/biometrics/IBiometricPromptReceiver;->onDialogDismissed(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v2, "FingerprintDialogImpl"

    const-string v3, "RemoteException when hiding dialog"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_2
    iput-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->startDismiss()V

    iput-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    iput-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mToken:Landroid/os/IBinder;

    :cond_7
    :goto_3
    return-void
.end method

.method private handleSendEvent(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    if-nez v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "handleSendEvent : Receiver is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSendEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x7530

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    if-ne p2, v1, :cond_1

    const/16 v0, 0x2711

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_3

    if-nez p2, :cond_2

    const/16 v0, 0x4e21

    goto :goto_0

    :cond_2
    if-ne p2, v2, :cond_3

    const/16 v0, 0x4e22

    :cond_3
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    invoke-interface {v1, v0}, Landroid/hardware/biometrics/IBiometricPromptReceiver;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "FingerprintDialogImpl"

    const-string v2, "Remote exception when handling event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private handleShowDialog(Lcom/android/internal/os/SomeArgs;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIsPrompt:Z

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->USE_AOSP_PROMPT:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleShowDialog, isAnimatingAway: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isAnimatingAway()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isAnimatingAway()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->forceRemove()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    if-eqz v0, :cond_3

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "Dialog already showing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    if-eqz v0, :cond_3

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "handleShowDialog : Dialog already showing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_0
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/biometrics/IBiometricPromptReceiver;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->USE_AOSP_PROMPT:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v3}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemPromptView:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemPromptView:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->setBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemPromptView:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

    const/high16 v2, 0x1200000

    invoke-virtual {v0, v2}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->setSystemUiVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemPromptView:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemPromptView:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

    invoke-virtual {v3}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->show()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "FingerprintDialogImpl"

    const-string v2, "handleShowDialog: Failed to show"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    :cond_5
    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    :cond_6
    :goto_1
    return-void
.end method

.method private handleUserCanceled()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "handleUserCanceled: call handleHideDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    return-void
.end method

.method protected static wakeLockDuration(Landroid/content/Context;J)V
    .locals 3

    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "FingerprintDialogImpl"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method


# virtual methods
.method public hideFingerprintDialog()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "hideFingerprintDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    return-void
.end method

.method public onFingerprintAuthenticated()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string/jumbo v1, "onFingerprintAuthenticated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintAuthenticated()V

    return-void
.end method

.method public onFingerprintError(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFingerprintError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintError(Ljava/lang/String;)V

    return-void
.end method

.method public onFingerprintEvent(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintEvent(IILjava/lang/String;)V

    return-void
.end method

.method public onFingerprintHelp(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFingerprintHelp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintHelp(Ljava/lang/String;)V

    return-void
.end method

.method public showFingerprintDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    .locals 12

    if-eqz p1, :cond_b

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string/jumbo v0, "token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "FingerprintDialogImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showFingerprintDialog: start, current token =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", new token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mToken:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mToken:Landroid/os/IBinder;

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mToken:Landroid/os/IBinder;

    :cond_2
    :goto_0
    const-string/jumbo v1, "sem_bio_prompt"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIsPrompt:Z

    const-string v1, "FingerprintDialogImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showFingerprintDialog: prompt = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIsPrompt:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIsPrompt:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    if-eqz v1, :cond_3

    const-string v1, "FingerprintDialogImpl"

    const-string/jumbo v2, "showFingerprintDialog : Dialog already showing"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    sget-boolean v4, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "sem_debug_aosp_ux"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    sput-boolean v2, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->USE_AOSP_PROMPT:Z

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    if-nez v2, :cond_5

    new-instance v2, Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/fingerprint/FingerprintDialogView;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    goto :goto_1

    :cond_4
    sput-boolean v3, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->USE_AOSP_PROMPT:Z

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemPromptView:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

    if-nez v2, :cond_5

    new-instance v2, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mToken:Landroid/os/IBinder;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/WindowManager;Landroid/os/IBinder;)V

    iput-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemPromptView:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

    :cond_5
    :goto_1
    sget-boolean v2, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v2, :cond_6

    new-instance v2, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    const/4 v8, 0x2

    const/4 v9, 0x0

    iget-boolean v10, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIsPrompt:Z

    move-object v3, v2

    move-object v7, p1

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/WindowManager;Landroid/os/Bundle;IIZ)V

    iput-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    :cond_6
    invoke-direct {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleShowDialog(Lcom/android/internal/os/SomeArgs;)V

    goto/16 :goto_2

    :cond_7
    sget-boolean v1, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    if-eqz v1, :cond_8

    const-string v1, "FingerprintDialogImpl"

    const-string/jumbo v2, "showFingerprintDialog : MaskView already showing"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    const-string/jumbo v1, "sem_ux_type"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "FingerprintDialogImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showFingerprintDialog : MASK = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_9

    const-string v2, "FingerprintDialogImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showFingerprintDialog : invalid type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    const/high16 v3, 0x41200000    # 10.0f

    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    sput v3, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mMaxMovingSize:I

    sget v3, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mMaxMovingSize:I

    shr-int/2addr v3, v2

    sput v3, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mMaxMovingHalfSize:I

    iput-object p2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    new-instance v3, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    const/4 v10, 0x0

    iget-boolean v11, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIsPrompt:Z

    move-object v4, v3

    move-object v8, p1

    move v9, v1

    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/WindowManager;Landroid/os/Bundle;IIZ)V

    iput-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mSemMakViewManager:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-virtual {v3}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->show()Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "FingerprintDialogImpl"

    const-string/jumbo v4, "showFingerprintDialog: Failed to show"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    :cond_a
    :goto_2
    return-void

    :cond_b
    :goto_3
    const-string v0, "FingerprintDialogImpl"

    const-string v1, "bundle or receiver is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public start()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method
