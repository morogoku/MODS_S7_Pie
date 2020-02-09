.class public Lcom/android/server/net/MdoNotification;
.super Ljava/lang/Object;
.source "MdoNotification.java"

# interfaces
.implements Lcom/android/server/net/IUrspNotification;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/MdoNotification$MsgHandler;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_NOTIFICATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MdoNotification"


# instance fields
.field private mBtListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mEthernetListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mHandler:Landroid/os/Handler;

.field private mIsBtConnected:Z

.field private mIsEthernetConnected:Z

.field private mIsNotiShown:Z

.field private mIsWifiConnected:Z

.field private mUm:Landroid/net/IUrspManager;

.field private mWifiListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/IUrspManager;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/MdoNotification;->mIsNotiShown:Z

    iput-boolean v0, p0, Lcom/android/server/net/MdoNotification;->mIsWifiConnected:Z

    iput-boolean v0, p0, Lcom/android/server/net/MdoNotification;->mIsEthernetConnected:Z

    iput-boolean v0, p0, Lcom/android/server/net/MdoNotification;->mIsBtConnected:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/net/MdoNotification;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/net/MdoNotification$1;

    invoke-direct {v0, p0}, Lcom/android/server/net/MdoNotification$1;-><init>(Lcom/android/server/net/MdoNotification;)V

    iput-object v0, p0, Lcom/android/server/net/MdoNotification;->mWifiListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    new-instance v0, Lcom/android/server/net/MdoNotification$2;

    invoke-direct {v0, p0}, Lcom/android/server/net/MdoNotification$2;-><init>(Lcom/android/server/net/MdoNotification;)V

    iput-object v0, p0, Lcom/android/server/net/MdoNotification;->mEthernetListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    new-instance v0, Lcom/android/server/net/MdoNotification$3;

    invoke-direct {v0, p0}, Lcom/android/server/net/MdoNotification$3;-><init>(Lcom/android/server/net/MdoNotification;)V

    iput-object v0, p0, Lcom/android/server/net/MdoNotification;->mBtListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object p1, p0, Lcom/android/server/net/MdoNotification;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/net/MdoNotification;->mUm:Landroid/net/IUrspManager;

    const-string v0, "MdoNotification"

    const-string v1, "create MdoNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$002(Lcom/android/server/net/MdoNotification;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/net/MdoNotification;->mIsWifiConnected:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/net/MdoNotification;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/net/MdoNotification;->mIsEthernetConnected:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/net/MdoNotification;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/net/MdoNotification;->mIsBtConnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/net/MdoNotification;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/net/MdoNotification;->update()V

    return-void
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/net/MdoNotification;->mConnMgr:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/net/MdoNotification;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/MdoNotification;->mConnMgr:Landroid/net/ConnectivityManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/net/MdoNotification;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private update()V
    .registers 20

    move-object/from16 v1, p0

    const/4 v2, 0x0

    move v3, v2

    :try_start_4
    iget-object v0, v1, Lcom/android/server/net/MdoNotification;->mUm:Landroid/net/IUrspManager;

    invoke-interface {v0, v2}, Landroid/net/IUrspManager;->getAllUrspRule(I)[I

    move-result-object v0

    array-length v0, v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move v3, v0

    goto :goto_e

    :catch_d
    move-exception v0

    :goto_e
    const-string v0, "MdoNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update() count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/net/MdoNotification;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "notification"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/NotificationManager;

    if-nez v4, :cond_3c

    const-string v0, "MdoNotification"

    const-string/jumbo v2, "update() notificationManager is null."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3c
    const v0, 0x1040519

    move v5, v0

    :try_start_40
    const-string v6, "MdoNotification"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update() netId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/net/MdoNotification;->mUm:Landroid/net/IUrspManager;

    invoke-interface {v8, v2}, Landroid/net/IUrspManager;->getUrspNetId(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mIsWifiConnected="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v1, Lcom/android/server/net/MdoNotification;->mIsWifiConnected:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v1, Lcom/android/server/net/MdoNotification;->mUm:Landroid/net/IUrspManager;

    invoke-interface {v6, v2}, Landroid/net/IUrspManager;->getUrspNetId(I)I

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_135

    iget-boolean v6, v1, Lcom/android/server/net/MdoNotification;->mIsWifiConnected:Z

    if-nez v6, :cond_7c

    iget-boolean v6, v1, Lcom/android/server/net/MdoNotification;->mIsEthernetConnected:Z

    if-nez v6, :cond_7c

    iget-boolean v6, v1, Lcom/android/server/net/MdoNotification;->mIsBtConnected:Z

    if-eqz v6, :cond_135

    :cond_7c
    iget-object v6, v1, Lcom/android/server/net/MdoNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x1150016

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v2

    invoke-virtual {v6, v10, v3, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v10, 0x1150017

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v2

    invoke-virtual {v6, v10, v3, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string v12, "com.samsung.android.intent.action.MOBILE_DATA_ONLY"

    invoke-virtual {v10, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v12, 0x10008000

    invoke-virtual {v10, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v12, v1, Lcom/android/server/net/MdoNotification;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget-object v17, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v14, v10

    invoke-static/range {v12 .. v17}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v12

    new-instance v13, Landroid/app/Notification$Builder;

    iget-object v14, v1, Lcom/android/server/net/MdoNotification;->mContext:Landroid/content/Context;

    sget-object v15, Lcom/android/internal/notification/SystemNotificationChannels;->MDO:Ljava/lang/String;

    invoke-direct {v13, v14, v15}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v14, 0x1080565

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v14
    :try_end_e6
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_e6} :catch_148

    const-wide/16 v0, 0x0

    :try_start_e8
    invoke-virtual {v14, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v1, v9}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    :try_end_118
    .catch Landroid/os/RemoteException; {:try_start_e8 .. :try_end_118} :catch_131

    move-object/from16 v1, p0

    :try_start_11a
    iput-boolean v11, v1, Lcom/android/server/net/MdoNotification;->mIsNotiShown:Z

    invoke-virtual {v13}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v11, 0x1040519

    invoke-virtual {v4, v7, v11, v0, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    const-string v0, "MdoNotification"

    const-string/jumbo v2, "update() notify"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_147

    :catch_131
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_149

    :cond_135
    iput-boolean v2, v1, Lcom/android/server/net/MdoNotification;->mIsNotiShown:Z

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v2, 0x1040519

    invoke-virtual {v4, v7, v2, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    const-string v0, "MdoNotification"

    const-string/jumbo v2, "update() cancel"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_147
    .catch Landroid/os/RemoteException; {:try_start_11a .. :try_end_147} :catch_148

    :goto_147
    goto :goto_149

    :catch_148
    move-exception v0

    :goto_149
    return-void
.end method


# virtual methods
.method public init()V
    .registers 5

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MdoNotification"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_18

    new-instance v2, Lcom/android/server/net/MdoNotification$MsgHandler;

    invoke-direct {v2, p0, v1}, Lcom/android/server/net/MdoNotification$MsgHandler;-><init>(Lcom/android/server/net/MdoNotification;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/net/MdoNotification;->mHandler:Landroid/os/Handler;

    goto :goto_20

    :cond_18
    const-string v2, "MdoNotification"

    const-string/jumbo v3, "handlerThread.getLooper() returned null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20
    const-string v2, "MdoNotification"

    const-string/jumbo v3, "init MdoNotification"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startNotification()V
    .registers 5

    const-string v0, "MdoNotification"

    const-string/jumbo v1, "startNotification()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/net/MdoNotification;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/net/MdoNotification;->mWifiListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    invoke-direct {p0}, Lcom/android/server/net/MdoNotification;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/net/MdoNotification;->mEthernetListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    invoke-direct {p0}, Lcom/android/server/net/MdoNotification;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/net/MdoNotification;->mBtListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    invoke-virtual {p0}, Lcom/android/server/net/MdoNotification;->updateNotification()V

    return-void
.end method

.method public stopNotification()V
    .registers 6

    const-string v0, "MdoNotification"

    const-string/jumbo v1, "stopNotification()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/net/MdoNotification;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_1e

    const-string v1, "MdoNotification"

    const-string/jumbo v2, "updateNotification() notificationManager is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    iget-boolean v1, p0, Lcom/android/server/net/MdoNotification;->mIsNotiShown:Z

    if-eqz v1, :cond_39

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/net/MdoNotification;->mIsNotiShown:Z

    const v1, 0x1040519

    const/4 v2, 0x0

    const v3, 0x1040519

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    const-string v2, "MdoNotification"

    const-string/jumbo v3, "stopNotification() cancel"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    invoke-direct {p0}, Lcom/android/server/net/MdoNotification;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/net/MdoNotification;->mWifiListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    invoke-direct {p0}, Lcom/android/server/net/MdoNotification;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/net/MdoNotification;->mEthernetListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    invoke-direct {p0}, Lcom/android/server/net/MdoNotification;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/net/MdoNotification;->mBtListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public updateNotification()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/net/MdoNotification;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/net/MdoNotification;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_e
    return-void
.end method
