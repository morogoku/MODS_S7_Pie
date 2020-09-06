.class Lcom/android/server/net/MdoNotification$MsgHandler;
.super Landroid/os/Handler;
.source "MdoNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/MdoNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MsgHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/MdoNotification;


# direct methods
.method constructor <init>(Lcom/android/server/net/MdoNotification;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/net/MdoNotification$MsgHandler;->this$0:Lcom/android/server/net/MdoNotification;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    const-string v0, "MdoNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    goto :goto_29

    :cond_1d
    const-string v0, "MdoNotification"

    const-string v1, "MSG_UPDATE_NOTIFICATION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/net/MdoNotification$MsgHandler;->this$0:Lcom/android/server/net/MdoNotification;

    # invokes: Lcom/android/server/net/MdoNotification;->update()V
    invoke-static {v0}, Lcom/android/server/net/MdoNotification;->access$300(Lcom/android/server/net/MdoNotification;)V

    :goto_29
    return-void
.end method
