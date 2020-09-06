.class public Lcom/android/server/knox/ddar/ta/TAProxy;
.super Ljava/lang/Object;
.source "TAProxy.java"

# interfaces
.implements Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;
    }
.end annotation


# static fields
.field public static final ALL_TAS:Ljava/lang/String; = "ALL_TAS"

.field public static final LOAD_TA:Ljava/lang/String; = "LOAD_TA"

.field public static final PROCESS_COMMAND:Ljava/lang/String; = "PROCESS_COMMAND"

.field public static final SETUP_TA:Ljava/lang/String; = "SETUP_TA"

.field public static final TAG:Ljava/lang/String; = "TAProxy"

.field public static final TA_CMD_DATA:Ljava/lang/String; = "TA_CMD_DATA"

.field public static final TA_CMD_ID:Ljava/lang/String; = "TA_CMD_ID"

.field public static final TA_ERROR_MSG:Ljava/lang/String; = "TA_ERROR_MSG"

.field public static final TA_FD:Ljava/lang/String; = "TA_FD"

.field public static final TA_FD_OFFSET:Ljava/lang/String; = "TA_FD_OFFSET"

.field public static final TA_FD_SIZE:Ljava/lang/String; = "TA_FD_SIZE"

.field public static final TA_ID:Ljava/lang/String; = "TA_ID"

.field public static final TA_MAGICNUM:Ljava/lang/String; = "TA_MAGICNUM"

.field public static final TA_PROCESS_NAME:Ljava/lang/String; = "TA_PROCESS_NAME"

.field public static final TA_RECV_RESP_SIZE:Ljava/lang/String; = "TA_RECV_RESP_SIZE"

.field public static final TA_RESPDATA:Ljava/lang/String; = "TA_RESPDATA"

.field public static final TA_RESP_CODE:Ljava/lang/String; = "TA_RESP_CODE"

.field public static final TA_ROOT_NAME:Ljava/lang/String; = "TA_ROOT_NAME"

.field public static final TA_SEND_CMD_SIZE:Ljava/lang/String; = "TA_SEND_CMD_SIZE"

.field public static final TA_TECHNOLOGY:Ljava/lang/String; = "TA_TECHNOLOGY"

.field public static final TA_VERSION:Ljava/lang/String; = "TA_VERSION"

.field public static final UNLOAD_TA:Ljava/lang/String; = "UNLOAD_TA"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/android/server/knox/ddar/ta/TAProxy;

.field private static mTAMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/knox/ddar/ta/TAProxy;->mInstance:Lcom/android/server/knox/ddar/ta/TAProxy;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/knox/ddar/ta/TAProxy;->mTAMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TAProxy"

    const-string v1, "TAProxy() called updated"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    sput-object p1, Lcom/android/server/knox/ddar/ta/TAProxy;->mContext:Landroid/content/Context;

    return-void
.end method

