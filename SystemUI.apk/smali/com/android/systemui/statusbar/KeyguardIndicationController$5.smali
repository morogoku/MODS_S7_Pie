.class Lcom/android/systemui/statusbar/KeyguardIndicationController$5;
.super Landroid/os/CountDownTimer;
.source "KeyguardIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardIndicationController;->handleBiometricsAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field attemptRemainingBeforeWipe:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;JJ)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$3000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getAddRemainingAttempt(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->attemptRemainingBeforeWipe:I

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$3302(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$3000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$3000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$3000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIrisListeningState()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$3000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceRecognitionListeningState()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$3000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIBListeningState()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setHelpText(I)V

    return-void
.end method

.method public onTick(J)V
    .locals 17

    move-object/from16 v0, p0

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    div-int/lit8 v2, v1, 0x3c

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$3302(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$3400(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result v4

    and-int/lit8 v5, v4, 0x10

    const/16 v6, 0x10

    const/4 v8, 0x1

    if-ne v5, v6, :cond_0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIrisOnFirstScreen()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v8

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    and-int/lit16 v6, v4, 0x100

    const/16 v9, 0x100

    if-ne v6, v9, :cond_1

    iget-object v6, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$3000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCameraDisabledByPolicy()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$3000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$3000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTrustAgentDisabled(I)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceRecognitionFirstScreen()Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v8

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    and-int/lit16 v9, v4, 0x1000

    const/16 v10, 0x1000

    if-ne v9, v10, :cond_2

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/util/SettingsHelper;->isEnabledSmartScanRecognitionFirstScreen()Z

    move-result v9

    if-eqz v9, :cond_2

    move v9, v8

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    iget v10, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->attemptRemainingBeforeWipe:I

    if-lez v10, :cond_3

    iget-object v10, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v12}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2400(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    iget v13, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->attemptRemainingBeforeWipe:I

    new-array v7, v8, [Ljava/lang/Object;

    iget v8, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->attemptRemainingBeforeWipe:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v15, 0x0

    aput-object v8, v7, v15

    const v8, 0x7f100003

    invoke-virtual {v12, v8, v13, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$3302(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    iget-object v7, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$500(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v7

    if-nez v7, :cond_7

    const/16 v7, 0x3c

    if-le v1, v7, :cond_4

    iget-object v7, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v8, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v8}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2400(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f100012

    add-int/lit8 v11, v2, 0x1

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    add-int/lit8 v13, v2, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$3384(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_4

    :cond_4
    if-gt v1, v7, :cond_7

    if-lez v1, :cond_7

    if-nez v5, :cond_6

    if-nez v6, :cond_6

    if-eqz v9, :cond_5

    goto :goto_3

    :cond_5
    iget-object v7, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v8, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v8}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2400(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f100011

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8, v10, v1, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$3384(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_4

    :cond_6
    :goto_3
    iget-object v7, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v8, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v8}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2400(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f100010

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8, v10, v1, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$3384(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/Object;)Ljava/lang/String;

    :cond_7
    :goto_4
    iget-object v7, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$3300(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    :cond_8
    return-void
.end method
