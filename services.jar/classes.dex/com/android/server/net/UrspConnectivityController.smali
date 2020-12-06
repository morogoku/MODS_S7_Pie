.class public final Lcom/android/server/net/UrspConnectivityController;
.super Landroid/os/Handler;
.source "UrspConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/UrspConnectivityController$FocNetworkRequestCallback;,
        Lcom/android/server/net/UrspConnectivityController$NetworkRequestCallback;,
        Lcom/android/server/net/UrspConnectivityController$UrspConnHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final MSG_BASE:I = 0x2710

.field private static final MSG_RELEASE_DEFAULT_CONNECTION:I = 0x2712

.field private static final MSG_REQUEST_DEFAULT_CONNECTION:I = 0x2711

.field private static final TAG:Ljava/lang/String; = "UrspConnectivity"

.field private static final VDBG:Z = true


# instance fields
.field private mConnManager:Landroid/net/IConnectivityManager;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field public mFocNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mHandler:Landroid/os/Handler;

.field public mMdoNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mUrspConnListener:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/net/IUrspConnectionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/UrspConnectivityController;->mUrspConnListener:Landroid/os/RemoteCallbackList;

    const-string/jumbo v0, "start UrspConnectivityController"

    invoke-static {v0}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/net/UrspConnectivityController;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UrspConnectivity"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_2a

    new-instance v2, Lcom/android/server/net/UrspConnectivityController$UrspConnHandler;

    invoke-direct {v2, p0, v1}, Lcom/android/server/net/UrspConnectivityController$UrspConnHandler;-><init>(Lcom/android/server/net/UrspConnectivityController;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/net/UrspConnectivityController;->mHandler:Landroid/os/Handler;

    goto :goto_30

    :cond_2a
    const-string/jumbo v2, "handlerThread.getLooper() returned null"

    invoke-static {v2}, Lcom/android/server/net/UrspConnectivityController;->logn(Ljava/lang/String;)V

    :goto_30
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/net/UrspConnectivityController;->mMdoNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object v2, p0, Lcom/android/server/net/UrspConnectivityController;->mFocNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/UrspConnectivityController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspConnectivityController;->setRequestNetwork(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/net/UrspConnectivityController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspConnectivityController;->setStopNetwork(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/net/UrspConnectivityController;IILandroid/net/Network;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/UrspConnectivityController;->sendUrspConnBroadcast(IILandroid/net/Network;)V

    return-void
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/net/UrspConnectivityController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/net/UrspConnectivityController;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/UrspConnectivityController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/net/UrspConnectivityController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private getNetworkCapability(I)I
    .registers 3

    const/16 v0, 0xc

    packed-switch p1, :pswitch_data_a

    return v0

    :pswitch_6
    const/16 v0, 0x19

    return v0

    :pswitch_9
    return v0

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private getNetworkTransport(I)I
    .registers 3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_8

    return v0

    :pswitch_5
    return v0

    :pswitch_6
    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method protected static log(Ljava/lang/String;)V
    .registers 2

    const-string v0, "UrspConnectivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static logn(Ljava/lang/String;)V
    .registers 2

    const-string v0, "UrspConnectivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendUrspConnBroadcast(IILandroid/net/Network;)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/net/UrspConnectivityController;->mUrspConnListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " send Ursp Conn broadcast, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_37

    iget-object v2, p0, Lcom/android/server/net/UrspConnectivityController;->mUrspConnListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/IUrspConnectionListener;

    if-eqz v2, :cond_34

    :try_start_27
    invoke-interface {v2, p1, p2, p3}, Landroid/net/IUrspConnectionListener;->onDataConnectionStateChanged(IILandroid/net/Network;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_34

    :catch_2b
    move-exception v3

    const-string v4, "Ursp Conn broadcast exception"

    invoke-static {v4}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_34
    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_37
    iget-object v1, p0, Lcom/android/server/net/UrspConnectivityController;->mUrspConnListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private setRequestNetwork(I)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRequestNetwork - type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_5b

    iget-object v1, p0, Lcom/android/server/net/UrspConnectivityController;->mMdoNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v1, :cond_27

    const-string v0, "Mdo already registered."

    invoke-static {v0}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    goto/16 :goto_9b

    :cond_27
    invoke-direct {p0}, Lcom/android/server/net/UrspConnectivityController;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspConnectivityController;->getNetworkTransport(I)I

    move-result v2

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspConnectivityController;->getNetworkCapability(I)I

    move-result v3

    new-instance v4, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v4}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v4, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v4

    new-instance v5, Lcom/android/server/net/UrspConnectivityController$NetworkRequestCallback;

    invoke-direct {v5, p0, v0}, Lcom/android/server/net/UrspConnectivityController$NetworkRequestCallback;-><init>(Lcom/android/server/net/UrspConnectivityController;Lcom/android/server/net/UrspConnectivityController$1;)V

    iput-object v5, p0, Lcom/android/server/net/UrspConnectivityController;->mMdoNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    :try_start_4b
    iget-object v0, p0, Lcom/android/server/net/UrspConnectivityController;->mMdoNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v4, v0}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_50} :catch_51

    goto :goto_5a

    :catch_51
    move-exception v0

    const-string v5, "Mdo requestNetwork fail"

    invoke-static {v5}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5a
    goto :goto_9b

    :cond_5b
    const/4 v1, 0x1

    if-ne p1, v1, :cond_9b

    iget-object v1, p0, Lcom/android/server/net/UrspConnectivityController;->mFocNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v1, :cond_68

    const-string v0, "Foc already registered."

    invoke-static {v0}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    goto :goto_9b

    :cond_68
    invoke-direct {p0}, Lcom/android/server/net/UrspConnectivityController;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspConnectivityController;->getNetworkTransport(I)I

    move-result v2

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspConnectivityController;->getNetworkCapability(I)I

    move-result v3

    new-instance v4, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v4}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v4, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v4

    new-instance v5, Lcom/android/server/net/UrspConnectivityController$FocNetworkRequestCallback;

    invoke-direct {v5, p0, v0}, Lcom/android/server/net/UrspConnectivityController$FocNetworkRequestCallback;-><init>(Lcom/android/server/net/UrspConnectivityController;Lcom/android/server/net/UrspConnectivityController$1;)V

    iput-object v5, p0, Lcom/android/server/net/UrspConnectivityController;->mFocNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    :try_start_8c
    iget-object v0, p0, Lcom/android/server/net/UrspConnectivityController;->mFocNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v4, v0}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_91} :catch_92

    goto :goto_9b

    :catch_92
    move-exception v0

    const-string v5, "Foc requestNetwork fail"

    invoke-static {v5}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9b
    :goto_9b
    return-void
