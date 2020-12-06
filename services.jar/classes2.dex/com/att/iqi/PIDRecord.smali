.class public Lcom/att/iqi/PIDRecord;
.super Ljava/lang/Object;
.source "PIDRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/att/iqi/PIDRecord$UpdateCPUStatsTask;
    }
.end annotation


# static fields
.field private static final MILLISECONDS_PER_JIFFY:J = 0xaL

.field private static sCpuTimePattern:Ljava/util/regex/Pattern;


# instance fields
.field private volatile mIsAlive:Z

.field private mMaxMemory:J

.field private final mPID:I

.field private mStatFile:Ljava/io/FileInputStream;

.field private final mStatFilename:Ljava/lang/String;

.field private mTotalCPUTime:I

.field private final mUpdateCPUStatsTask:Lcom/att/iqi/PIDRecord$UpdateCPUStatsTask;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^(\\S+\\s+){13}(\\S+)\\s+(\\S+).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/att/iqi/PIDRecord;->sCpuTimePattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/att/iqi/PIDRecord;->mPID:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/att/iqi/PIDRecord;->mPID:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/stat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/att/iqi/PIDRecord;->mStatFilename:Ljava/lang/String;

    new-instance v0, Lcom/att/iqi/PIDRecord$UpdateCPUStatsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/att/iqi/PIDRecord$UpdateCPUStatsTask;-><init>(Lcom/att/iqi/PIDRecord;Lcom/att/iqi/PIDRecord$1;)V

    iput-object v0, p0, Lcom/att/iqi/PIDRecord;->mUpdateCPUStatsTask:Lcom/att/iqi/PIDRecord$UpdateCPUStatsTask;

    :try_start_2b
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/att/iqi/PIDRecord;->mStatFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/att/iqi/PIDRecord;->mStatFile:Ljava/io/FileInputStream;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/att/iqi/PIDRecord;->mIsAlive:Z
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_37} :catch_38

    goto :goto_5d

    :catch_38
    move-exception v0

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_5a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/att/iqi/PIDRecord;->mStatFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " can\'t track PID stats"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;)V

    :cond_5a
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/att/iqi/PIDRecord;->mIsAlive:Z

    :goto_5d
    return-void
.end method

.method static synthetic access$000(Lcom/att/iqi/PIDRecord;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/att/iqi/PIDRecord;->mIsAlive:Z

    return v0
.end method

.method static synthetic access$002(Lcom/att/iqi/PIDRecord;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/att/iqi/PIDRecord;->mIsAlive:Z

    return p1
.end method

.method static synthetic access$100(Lcom/att/iqi/PIDRecord;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/att/iqi/PIDRecord;->pidCPUTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/att/iqi/PIDRecord;)I
    .registers 2

    iget v0, p0, Lcom/att/iqi/PIDRecord;->mPID:I

    return v0
.end method

.method static synthetic access$300(Lcom/att/iqi/PIDRecord;)I
    .registers 2

    iget v0, p0, Lcom/att/iqi/PIDRecord;->mTotalCPUTime:I

    return v0
.end method

.method static synthetic access$302(Lcom/att/iqi/PIDRecord;I)I
    .registers 2

    iput p1, p0, Lcom/att/iqi/PIDRecord;->mTotalCPUTime:I

    return p1
.end method

.method static synthetic access$400(Lcom/att/iqi/PIDRecord;)J
    .registers 3

    iget-wide v0, p0, Lcom/att/iqi/PIDRecord;->mMaxMemory:J

    return-wide v0
.end method

.method private pidCPUTime()J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    :try_start_6
    iget-object v6, p0, Lcom/att/iqi/PIDRecord;->mStatFile:Ljava/io/FileInputStream;

    if-nez v6, :cond_27

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_26

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File not found or empty: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/att/iqi/PIDRecord;->mStatFilename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_26
    return-wide v4

    :cond_27
    iget-object v6, p0, Lcom/att/iqi/PIDRecord;->mStatFile:Ljava/io/FileInputStream;

    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    iget-object v8, p0, Lcom/att/iqi/PIDRecord;->mStatFile:Ljava/io/FileInputStream;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v6

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_45} :catch_47

    move-object v3, v6

    goto :goto_54

    :catch_47
    move-exception v6

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_54

    const-string/jumbo v7, "pidCPUTime readline error"

    invoke-static {v7, v6}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_54
    :goto_54
    if-nez v3, :cond_73

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_72

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File not found or empty: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/att/iqi/PIDRecord;->mStatFilename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_72
    return-wide v4

    :cond_73
    :try_start_73
    sget-object v4, Lcom/att/iqi/PIDRecord;->sCpuTimePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_a0

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_a0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v0, v6

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v6

    if-le v6, v5, :cond_a0

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_9f} :catch_a1

    add-long/2addr v0, v5

    :cond_a0
    goto :goto_ad

    :catch_a1
    move-exception v4

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_ad

    const-string v5, "Match problem"

    invoke-static {v5, v4}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_ad
    :goto_ad
    const-wide/16 v4, 0xa

    mul-long/2addr v0, v4

    return-wide v0
.end method


# virtual methods
.method protected finalize()V
    .registers 3

    invoke-virtual {p0}, Lcom/att/iqi/PIDRecord;->stopTracking()V

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PIDRecord destroyed for PID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/att/iqi/PIDRecord;->mPID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_1f
    :try_start_1f
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_2f

    :catch_23
    move-exception v0

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "Destructor threw exception!"

    invoke-static {v1, v0}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public getMaxReportedMemory()J
    .registers 3

    iget-wide v0, p0, Lcom/att/iqi/PIDRecord;->mMaxMemory:J

    return-wide v0
.end method

.method public getPID()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/PIDRecord;->mPID:I

    return v0
.end method

.method public getTotalCPUTime()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/PIDRecord;->mTotalCPUTime:I

    return v0
.end method

.method public getUpdateTask()Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/att/iqi/PIDRecord;->mUpdateCPUStatsTask:Lcom/att/iqi/PIDRecord$UpdateCPUStatsTask;

    return-object v0
.end method

.method public isAlive()Z
    .registers 2

    iget-boolean v0, p0, Lcom/att/iqi/PIDRecord;->mIsAlive:Z

    return v0
.end method

.method public reportMemoryUsed(J)V
    .registers 5

    iget-wide v0, p0, Lcom/att/iqi/PIDRecord;->mMaxMemory:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_8

    iput-wide p1, p0, Lcom/att/iqi/PIDRecord;->mMaxMemory:J

    :cond_8
    return-void
.end method

.method public declared-synchronized setIsAlive(Z)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/att/iqi/PIDRecord;->mIsAlive:Z

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/att/iqi/PIDRecord;->stopTracking()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    :cond_8
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopTracking()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/att/iqi/PIDRecord;->mStatFile:Ljava/io/FileInputStream;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_35

    if-eqz v0, :cond_17

    :try_start_5
    iget-object v0, p0, Lcom/att/iqi/PIDRecord;->mStatFile:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_b
    .catchall {:try_start_5 .. :try_end_a} :catchall_35

    goto :goto_17

    :catch_b
    move-exception v0

    :try_start_c
    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "Exception when closing PIDRecord"

    invoke-static {v1, v0}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_17
    :goto_17
    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stopped tracking PID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/att/iqi/PIDRecord;->mPID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_35

    :cond_33
    monitor-exit p0

    return-void

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method
