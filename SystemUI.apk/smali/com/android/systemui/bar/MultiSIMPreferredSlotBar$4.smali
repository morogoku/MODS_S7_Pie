.class Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$4;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$4;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "MultiSIMPreferredSlotBar"

    const-string v1, "MESSAGE_EMPTY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_1
    const-string v0, "MultiSIMPreferredSlotBar"

    const-string v1, "MESSAGE_SEND_NETWORK_MODE_CHANGED_INTENT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$4;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$100(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.systemui.qs.action.NETWORK_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    :pswitch_2
    const-string v0, "MultiSIMPreferredSlotBar"

    const-string v2, "MESSAGE_SET_PREFERRED_NETWORK_TYPE_ONESLOT"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    const-string v0, "MultiSIMPreferredSlotBar"

    const-string v2, "MESSAGE_DELAY_DATASERVICE_TIMEOUT"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$4;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$900(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$4;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1100(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$4;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1100(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$4;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1100(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$4;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1000(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$4;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1000(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_2

    :goto_0
    :pswitch_4
    const-string v0, "MultiSIMPreferredSlotBar"

    const-string v2, "MESSAGE_DELAY_DATASERVICE_SET"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$4;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$2200(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Z

    move-result v0

    const/16 v2, 0x3eb

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$4;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$2300(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$4;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getPreferredNetworkType(I)I

    move-result v4

    invoke-static {v1, v4, v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$2400(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;II)V

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$4;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1, v3}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$2202(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;Z)Z

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$4;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$2500(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$4;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v3}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$2500(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x3ee

    invoke-static {v0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSubId(I)I

    move-result v5

    invoke-static {v0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getPreferredNetworkType(I)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$4;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1000(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$4;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v3}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1000(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$4;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0, v3}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$2602(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;Z)Z

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$4;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$900(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$4;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1100(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$4;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1100(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$4;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v3}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1100(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$4;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1000(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$4;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1000(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2

    :pswitch_5
    const-string v0, "MultiSIMPreferredSlotBar"

    const-string v1, "MESSAGE_SET_PREFERRED_NETWORK_TYPE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$4;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0, p1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$2100(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$4;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1000(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$4;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1000(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2

    :pswitch_6
    const-string v0, "MultiSIMPreferredSlotBar"

    const-string v1, "MESSAGE_CHANGE_NETWORK_MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$4;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0, p1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$2000(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$4;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1000(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$4;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1000(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