.end method

.method private setStopNetwork(I)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setStopNetwork - type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_3d

    iget-object v2, p0, Lcom/android/server/net/UrspConnectivityController;->mMdoNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v2, :cond_37

    invoke-direct {p0}, Lcom/android/server/net/UrspConnectivityController;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v2

    :try_start_25
    iget-object v3, p0, Lcom/android/server/net/UrspConnectivityController;->mMdoNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iput-object v1, p0, Lcom/android/server/net/UrspConnectivityController;->mMdoNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v0, v0, v1}, Lcom/android/server/net/UrspConnectivityController;->sendUrspConnBroadcast(IILandroid/net/Network;)V
    :try_end_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_2f} :catch_30

    goto :goto_36

    :catch_30
    move-exception v0

    const-string v1, "Unregister network callback exception"

    invoke-static {v1}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    :goto_36
    goto :goto_5f

    :cond_37
    const-string v0, "Mdo already unregistered."

    invoke-static {v0}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    goto :goto_5f

    :cond_3d
    const/4 v2, 0x1

    if-ne p1, v2, :cond_5f

    iget-object v3, p0, Lcom/android/server/net/UrspConnectivityController;->mFocNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v3, :cond_5a

    invoke-direct {p0}, Lcom/android/server/net/UrspConnectivityController;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v3

    :try_start_48
    iget-object v4, p0, Lcom/android/server/net/UrspConnectivityController;->mFocNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v3, v4}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iput-object v1, p0, Lcom/android/server/net/UrspConnectivityController;->mFocNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/net/UrspConnectivityController;->sendUrspConnBroadcast(IILandroid/net/Network;)V
    :try_end_52
    .catch Ljava/lang/IllegalArgumentException; {:try_start_48 .. :try_end_52} :catch_53

    goto :goto_59

    :catch_53
    move-exception v0

    const-string v1, "Unregister network callback exception"

    invoke-static {v1}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    :goto_59
    goto :goto_5f

    :cond_5a
    const-string v0, "Foc already unregistered."

    invoke-static {v0}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    :cond_5f
    :goto_5f
    return-void
.end method


# virtual methods
.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .registers 3

    const-string v0, "bindConnectivityManager Called"

    invoke-static {v0}, Lcom/android/server/net/UrspConnectivityController;->logn(Ljava/lang/String;)V

    const-string/jumbo v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/UrspConnectivityController;->mConnManager:Landroid/net/IConnectivityManager;

    return-void
.end method

.method public registerUrspConnListener(Landroid/net/IUrspConnectionListener;)V
    .registers 3

    const-string/jumbo v0, "register mUrspConnListener"

    invoke-static {v0}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/UrspConnectivityController;->mUrspConnListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public requestConnection(ZII)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requesetConnection - apply: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", networkType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    const/16 v0, 0x2712

    const/16 v1, 0x2711

    if-nez p2, :cond_41

    iget-object v2, p0, Lcom/android/server/net/UrspConnectivityController;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_35

    move v0, v1

    nop

    :cond_35
    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_55

    :cond_41
    const/4 v2, 0x1

    if-ne p2, v2, :cond_55

    iget-object v2, p0, Lcom/android/server/net/UrspConnectivityController;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_4a

    move v0, v1

    nop

    :cond_4a
    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_55
    :goto_55
    return-void
.end method

.method public unregisterUrspConnListener(Landroid/net/IUrspConnectionListener;)V
    .registers 3

    const-string/jumbo v0, "unregister mUrspConnListener"

    invoke-static {v0}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/UrspConnectivityController;->mUrspConnListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method
