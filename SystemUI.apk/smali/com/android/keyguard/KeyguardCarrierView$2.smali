.class Lcom/android/keyguard/KeyguardCarrierView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardCarrierView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardCarrierView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardCarrierView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierView$2;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView$2;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardCarrierView;->access$102(Lcom/android/keyguard/KeyguardCarrierView;I)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView$2;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardCarrierView;->access$200(Lcom/android/keyguard/KeyguardCarrierView;I)V

    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 3

    const-string v0, "KeyguardCarrierView"

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

    sget-object v0, Lcom/android/keyguard/KeyguardCarrierView$4;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p3}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView$2;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCarrierView;->access$000(Lcom/android/keyguard/KeyguardCarrierView;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView$2;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCarrierView;->access$300(Lcom/android/keyguard/KeyguardCarrierView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KeyguardCarrierView"

    const-string v1, "Hide OwnerCallButton"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView$2;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardCarrierView;->access$400(Lcom/android/keyguard/KeyguardCarrierView;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView$2;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCarrierView;->access$000(Lcom/android/keyguard/KeyguardCarrierView;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
