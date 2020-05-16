.class Lcom/android/server/net/FocCore$NetworkRequestInfo;
.super Ljava/lang/Object;
.source "FocCore.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/FocCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkRequestInfo"
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field final mMessenger:Landroid/os/Messenger;

.field final mType:I

.field final synthetic this$0:Lcom/android/server/net/FocCore;


# direct methods
.method constructor <init>(Lcom/android/server/net/FocCore;ILandroid/os/Messenger;Landroid/os/IBinder;)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/net/FocCore$NetworkRequestInfo;->this$0:Lcom/android/server/net/FocCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/net/FocCore$NetworkRequestInfo;->mType:I

    iput-object p4, p0, Lcom/android/server/net/FocCore$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/net/FocCore$NetworkRequestInfo;->mMessenger:Landroid/os/Messenger;

    :try_start_b
    iget-object p1, p0, Lcom/android/server/net/FocCore$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception p1

    invoke-virtual {p0}, Lcom/android/server/net/FocCore$NetworkRequestInfo;->binderDied()V

    :goto_16
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "binderDied("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/net/FocCore$NetworkRequestInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/net/FocCore$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/FocCore;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/FocCore$NetworkRequestInfo;->this$0:Lcom/android/server/net/FocCore;

    iget-object v0, v0, Lcom/android/server/net/FocCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getUrspConnectivityController()Lcom/android/server/net/UrspConnectivityController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/net/UrspConnectivityController;->requestConnection(ZII)V

    iget-object v0, p0, Lcom/android/server/net/FocCore$NetworkRequestInfo;->this$0:Lcom/android/server/net/FocCore;

    iget-object v0, v0, Lcom/android/server/net/FocCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getUrspConnectivityController()Lcom/android/server/net/UrspConnectivityController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/net/FocCore$NetworkRequestInfo;->this$0:Lcom/android/server/net/FocCore;

    # getter for: Lcom/android/server/net/FocCore;->sUrspConnListener:Landroid/net/IUrspConnectionListener;
    invoke-static {v2}, Lcom/android/server/net/FocCore;->access$000(Lcom/android/server/net/FocCore;)Landroid/net/IUrspConnectionListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/net/UrspConnectivityController;->unregisterUrspConnListener(Landroid/net/IUrspConnectionListener;)V

    iget-object v0, p0, Lcom/android/server/net/FocCore$NetworkRequestInfo;->this$0:Lcom/android/server/net/FocCore;

    # setter for: Lcom/android/server/net/FocCore;->mFocPduRequest:Z
    invoke-static {v0, v1}, Lcom/android/server/net/FocCore;->access$102(Lcom/android/server/net/FocCore;Z)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/net/FocCore$NetworkRequestInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unlinkDeathRecipient()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/net/FocCore$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/net/FocCore$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_a
    return-void
.end method
