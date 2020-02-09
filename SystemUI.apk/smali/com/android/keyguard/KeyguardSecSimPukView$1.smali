.class Lcom/android/keyguard/KeyguardSecSimPukView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSecSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecSimPukView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecSimPukView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 3

    const-string v0, "KeyguardSimPukView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSimStateChanged(subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/keyguard/KeyguardSecSimPukView$3;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p3}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecSimPukView;->resetState()V

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->interrupt()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecSimPukView;->resetState()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecSimPukView;->verifyPasswordAndUnlock()V

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecSimPukView;->resetState()V

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecSimPukView;->resetState()V

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p3, v0, :cond_2

    const-string v0, "KeyguardSimPukView"

    const-string v2, "Card Remove during SIM PUK "

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p3, v0, :cond_3

    const-string v0, "KeyguardSimPukView"

    const-string v2, "Card READY during SIM PUK "

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecSimPukView;->access$000(Lcom/android/keyguard/KeyguardSecSimPukView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimState(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "KeyguardSimPukView"

    const-string v2, "Dismiss SIM PUK View"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p3, v0, :cond_5

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iget v0, v0, Lcom/android/keyguard/KeyguardSecSimPukView;->mSubId:I

    if-eq v0, p1, :cond_5

    const-string v0, "KeyguardSimPukView"

    const-string v1, "READY already came. Skip this"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecSimPukView;->resetState()V

    nop

    :cond_6
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
