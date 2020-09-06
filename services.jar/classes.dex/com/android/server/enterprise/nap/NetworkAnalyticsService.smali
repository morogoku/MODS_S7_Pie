.class public Lcom/android/server/enterprise/nap/NetworkAnalyticsService;
.super Lcom/samsung/android/knox/net/nap/INetworkAnalytics$Stub;
.source "NetworkAnalyticsService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;,
        Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;,
        Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;,
        Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;
    }
.end annotation


# static fields
.field private static final BIND_AVAILABLE_PROCEED:I = 0x0

.field private static final BIND_NOT_OK:I = -0x1

.field private static final BIND_OK:I = 0x1

.field public static final DBG:Z

.field private static final NPA_VERSION_STRING:Ljava/lang/String; = "3.3_0"

.field private static final SERVICE_CONNECTION_TIMEOUT:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "NetworkAnalytics:Service"

.field private static mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

.field private static mDeviceUniqueId:Ljava/lang/String;


# instance fields
.field private mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

.field private mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

.field private mContext:Landroid/content/Context;

.field private mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

.field private mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceUniqueId:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/knox/net/nap/INetworkAnalytics$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/net/nap/INetworkAnalytics$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    const-string v0, "NetworkAnalytics:Service"

    const-string v1, "Adding network analytics service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    return-void
.end method

.method private _activateNAPClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)Z
    .registers 14

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iget-object v1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v1, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->getBinderForPackage(Ljava/lang/String;)Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget-object v3, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v2

    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getJsonString()Ljava/lang/String;

    move-result-object v1

    :cond_1d
    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v3, :cond_37

    const-string v3, "NetworkAnalytics:Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_activateNAPClient: activation:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    const/4 v3, 0x0

    if-eqz v0, :cond_d4

    if-nez v1, :cond_3e

    goto/16 :goto_d4

    :cond_3e
    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v5, p2, :cond_83

    :try_start_42
    invoke-direct {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getDeviceUniqueKey()Ljava/lang/String;

    move-result-object v6

    sget-boolean v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v7, :cond_60

    const-string v7, "NetworkAnalytics:Service"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_activateNAPClient: Device unique Key = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    invoke-interface {v0, v1, p3, v6}, Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;->onActivateProfile(Ljava/lang/String;ILjava/lang/String;)I

    move-result v7

    move v4, v7

    sget-boolean v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v7, :cond_80

    const-string v7, "NetworkAnalytics:Service"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onActivateProfile: returnValue = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_80
    goto :goto_a5

    :catch_81
    move-exception v6

    goto :goto_c7

    :cond_83
    iget-object v6, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-interface {v0, v6, p3}, Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;->onDeactivateProfile(Ljava/lang/String;I)I

    move-result v6

    move v4, v6

    sget-boolean v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v6, :cond_a5

    const-string v6, "NetworkAnalytics:Service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onDeactivateProfile: returnValue = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a5
    :goto_a5
    sget-boolean v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v6, :cond_bf

    const-string v6, "NetworkAnalytics:Service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_activateNAPClient: onActivate from client is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bf
    iget-object v6, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->callback:Lcom/samsung/android/knox/net/nap/IStatusCallback;

    if-eqz v6, :cond_c6

    invoke-interface {v6, v4}, Lcom/samsung/android/knox/net/nap/IStatusCallback;->onCallComplete(I)V
    :try_end_c6
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_c6} :catch_81

    :cond_c6
    goto :goto_cf

    :goto_c7
    nop

    const-string v7, "NetworkAnalytics:Service"

    const-string v8, "_activateNAPClient: Remote Exception"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_cf
    if-nez v4, :cond_d3

    move v3, v5

    nop

    :cond_d3
    return v3

    :cond_d4
    :goto_d4
    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_f6

    const-string v4, "NetworkAnalytics:Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_activateNAPClient: Null values found. INetworkAnalyticsService = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " or json = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f6
    return v3
.end method

