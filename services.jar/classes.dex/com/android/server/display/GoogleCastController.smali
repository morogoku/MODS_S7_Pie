.class public final Lcom/android/server/display/GoogleCastController;
.super Ljava/lang/Object;
.source "GoogleCastController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/GoogleCastController$Listener;
    }
.end annotation


# static fields
.field private static final CONNECTED_STATE:I = 0x1

.field private static final DISCONNECTED_STATE:I = 0x0

.field private static final GOOGLE_CAST_ROUTE_TYPE:I = 0x7

.field private static final TAG:Ljava/lang/String; = "GoogleCastController"


# instance fields
.field private mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;

.field private mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

.field private final mContext:Landroid/content/Context;

.field private mControllerUtils:Lcom/android/server/display/ControllerUtils;

.field private mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/android/server/display/GoogleCastController$Listener;

.field private final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field private mRouter:Landroid/media/MediaRouter;

.field private final mRouterCallback:Landroid/media/MediaRouter$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/GoogleCastController$Listener;Lcom/android/server/display/PersistentDataStore;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/display/GoogleCastController$4;

    invoke-direct {v0, p0}, Lcom/android/server/display/GoogleCastController$4;-><init>(Lcom/android/server/display/GoogleCastController;)V

    iput-object v0, p0, Lcom/android/server/display/GoogleCastController;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    iput-object p1, p0, Lcom/android/server/display/GoogleCastController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/display/GoogleCastController;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/display/GoogleCastController;->mListener:Lcom/android/server/display/GoogleCastController$Listener;

    iput-object p4, p0, Lcom/android/server/display/GoogleCastController;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "media_router"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/server/display/GoogleCastController;->mRouter:Landroid/media/MediaRouter;

    new-instance v0, Lcom/android/server/display/ControllerUtils;

    iget-object v1, p0, Lcom/android/server/display/GoogleCastController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/display/ControllerUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/display/GoogleCastController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;

    new-instance v0, Landroid/hardware/display/SemDeviceInfo;

    invoke-direct {v0}, Landroid/hardware/display/SemDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/GoogleCastController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/GoogleCastController;)Lcom/android/server/display/GoogleCastController$Listener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mListener:Lcom/android/server/display/GoogleCastController$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/GoogleCastController;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter$RouteInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/display/GoogleCastController;Landroid/media/MediaRouter$RouteInfo;)Landroid/media/MediaRouter$RouteInfo;
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/GoogleCastController;->mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/display/GoogleCastController;)Lcom/android/server/display/ControllerUtils;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/GoogleCastController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/GoogleCastController;->broadcastGoogleCastState(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/GoogleCastController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/GoogleCastController;->handleConnectionStateChanged(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/display/GoogleCastController;)Landroid/hardware/display/SemDeviceInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/display/GoogleCastController;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/GoogleCastController;->setLastConnectedGoogleCast(Landroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mRouter:Landroid/media/MediaRouter;

    return-object v0
.end method

.method private broadcastGoogleCastState(I)V
    .registers 5

    const-string v0, "GoogleCastController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastGCastState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.GOOGLE_CAST_MIRRORING_CONNECTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/display/GoogleCastController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private handleConnectionStateChanged(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/GoogleCastController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/GoogleCastController$1;-><init>(Lcom/android/server/display/GoogleCastController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendRemoteDisplayStateChangeEvent(II)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/GoogleCastController$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/GoogleCastController$2;-><init>(Lcom/android/server/display/GoogleCastController;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendWifiDisplayPlayStateChangedEvent(I)V
    .registers 5

    const-string v0, "GoogleCastController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendWifiDisplayPlayStateChangedEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/GoogleCastController$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/GoogleCastController$3;-><init>(Lcom/android/server/display/GoogleCastController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setLastConnectedGoogleCast(Landroid/media/MediaRouter$RouteInfo;)V
    .registers 4

    const-string v0, "GoogleCastController"

    const-string/jumbo v1, "setLastConnectedGoogleCast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/PersistentDataStore;->setLastConnectedGoogleCast(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    :cond_1d
    return-void
.end method


# virtual methods
.method public getActiveDeviceInfo()Landroid/hardware/display/SemDeviceInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    return-object v0
.end method

.method public getLastConnectedGoogleCast(Landroid/hardware/display/SemDeviceInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->getLastConnectedGoogleCast()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {p1, v0}, Landroid/hardware/display/SemDeviceInfo;->setKey(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/hardware/display/SemDeviceInfo;->setConnectType(I)V

    :cond_13
    return-void
.end method

.method public isConnected()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public requestDeviceConnect(Landroid/hardware/display/SemDeviceInfo;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/display/GoogleCastController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/server/display/GoogleCastController;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    return-void
.end method

.method public requestDeviceDisconnect()V
    .registers 3

    new-instance v0, Landroid/hardware/display/SemDeviceInfo;

    invoke-direct {v0}, Landroid/hardware/display/SemDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/GoogleCastController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/server/display/GoogleCastController;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    return-void
.end method

.method public updateDeviceState(Landroid/hardware/display/SemDeviceInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getRemoteDisplayState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDeviceInfo;->setRemoteDisplayState(I)V

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getRemoteDisplayState()I

    move-result v0

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/GoogleCastController;->sendRemoteDisplayStateChangeEvent(II)V

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getRemoteDisplayState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/GoogleCastController;->sendWifiDisplayPlayStateChangedEvent(I)V

    return-void
.end method
