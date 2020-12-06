.class Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;
.super Ljava/lang/Object;
.source "KeyguardUCMPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUCMPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateMachine"
.end annotation


# instance fields
.field final CONFIRM_PIN:I

.field final DONE:I

.field final ENTER_NEW_PIN:I

.field final ENTER_PIN:I

.field final ENTER_PUK:I

.field final UNKNOWN:I

.field private mRound:I

.field private mState:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardUCMPinView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardUCMPinView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->ENTER_PIN:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->ENTER_PUK:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->ENTER_NEW_PIN:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->CONFIRM_PIN:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->DONE:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->UNKNOWN:I

    iput p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mState:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;-><init>(Lcom/android/keyguard/KeyguardUCMPinView;)V

    return-void
.end method

.method private getDetailErrorMessage(I)Ljava/lang/String;
    .locals 5

    const-string v0, "KeyguardUCMPinView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDetailErrorMessage errorCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12080d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1600(Lcom/android/keyguard/KeyguardUCMPinView;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1700()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getDetailErrorMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v2, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1800(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "KeyguardUCMPinView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception in getDetailErrorMessage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v1, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1800(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method


# virtual methods
.method getState()I
    .locals 2

    const-string v0, "KeyguardUCMPinView"

    const-string v1, "StateMachine.getState called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mState:I

    return v0
.end method

.method setStateAndRefreshUIIfNeeded(IIZLandroid/os/Bundle;)V
    .locals 9

    const-string v0, "KeyguardUCMPinView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateMachine.setStateAndRefreshUIIfNeeded called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v0, p2}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1800(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object v0

    iput p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mState:I

    iget v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mState:I

    const/4 v2, 0x5

    const/4 v3, -0x1

    const/16 v4, 0x8

    if-eq v1, v3, :cond_d

    const v5, 0x7f1206f2

    const v6, 0x7f12083a

    const/16 v7, 0x20

    const/4 v8, 0x0

    packed-switch v1, :pswitch_data_0

    const-string v1, "KeyguardUCMPinView"

    const-string/jumbo v2, "unknown status nothing to do"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :pswitch_0
    const-string v1, "KeyguardUCMPinView"

    const-string/jumbo v3, "setStateAndRefreshUIIfNeeded called : STATE_BLOCKED"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2300(Lcom/android/keyguard/KeyguardUCMPinView;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x21

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120809

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2000(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2100(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120714

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2000(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2100(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-ne p2, v7, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v2, v8}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2100(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f120892

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "KeyguardUCMPinView"

    const-string/jumbo v4, "pinExpireMessage"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    iput v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2400(Lcom/android/keyguard/KeyguardUCMPinView;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2400(Lcom/android/keyguard/KeyguardUCMPinView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1900(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1900(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2400(Lcom/android/keyguard/KeyguardUCMPinView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :pswitch_1
    const-string v1, "KeyguardUCMPinView"

    const-string/jumbo v2, "setStateAndRefreshUIIfNeeded called : STATE_LOCKED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v7, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2000(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2100(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    if-nez p2, :cond_6

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2000(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2100(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1900(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iput v8, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    goto/16 :goto_4

    :pswitch_2
    const-string v1, "KeyguardUCMPinView"

    const-string/jumbo v2, "setStateAndRefreshUIIfNeeded called : STATE_UNLOCKED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_8

    if-nez p2, :cond_7

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2000(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2100(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_8
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1900(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iput v8, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    if-nez p2, :cond_c

    if-nez p4, :cond_9

    const-string v1, "KeyguardUCMPinView"

    const-string v2, "failed to get the generatePassword values"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12080d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_9
    const-string/jumbo v1, "stringresponse"

    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "errorresponse"

    invoke-virtual {p4, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_a

    goto :goto_3

    :cond_a
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-static {v3, v1, v4}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2200(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;I)V

    goto :goto_4

    :cond_b
    :goto_3
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->getDetailErrorMessage(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v3, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_c
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_d
    const-string v1, "KeyguardUCMPinView"

    const-string/jumbo v3, "setStateAndRefreshUIIfNeeded called : STATE_UNKNOWN"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->getDetailErrorMessage(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1900(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iput v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    nop

    :goto_4
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x83
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method verifyPUKAndUpdateUI()V
    .locals 5

    const-string v0, "KeyguardUCMPinView"

    const-string v1, "StateMachine.verifyPUKAndUpdateUI called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mState:I

    const/16 v3, 0x85

    if-eq v2, v3, :cond_0

    return-void

    :cond_0
    iget v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    const/4 v3, 0x2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2700(Lcom/android/keyguard/KeyguardUCMPinView;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    iput v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    const v0, 0x7f12080e

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2800(Lcom/android/keyguard/KeyguardUCMPinView;)V

    goto :goto_0

    :cond_1
    iput v3, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    const v0, 0x7f120804

    const v1, 0x7f12080a

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2600(Lcom/android/keyguard/KeyguardUCMPinView;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    iput v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    const v0, 0x7f120802

    goto :goto_0

    :cond_2
    const v0, 0x7f120805

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2500(Lcom/android/keyguard/KeyguardUCMPinView;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput v3, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    const v0, 0x7f12080a

    goto :goto_0

    :cond_3
    const v0, 0x7f120806

    nop

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Lcom/android/keyguard/KeyguardUCMPinView;->resetPasswordText(ZZ)V

    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v2, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