.method private _bindAndActivate(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)V
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const/4 v4, 0x1

    move/from16 v5, p3

    if-ne v4, v5, :cond_2a8

    :try_start_b
    sget-boolean v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v6, :cond_16

    const-string v6, "NetworkAnalytics:Service"

    const-string v7, "_bindAndActivate:PROFILE_ACTIVATED: Doing bind and activate."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    new-instance v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    invoke-direct {v6, v1, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;)V

    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v7, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v7, v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-direct {v1, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindToClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;)I

    move-result v10

    move v9, v10

    iget-object v10, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->callback:Lcom/samsung/android/knox/net/nap/IStatusCallback;

    const/4 v11, -0x1

    const/16 v12, -0xb

    if-ne v11, v9, :cond_42

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_3c

    const-string v0, "NetworkAnalytics:Service"

    const-string v4, "_bindAndActivate:PROFILE_ACTIVATED: _bindToClient did not succeed"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    if-eqz v10, :cond_41

    invoke-interface {v10, v12}, Lcom/samsung/android/knox/net/nap/IStatusCallback;->onCallComplete(I)V

    :cond_41
    return-void

    :cond_42
    if-nez v9, :cond_7b

    iget-object v11, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iget-object v13, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v14, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v13, v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-static {v14, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->isProfilePresentForPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5e

    invoke-direct {v1, v2, v4, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_activateNAPClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)Z

    return-void

    :cond_5e
    sget-boolean v11, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v11, :cond_69

    const-string v11, "NetworkAnalytics:Service"

    const-string v13, "_bindAndActivate:PROFILE_ACTIVATED: Honoring previous bind."

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    const/4 v6, 0x0

    iget-object v11, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iget-object v13, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v14, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v13, v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->getServiceConnectionForPackage(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    move-result-object v11

    move-object v6, v11

    const/4 v8, 0x1

    goto :goto_86

    :cond_7b
    iget-object v11, v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v13, 0xbb8

    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v13, v14, v15}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v11

    move v8, v11

    :goto_86
    const/4 v11, 0x0

    iput-object v11, v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v8, :cond_266

    if-ltz v9, :cond_266

    sget-boolean v11, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v11, :cond_ab

    const-string v11, "NetworkAnalytics:Service"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_bindAndActivate:PROFILE_ACTIVATED: _bindToClient & countdown: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ab
    invoke-direct {v1, v2, v4, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_activateNAPClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)Z

    move-result v11

    move v7, v11

    if-nez v7, :cond_b3

    return-void

    :cond_b3
    const-string v11, "NetworkAnalytics:Service"

    const-string v13, "_bindAndActivate:PROFILE_ACTIVATED: Adding to data delivery"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v11, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    if-nez v11, :cond_c7

    iget-object v11, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget-object v13, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllProfilesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    goto :goto_cf

    :cond_c7
    iget-object v11, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget v13, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-virtual {v11, v13}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllProfilesForUser(I)Ljava/util/List;

    move-result-object v11

    :goto_cf
    if-nez v11, :cond_d9

    const-string v0, "NetworkAnalytics:Service"

    const-string v4, "_bindAndActivate: no profile found for user. Not adding profile to recipient list on NetworkAnalyticsDataDelivery"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d9
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_dd
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_13c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    invoke-virtual {v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v15

    iget-object v12, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_137

    invoke-virtual {v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v12

    iget v15, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    if-ne v12, v15, :cond_137

    iget-object v12, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v0

    invoke-virtual {v12, v15, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isProfileActivatedForUser(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_137

    invoke-virtual {v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v0

    new-instance v12, Lcom/android/server/enterprise/nap/DataDeliveryHelper;

    invoke-direct {v12, v14, v6, v0}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;I)V

    const-string v15, "NetworkAnalytics:Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v0

    const-string v0, "Adding the profile to the delivery list _bindAndActivate "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->addNAPDataRecipient(Lcom/android/server/enterprise/nap/DataDeliveryHelper;)V

    :cond_137
    nop

    const/4 v4, 0x1

    const/16 v12, -0xb

    goto :goto_dd

    :cond_13c
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25e

    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_3:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v12

    if-gez v12, :cond_174

    iget-object v12, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->openCharDevice(I)I

    move-result v12

    if-gez v12, :cond_173

    const-string v13, "NetworkAnalytics:Service"

    const-string v14, "_bindAndActivate:PROFILE_ACTIVATED:Opening of character device failed."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_173
    goto :goto_185

    :cond_174
    iget-object v12, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->openCharDevice(I)I

    move-result v12

    if-gez v12, :cond_185

    const-string v13, "NetworkAnalytics:Service"

    const-string v14, "_bindAndActivate:PROFILE_ACTIVATED:Opening of character device failed."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_185
    :goto_185
    nop

    iget-object v0, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iget-object v4, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v12, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v4, v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v12, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-static {v12, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v4, v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->addProfileForPackage(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget-object v4, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v0

    if-nez v0, :cond_1ab

    const-string v4, "NetworkAnalytics:Service"

    const-string v12, "_bindAndActivate: no profile found. Not begining to record data"

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1ab
    iget-object v4, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->checkNcmVersionMismatch()I

    move-result v4

    if-gez v4, :cond_1fb

    const/4 v12, 0x0

    invoke-direct {v1, v0, v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->activateProfile(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)I

    move-result v13

    move v4, v13

    if-gez v4, :cond_1d9

    const-string v12, "NetworkAnalytics:Service"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_bindAndActivate: version mismatch deactivation failed for profile : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " but data collection will not happen."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1d9
    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-direct {v1, v13, v14, v12, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    const-string v12, "NetworkAnalytics:Service"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_bindAndActivate:PROFILE_ACTIVATED:Version mismatch between user and kernel space. Deactivated this profile : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1fb
    const/4 v13, 0x1

    iget-object v12, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getActiveStateForName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    move-result-object v12

    if-nez v12, :cond_218

    const-string v13, "NetworkAnalytics:Service"

    const-string v14, "_bindAndActivate: no active profile found. Not begining to record data"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_218
    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getActivationFlowType()I

    move-result v14

    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getActivationIntervalValue()I

    move-result v15

    if-nez v14, :cond_254

    const/16 v13, 0x3c

    if-lt v15, v13, :cond_254

    const/16 v13, 0x3840

    if-gt v15, v13, :cond_254

    iget-object v13, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-virtual {v13, v15}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setIntervalValueForFlow(I)I

    move-result v13

    if-gez v13, :cond_254

    move-object/from16 v17, v0

    const-string v0, "NetworkAnalytics:Service"

    move/from16 v18, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_bindAndActivate: set interval value and deactivation failed for profile : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " but data collection will not happen."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_254
    move-object/from16 v17, v0

    move/from16 v18, v4

    iget-object v0, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->beginDataRecording(I)V

    goto :goto_266

    :cond_25e
    const-string v0, "NetworkAnalytics:Service"

    const-string v4, "_bindAndActivate:PROFILE_ACTIVATED:Opening of character device failed."

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_266
    :goto_266
    if-eqz v10, :cond_295

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_289

    const-string v0, "NetworkAnalytics:Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_bindAndActivate: callback return = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz v9, :cond_27e

    if-eqz v7, :cond_27e

    const/4 v5, 0x1

    goto :goto_27f

    :cond_27e
    const/4 v5, 0x0

    :goto_27f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_289
    if-ltz v9, :cond_28f

    if-eqz v7, :cond_28f

    const/4 v0, 0x0

    goto :goto_292

    :cond_28f
    nop

    const/16 v0, -0xb

    :goto_292
    invoke-interface {v10, v0}, Lcom/samsung/android/knox/net/nap/IStatusCallback;->onCallComplete(I)V

    :cond_295
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_2a0

    const-string v0, "NetworkAnalytics:Service"

    const-string v4, "_bindAndActivate:PROFILE_ACTIVATED: bind and activate complete."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a0
    goto/16 :goto_345

    :catch_2a2
    move-exception v0

    goto/16 :goto_334

    :catch_2a5
    move-exception v0

    goto/16 :goto_33d

    :cond_2a8
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_2b3

    const-string v0, "NetworkAnalytics:Service"

    const-string v4, "_bindAndActivate:PROFILE_NOT_ACTIVATED: Doing deactivate and unbind."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b3
    const/4 v0, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_activateNAPClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)Z

    move-result v0

    if-nez v0, :cond_2c5

    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_2c5

    const-string v4, "NetworkAnalytics:Service"

    const-string v5, "_bindAndActivate:PROFILE_NOT_ACTIVATED: deactivate did not succeed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c5
    iget-object v4, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iget-object v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v5, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-static {v6, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->removeProfileForPackage(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    iget-object v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->removeNAPDataRecipient(Ljava/lang/String;I)V

    iget-object v4, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iget-object v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v5, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->isProfilePresentForPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2fb

    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_2fa

    const-string v4, "NetworkAnalytics:Service"

    const-string v5, "_bindAndActivate:PROFILE_NOT_ACTIVATED: Wont unbind."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2fa
    return-void

    :cond_2fb
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_unbindClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;)V

    iget-object v4, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->getActiveProfilesNumber()I

    move-result v4

    if-gtz v4, :cond_319

    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_311

    const-string v4, "NetworkAnalytics:Service"

    const-string v5, "_bindAndActivate:PROFILE_NOT_ACTIVATED: Will stop data recording."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_311
    iget-object v4, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->endDataRecording()V

    invoke-static {}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->clearHashCacheEntire()V

    :cond_319
    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_345

    const-string v4, "NetworkAnalytics:Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_bindAndActivate:PROFILE_NOT_ACTIVATED: deactivate complete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_333
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_333} :catch_2a5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_333} :catch_2a2

    goto :goto_345

    :goto_334
    nop

    const-string v4, "NetworkAnalytics:Service"

    const-string v5, "_bindAndActivate Exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_346

    :goto_33d
    nop

    const-string v4, "NetworkAnalytics:Service"

    const-string v5, "_bindAndActivate RemoteException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_345
    :goto_345
    nop

    :goto_346
    return-void
.end method

.method private _bindAndActivate(Ljava/lang/String;Z)V
    .registers 9

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_1a

    const-string v0, "NetworkAnalytics:Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_bindAndActivate:ACTION_INITIALIZE_NAP: adding profile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getActiveStateForName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    move-result-object v0

    if-nez v0, :cond_3d

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_3c

    const-string v1, "NetworkAnalytics:Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_bindAndActivate: ERROR NAPActivationProfile is null for profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    return-void

    :cond_3d
    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getActivationState()I

    move-result v1

    if-nez v1, :cond_4f

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_4e

    const-string v1, "NetworkAnalytics:Service"

    const-string v2, "_bindAndActivate: ERROR NAPActivationProfile is not activated. No need to bind."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    return-void

    :cond_4f
    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v1

    if-nez v1, :cond_70

    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v2, :cond_6f

    const-string v2, "NetworkAnalytics:Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_bindAndActivate: ERROR NAPConfigProfile is null for profile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6f
    return-void

    :cond_70
    if-eqz p2, :cond_a3

    invoke-virtual {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->validateNAPClient(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_a3

    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v3, :cond_a2

    const-string v3, "NetworkAnalytics:Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_bindAndActivate: ERROR Valid package has not been installed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a2
    return-void

    :cond_a3
    new-instance v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    invoke-static {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getVendorNameFromTransformedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v3

    iput v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->callback:Lcom/samsung/android/knox/net/nap/IStatusCallback;

    invoke-static {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getCidFromTransformedName(Ljava/lang/String;)I

    move-result v3

    if-eqz p2, :cond_c5

    const/4 v4, 0x1

    goto :goto_c6

    :cond_c5
    const/4 v4, 0x0

    :goto_c6
    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivate(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)V

    return-void
.end method

.method private _bindAndActivateOnReboot()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getSetActivatedProfiles()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_44

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_44

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_2c

    const-string v1, "NetworkAnalytics:Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_bindAndActivateOnReboot:ACTION_INITIALIZE_NAP: Found profile sizes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->setFeatureProperty(Z)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivate(Ljava/lang/String;Z)V

    goto :goto_34

    :cond_44
    return-void
.end method

.method private _bindAndActivateOnReboot(Landroid/os/Bundle;)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getSetActivatedProfiles()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_96

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_96

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_2c

    const-string v1, "NetworkAnalytics:Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_bindAndActivateOnReboot:ACTION_INITIALIZE_NAP: Found profile sizes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->setFeatureProperty(Z)V

    const-string v2, "android.intent.extra.user_handle"

    const/16 v3, -0x2710

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3c
    :goto_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_96

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v5, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getActiveStateForName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    move-result-object v5

    if-nez v5, :cond_6b

    sget-boolean v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v6, :cond_3c

    const-string v6, "NetworkAnalytics:Service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_bindAndActivateOnReboot: ERROR NAPActivationProfile is null for profile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    :cond_6b
    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v6

    if-nez v6, :cond_8c

    sget-boolean v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v7, :cond_3c

    const-string v7, "NetworkAnalytics:Service"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_bindAndActivateOnReboot: ERROR NAPConfigProfile is null for profile: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    :cond_8c
    invoke-virtual {v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v7

    if-ne v2, v7, :cond_95

    invoke-direct {p0, v4, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivate(Ljava/lang/String;Z)V

    :cond_95
    goto :goto_3c

    :cond_96
    return-void
.end method

.method private _bindToClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;)I
    .registers 20

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->getHandlerObject()Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    move-result-object v0

    sget-boolean v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_178
    .catchall {:try_start_6 .. :try_end_c} :catchall_172

    if-eqz v7, :cond_33

    :try_start_e
    const-string v7, "NetworkAnalytics:Service"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_bindToClient:handlerObj.profileName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_28} :catch_2e
    .catchall {:try_start_e .. :try_end_28} :catchall_29

    goto :goto_33

    :catchall_29
    move-exception v0

    move-object/from16 v13, p1

    goto/16 :goto_192

    :catch_2e
    move-exception v0

    move-object/from16 v13, p1

    goto/16 :goto_17d

    :cond_33
    :goto_33
    const/4 v7, 0x0

    :try_start_34
    iget-object v8, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iget-object v9, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v10, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v9, v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->getBinderForPackage(Ljava/lang/String;)Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;

    move-result-object v8
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_42} :catch_178
    .catchall {:try_start_34 .. :try_end_42} :catchall_172

    if-eqz v8, :cond_49

    :try_start_44
    invoke-interface {v8}, Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    move-object v7, v9

    :cond_49
    const/4 v9, 0x0

    if-eqz v8, :cond_77

    invoke-interface {v7}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v10

    if-eqz v10, :cond_74

    sget-boolean v10, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v10, :cond_6e

    const-string v10, "NetworkAnalytics:Service"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_bindToClient:Binder is already available for package = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_6e} :catch_2e
    .catchall {:try_start_44 .. :try_end_6e} :catchall_29

    :cond_6e
    const/4 v6, 0x0

    nop

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v9

    :cond_74
    :try_start_74
    invoke-direct {v1, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_unbindClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_2e
    .catchall {:try_start_74 .. :try_end_77} :catchall_29

    :cond_77
    :try_start_77
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_namonitoraction"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    move-wide v4, v11

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    iget v13, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-virtual {v12, v11, v9, v13}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_a4} :catch_178
    .catchall {:try_start_77 .. :try_end_a4} :catchall_172

    if-lez v13, :cond_130

    :try_start_a6
    sget-boolean v13, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_a8} :catch_12a
    .catchall {:try_start_a6 .. :try_end_a8} :catchall_124

    if-eqz v13, :cond_b1

    :try_start_aa
    const-string v13, "NetworkAnalytics:Service"

    const-string v14, "_bindToClient:vendorServices.size() > 0"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_b1} :catch_2e
    .catchall {:try_start_aa .. :try_end_b1} :catchall_29

    :cond_b1
    :try_start_b1
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_b5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_130

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v15, v14, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v15, v15, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11f

    sget-boolean v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v6, :cond_ee

    const-string v6, "NetworkAnalytics:Service"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_d8} :catch_12a
    .catchall {:try_start_b1 .. :try_end_d8} :catchall_124

    move/from16 v16, v2

    :try_start_da
    const-string v2, "_bindToClient:resolveInfo.serviceInfo.packageName = "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f0

    :cond_ee
    move/from16 v16, v2

    :goto_f0
    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v2, :cond_10e

    const-string v2, "NetworkAnalytics:Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_bindToClient:resolveInfo.serviceInfo.name = "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v14, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v15, v15, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10e
    new-instance v2, Landroid/content/ComponentName;

    iget-object v6, v14, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v15, v14, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v15, v15, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v6, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_121

    :cond_11f
    move/from16 v16, v2

    :goto_121
    move/from16 v2, v16

    goto :goto_b5

    :catchall_124
    move-exception v0

    move/from16 v16, v2

    move-object/from16 v13, p1

    goto :goto_177

    :catch_12a
    move-exception v0

    move/from16 v16, v2

    move-object/from16 v13, p1

    goto :goto_17d

    :cond_130
    move/from16 v16, v2

    iget-object v2, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    iget v13, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-direct {v6, v13}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_140} :catch_16c
    .catchall {:try_start_da .. :try_end_140} :catchall_168

    move-object/from16 v13, p1

    const/4 v14, 0x1

    :try_start_143
    invoke-virtual {v2, v11, v13, v14, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_147} :catch_166
    .catchall {:try_start_143 .. :try_end_147} :catchall_164

    :try_start_147
    sget-boolean v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v6, :cond_184

    const-string v6, "NetworkAnalytics:Service"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_bindToClient:bindSuccess = "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_161} :catch_162
    .catchall {:try_start_147 .. :try_end_161} :catchall_191

    goto :goto_184

    :catch_162
    move-exception v0

    goto :goto_17d

    :catchall_164
    move-exception v0

    goto :goto_194

    :catch_166
    move-exception v0

    goto :goto_16f

    :catchall_168
    move-exception v0

    move-object/from16 v13, p1

    goto :goto_194

    :catch_16c
    move-exception v0

    move-object/from16 v13, p1

    :goto_16f
    move/from16 v2, v16

    goto :goto_17d

    :catchall_172
    move-exception v0

    move-object/from16 v13, p1

    move/from16 v16, v2

    :goto_177
    goto :goto_194

    :catch_178
    move-exception v0

    move-object/from16 v13, p1

    move/from16 v16, v2

    :goto_17d
    :try_start_17d
    const-string v6, "NetworkAnalytics:Service"

    const-string v7, "_bindToClient:Exception"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_184
    .catchall {:try_start_17d .. :try_end_184} :catchall_191

    :cond_184
    :goto_184
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    if-eqz v2, :cond_18d

    const/16 v17, 0x1

    goto :goto_190

    :cond_18d
    const/4 v6, -0x1

    move/from16 v17, v6

    :goto_190
    return v17

    :catchall_191
    move-exception v0

    :goto_192
    move/from16 v16, v2

    :goto_194
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private _cleanUpConnectionDetails(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;)V
    .registers 6

    iget-object v0, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_22

    const-string v1, "NetworkAnalytics:Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_cleanUpConnectionDetails tableKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->removeProfileForPackage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->removeBinderForPackage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    iget-object v2, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->removeDataRecipientsForPackage(Ljava/lang/String;I)V

    return-void
.end method

.method private _deactivateAllProfiles()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getSetActivatedProfiles()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_44

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_44

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_2c

    const-string v1, "NetworkAnalytics:Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_deactivateAllProfiles: Found profile sizes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->setFeatureProperty(Z)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivate(Ljava/lang/String;Z)V

    goto :goto_34

    :cond_44
    return-void
.end method

.method private _deactivateAllProfiles(I)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getSetActivatedProfiles()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_103

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_103

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_2c

    const-string v1, "NetworkAnalytics:Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_deactivateAllConnections: Found profile sizes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_30
    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_103

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v3, :cond_56

    const-string v3, "NetworkAnalytics:Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_deactivateAllProfiles:ACTION_INITIALIZE_NAP: adding profile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getActiveStateForName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    move-result-object v3

    if-nez v3, :cond_79

    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_30

    const-string v4, "NetworkAnalytics:Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_deactivateAllProfiles: ERROR NAPActivationProfile is null for profile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    :cond_79
    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getAdminUid()I

    move-result v4

    if-eq p1, v4, :cond_9a

    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_30

    const-string v4, "NetworkAnalytics:Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_deactivateAllProfiles: ERROR Not the same adminUid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    :cond_9a
    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v4

    if-nez v4, :cond_bc

    sget-boolean v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v5, :cond_30

    const-string v5, "NetworkAnalytics:Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_deactivateAllProfiles: ERROR NAPConfigProfile is null for profile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30

    :cond_bc
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->activateProfile(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)I

    move-result v6

    if-gez v6, :cond_df

    sget-boolean v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v5, :cond_30

    const-string v5, "NetworkAnalytics:Service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_deactivateAllProfiles: ERROR deactivateProfile for profile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30

    :cond_df
    new-instance v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    invoke-direct {v7, p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v8

    iput v8, v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->callback:Lcom/samsung/android/knox/net/nap/IStatusCallback;

    const/4 v8, 0x1

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v9

    invoke-direct {p0, v8, v5, v9, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    goto/16 :goto_30

    :cond_103
    return-void
.end method

.method private _getDataDeliveryHelper(Ljava/lang/String;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;I)Lcom/android/server/enterprise/nap/DataDeliveryHelper;
    .registers 8

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v0

    if-nez v0, :cond_24

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_22

    const-string v1, "NetworkAnalytics:Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_getDataDeliveryHelper: ERROR NAPConfigProfile is null for profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const/4 v1, 0x0

    return-object v1

    :cond_24
    new-instance v1, Lcom/android/server/enterprise/nap/DataDeliveryHelper;

    invoke-direct {v1, v0, p2, p3}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;I)V

    return-object v1
.end method

.method private _handleNewProfileRegistration(Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v0

    if-nez v0, :cond_23

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_22

    const-string v1, "NetworkAnalytics:Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_handleNewProfileRegistration: profile is null for name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return-void

    :cond_23
    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isActivatedPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e2

    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v2, :cond_49

    const-string v2, "NetworkAnalytics:Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_handleNewProfileRegistration: profile activated:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getUserIdLocationOfPackage(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_70

    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v3, :cond_6f

    const-string v3, "NetworkAnalytics:Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_handleNewProfileRegistration: bind userId location fail for:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6f
    return-void

    :cond_70
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v4

    invoke-virtual {v3, p1, v4, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->updateBindUserIdForProfile(Ljava/lang/String;II)I

    move-result v3

    if-gez v3, :cond_9b

    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_9a

    const-string v4, "NetworkAnalytics:Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_handleNewProfileRegistration: bind userId updation failed for profile:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9a
    return-void

    :cond_9b
    const/4 v4, 0x1

    invoke-direct {p0, v0, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->activateProfile(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)I

    move-result v3

    if-gez v3, :cond_c1

    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_c0

    const-string v4, "NetworkAnalytics:Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_handleNewProfileRegistration: activation failed for profile:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c0
    return-void

    :cond_c1
    new-instance v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    invoke-direct {v5, p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v6

    iput v6, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->callback:Lcom/samsung/android/knox/net/nap/IStatusCallback;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v6

    invoke-direct {p0, v5, v6, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivate(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)V

    :cond_e2
    return-void
.end method

.method private _packageAddedAction(Ljava/lang/String;I)V
    .registers 11

    :try_start_0
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "NetworkAnalytics:Service"

    const-string v1, "_packageAddedAction called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllActiveKeysForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_88

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_88

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_37

    const-string v1, "NetworkAnalytics:Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_packageAddedAction activatedProfiles.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_88

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getActiveStateForName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    move-result-object v3

    if-eqz v3, :cond_87

    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_5a

    const-string v4, "NetworkAnalytics:Service"

    const-string v5, "_packageAddedAction: ACTIVATING FOR PACKAGE ADDED."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v5

    if-ne v5, p2, :cond_87

    new-instance v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    invoke-direct {v5, p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v6

    iput v6, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->callback:Lcom/samsung/android/knox/net/nap/IStatusCallback;

    nop

    invoke-static {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getCidFromTransformedName(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    invoke-direct {p0, v7, v7, v6, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_87} :catch_89

    :cond_87
    goto :goto_3b

    :cond_88
    goto :goto_91

    :catch_89
    move-exception v0

    const-string v1, "NetworkAnalytics:Service"

    const-string v2, "_packageAddedAction Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_91
    return-void
.end method

.method private _packageRemovedAction(Ljava/lang/String;I)V
    .registers 12

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllActiveKeysForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5f

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getActiveStateForName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    move-result-object v3

    if-eqz v3, :cond_5e

    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_31

    const-string v4, "NetworkAnalytics:Service"

    const-string v5, "_packageRemovedAction: DEACTIVATING FOR PACKAGE REMOVED."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v5

    if-ne v5, p2, :cond_5e

    new-instance v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    invoke-direct {v5, p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v6

    iput v6, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->callback:Lcom/samsung/android/knox/net/nap/IStatusCallback;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getCidFromTransformedName(Ljava/lang/String;)I

    move-result v8

    invoke-direct {p0, v6, v7, v8, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5e} :catch_60

    :cond_5e
    goto :goto_12

    :cond_5f
    goto :goto_68

    :catch_60
    move-exception v0

    const-string v1, "NetworkAnalytics:Service"

    const-string v2, "_packageRemovedAction Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_68
    return-void
.end method

.method private _unbindClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;)V
    .registers 7

    :try_start_0
    iget v0, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    const/16 v1, -0x3e7

    if-ne v0, v1, :cond_12

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_11

    const-string v0, "NetworkAnalytics:Service"

    const-string v1, "_unbindClient: The profile was never activated. Returning."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget-object v1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->callback:Lcom/samsung/android/knox/net/nap/IStatusCallback;

    if-nez v0, :cond_2f

    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v2, :cond_29

    const-string v2, "NetworkAnalytics:Service"

    const-string v3, "_unbindClient: profile object null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    if-eqz v1, :cond_2f

    const/4 v2, -0x4

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/net/nap/IStatusCallback;->onCallComplete(I)V

    :cond_2f
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iget-object v3, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v3, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->getServiceConnectionForPackage(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    move-result-object v2

    if-eqz v2, :cond_4b

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    if-eqz v1, :cond_52

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/samsung/android/knox/net/nap/IStatusCallback;->onCallComplete(I)V

    goto :goto_52

    :cond_4b
    if-eqz v1, :cond_52

    const/16 v3, -0xb

    invoke-interface {v1, v3}, Lcom/samsung/android/knox/net/nap/IStatusCallback;->onCallComplete(I)V

    :cond_52
    :goto_52
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_cleanUpConnectionDetails(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;)V

    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v3, :cond_72

    const-string v3, "NetworkAnalytics:Service"

    const-string v4, "_unbindClient: Done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_60} :catch_6a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_60} :catch_61

    goto :goto_72

    :catch_61
    move-exception v0

    const-string v1, "NetworkAnalytics:Service"

    const-string v2, "_unbindClient: Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_73

    :catch_6a
    move-exception v0

    const-string v1, "NetworkAnalytics:Service"

    const-string v2, "_unbindClient: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_72
    :goto_72
    nop

    :goto_73
    return-void
.end method

.method private _unregisterAllProfiles(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getClientProfileNames(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_50

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_f

    goto :goto_50

    :cond_f
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_2d

    const-string v1, "NetworkAnalytics:Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_unregisterAllProfiles: Found profile sizes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    if-eqz v0, :cond_4f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4f

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->setFeatureProperty(Z)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->updateTablesForProfileRemoval(ILjava/lang/String;)V

    goto :goto_3d

    :cond_4f
    return-void

    :cond_50
    :goto_50
    return-void
.end method

.method private _userRemovedAction(Landroid/os/Bundle;)V
    .registers 10

    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_27

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_26

    const-string v1, "NetworkAnalytics:Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_userRemovedAction: Invalid userId received:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    return-void

    :cond_27
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_41

    const-string v1, "NetworkAnalytics:Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_userRemovedAction: Received for"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllProfilesForUser(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_89

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_89

    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_6d

    const-string v4, "NetworkAnalytics:Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_userRemovedAction: List of profiles for removed userId is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6d
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_71
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_89

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getAdminUid()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->unregisterNetworkMonitorProfile(ILjava/lang/String;)I

    goto :goto_71

    :cond_89
    return-void
.end method

.method private _validateNAPClient(Ljava/lang/String;ILjava/lang/String;)I
    .registers 8

    invoke-direct {p0, p2, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2d

    const-string v1, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->validatePkgSignForAllProfiles(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_21

    :cond_1b
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->validatePkgSignForSingleProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :goto_21
    if-nez v1, :cond_2d

    const-string v2, "NetworkAnalytics:Service"

    const-string v3, "_validateNAPClient: Package signature could not be matched for profile entry/entries"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0xd

    return v2

    :cond_2d
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_38

    const-string v1, "NetworkAnalytics:Service"

    const-string v2, "_validateNAPClient: Package validation complete."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    const/4 v1, 0x0

    return v1
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;IIILjava/lang/Object;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivateOnReboot()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_deactivateAllProfiles()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendStatusToClient(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivate(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_handleNewProfileRegistration(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivate(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivateOnReboot(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_packageRemovedAction(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_packageAddedAction(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_userRemovedAction(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_deactivateAllProfiles(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_unregisterAllProfiles(I)V

    return-void
.end method

.method private activateProfile(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)I
    .registers 8

    const/4 v0, -0x1

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_1f

    const-string v1, "NetworkAnalytics:Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called activateProfile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    :try_start_1f
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isProfileActivatedForUser(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, p2, :cond_38

    const-string v1, "NetworkAnalytics:Service"

    const-string v2, "activateProfile:Profile is already in the activated state for the user."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x8

    return v1

    :cond_38
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getAdminUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activateProfile(ILjava/lang/String;II)I

    move-result v1

    move v0, v1

    if-gez v0, :cond_6c

    const-string v1, "NetworkAnalytics:Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activate profile config storage returned = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_6b} :catch_6d

    return v0

    :cond_6c
    goto :goto_76

    :catch_6d
    move-exception v1

    const-string v2, "NetworkAnalytics:Service"

    const-string v3, "Add profile to database falied. Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    :goto_76
    return v0
.end method

.method private constructObjectForBroadcast(IILjava/lang/String;)V
    .registers 11

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    const-string/jumbo v1, "profile_name"

    invoke-virtual {v0, v1, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileObjectFromJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    const-string/jumbo v2, "package_name"

    invoke-virtual {v1, v2, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileObjectFromJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    const-string/jumbo v3, "package_signature"

    invoke-virtual {v2, v3, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileObjectFromJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v5, "profileInfo"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v5, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    if-eqz v5, :cond_50

    iget-object v5, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v5, :cond_50

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6, v6, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_50} :catch_51

    :cond_50
    goto :goto_59

    :catch_51
    move-exception v0

    const-string v1, "NetworkAnalytics:Service"

    const-string v2, "Error occured while constructing the profile object for broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_59
    return-void
.end method

.method private enforceNetworkAnalyticsPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 7

    invoke-direct {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getAPILevel()I

    move-result v0

    const/16 v1, 0x18

    if-ge v0, v1, :cond_2d

    const-string v1, "NetworkAnalytics:Service"

    const-string/jumbo v2, "enforceNetworkAnalyticsPermission: knox version below 3.0. Validating VPN Permission"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "com.samsung.android.knox.permission.KNOX_VPN_GENERIC"

    const-string v4, "com.samsung.android.knox.permission.KNOX_VPN_GENERIC"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    return-object v1

    :cond_2d
    const-string v1, "NetworkAnalytics:Service"

    const-string/jumbo v2, "enforceNetworkAnalyticsPermission: knox version above 3.0. Validating NPA Permission"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "com.samsung.android.knox.permission.KNOX_NPA"

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getCidFromTransformedName(Ljava/lang/String;)I
    .registers 4

    const-string v0, "__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private static declared-synchronized getDRKService(Landroid/content/Context;)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
    .registers 3

    const-class v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    if-nez v1, :cond_e

    new-instance v1, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    :cond_e
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getDeviceUniqueKey()Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceUniqueId:Ljava/lang/String;

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getDRKService(Landroid/content/Context;)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_18

    const-string v1, "NetworkAnalytics:Service"

    const-string/jumbo v2, "getDeviceUniqueKey: drkService not null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->getDeviceRootKeyUID(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceUniqueId:Ljava/lang/String;

    :cond_1f
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_11
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_5
    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v3, :cond_20

    const-string v3, "NetworkAnalytics:Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPackageCertForPkgname: User id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v3, p2, v4, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-nez v4, :cond_3f

    sget-boolean v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v5, :cond_3a

    const-string v5, "NetworkAnalytics:Service"

    const-string/jumbo v6, "getPackageCertForPkgname: pkgInfo is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_3a} :catch_61
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3a} :catch_58
    .catchall {:try_start_5 .. :try_end_3a} :catchall_56

    :cond_3a
    const/4 v5, 0x0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :cond_3f
    :try_start_3f
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_43
    if-ge v7, v6, :cond_52

    aget-object v8, v5, v7

    if-eqz v8, :cond_4f

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v6
    :try_end_4d
    .catch Ljava/lang/NullPointerException; {:try_start_3f .. :try_end_4d} :catch_61
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_4d} :catch_58
    .catchall {:try_start_3f .. :try_end_4d} :catchall_56

    move-object v0, v6

    goto :goto_52

    :cond_4f
    add-int/lit8 v7, v7, 0x1

    goto :goto_43

    :cond_52
    :goto_52
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6a

    :catchall_56
    move-exception v3

    goto :goto_6b

    :catch_58
    move-exception v3

    :try_start_59
    const-string v4, "NetworkAnalytics:Service"

    const-string v5, "In getPackageCertForPkgname: Exception"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_52

    :catch_61
    move-exception v3

    const-string v4, "NetworkAnalytics:Service"

    const-string v5, "In getPackageCertForPkgname: NullPointerException"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_69
    .catchall {:try_start_59 .. :try_end_69} :catchall_56

    goto :goto_52

    :goto_6a
    return-object v0

    :goto_6b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_1f

    aget-object v5, v2, v4

    iget-object v6, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isAddedPackage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    const/4 v1, 0x1

    move-object v0, v5

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_1f
    if-eqz v1, :cond_25

    if-nez v0, :cond_24

    goto :goto_25

    :cond_24
    return-object v0

    :cond_25
    :goto_25
    const-string v3, "NetworkAnalytics:Service"

    const-string/jumbo v4, "start: Package name could not be found in activated list."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3
.end method

.method public static getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getVendorNameFromTransformedName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initializeHandlerThread()V
    .registers 4

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NapHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    return-void
.end method

.method private initializeNapData()V
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->setupIntentFilter()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    const-string v1, "NetworkAnalytics:Service"

    const-string v2, "Error occured while trying to ini the BroadcastReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    return-void
.end method

.method private isAllowedRecordingForUsers(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)Z
    .registers 8

    const/4 v0, 0x1

    if-nez p2, :cond_c

    const-string v1, "NetworkAnalytics:Service"

    const-string/jumbo v2, "isAllowedRecordingForUsers: App is installed in User 0. Can record for any user."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_c
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_31

    const-string v1, "NetworkAnalytics:Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAllowedRecordingForUsers: App allowed to record profile? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v4

    if-ne v4, p2, :cond_26

    move v4, v0

    goto :goto_27

    :cond_26
    move v4, v2

    :goto_27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v1

    if-ne v1, p2, :cond_38

    goto :goto_39

    :cond_38
    move v0, v2

    :goto_39
    return v0
.end method

.method private isDomainFilterOnIptablesEnabled()Z
    .registers 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "status"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    const-string v3, "DomainFilterOnIptablesApiStatus"

    invoke-virtual {v1, v3, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    if-lez v1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    return v2
.end method

.method private isValidAppInstalled(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const-string v2, "application_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz v2, :cond_42

    invoke-virtual {v2, p1, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_22

    const-string v3, "NetworkAnalytics:Service"

    const-string/jumbo v4, "isValidAppInstalled: Monitor app not installed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v3, -0xf

    return v3

    :cond_22
    invoke-direct {p0, p3, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_42

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_42

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    const-string v4, "NetworkAnalytics:Service"

    const-string/jumbo v5, "isValidAppInstalled: Monitor app signature is not matched."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v4, -0xd

    return v4

    :cond_42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v3, 0x0

    return v3
.end method

.method private listOfProfilesForOperation(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2a

    const-string v1, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    if-nez p3, :cond_14

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllProfilesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_2a

    :cond_14
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllProfilesForPackageinUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    goto :goto_2a

    :cond_1b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    :goto_2a
    return-object v0
.end method

.method private sendMessageToHandler(IIILjava/lang/Object;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_f
    return-void
.end method

.method private sendStatusToClient(Landroid/os/Bundle;)V
    .registers 15

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    const-string/jumbo v2, "profileInfo"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "profileInfo"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "profileInfo"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "profileInfo"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string/jumbo v6, "profileInfo"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "NetworkAnalytics:Service"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The System is going to send broadcast of the profile status "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "package"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v7

    invoke-interface {v7, v3, v5}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_115

    const-string v9, "NetworkAnalytics:Service"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " has been installed in the user space "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_115

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_115

    sget-boolean v10, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v10, :cond_d6

    const-string v10, "NetworkAnalytics:Service"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The signature of the package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "confirmed by OS is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d6
    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_115

    const-string v10, "NetworkAnalytics:Service"

    const-string v11, "The signature mentioned by the admin and the signature of the package present in the device matches"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.samsung.android.knox.intent.action.NPA_STATUS"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "com.samsung.android.knox.intent.extra.REGISTRATION_STATUS"

    invoke-virtual {v10, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v11, "com.samsung.android.knox.intent.extra.PROFILE_NAME"

    invoke-virtual {v10, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v10, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/os/UserHandle;

    invoke-direct {v12, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v11, v10, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_101
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_101} :catch_10d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_101} :catch_104
    .catchall {:try_start_4 .. :try_end_101} :catchall_102

    goto :goto_115

    :catchall_102
    move-exception v2

    goto :goto_11a

    :catch_104
    move-exception v2

    :try_start_105
    const-string v3, "NetworkAnalytics:Service"

    const-string v4, "Error occured while trying to send the NPA profile status to the client"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_115

    :catch_10d
    move-exception v2

    const-string v3, "NetworkAnalytics:Service"

    const-string v4, "Null pointer exception error occured while trying to send the NPA profile status to the client"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_115
    .catchall {:try_start_105 .. :try_end_115} :catchall_102

    :cond_115
    :goto_115
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :goto_11a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setFeatureProperty(Z)V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->isDomainFilterOnIptablesEnabled()Z

    move-result v0

    if-nez v0, :cond_19

    if-eqz p1, :cond_11

    const-string/jumbo v0, "net.knox.nap"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_11
    const-string/jumbo v0, "net.knox.nap"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    :goto_19
    return-void
.end method

.method private setupIntentFilter()V
    .registers 11

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "NetworkAnalytics:Service"

    const-string/jumbo v1, "setup intent filter is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    new-instance v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v3

    move-object v7, v0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    const-string/jumbo v1, "enterprise.container.uninstalled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v8, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    move-object v7, v0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    const-string/jumbo v1, "enterprise.container.admin.changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v8, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    move-object v7, v0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    move-object v7, v0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterNetworkMonitorProfile(ILjava/lang/String;)I
    .registers 16

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez p1, :cond_10d

    if-nez p2, :cond_c

    goto/16 :goto_10d

    :cond_c
    :try_start_c
    iget-object v6, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v6, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->doesAdminOwnProfile(ILjava/lang/String;)I

    move-result v6

    move v0, v6

    if-gez v0, :cond_3e

    const-string v2, "NetworkAnalytics:Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unregisterNetworkMonitorProfile: Profile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "is absent or does not belong to adminUid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " return="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3e
    iget-object v6, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v6

    if-eqz v6, :cond_50

    invoke-virtual {v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v7

    move v1, v7

    invoke-virtual {v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getJsonString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    :cond_50
    iget-object v7, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllActiveKeysForProfile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_d7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_d7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_62
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-static {v9}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getVendorNameFromTransformedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v10

    if-nez v10, :cond_92

    const-string v2, "NetworkAnalytics:Service"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unregisterNetworkMonitorProfile config profile obj is null for profile: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_92
    invoke-direct {p0, v10, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->activateProfile(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)I

    move-result v11

    move v0, v11

    if-gez v0, :cond_b5

    const-string v2, "NetworkAnalytics:Service"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unregisterNetworkMonitorProfile: deactivation failed for profile:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_b5
    new-instance v11, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    invoke-direct {v11, p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    invoke-virtual {v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v12

    iput v12, v11, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    iput-object v2, v11, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->callback:Lcom/samsung/android/knox/net/nap/IStatusCallback;

    nop

    invoke-virtual {v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v12

    invoke-direct {p0, v4, v5, v12, v11}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    goto :goto_62

    :cond_d7
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->removeProfileFromDatabase(ILjava/lang/String;)I

    move-result v2

    move v0, v2

    if-gez v0, :cond_ec

    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v2, :cond_eb

    const-string v2, "NetworkAnalytics:Service"

    const-string v8, "Remove profile from database falied."

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_eb
    return v0

    :cond_ec
    if-nez v0, :cond_10c

    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getClientProfileNames(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_fe

    if-eqz v2, :cond_10c

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_10c

    :cond_fe
    sget-boolean v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v8, :cond_109

    const-string v8, "NetworkAnalytics:Service"

    const-string v9, "The Knox NAP feature has been disabled"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_109
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->setFeatureProperty(Z)V

    :cond_10c
    goto :goto_121

    :cond_10d
    :goto_10d
    const-string v2, "NetworkAnalytics:Service"

    const-string/jumbo v6, "unregisterNetworkMonitorProfile: Invalid parameters"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_115} :catch_117

    const/4 v2, -0x4

    return v2

    :catch_117
    move-exception v2

    const-string v6, "NetworkAnalytics:Service"

    const-string/jumbo v7, "unregisterNetworkMonitorProfile. Exception"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    :goto_121
    if-nez v0, :cond_12b

    if-eqz v1, :cond_128

    invoke-direct {p0, v4, v5, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->constructObjectForBroadcast(IILjava/lang/String;)V

    :cond_128
    invoke-direct {p0, v4, v1, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->constructObjectForBroadcast(IILjava/lang/String;)V

    :cond_12b
    return v0
.end method

.method private validateNAPClient(IIZLjava/lang/String;)I
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    const-string v1, "NetworkAnalytics:Service"

    const-string/jumbo v2, "validateNAPClient: NAP client caller cannot be validated."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0xc

    return v1

    :cond_12
    invoke-direct {p0, v0, p2, p4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_validateNAPClient(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method private validateNAPClient(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 8

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "NetworkAnalytics:Service"

    const-string/jumbo v1, "validateNAPClient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v0, -0x1

    :try_start_d
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->isValidAppInstalled(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    move v0, v1

    if-gez v0, :cond_2c

    const-string v1, "NetworkAnalytics:Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "validateNAPClient:Valid monitor application is not installed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2b} :catch_2e

    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_38

    :catch_2e
    move-exception v1

    const-string v2, "NetworkAnalytics:Service"

    const-string/jumbo v3, "validateNAPClient: Add profile to database failed. Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    :goto_38
    return v0
.end method


# virtual methods
.method public declared-synchronized getNPAVersion()Ljava/lang/String;
    .registers 8

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    iget-object v1, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->ncmVersion:Ljava/lang/String;

    if-nez v1, :cond_7d

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7d

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_3:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_56

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->openCharDevice(I)I

    move-result v3

    if-gez v3, :cond_55

    const-string v4, "NetworkAnalytics:Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getNPAVersion: Failed to open char device : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_52} :catch_97
    .catchall {:try_start_2 .. :try_end_52} :catchall_94

    move-object v0, v4

    monitor-exit p0

    return-object v0

    :cond_55
    goto :goto_7d

    :cond_56
    :try_start_56
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->openCharDevice(I)I

    move-result v3

    if-gez v3, :cond_7d

    const-string v4, "NetworkAnalytics:Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getNPAVersion: Failed to open char device : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_7a} :catch_97
    .catchall {:try_start_56 .. :try_end_7a} :catchall_94

    move-object v0, v4

    monitor-exit p0

    return-object v0

    :cond_7d
    :goto_7d
    :try_start_7d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3.3_0_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    iget-object v2, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->ncmVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_92} :catch_97
    .catchall {:try_start_7d .. :try_end_92} :catchall_94

    move-object v0, v1

    goto :goto_98

    :catchall_94
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_97
    move-exception v1

    :goto_98
    monitor-exit p0

    return-object v0
.end method

.method public getNetworkMonitorProfiles(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_1d

    const-string v0, "NetworkAnalytics:Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getNetworkMonitorProfiles API caller is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->enforceNetworkAnalyticsPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_3e

    const-string v0, "NetworkAnalytics:Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getNetworkMonitorProfiles API caller with updated contextInfo is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    const/4 v0, 0x0

    :try_start_3f
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getClientProfiles(II)Ljava/util/List;

    move-result-object v1
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_49} :catch_4b

    move-object v0, v1

    goto :goto_53

    :catch_4b
    move-exception v1

    const-string v2, "NetworkAnalytics:Service"

    const-string v3, "Get NVM client profiles. Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_53
    return-object v0
.end method

.method public getProfiles(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/nap/Profile;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_18

    const-string v4, "NetworkAnalytics:Service"

    const-string/jumbo v5, "getProfiles: NAP client caller cannot be validated. PackageName null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_18
    :try_start_18
    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v4, v3, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getClientProfiles(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1e} :catch_20

    move-object v0, v4

    goto :goto_28

    :catch_20
    move-exception v4

    const-string v5, "NetworkAnalytics:Service"

    const-string v6, "Get NVM client profiles. Exception"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_28
    return-object v0
.end method

.method public declared-synchronized handleNAPClientCall(Ljava/lang/String;Landroid/os/Bundle;Z)I
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    monitor-enter p0

    const/4 v5, -0x1

    const/4 v0, 0x0

    move v6, v0

    :try_start_c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-direct {v1, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v2, :cond_3f7

    if-eqz v9, :cond_3f7

    if-gez v8, :cond_22

    move/from16 v17, v6

    goto/16 :goto_3f9

    :cond_22
    invoke-direct {v1, v7, v8, v4, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->validateNAPClient(IIZLjava/lang/String;)I

    move-result v10
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_26} :catch_417
    .catchall {:try_start_c .. :try_end_26} :catchall_415

    move v5, v10

    if-gez v5, :cond_4f

    :try_start_29
    const-string v0, "NetworkAnalytics:Service"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleNAPClientCall: Caller validation failed:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " doStart:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_48} :catch_4a
    .catchall {:try_start_29 .. :try_end_48} :catchall_415

    monitor-exit p0

    return v5

    :catch_4a
    move-exception v0

    move/from16 v17, v6

    goto/16 :goto_41a

    :cond_4f
    :try_start_4f
    invoke-direct {v1, v9, v2, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->listOfProfilesForOperation(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_3f4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_3f4

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5f} :catch_417
    .catchall {:try_start_4f .. :try_end_5f} :catchall_415

    :goto_5f
    :try_start_5f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3e9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_6b} :catch_3ee
    .catchall {:try_start_5f .. :try_end_6b} :catchall_415

    if-nez v12, :cond_90

    :try_start_6d
    const-string v13, "NetworkAnalytics:Service"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleNAPClientCall: Profile does not exist for name: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x3

    const-string v13, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_8b} :catch_4a
    .catchall {:try_start_6d .. :try_end_8b} :catchall_415

    if-eqz v13, :cond_8e

    goto :goto_5f

    :cond_8e
    monitor-exit p0

    return v5

    :cond_90
    :try_start_90
    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_98} :catch_3ee
    .catchall {:try_start_90 .. :try_end_98} :catchall_415

    if-nez v13, :cond_be

    :try_start_9a
    const-string v13, "NetworkAnalytics:Service"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleNAPClientCall: NAP client activating un-owned profile: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, -0x12

    const-string v13, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_b9} :catch_4a
    .catchall {:try_start_9a .. :try_end_b9} :catchall_415

    if-eqz v13, :cond_bc

    goto :goto_5f

    :cond_bc
    monitor-exit p0

    return v5

    :cond_be
    if-eqz v4, :cond_db

    :try_start_c0
    invoke-direct {v1, v12, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->isAllowedRecordingForUsers(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)Z

    move-result v13

    if-nez v13, :cond_db

    const-string v13, "NetworkAnalytics:Service"

    const-string/jumbo v14, "handleNAPClientCall: Client installed in wrong user trying to collect data"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, -0x11

    const-string v13, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_d6} :catch_4a
    .catchall {:try_start_c0 .. :try_end_d6} :catchall_415

    if-eqz v13, :cond_d9

    goto :goto_5f

    :cond_d9
    monitor-exit p0

    return v5

    :cond_db
    if-nez v4, :cond_ef

    :try_start_dd
    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v13

    if-eq v13, v8, :cond_ef

    const-string v0, "NetworkAnalytics:Service"

    const-string/jumbo v11, "handleNAPClientCall: NAP client failed to stop the connection since not started by same user"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_eb} :catch_4a
    .catchall {:try_start_dd .. :try_end_eb} :catchall_415

    const/16 v0, -0x12

    monitor-exit p0

    return v0

    :cond_ef
    const/16 v14, -0x3e7

    if-eqz v4, :cond_2de

    if-nez v3, :cond_100

    :try_start_f5
    const-string v0, "NetworkAnalytics:Service"

    const-string/jumbo v11, "handleNAPClientCall: Client trying to collect data with null bundle flow information"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_fd} :catch_4a
    .catchall {:try_start_f5 .. :try_end_fd} :catchall_415

    const/4 v0, -0x4

    monitor-exit p0

    return v0

    :cond_100
    :try_start_100
    const-string/jumbo v15, "record_type"

    const/4 v0, -0x1

    invoke-virtual {v3, v15, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_2ca

    const/4 v15, 0x2

    if-le v0, v15, :cond_113

    move/from16 v16, v5

    move/from16 v17, v6

    goto/16 :goto_2ce

    :cond_113
    const-string/jumbo v15, "interval_value"

    invoke-virtual {v3, v15, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_11a} :catch_3ee
    .catchall {:try_start_100 .. :try_end_11a} :catchall_415

    const/16 v13, 0x3c

    if-eq v15, v14, :cond_12f

    if-lt v15, v13, :cond_124

    const/16 v13, 0x3840

    if-le v15, v13, :cond_12f

    :cond_124
    :try_start_124
    const-string v11, "NetworkAnalytics:Service"

    const-string/jumbo v13, "handleNAPClientCall: Client trying to collect data with Invalid interval information"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_12c} :catch_4a
    .catchall {:try_start_124 .. :try_end_12c} :catchall_415

    const/4 v5, -0x4

    monitor-exit p0

    return v5

    :cond_12f
    if-eq v15, v14, :cond_194

    const/16 v13, 0x3c

    if-lt v15, v13, :cond_194

    const/16 v13, 0x3840

    if-gt v15, v13, :cond_194

    :try_start_139
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_194

    sget-object v13, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_3:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v13}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v14

    const-string v3, "NetworkAnalytics:Service"
    :try_end_15b
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_15b} :catch_3ee
    .catchall {:try_start_139 .. :try_end_15b} :catchall_415

    move/from16 v16, v5

    :try_start_15d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_162} :catch_18d
    .catchall {:try_start_15d .. :try_end_162} :catchall_415

    move/from16 v17, v6

    :try_start_164
    const-string/jumbo v6, "handleNAPClientCall: intermediate flows : current knox version : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " supported knox version : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_198

    const-string v3, "NetworkAnalytics:Service"

    const-string/jumbo v5, "handleNAPClientCall: Client trying to collect data not supported in current version"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_18a} :catch_2d9
    .catchall {:try_start_164 .. :try_end_18a} :catchall_415

    const/4 v3, -0x4

    monitor-exit p0

    return v3

    :catch_18d
    move-exception v0

    move/from16 v17, v6

    move/from16 v5, v16

    goto/16 :goto_41a

    :cond_194
    move/from16 v16, v5

    move/from16 v17, v6

    :cond_198
    :try_start_198
    iget-object v3, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getSetActivatedProfiles()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_1e3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_1e3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1aa
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v13, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v13, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getActiveStateForName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    move-result-object v13

    if-nez v13, :cond_1bf

    goto :goto_1aa

    :cond_1bf
    invoke-virtual {v13}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getActivationState()I

    move-result v14

    move-object/from16 v18, v3

    const/4 v3, 0x1

    if-ne v3, v14, :cond_1df

    invoke-virtual {v13}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getActivationFlowType()I

    move-result v3

    if-ne v3, v0, :cond_1d4

    invoke-virtual {v13}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getActivationIntervalValue()I

    move-result v3

    if-eq v3, v15, :cond_1df

    :cond_1d4
    const-string v3, "NetworkAnalytics:Service"

    const-string/jumbo v5, "handleNAPClientCall: Client trying to collect data with wrong flow or interval"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1dc
    .catch Ljava/lang/Exception; {:try_start_198 .. :try_end_1dc} :catch_2d9
    .catchall {:try_start_198 .. :try_end_1dc} :catchall_415

    const/4 v3, -0x4

    monitor-exit p0

    return v3

    :cond_1df
    nop

    move-object/from16 v3, v18

    goto :goto_1aa

    :cond_1e3
    move-object/from16 v18, v3

    :try_start_1e5
    invoke-virtual {v12, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->setFlowTypeForProfile(I)V

    invoke-virtual {v12, v15}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->setIntervalValueForProfile(I)V

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2a3

    sget-object v3, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_3:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_245

    iget-object v6, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->openCharDevice(I)I

    move-result v6
    :try_end_218
    .catch Ljava/lang/Exception; {:try_start_1e5 .. :try_end_218} :catch_2d9
    .catchall {:try_start_1e5 .. :try_end_218} :catchall_415

    if-gez v6, :cond_243

    :try_start_21a
    const-string v11, "NetworkAnalytics:Service"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "handleNAPClientCall: file descriptor failed for profile:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " doStart:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23d
    .catch Ljava/lang/Exception; {:try_start_21a .. :try_end_23d} :catch_23f
    .catchall {:try_start_21a .. :try_end_23d} :catchall_415

    monitor-exit p0

    return v6

    :catch_23f
    move-exception v0

    move v5, v6

    goto/16 :goto_41a

    :cond_243
    move v5, v6

    goto :goto_274

    :cond_245
    const/4 v13, 0x0

    :try_start_246
    iget-object v6, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    const/4 v14, 0x1

    invoke-virtual {v6, v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->openCharDevice(I)I

    move-result v6
    :try_end_24d
    .catch Ljava/lang/Exception; {:try_start_246 .. :try_end_24d} :catch_2d9
    .catchall {:try_start_246 .. :try_end_24d} :catchall_415

    if-gez v6, :cond_243

    :try_start_24f
    const-string v11, "NetworkAnalytics:Service"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "handleNAPClientCall: file descriptor failed for profile:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " doStart:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_272
    .catch Ljava/lang/Exception; {:try_start_24f .. :try_end_272} :catch_23f
    .catchall {:try_start_24f .. :try_end_272} :catchall_415

    monitor-exit p0

    return v6

    :goto_274
    nop

    :try_start_275
    iget-object v3, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->checkNcmVersionMismatch()I

    move-result v3

    move v5, v3

    if-gez v5, :cond_2e3

    const-string v3, "NetworkAnalytics:Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleNAPClientCall: ncm version match failed for profile:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " doStart:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a1
    .catch Ljava/lang/Exception; {:try_start_275 .. :try_end_2a1} :catch_413
    .catchall {:try_start_275 .. :try_end_2a1} :catchall_415

    monitor-exit p0

    return v5

    :cond_2a3
    const/16 v5, -0x13

    :try_start_2a5
    const-string v3, "NetworkAnalytics:Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleNAPClientCall: file descriptor failed for profile:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " doStart:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c8
    .catch Ljava/lang/Exception; {:try_start_2a5 .. :try_end_2c8} :catch_413
    .catchall {:try_start_2a5 .. :try_end_2c8} :catchall_415

    monitor-exit p0

    return v5

    :cond_2ca
    move/from16 v16, v5

    move/from16 v17, v6

    :goto_2ce
    :try_start_2ce
    const-string v3, "NetworkAnalytics:Service"

    const-string/jumbo v5, "handleNAPClientCall: Client trying to collect data with Invalid flow information"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d6
    .catch Ljava/lang/Exception; {:try_start_2ce .. :try_end_2d6} :catch_2d9
    .catchall {:try_start_2ce .. :try_end_2d6} :catchall_415

    const/4 v3, -0x4

    monitor-exit p0

    return v3

    :catch_2d9
    move-exception v0

    move/from16 v5, v16

    goto/16 :goto_41a

    :cond_2de
    move v13, v0

    move/from16 v16, v5

    move/from16 v17, v6

    :cond_2e3
    :try_start_2e3
    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v0

    const/16 v3, -0x3e7

    if-ne v0, v3, :cond_32b

    iget-object v0, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v6

    invoke-virtual {v0, v3, v6, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->updateBindUserIdForProfile(Ljava/lang/String;II)I

    move-result v0

    move v5, v0

    if-gez v5, :cond_382

    const-string v0, "NetworkAnalytics:Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleNAPClientCall: bind userId updation failed for profile:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " doStart:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_325
    .catch Ljava/lang/Exception; {:try_start_2e3 .. :try_end_325} :catch_413
    .catchall {:try_start_2e3 .. :try_end_325} :catchall_415

    if-eqz v0, :cond_329

    goto/16 :goto_3e2

    :cond_329
    monitor-exit p0

    return v5

    :cond_32b
    :try_start_32b
    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v0

    const/16 v3, -0x3e7

    if-eq v0, v3, :cond_382

    iget-object v0, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v6

    invoke-virtual {v0, v3, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isProfileActivatedForUser(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_382

    iget-object v0, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v6

    invoke-virtual {v0, v3, v6, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->updateBindUserIdForProfile(Ljava/lang/String;II)I

    move-result v0

    move v5, v0

    if-gez v5, :cond_382

    const-string v0, "NetworkAnalytics:Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleNAPClientCall: bind userId updation failed for profile after default check:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " doStart:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_37d
    .catch Ljava/lang/Exception; {:try_start_32b .. :try_end_37d} :catch_413
    .catchall {:try_start_32b .. :try_end_37d} :catchall_415

    if-eqz v0, :cond_380

    goto :goto_3e2

    :cond_380
    monitor-exit p0

    return v5

    :cond_382
    if-eqz v4, :cond_386

    const/4 v0, 0x1

    goto :goto_388

    :cond_386
    nop

    move v0, v13

    :goto_388
    :try_start_388
    invoke-direct {v1, v12, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->activateProfile(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)I

    move-result v0

    move v5, v0

    if-gez v5, :cond_3bd

    const-string v0, "NetworkAnalytics:Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleNAPClientCall: activation failed for profile:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " doStart:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3b8
    .catch Ljava/lang/Exception; {:try_start_388 .. :try_end_3b8} :catch_413
    .catchall {:try_start_388 .. :try_end_3b8} :catchall_415

    if-eqz v0, :cond_3bb

    goto :goto_3e2

    :cond_3bb
    monitor-exit p0

    return v5

    :cond_3bd
    :try_start_3bd
    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iput v8, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->callback:Lcom/samsung/android/knox/net/nap/IStatusCallback;

    nop

    if-eqz v4, :cond_3d8

    const/4 v3, 0x1

    goto :goto_3d9

    :cond_3d8
    move v3, v13

    :goto_3d9
    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v6

    const/4 v14, 0x1

    invoke-direct {v1, v14, v3, v6, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    nop

    :goto_3e2
    move v0, v13

    move/from16 v6, v17

    move-object/from16 v3, p2

    goto/16 :goto_5f

    :cond_3e9
    move/from16 v16, v5

    move/from16 v17, v6

    goto :goto_3f6

    :catch_3ee
    move-exception v0

    move/from16 v16, v5

    move/from16 v17, v6

    goto :goto_41a

    :cond_3f4
    move/from16 v17, v6

    :goto_3f6
    goto :goto_432

    :cond_3f7
    move/from16 v17, v6

    :goto_3f9
    const-string v0, "NetworkAnalytics:Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleNAPClientCall: Invalid parameters. doStart:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_410
    .catch Ljava/lang/Exception; {:try_start_3bd .. :try_end_410} :catch_413
    .catchall {:try_start_3bd .. :try_end_410} :catchall_415

    const/4 v0, -0x4

    monitor-exit p0

    return v0

    :catch_413
    move-exception v0

    goto :goto_41a

    :catchall_415
    move-exception v0

    goto :goto_434

    :catch_417
    move-exception v0

    move/from16 v17, v6

    :goto_41a
    :try_start_41a
    const-string v3, "NetworkAnalytics:Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleNAPClientCall: Exception in doStart:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_431
    .catchall {:try_start_41a .. :try_end_431} :catchall_415

    const/4 v5, -0x1

    :goto_432
    monitor-exit p0

    return v5

    :goto_434
    monitor-exit p0

    throw v0
.end method

.method public isProfileActivatedForUser(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .registers 7

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_1d

    const-string v0, "NetworkAnalytics:Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isProfileActivatedForUser API caller is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->enforceNetworkAnalyticsPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_3e

    const-string v0, "NetworkAnalytics:Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isProfileActivatedForUser API caller with updated contextInfo is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    const/4 v0, -0x1

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-lez v1, :cond_90

    if-nez p2, :cond_46

    goto :goto_90

    :cond_46
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->doesAdminOwnProfile(ILjava/lang/String;)I

    move-result v0

    if-gez v0, :cond_7b

    const-string v1, "NetworkAnalytics:Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isProfileActivatedForUser: Profile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "is absent or does not belong to adminUid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_7b
    :try_start_7b
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v1, p2, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isProfileActivatedForUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_83} :catch_85

    move v0, v1

    goto :goto_8f

    :catch_85
    move-exception v1

    const-string v2, "NetworkAnalytics:Service"

    const-string/jumbo v3, "isProfileActivatedForUser: Remove profile to database falied. Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    :goto_8f
    return v0

    :cond_90
    :goto_90
    const-string v1, "NetworkAnalytics:Service"

    const-string/jumbo v2, "isProfileActivatedForUser: Invalid parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    return v1
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 6

    :try_start_0
    const-string v0, "NetworkAnalytics:Service"

    const-string v1, "Network Platform analytics Service is going to be added to the ServiceManager list "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    invoke-static {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getInstance(Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-static {}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->getInstance()Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    invoke-static {}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getInstance()Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    invoke-static {v0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->getInstance(Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-direct {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->initializeHandlerThread()V

    invoke-direct {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->initializeNapData()V

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_41

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    :cond_41
    invoke-static {p1, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_44} :catch_45

    goto :goto_4d

    :catch_45
    move-exception v0

    const-string v1, "NetworkAnalytics:Service"

    const-string v2, "Error occured while trying to start NPA as a system service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4d
    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_f

    const/16 v0, 0x9

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    :cond_f
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_f

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    :cond_f
    return-void
.end method

.method public registerNetworkMonitorProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .registers 9

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_1d

    const-string v0, "NetworkAnalytics:Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerNetworkMonitorProfile API caller is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->enforceNetworkAnalyticsPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_3e

    const-string v0, "NetworkAnalytics:Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerNetworkMonitorProfile API caller with updated contextInfo is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    if-eqz p1, :cond_106

    if-nez p2, :cond_44

    goto/16 :goto_106

    :cond_44
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_69

    const-string v0, "NetworkAnalytics:Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerNetworkMonitorProfile: allowUserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " profile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    const/4 v0, -0x1

    :try_start_6a
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getJSonObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->validateJsonContent(Lorg/json/JSONObject;)I

    move-result v2

    move v0, v2

    if-gez v0, :cond_91

    const-string v2, "NetworkAnalytics:Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerNetworkMonitorProfile: JSON validation failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_91
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v2, v3, v1, p2, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->addProfileToDatabase(ILorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    move v0, v2

    if-gez v0, :cond_b6

    const-string v2, "NetworkAnalytics:Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerNetworkMonitorProfile: Add profile to database failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_b6
    if-nez v0, :cond_d7

    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getClientProfileNames(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_d7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d7

    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v3, :cond_d4

    const-string v3, "NetworkAnalytics:Service"

    const-string v5, "The Knox NAP feature has been enabled"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d4
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->setFeatureProperty(Z)V

    :cond_d7
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    const-string/jumbo v3, "profile_name"

    invoke-virtual {v2, v3, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileObjectFromJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_df
    .catch Lorg/json/JSONException; {:try_start_6a .. :try_end_df} :catch_eb
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_df} :catch_e0

    goto :goto_f5

    :catch_e0
    move-exception v1

    const-string v2, "NetworkAnalytics:Service"

    const-string/jumbo v3, "registerNetworkMonitorProfile: Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    goto :goto_f6

    :catch_eb
    move-exception v1

    const-string v2, "NetworkAnalytics:Service"

    const-string/jumbo v3, "registerNetworkMonitorProfile: JSON Parsing Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x2

    :goto_f5
    nop

    :goto_f6
    if-nez v0, :cond_105

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/4 v2, 0x0

    if-eqz v1, :cond_100

    invoke-direct {p0, v2, v2, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->constructObjectForBroadcast(IILjava/lang/String;)V

    :cond_100
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->constructObjectForBroadcast(IILjava/lang/String;)V

    :cond_105
    return v0

    :cond_106
    :goto_106
    const-string v0, "NetworkAnalytics:Service"

    const-string/jumbo v1, "registerNetworkMonitorProfile: Invalid parameters."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x4

    return v0
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method

.method public unregisterNetworkMonitorProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .registers 6

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_1d

    const-string v0, "NetworkAnalytics:Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterNetworkMonitorProfile API caller is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->enforceNetworkAnalyticsPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_3e

    const-string v0, "NetworkAnalytics:Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterNetworkMonitorProfile API caller with updated contextInfo is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->unregisterNetworkMonitorProfile(ILjava/lang/String;)I

    move-result v0

    return v0
.end method
