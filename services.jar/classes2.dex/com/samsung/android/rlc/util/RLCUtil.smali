.class public Lcom/samsung/android/rlc/util/RLCUtil;
.super Ljava/lang/Object;
.source "RLCUtil.java"


# static fields
.field public static final BLINK_INTERVAL:Ljava/lang/String; = "blinkInt"

.field public static final BLINK_MSG:Ljava/lang/String; = "blinkMsg"

.field public static final BLINK_PASS:Ljava/lang/String; = "blinkPass"

.field public static final BLINK_REQ:Ljava/lang/String; = "blinkReq"

.field public static final BLINK_TEL:Ljava/lang/String; = "blinkTel"

.field public static NODATA:I = 0x0

.field public static NOT_SUPPORTED:I = 0x0

.field public static PKG_VER:Ljava/lang/String; = null

.field public static RESET_ASKED:I = 0x0

.field public static final SIMCHANGE_REQ:Ljava/lang/String; = "simReq"

.field public static SUPPORTED:I

.field private static final TAG:Ljava/lang/String;

.field private static volatile rlcUtil:Lcom/samsung/android/rlc/util/RLCUtil;


# instance fields
.field private mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

.field private m_Sync:Ljava/lang/Object;

.field private mcontext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/samsung/android/rlc/util/RLCUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/rlc/util/RLCUtil;->RESET_ASKED:I

    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/rlc/util/RLCUtil;->NODATA:I

    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/rlc/util/RLCUtil;->SUPPORTED:I

    const/4 v0, 0x4

    sput v0, Lcom/samsung/android/rlc/util/RLCUtil;->NOT_SUPPORTED:I

    const-string/jumbo v0, "rmm_pkg_ver"

    sput-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->PKG_VER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mcontext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/rlc/util/RLCUtil;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mcontext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;
    .registers 3

    sget-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->rlcUtil:Lcom/samsung/android/rlc/util/RLCUtil;

    if-nez v0, :cond_12

    sget-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v1, "[getInstance]Create new instance"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/rlc/util/RLCUtil;

    invoke-direct {v0, p0}, Lcom/samsung/android/rlc/util/RLCUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->rlcUtil:Lcom/samsung/android/rlc/util/RLCUtil;

    :cond_12
    sget-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->rlcUtil:Lcom/samsung/android/rlc/util/RLCUtil;

    return-object v0
.end method

.method private getSecureData()Lorg/json/JSONObject;
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    const-string v2, ""
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_4b

    :try_start_9
    iget-object v3, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getClientData()Ljava/lang/String;

    move-result-object v3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_2e
    .catchall {:try_start_9 .. :try_end_f} :catchall_4b

    move-object v2, v3

    nop

    :try_start_11
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    sget-object v3, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v4, "[getSecureData]RLC Manager returns null"

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_4b

    return-object v0

    :cond_20
    :try_start_20
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_25} :catch_28
    .catchall {:try_start_20 .. :try_end_25} :catchall_4b

    move-object v0, v3

    :try_start_26
    monitor-exit v1

    return-object v0

    :catch_28
    move-exception v3

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    monitor-exit v1

    return-object v0

    :catch_2e
    move-exception v3

    sget-object v4, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RLC Manager throws exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    return-object v0

    :catchall_4b
    move-exception v2

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_26 .. :try_end_4d} :catchall_4b

    throw v2
.end method

.method private initRlcInstance()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    if-nez v0, :cond_1a

    sget-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v1, "[InitRlcInstance] Create new Instance"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mcontext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/rlc/util/RLCUtil$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/rlc/util/RLCUtil$1;-><init>(Lcom/samsung/android/rlc/util/RLCUtil;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;-><init>(Landroid/content/Context;Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;)V

    iput-object v0, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    goto :goto_21

    :cond_1a
    sget-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v1, "[InitRlcInstance] Already Exist"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_21
    return-void
.end method


# virtual methods
.method public backUpSecureData()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v1, "[backUpSecureData]"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    :try_start_a
    iget-object v0, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getClientData()Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_a .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bindToLockListner()V
    .registers 3

    sget-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v1, "[bindToLockListner]"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    :try_start_a
    iget-object v0, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->bindToLockScreen()V
    :try_end_f
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->printStackTrace()V

    :goto_14
    return-void
.end method

.method public checkRMMFunctions()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    iget-object v0, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->query()Ljava/lang/String;

    const-string v0, "bootTime"

    invoke-virtual {p0, v0}, Lcom/samsung/android/rlc/util/RLCUtil;->getStringInSecure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[checkRMMFunctions] Boot time empty"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_1d
    const/4 v1, 0x1

    return v1
.end method

.method public clearSecureDataForRecheck()V
    .registers 5

    sget-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v1, "[resetSecureData]"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getSecureData()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_12

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_36

    return-void

    :cond_12
    :try_start_12
    const-string v2, "RID"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "RLC_STATUS"

    const-string v3, "-1"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setClientData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_29} :catch_2f
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_12 .. :try_end_29} :catch_2a
    .catchall {:try_start_12 .. :try_end_29} :catchall_36

    goto :goto_33

    :catch_2a
    move-exception v2

    :try_start_2b
    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->printStackTrace()V

    goto :goto_34

    :catch_2f
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_33
    nop

    :goto_34
    monitor-exit v0

    return-void

    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_36

    throw v1