.method private enforceCallingUser(I)V
    .registers 5

    const-string v0, "TAProxy"

    const-string/jumbo v1, "enforceCallingUser"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x1482

    if-ne v1, v2, :cond_18

    return-void

    :cond_18
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne v1, v2, :cond_23

    return-void

    :cond_23
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Can only be called by system user"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/ta/TAProxy;
    .registers 3

    const-class v0, Lcom/android/server/knox/ddar/ta/TAProxy;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/knox/ddar/ta/TAProxy;->mInstance:Lcom/android/server/knox/ddar/ta/TAProxy;

    if-nez v1, :cond_e

    new-instance v1, Lcom/android/server/knox/ddar/ta/TAProxy;

    invoke-direct {v1, p0}, Lcom/android/server/knox/ddar/ta/TAProxy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/knox/ddar/ta/TAProxy;->mInstance:Lcom/android/server/knox/ddar/ta/TAProxy;

    :cond_e
    sget-object v1, Lcom/android/server/knox/ddar/ta/TAProxy;->mInstance:Lcom/android/server/knox/ddar/ta/TAProxy;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private loadTARequest(Landroid/os/Bundle;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "TAProxy"

    const-string/jumbo v1, "loadTARequest called"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v0, "TA_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "TA_FD"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/os/ParcelFileDescriptor;

    const-string v1, "TA_FD_OFFSET"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    const-string v1, "TA_FD_SIZE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    move-object v1, p0

    move v2, v0

    move-object v3, v8

    move-wide v4, v9

    move-wide v6, v11

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/knox/ddar/ta/TAProxy;->loadTA(ILandroid/os/ParcelFileDescriptor;JJ)Z

    move-result v1

    return v1
.end method

.method private processCommandRequest(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "TAProxy"

    const-string/jumbo v1, "processCommandRequest called"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v0, "TA_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Lcom/android/server/knox/ddar/ta/TACommandRequest;

    invoke-direct {v2}, Lcom/android/server/knox/ddar/ta/TACommandRequest;-><init>()V

    const-string v3, "TA_VERSION"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "TA_MAGICNUM"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "TA_CMD_ID"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "TA_CMD_DATA"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/knox/ddar/ta/TACommandRequest;->init(I[BI[B)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/knox/ddar/ta/TAProxy;->processTACommand(ILcom/android/server/knox/ddar/ta/TACommandRequest;)Lcom/android/server/knox/ddar/ta/TACommandResponse;

    move-result-object v3

    const-string v4, "TA_RESP_CODE"

    iget v5, v3, Lcom/android/server/knox/ddar/ta/TACommandResponse;->mResponseCode:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "TA_ERROR_MSG"

    iget-object v5, v3, Lcom/android/server/knox/ddar/ta/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "TA_RESPDATA"

    iget-object v5, v3, Lcom/android/server/knox/ddar/ta/TACommandResponse;->mResponse:[B

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v1
.end method

.method private setupTARequest(Landroid/os/Bundle;)Z
    .registers 15

    const-string v0, "TAProxy"

    const-string/jumbo v1, "setupTARequest called"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v0, "ALL_TAS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    move v1, v2

    :goto_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_84

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    new-instance v4, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;-><init>(Lcom/android/server/knox/ddar/ta/TAProxy$1;)V

    const-string v5, "TA_ID"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->taId:I

    const-string v5, "TA_TECHNOLOGY"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->taTechnology:Ljava/lang/String;

    const-string v5, "TA_ROOT_NAME"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->taRootName:Ljava/lang/String;

    const-string v5, "TA_PROCESS_NAME"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->taProcessName:Ljava/lang/String;

    const-string v5, "TA_SEND_CMD_SIZE"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->maxSendCmdSize:I

    const-string v5, "TA_RECV_RESP_SIZE"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->maxRecvRespSize:I

    sget-object v5, Lcom/android/server/knox/ddar/ta/TAProxy;->mTAMap:Ljava/util/Map;

    iget v6, v4, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->taId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_81

    new-instance v5, Lcom/android/server/knox/ddar/ta/TZNative;

    iget v7, v4, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->taId:I

    iget-object v8, v4, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->taTechnology:Ljava/lang/String;

    iget-object v9, v4, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->taRootName:Ljava/lang/String;

    iget-object v10, v4, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->taProcessName:Ljava/lang/String;

    iget v11, v4, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->maxSendCmdSize:I

    iget v12, v4, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->maxRecvRespSize:I

    move-object v6, v5

    invoke-direct/range {v6 .. v12}, Lcom/android/server/knox/ddar/ta/TZNative;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v5, v4, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->ta:Lcom/android/server/knox/ddar/ta/TZNative;

    sget-object v6, Lcom/android/server/knox/ddar/ta/TAProxy;->mTAMap:Ljava/util/Map;

    iget v7, v4, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->taId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_81
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_84
    const-string v1, "TAProxy"

    const-string/jumbo v3, "setupTARequest completed"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v1, 0x1

    return v1
.end method

.method private unloadTARequest(Landroid/os/Bundle;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "TAProxy"

    const-string/jumbo v1, "unloadTARequest called"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v0, "TA_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/knox/ddar/ta/TAProxy;->unloadTA(I)V

    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public loadTA(ILandroid/os/ParcelFileDescriptor;JJ)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "TAProxy"

    const-string v1, "TAProxy::loadTA"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, -0x1

    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    :cond_11
    const-string v1, "TAProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TA fd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " offset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    sget-object v1, Lcom/android/server/knox/ddar/ta/TAProxy;->mTAMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;

    iget-object v3, v1, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->ta:Lcom/android/server/knox/ddar/ta/TZNative;

    move v4, v0

    move-wide v5, p3

    move-wide v7, p5

    :try_start_4a
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/knox/ddar/ta/TZNative;->loadTA(IJJ)Z

    move-result v1
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_59

    if-eqz p2, :cond_58

    :try_start_50
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    goto :goto_58

    :catch_54
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_58
    :goto_58
    return v1

    :catchall_59
    move-exception v1

    if-eqz p2, :cond_64

    :try_start_5c
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_64

    :catch_60
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_64
    :goto_64
    throw v1
.end method

.method public onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 10

    invoke-direct {p0, p1}, Lcom/android/server/knox/ddar/ta/TAProxy;->enforceCallingUser(I)V

    const/4 v0, 0x0

    move v1, v0

    :try_start_5
    const-string v2, "TAProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onMessage() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x7bc5cc71

    if-eq v4, v5, :cond_5b

    const v0, 0x203147ad

    if-eq v4, v0, :cond_51

    const v0, 0x3edcc066

    if-eq v4, v0, :cond_47

    const v0, 0x632dfd3b

    if-eq v4, v0, :cond_3d

    goto :goto_64

    :cond_3d
    const-string v0, "PROCESS_COMMAND"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    const/4 v0, 0x3

    goto :goto_65

    :cond_47
    const-string v0, "LOAD_TA"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    const/4 v0, 0x1

    goto :goto_65

    :cond_51
    const-string v0, "UNLOAD_TA"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    const/4 v0, 0x2

    goto :goto_65

    :cond_5b
    const-string v4, "SETUP_TA"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    goto :goto_65

    :cond_64
    :goto_64
    move v0, v3

    :goto_65
    packed-switch v0, :pswitch_data_a0

    goto :goto_98

    :pswitch_69
    invoke-direct {p0, p3}, Lcom/android/server/knox/ddar/ta/TAProxy;->processCommandRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "dual_dar_response"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_98

    :pswitch_74
    invoke-direct {p0, p3}, Lcom/android/server/knox/ddar/ta/TAProxy;->unloadTARequest(Landroid/os/Bundle;)Z

    move-result v0

    move v1, v0

    const-string/jumbo v0, "dual_dar_response"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_98

    :pswitch_80
    invoke-direct {p0, p3}, Lcom/android/server/knox/ddar/ta/TAProxy;->loadTARequest(Landroid/os/Bundle;)Z

    move-result v0

    move v1, v0

    const-string/jumbo v0, "dual_dar_response"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_98

    :pswitch_8c
    invoke-direct {p0, p3}, Lcom/android/server/knox/ddar/ta/TAProxy;->setupTARequest(Landroid/os/Bundle;)Z

    move-result v0

    move v1, v0

    const-string/jumbo v0, "dual_dar_response"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_97} :catch_99

    nop

    :goto_98
    return-object v2

    :catch_99
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_8c
        :pswitch_80
        :pswitch_74
        :pswitch_69
    .end packed-switch
.end method

.method public processTACommand(ILcom/android/server/knox/ddar/ta/TACommandRequest;)Lcom/android/server/knox/ddar/ta/TACommandResponse;
    .registers 6

    const-string v0, "TAProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TAProxy::processTACommand: request = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; request.mCommandId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mCommandId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; this.mTAId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    sget-object v0, Lcom/android/server/knox/ddar/ta/TAProxy;->mTAMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;

    iget-object v0, v0, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->ta:Lcom/android/server/knox/ddar/ta/TZNative;

    invoke-virtual {v0, p2}, Lcom/android/server/knox/ddar/ta/TZNative;->processTACommand(Lcom/android/server/knox/ddar/ta/TACommandRequest;)Lcom/android/server/knox/ddar/ta/TACommandResponse;

    move-result-object v1

    return-object v1
.end method

.method public unloadTA(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "TAProxy"

    const-string v1, "TAProxy::unloadTA"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    sget-object v0, Lcom/android/server/knox/ddar/ta/TAProxy;->mTAMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;

    iget-object v0, v0, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->ta:Lcom/android/server/knox/ddar/ta/TZNative;

    invoke-virtual {v0}, Lcom/android/server/knox/ddar/ta/TZNative;->unloadTA()V

    return-void
.end method
