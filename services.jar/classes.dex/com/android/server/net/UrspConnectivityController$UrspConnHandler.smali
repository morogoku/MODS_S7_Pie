.class Lcom/android/server/net/UrspConnectivityController$UrspConnHandler;
.super Landroid/os/Handler;
.source "UrspConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/UrspConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UrspConnHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/UrspConnectivityController;


# direct methods
.method constructor <init>(Lcom/android/server/net/UrspConnectivityController;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/net/UrspConnectivityController$UrspConnHandler;->this$0:Lcom/android/server/net/UrspConnectivityController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_40

    const-string v0, "default case"

    invoke-static {v0}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    goto :goto_3e

    :pswitch_20
    const-string v0, "MSG_RELEASE_DEFAULT_CONNECTION"

    invoke-static {v0}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/android/server/net/UrspConnectivityController$UrspConnHandler;->this$0:Lcom/android/server/net/UrspConnectivityController;

    # invokes: Lcom/android/server/net/UrspConnectivityController;->setStopNetwork(I)V
    invoke-static {v2, v0}, Lcom/android/server/net/UrspConnectivityController;->access$100(Lcom/android/server/net/UrspConnectivityController;I)V

    goto :goto_3e

    :pswitch_2f
    const-string v0, "MSG_REQUEST_DEFAULT_CONNECTION"

    invoke-static {v0}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/android/server/net/UrspConnectivityController$UrspConnHandler;->this$0:Lcom/android/server/net/UrspConnectivityController;

    # invokes: Lcom/android/server/net/UrspConnectivityController;->setRequestNetwork(I)V
    invoke-static {v2, v0}, Lcom/android/server/net/UrspConnectivityController;->access$000(Lcom/android/server/net/UrspConnectivityController;I)V

    nop

    :goto_3e
    return-void

    nop

    :pswitch_data_40
    .packed-switch 0x2711
        :pswitch_2f
        :pswitch_20
    .end packed-switch
.end method