.end method

.method public completeBlink(Z[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[completeRlc operation]Token Size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    sget-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v1, "[completeBlinking]"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->completeBlinking(Z[B[B)[B

    move-result-object v0

    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[completeBlinking] Result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_37

    array-length v3, v0

    goto :goto_38

    :cond_37
    const/4 v3, 0x0

    :goto_38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public completeDestroy(Z[B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[completeRlc operation]Sign Size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    sget-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v1, "[completeDestroy]"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->completeDestroying(Z[B)[B

    move-result-object v0

    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[completeDestroy] Result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_37

    array-length v3, v0

    goto :goto_38

    :cond_37
    const/4 v3, 0x0

    :goto_38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public completeLock(Z[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[completeRlc operation]Token Size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    sget-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v1, "[completeLocking]"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->completeLocking(Z[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[completeRlc] Result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3d

    array-length v3, v0

    goto :goto_3e

    :cond_3d
    const/4 v3, 0x0

    :goto_3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public completeRlc(Z[BI[B)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[completeRlc operation]Token Size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p3, v1, :cond_3e

    packed-switch p3, :pswitch_data_68

    goto :goto_4c

    :pswitch_22
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[completeComplete]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->completeCompleting(Z[B)[B

    move-result-object v0

    goto :goto_4c

    :pswitch_30
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[completeUnlocking]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->completeUnlocking(Z[B)[B

    move-result-object v0

    goto :goto_4c

    :cond_3e
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[completeRegistering]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1, p2, p4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->completeRegistering(Z[B[B)[B

    move-result-object v0

    nop

    :goto_4c
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[completeRlc] Result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_5c

    array-length v3, v0

    goto :goto_5d

    :cond_5c
    const/4 v3, 0x0

    :goto_5d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_data_68
    .packed-switch 0x3
        :pswitch_30
        :pswitch_22
    .end packed-switch
.end method

.method public completeUnlocking(Ljava/lang/String;)I
    .registers 5

    sget-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[completeUnlocking] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    const/4 v0, 0x0

    :try_start_1a
    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->completeUnlocking(Ljava/lang/String;)I

    move-result v1
    :try_end_20
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_1a .. :try_end_20} :catch_22

    move v0, v1

    goto :goto_26

    :catch_22
    move-exception v1

    invoke-virtual {v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->printStackTrace()V

    :goto_26
    return v0
.end method

.method public encryptData([B[B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    iget-object v0, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->encryptData([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getIMEI(I)[Ljava/lang/String;
    .registers 9

    iget-object v0, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getSecureData()Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_52

    return-object v2

    :cond_c
    :try_start_c
    const-string v3, "IMEI_1"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2b

    if-le p1, v4, :cond_29

    const-string v3, "IMEI_2"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_25} :catch_4c
    .catchall {:try_start_c .. :try_end_25} :catchall_52

    if-eqz v3, :cond_2b

    :try_start_27
    monitor-exit v0

    return-object v2

    :cond_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_52

    return-object v2

    :cond_2b
    if-nez p1, :cond_2e

    const/4 p1, 0x1

    :cond_2e
    :try_start_2e
    new-array v3, p1, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "IMEI_1"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    if-le p1, v4, :cond_4a

    const-string v5, "IMEI_2"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    sget-object v4, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v5, "Dualsim device. get imei 2 from rmm area"

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_4a} :catch_4c
    .catchall {:try_start_2e .. :try_end_4a} :catchall_52

    :cond_4a
    :try_start_4a
    monitor-exit v0

    return-object v3

    :catch_4c
    move-exception v3

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    monitor-exit v0

    return-object v2

    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_52

    throw v1
.end method

.method public getRLCID()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getSecureData()Lorg/json/JSONObject;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_47

    const/4 v2, 0x0

    if-eqz v1, :cond_45

    :try_start_a
    const-string v3, "RID"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_45

    :cond_17
    sget-object v3, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getRLCID]RLC ID length : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "RID"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "RID"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_3d} :catch_3f
    .catchall {:try_start_a .. :try_end_3d} :catchall_47

    :try_start_3d
    monitor-exit v0

    return-object v3

    :catch_3f
    move-exception v3

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    monitor-exit v0

    return-object v2

    :cond_45
    :goto_45
    monitor-exit v0

    return-object v2

    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3d .. :try_end_49} :catchall_47

    throw v1
.end method

.method public getRLCStatus()Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    const/4 v0, 0x0

    :try_start_4
    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->query()Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_c

    move-object v0, v1

    goto :goto_10

    :catch_c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_10
    if-nez v0, :cond_19

    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[getRLCStatus]RLC Manager returns null"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getRLCStatus] RLC Status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getRegiStatus()I
    .registers 8

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getSecureData()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "-1"
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_45

    if-eqz v2, :cond_42

    :try_start_c
    const-string v4, "RLC_STATUS"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    goto :goto_42

    :cond_19
    const-string v4, "RLC_STATUS"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_1f} :catch_21
    .catchall {:try_start_c .. :try_end_1f} :catchall_45

    move-object v3, v4

    goto :goto_25

    :catch_21
    move-exception v4

    :try_start_22
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    :goto_25
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v0, v4

    sget-object v4, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isRegistration] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    return v0

    :cond_42
    :goto_42
    const/4 v4, -0x1

    monitor-exit v1

    return v4

    :catchall_45
    move-exception v2

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_22 .. :try_end_47} :catchall_45

    throw v2
.end method

.method public getStringInSecure(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getSecureData()Lorg/json/JSONObject;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_23

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    :try_start_a
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_21

    :cond_15
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_19} :catch_1b
    .catchall {:try_start_a .. :try_end_19} :catchall_23

    :try_start_19
    monitor-exit v0

    return-object v3

    :catch_1b
    move-exception v3

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    monitor-exit v0

    return-object v2

    :cond_21
    :goto_21
    monitor-exit v0

    return-object v2

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public isRMMEnable()Z
    .registers 7

    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    const/4 v0, 0x0

    move v1, v0

    :try_start_5
    iget-object v2, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->query()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x7804e0d6

    if-eq v4, v5, :cond_34

    const v0, -0x749456f9

    if-eq v4, v0, :cond_2a

    const v0, 0x3d4bf3c

    if-eq v4, v0, :cond_20

    goto :goto_3d

    :cond_20
    const-string v0, "Blink"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x1

    goto :goto_3e

    :cond_2a
    const-string v0, "Normal"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x2

    goto :goto_3e

    :cond_34
    const-string v4, "Locked"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3a
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_5 .. :try_end_3a} :catch_45

    if-eqz v2, :cond_3d

    goto :goto_3e

    :cond_3d
    :goto_3d
    move v0, v3

    :goto_3e
    packed-switch v0, :pswitch_data_4a

    goto :goto_44

    :pswitch_42
    const/4 v0, 0x1

    move v1, v0

    :goto_44
    goto :goto_49

    :catch_45
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->printStackTrace()V

    :goto_49
    return v1

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_42
        :pswitch_42
        :pswitch_42
    .end packed-switch
.end method

.method public isTargetDevice(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p1}, Lcom/samsung/android/rlc/util/DeviceUtil;->getCISSalesCode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public prepareRlc([B[B[BI)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v1, "[prepareRlc operation]"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    const/4 v0, 0x0

    packed-switch p4, :pswitch_data_80

    goto :goto_63

    :pswitch_f
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[prepareDestroy]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->prepareDestroying([B[B[B)[B

    move-result-object v0

    goto :goto_63

    :pswitch_1d
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[prepareBlink]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->prepareBlinking([B[B[B)[B

    move-result-object v0

    goto :goto_63

    :pswitch_2b
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[prepareComplete]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->prepareCompleting([B[B[B)[B

    move-result-object v0

    goto :goto_63

    :pswitch_39
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[prepareUnlocking]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->prepareUnlocking([B[B[B)[B

    move-result-object v0

    goto :goto_63

    :pswitch_47
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[prepareLocking]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->prepareLocking([B[B[B)[B

    move-result-object v0

    goto :goto_63

    :pswitch_55
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[prepareRegistering]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->prepareRegistering([B[B[B)[B

    move-result-object v0

    nop

    :goto_63
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[prepareRlc] Result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_73

    array-length v3, v0

    goto :goto_74

    :cond_73
    const/4 v3, 0x0

    :goto_74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_55
        :pswitch_47
        :pswitch_39
        :pswitch_2b
        :pswitch_1d
        :pswitch_f
    .end packed-switch
.end method

.method public query([B[B[B)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    iget-object v0, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->query([B[B[B)[B

    move-result-object v0

    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[query] :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public resetSecureData()V
    .registers 5

    sget-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v1, "[resetSecureData]"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getSecureData()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_12

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_52

    return-void

    :cond_12
    :try_start_12
    const-string v2, "RID"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "RLC_STATUS"

    const-string v3, "-1"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "2rd"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "bootTime"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "3rd"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "bootDate"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setClientData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_45} :catch_4b
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_12 .. :try_end_45} :catch_46
    .catchall {:try_start_12 .. :try_end_45} :catchall_52

    goto :goto_4f

    :catch_46
    move-exception v2

    :try_start_47
    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->printStackTrace()V

    goto :goto_50

    :catch_4b
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_4f
    nop

    :goto_50
    monitor-exit v0

    return-void

    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_47 .. :try_end_54} :catchall_52

    throw v1
.end method

.method public restoreSecureData(Ljava/lang/String;)Z
    .registers 5

    sget-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[restoreSecureData] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    :try_start_1d
    iget-object v0, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setClientData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_22
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_1d .. :try_end_22} :catch_24

    const/4 v0, 0x1

    return v0

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public setIMEIs([Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getSecureData()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_16

    sget-object v2, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v3, "[setIMEIs]There is no data in secure area"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_3f

    move-object v1, v2

    :cond_16
    :try_start_16
    const-string v2, "IMEI_1"

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_29

    const-string v2, "IMEI_2"

    aget-object v3, p1, v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_29
    iget-object v2, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setClientData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_32} :catch_38
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_32} :catch_33
    .catchall {:try_start_16 .. :try_end_32} :catchall_3f

    goto :goto_3c

    :catch_33
    move-exception v2

    :try_start_34
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3d

    :catch_38
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3c
    nop

    :goto_3d
    monitor-exit v0

    return-void

    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_34 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public setRLCID(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRLCID] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getSecureData()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2c

    sget-object v2, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v3, "[setRLCID]There is no data in secure area"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_61

    move-object v1, v2

    :cond_2c
    :try_start_2c
    const-string v2, "RID"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setRLCID]RLC ID length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setClientData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_54} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_54} :catch_55
    .catchall {:try_start_2c .. :try_end_54} :catchall_61

    goto :goto_5e

    :catch_55
    move-exception v2

    :try_start_56
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5f

    :catch_5a
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_5e
    nop

    :goto_5f
    monitor-exit v0

    return-void

    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_56 .. :try_end_63} :catchall_61

    throw v1
.end method

.method public setRegiStatus(I)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRegiStatus] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getSecureData()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2c

    sget-object v2, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v3, "[setRegiStatus]There is no data in secure area"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_47

    move-object v1, v2

    :cond_2c
    :try_start_2c
    const-string v2, "RLC_STATUS"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setClientData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_3a} :catch_40
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3a} :catch_3b
    .catchall {:try_start_2c .. :try_end_3a} :catchall_47

    goto :goto_44

    :catch_3b
    move-exception v2

    :try_start_3c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_45

    :catch_40
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_44
    nop

    :goto_45
    monitor-exit v0

    return-void

    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3c .. :try_end_49} :catchall_47

    throw v1
.end method

.method public setStringInSecure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setStringInSecure] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getSecureData()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2d

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_46

    move-object v1, v2

    :cond_2d
    :try_start_2d
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setClientData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_39} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_39} :catch_3a
    .catchall {:try_start_2d .. :try_end_39} :catchall_46

    goto :goto_43

    :catch_3a
    move-exception v2

    :try_start_3b
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_44

    :catch_3f
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_43
    nop

    :goto_44
    monitor-exit v0

    return-void

    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3b .. :try_end_48} :catchall_46

    throw v1
.end method

.method public setTheftProtection()V
    .registers 3

    sget-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v1, "[setTheftProtection operation]"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    :try_start_a
    iget-object v0, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setRmmTargetDevice()I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_14
    return-void
.end method

.method public unlockBlink(Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    iget-object v0, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->completeUnlocking(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[unlockBlink] Result :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
