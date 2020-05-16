.class Lcom/android/keyguard/KeyguardCarrierView$3;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardCarrierView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardCarrierView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardCarrierView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x749e82b0

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    const v3, -0x290a5660

    if-eq v2, v3, :cond_1

    const v3, -0x1423ea3e

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    const-string v2, "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_1

    :cond_2
    const-string v2, "com.sec.android.CarrierLock.DISABLED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardCarrierView;->access$700(Lcom/android/keyguard/KeyguardCarrierView;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardCarrierView;->access$800(Lcom/android/keyguard/KeyguardCarrierView;)V

    goto :goto_2

    :pswitch_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardCarrierView;->access$600(Lcom/android/keyguard/KeyguardCarrierView;)V

    goto :goto_2

    :pswitch_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardCarrierView;->access$500(Lcom/android/keyguard/KeyguardCarrierView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-interface {v1, v4, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    nop

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
