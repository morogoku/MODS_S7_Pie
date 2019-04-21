.class Lcom/samsung/android/globalactionsdlx/util/BroadcastManager$1;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/globalactionsdlx/util/BroadcastManager;->registerDismissActions(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/globalactionsdlx/util/BroadcastManager;

.field final synthetic val$dismissRunnable:Ljava/lang/Runnable;

.field final synthetic val$dismissVIRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/samsung/android/globalactionsdlx/util/BroadcastManager;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 4

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/util/BroadcastManager$1;->this$0:Lcom/samsung/android/globalactionsdlx/util/BroadcastManager;

    iput-object p2, p0, Lcom/samsung/android/globalactionsdlx/util/BroadcastManager$1;->val$dismissRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/samsung/android/globalactionsdlx/util/BroadcastManager$1;->val$dismissVIRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/util/BroadcastManager$1;->this$0:Lcom/samsung/android/globalactionsdlx/util/BroadcastManager;

    # getter for: Lcom/samsung/android/globalactionsdlx/util/BroadcastManager;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;
    invoke-static {v1}, Lcom/samsung/android/globalactionsdlx/util/BroadcastManager;->access$000(Lcom/samsung/android/globalactionsdlx/util/BroadcastManager;)Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    move-result-object v1

    const-string v2, "BroadcastManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_b0

    goto :goto_65

    :sswitch_29
    const-string v1, "POWER_OFF_CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    const/4 v1, 0x3

    goto :goto_66

    :sswitch_33
    const-string v1, "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    const/4 v1, 0x4

    goto :goto_66

    :sswitch_3d
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    const/4 v1, 0x1

    goto :goto_66

    :sswitch_47
    const-string v1, "com.samsung.settings.action.talkback_toggled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    const/4 v1, 0x2

    goto :goto_66

    :sswitch_51
    const-string v1, "POWER_OFF_ANIMATION_START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    const/4 v1, 0x5

    goto :goto_66

    :sswitch_5b
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    move v1, v2

    goto :goto_66

    :cond_65
    :goto_65
    const/4 v1, -0x1

    :goto_66
    packed-switch v1, :pswitch_data_ca

    goto :goto_ad

    :pswitch_6a
    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/util/BroadcastManager$1;->this$0:Lcom/samsung/android/globalactionsdlx/util/BroadcastManager;

    # getter for: Lcom/samsung/android/globalactionsdlx/util/BroadcastManager;->mHandlerUtil:Lcom/samsung/android/globalactionsdlx/util/HandlerUtil;
    invoke-static {v1}, Lcom/samsung/android/globalactionsdlx/util/BroadcastManager;->access$100(Lcom/samsung/android/globalactionsdlx/util/BroadcastManager;)Lcom/samsung/android/globalactionsdlx/util/HandlerUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/util/BroadcastManager$1;->val$dismissVIRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/globalactionsdlx/util/HandlerUtil;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_ad

    :pswitch_78
    const-string v1, "bouncerShowing"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_ad

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/util/BroadcastManager$1;->val$dismissRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_ad

    :pswitch_86
    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/util/BroadcastManager$1;->val$dismissVIRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_ad

    :pswitch_8c
    const-string/jumbo v1, "reason"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dream"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a1

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/util/BroadcastManager$1;->val$dismissRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_ad

    :cond_a1
    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/util/BroadcastManager$1;->val$dismissVIRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_ad

    :pswitch_a7
    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/util/BroadcastManager$1;->val$dismissRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    nop

    :cond_ad
    :goto_ad
    return-void

    nop

    nop

    :sswitch_data_b0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_5b
        -0x7331fda3 -> :sswitch_51
        -0x24c493ee -> :sswitch_47
        -0x1808c879 -> :sswitch_3d
        -0x864aa77 -> :sswitch_33
        0x68305b04 -> :sswitch_29
    .end sparse-switch

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_a7
        :pswitch_8c
        :pswitch_86
        :pswitch_86
        :pswitch_78
        :pswitch_6a
    .end packed-switch
.end method
