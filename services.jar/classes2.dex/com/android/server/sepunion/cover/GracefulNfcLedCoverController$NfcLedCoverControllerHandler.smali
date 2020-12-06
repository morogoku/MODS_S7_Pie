.class final Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;
.super Landroid/os/Handler;
.source "GracefulNfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NfcLedCoverControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_8c

    :pswitch_6
    goto/16 :goto_8a

    :pswitch_8
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    # invokes: Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->handleLcdOffDisabledByCover(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$1100(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;Landroid/os/Bundle;)V

    goto/16 :goto_8a

    :pswitch_13
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    # invokes: Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->handleCoverVersionCheck()V
    invoke-static {v0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$1000(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)V

    goto/16 :goto_8a

    :pswitch_1a
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    # invokes: Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->handleRemoveLedNotification(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$900(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;Landroid/os/Bundle;)V

    goto :goto_8a

    :pswitch_24
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    # invokes: Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->handleAddLedNotification(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$800(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;Landroid/os/Bundle;)V

    goto :goto_8a

    :pswitch_2e
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_35

    move v1, v2

    nop

    :cond_35
    move v0, v1

    if-nez v0, :cond_8a

    iget-object v1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    # invokes: Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->handleCoverDetachedLocked()V
    invoke-static {v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$700(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)V

    goto :goto_8a

    :pswitch_3e
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    # invokes: Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->handleSendPowerKeyToCover()V
    invoke-static {v0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$000(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)V

    goto :goto_8a

    :pswitch_44
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->handleEventResponse(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$600(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;II)V

    goto :goto_8a

    :pswitch_4e
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->handlePollEventTouch(I)V
    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$500(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;I)V

    goto :goto_8a

    :pswitch_56
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    # invokes: Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->clearRetryCountDelayedMsg()V
    invoke-static {v0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$100(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)V

    :pswitch_5b
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    # invokes: Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->handleSendDataToNfcLedCover(I[B)V
    invoke-static {v0, v2, v3}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$200(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;I[B)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    # getter for: Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$300(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_8a

    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    # getter for: Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$300(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_8a

    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    # getter for: Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$400(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    :cond_8a
    :goto_8a
    return-void

    nop

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_56
        :pswitch_6
        :pswitch_4e
        :pswitch_44
        :pswitch_5b
        :pswitch_6
        :pswitch_3e
        :pswitch_2e
        :pswitch_24
        :pswitch_1a
        :pswitch_13
        :pswitch_8
    .end packed-switch
.end method
