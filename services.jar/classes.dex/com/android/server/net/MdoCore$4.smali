.class Lcom/android/server/net/MdoCore$4;
.super Landroid/content/BroadcastReceiver;
.source "MdoCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/MdoCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/MdoCore;


# direct methods
.method constructor <init>(Lcom/android/server/net/MdoCore;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/net/MdoCore$4;->this$0:Lcom/android/server/net/MdoCore;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/net/MdoCore$4;->this$0:Lcom/android/server/net/MdoCore;

    # getter for: Lcom/android/server/net/MdoCore;->mCurrentUserId:I
    invoke-static {v3}, Lcom/android/server/net/MdoCore;->access$500(Lcom/android/server/net/MdoCore;)I

    move-result v3

    if-ne v1, v3, :cond_24

    const-string v2, "UrspService_MDO"

    const-string/jumbo v3, "userid is not changed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_24
    const-string v3, "UrspService_MDO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_USER_SWITCHED old="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/net/MdoCore$4;->this$0:Lcom/android/server/net/MdoCore;

    # getter for: Lcom/android/server/net/MdoCore;->mCurrentUserId:I
    invoke-static {v5}, Lcom/android/server/net/MdoCore;->access$500(Lcom/android/server/net/MdoCore;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", new="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/net/MdoCore$4;->this$0:Lcom/android/server/net/MdoCore;

    # setter for: Lcom/android/server/net/MdoCore;->mCurrentUserId:I
    invoke-static {v3, v1}, Lcom/android/server/net/MdoCore;->access$502(Lcom/android/server/net/MdoCore;I)I

    iget-object v3, p0, Lcom/android/server/net/MdoCore$4;->this$0:Lcom/android/server/net/MdoCore;

    # getter for: Lcom/android/server/net/MdoCore;->mMdoState:Z
    invoke-static {v3}, Lcom/android/server/net/MdoCore;->access$000(Lcom/android/server/net/MdoCore;)Z

    move-result v3

    if-nez v3, :cond_5d

    const-string v2, "UrspService_MDO"

    const-string v3, "MDO is disabled."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5d
    if-nez v1, :cond_79

    iget-object v3, p0, Lcom/android/server/net/MdoCore$4;->this$0:Lcom/android/server/net/MdoCore;

    iget-object v3, v3, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v3}, Lcom/android/server/net/UrspService;->getUrspConnectivityController()Lcom/android/server/net/UrspConnectivityController;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/server/net/UrspConnectivityController;->requestConnection(ZII)V

    iget-object v2, p0, Lcom/android/server/net/MdoCore$4;->this$0:Lcom/android/server/net/MdoCore;

    # getter for: Lcom/android/server/net/MdoCore;->mMdoNotification:Lcom/android/server/net/MdoNotification;
    invoke-static {v2}, Lcom/android/server/net/MdoCore;->access$200(Lcom/android/server/net/MdoCore;)Lcom/android/server/net/MdoNotification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/net/MdoNotification;->startNotification()V

    goto :goto_91

    :cond_79
    iget-object v3, p0, Lcom/android/server/net/MdoCore$4;->this$0:Lcom/android/server/net/MdoCore;

    iget-object v3, v3, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v3}, Lcom/android/server/net/UrspService;->getUrspConnectivityController()Lcom/android/server/net/UrspConnectivityController;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v2, v2, v4}, Lcom/android/server/net/UrspConnectivityController;->requestConnection(ZII)V

    iget-object v2, p0, Lcom/android/server/net/MdoCore$4;->this$0:Lcom/android/server/net/MdoCore;

    # getter for: Lcom/android/server/net/MdoCore;->mMdoNotification:Lcom/android/server/net/MdoNotification;
    invoke-static {v2}, Lcom/android/server/net/MdoCore;->access$200(Lcom/android/server/net/MdoCore;)Lcom/android/server/net/MdoNotification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/net/MdoNotification;->stopNotification()V

    :cond_91
    :goto_91
    return-void
.end method
