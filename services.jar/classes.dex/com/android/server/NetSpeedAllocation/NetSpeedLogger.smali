.class public Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;
.super Ljava/lang/Object;
.source "NetSpeedLogger.java"


# static fields
.field public static final LOG_LOCAL_SIZE:I = 0xbb8

.field private static sInstance:Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;


# instance fields
.field mIsShowingGlobalLog:Z

.field mIsUsed:Z

.field private mNetSpeedLog:Landroid/util/LocalLog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;->sInstance:Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0xbb8

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;->mNetSpeedLog:Landroid/util/LocalLog;

    const-string v0, "1"

    const-string/jumbo v1, "persist.log.seclevel"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;->mIsShowingGlobalLog:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;->mIsUsed:Z

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;
    .registers 2

    const-class v0, Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;->sInstance:Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;

    if-nez v1, :cond_e

    new-instance v1, Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;

    invoke-direct {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;-><init>()V

    sput-object v1, Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;->sInstance:Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;

    :cond_e
    sget-object v1, Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;->sInstance:Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public add(Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;->mIsUsed:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;->mIsUsed:Z

    :cond_7
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;->mNetSpeedLog:Landroid/util/LocalLog;

    invoke-virtual {p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->dumpNetSpeedStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public dumpNetSpeedLogger(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;->mIsShowingGlobalLog:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    iget-boolean v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;->mIsUsed:Z

    if-ne v0, v1, :cond_1f

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v0, "NetSpeedLogger history Log:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "APP name/Start Time/End time/Limited Netspeed/Dropped Package/Dropped Bytes/Command/Limited Reason/Released Reason"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;->mNetSpeedLog:Landroid/util/LocalLog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, v1}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_1f
    return-void
.end method
