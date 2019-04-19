.class Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;
.super Landroid/content/BroadcastReceiver;
.source "MultiSIMPreferredSlotBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string/jumbo v1, "subscription"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "MultiSIMPreferredSlotBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive() - ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED : subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    iget-object v3, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v3}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$100(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/util/MultiSimMgrUtils;->getCurrentVoiceCall(Landroid/content/Context;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$002(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;I)I

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$200(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$200(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->access$300(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;)V

    :cond_0
    goto/16 :goto_7

    :cond_1
    const-string v1, "android.telephony.action.DEFAULT_SMS_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "subscription"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "MultiSIMPreferredSlotBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive() - ACTION_DEFAULT_SMS_SUBSCRIPTION_CHANGED : subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    iget-object v3, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v3, v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$500(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$402(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;I)I

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$600(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$600(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->access$300(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;)V

    :cond_2
    goto/16 :goto_7

    :cond_3
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "subscription"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "MultiSIMPreferredSlotBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive() - ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED :: subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    iget-object v3, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v3, v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$500(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$702(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;I)I

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$800(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$800(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->access$300(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;)V

    :cond_4
    goto/16 :goto_7

    :cond_5
    const-string v1, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "MultiSIMPreferredSlotBar"

    const-string/jumbo v2, "onReceive() - ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS ::"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$900(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1000(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$700(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSubId(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1000(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v3}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1000(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x3e9

    iget-object v5, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v5}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$700(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)I

    move-result v5

    invoke-virtual {v3, v4, v1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_7

    :cond_6
    const-string v1, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_FAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "MultiSIMPreferredSlotBar"

    const-string/jumbo v2, "onReceive() - ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_FAIL ::"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$900(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1100(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1100(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1100(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_7

    :cond_7
    const-string v1, "com.samsung.settings.SIMCARD_MGT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string/jumbo v1, "simcard_sim_id"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "simcard_sim_icon"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "simcard_sim_name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "MultiSIMPreferredSlotBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive() - ACTION_SIM_MGT_CHANGED : simId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",simIconIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",simName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v5}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1200(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)[I

    move-result-object v5

    aput v4, v5, v1

    :cond_8
    if-eqz v3, :cond_9

    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v4}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1300(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)[Ljava/lang/String;

    move-result-object v4

    aput-object v3, v4, v1

    :cond_9
    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v4}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1400(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-static {v5}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->access$300(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;)V

    goto :goto_0

    :cond_a
    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v4}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1500(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/widget/PopupWindow;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v4}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1600(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)V

    :cond_b
    goto/16 :goto_7

    :cond_c
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$100(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/util/MultiSimMgrUtils;->getCurrentVoiceCall(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$002(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;I)I

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$500(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$402(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;I)I

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$500(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$702(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;I)I

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1400(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-static {v2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->access$300(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;)V

    goto :goto_1

    :cond_d
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "MultiSIMPreferredSlotBar"

    const-string/jumbo v2, "onReceive() - ACTION_LOCALE_CHANGED : "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1400(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-virtual {v2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->refreshLocale()V

    goto :goto_2

    :cond_e
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto/16 :goto_6

    :cond_f
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1400(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-virtual {v2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->updateTextColor()V

    invoke-static {v2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->access$300(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;)V

    goto :goto_3

    :cond_10
    const-string v1, "com.samsung.android.softsim.ServiceStatus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$100(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSRoamingVirtualSlot(Landroid/content/Context;)I

    move-result v1

    sget v3, Lcom/android/systemui/util/MultiSimMgrUtils;->SOFTSIM_STATUS_ENABLE:I

    if-ne v1, v3, :cond_11

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1802(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;Z)Z

    goto :goto_4

    :cond_11
    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1, v2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1802(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;Z)Z

    :goto_4
    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1400(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-virtual {v2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->updateTextColor()V

    invoke-static {v2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->access$300(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;)V

    goto :goto_5

    :cond_12
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1900(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)V

    goto :goto_7

    :cond_13
    :goto_6
    const-string v1, "MultiSIMPreferredSlotBar"

    const-string/jumbo v2, "onReceive() - ACTION_SIM_STATE_CHANGED or ACTION_SIM_MGT_ACTIVATED_CHANGED : "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1700(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)V

    :cond_14
    :goto_7
    return-void
.end method
