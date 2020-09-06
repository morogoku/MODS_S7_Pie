.class final Lcom/android/server/power/Notifier$NotifierHandler;
.super Landroid/os/Handler;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/Notifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotifierHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;


# direct methods
.method public constructor <init>(Lcom/android/server/power/Notifier;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_30

    goto :goto_2e

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    # invokes: Lcom/android/server/power/Notifier;->showWiredChargingStarted()V
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$1500(Lcom/android/server/power/Notifier;)V

    goto :goto_2e

    :pswitch_c
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/power/Notifier;->lockProfile(I)V
    invoke-static {v0, v1}, Lcom/android/server/power/Notifier;->access$1400(Lcom/android/server/power/Notifier;I)V

    goto :goto_2e

    :pswitch_14
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    # invokes: Lcom/android/server/power/Notifier;->sendBrightnessBoostChangedBroadcast()V
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$1300(Lcom/android/server/power/Notifier;)V

    goto :goto_2e

    :pswitch_1a
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/power/Notifier;->showWirelessChargingStarted(I)V
    invoke-static {v0, v1}, Lcom/android/server/power/Notifier;->access$1200(Lcom/android/server/power/Notifier;I)V

    goto :goto_2e

    :pswitch_22
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    # invokes: Lcom/android/server/power/Notifier;->sendNextBroadcast()V
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$1000(Lcom/android/server/power/Notifier;)V

    goto :goto_2e

    :pswitch_28
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    # invokes: Lcom/android/server/power/Notifier;->sendUserActivity()V
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$1100(Lcom/android/server/power/Notifier;)V

    nop

    :goto_2e
    return-void

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_28
        :pswitch_22
        :pswitch_1a
        :pswitch_14
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
