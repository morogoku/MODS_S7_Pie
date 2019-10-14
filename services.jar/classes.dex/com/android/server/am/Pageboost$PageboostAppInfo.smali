.class final Lcom/android/server/am/Pageboost$PageboostAppInfo;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PageboostAppInfo"
.end annotation


# static fields
.field private static current_seq_num:I

.field private static final lock:Ljava/lang/Object;


# instance fields
.field mAccExecTime:J

.field mAccExecTime_Vramdisk:J

.field mApkInfo:Ljava/lang/String;

.field mApkPath:Ljava/lang/String;

.field mApkSize:I

.field mCaptured:I

.field mExecCnt:I

.field mExecCnt_Vramdisk:I

.field mFixed:I

.field mHitCnt:I

.field mInVramdisk:I

.field mInstalled:I

.field mName:Ljava/lang/String;

.field mNameTrimmed:Ljava/lang/String;

.field mPreferred:I

.field mPrefetchCnt:I

.field mScore:I

.field mSeqNum:I

.field mSizeForPrefetch:J

.field mSizeForVramdisk:J

.field mStateActive:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->current_seq_num:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->lock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    const-string v0, "."

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mCaptured:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForPrefetch:J

    iput-wide v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForVramdisk:J

    iput v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkSize:I

    iput v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mScore:I

    iput v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt:I

    iput-wide v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime:J

    iput v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInVramdisk:I

    iput v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mStateActive:I

    iput v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPreferred:I

    iput v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mFixed:I

    iput v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt_Vramdisk:I

    iput-wide v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime_Vramdisk:J

    iput v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSeqNum:I

    iput v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPrefetchCnt:I

    iput v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mHitCnt:I

    iput v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkInfo:Ljava/lang/String;

    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appinfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;IJJIIJIIIJIILjava/lang/String;Ljava/lang/String;)V
    .registers 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p7

    move/from16 v3, p8

    move/from16 v4, p16

    move/from16 v5, p17

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    const-string v6, "."

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    move/from16 v6, p2

    iput v6, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mCaptured:I

    move-wide/from16 v7, p3

    iput-wide v7, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForPrefetch:J

    move-wide/from16 v9, p5

    iput-wide v9, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForVramdisk:J

    iput v2, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mScore:I

    iput v3, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt:I

    move-wide/from16 v11, p9

    iput-wide v11, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime:J

    move/from16 v13, p11

    iput v13, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInVramdisk:I

    move/from16 v14, p12

    iput v14, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mStateActive:I

    move/from16 v15, p13

    iput v15, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt_Vramdisk:I

    move-wide/from16 v6, p14

    iput-wide v6, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime_Vramdisk:J

    const/4 v8, 0x0

    iput v8, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSeqNum:I

    iput v4, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPrefetchCnt:I

    iput v5, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mHitCnt:I

    move-object/from16 v8, p18

    iput-object v8, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    move-object/from16 v6, p19

    iput-object v6, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkInfo:Ljava/lang/String;

    const/4 v7, 0x0

    iput v7, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appinfo : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private GetPreDo(I)Lcom/android/server/am/Pageboost$PreDo;
    .registers 3

    new-instance v0, Lcom/android/server/am/Pageboost$IoPrefetch;

    invoke-direct {v0}, Lcom/android/server/am/Pageboost$IoPrefetch;-><init>()V

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setFixed(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/Pageboost$PageboostAppInfo;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getPreferred()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/am/Pageboost$PageboostAppInfo;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getStateActive()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setStateActive(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/Pageboost$PageboostAppInfo;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getFixed()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setPreferred(I)V

    return-void
.end method

.method private addSizeForVramdisk(J)V
    .registers 11

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    return-void

    :cond_7
    iget-wide v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForVramdisk:J

    const-wide/16 v4, 0x1000

    rem-long v6, p1, v4

    cmp-long v0, v6, v0

    if-lez v0, :cond_16

    div-long v0, p1, v4

    mul-long/2addr v0, v4

    add-long/2addr v0, v4

    goto :goto_17

    :cond_16
    move-wide v0, p1

    :goto_17
    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForVramdisk:J

    return-void
.end method

.method private getFixed()I
    .registers 2

    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mFixed:I

    return v0
.end method

.method private getPreferred()I
    .registers 2

    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPreferred:I

    return v0
.end method

.method private getStateActive()I
    .registers 2

    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mStateActive:I

    return v0
.end method

.method private setFixed(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mFixed:I

    return-void
.end method

.method private setPreferred(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPreferred:I

    return-void
.end method

.method private setStateActive(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mStateActive:I

    return-void
.end method


# virtual methods
.method public alive()Z
    .registers 9

    const/4 v0, 0x0

    # getter for: Lcom/android/server/am/Pageboost;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1400()Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    monitor-enter v1

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    # getter for: Lcom/android/server/am/Pageboost;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1400()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    if-eqz v2, :cond_46

    iget-object v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    if-eqz v3, :cond_46

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_25
    if-ltz v4, :cond_46

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_43

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v6, :cond_43

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    if-eqz v6, :cond_43

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const-string v7, "cch-empty"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_43

    const/4 v0, 0x1

    goto :goto_46

    :cond_43
    add-int/lit8 v4, v4, -0x1

    goto :goto_25

    :cond_46
    :goto_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_6 .. :try_end_47} :catchall_4b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_4b
    move-exception v2

    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public execute()Z
    .registers 2

    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mScore:I

    invoke-direct {p0, v0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->GetPreDo(I)Lcom/android/server/am/Pageboost$PreDo;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/server/am/Pageboost$PreDo;->execute(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    move-result v0

    return v0
.end method

.method public getAccExecTime(I)J
    .registers 4

    if-lez p1, :cond_5

    iget-wide v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime_Vramdisk:J

    goto :goto_7

    :cond_5
    iget-wide v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime:J

    :goto_7
    return-wide v0
.end method

.method public getApkPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCapturedLevel()I
    .registers 2

    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mCaptured:I

    return v0
.end method

.method public getExecCnt(I)I
    .registers 3

    if-lez p1, :cond_5

    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt_Vramdisk:I

    goto :goto_7

    :cond_5
    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt:I

    :goto_7
    return v0
.end method

.method public getSeqNumDiff()I
    .registers 4

    sget-object v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->current_seq_num:I

    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSeqNum:I

    sub-int/2addr v1, v2

    monitor-exit v0

    return v1

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public getVramdiskState()I
    .registers 2

    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInVramdisk:I

    return v0
.end method

.method public setApkPath(Ljava/lang/String;)V
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez v2, :cond_7

    return-void

    :cond_7
    iget-object v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reuse the dbinfo for this app info : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_34
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reset this app info : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForVramdisk:J

    :try_start_5e
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_6a

    return-void

    :cond_6a
    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v4}, Ljava/util/Stack;->clear()V

    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_75
    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_163

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    const/4 v9, 0x0

    :goto_87
    if-ge v9, v7, :cond_15b

    aget-object v10, v6, v9

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_9c

    invoke-virtual {v4, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    goto/16 :goto_151

    :cond_9c
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_144

    const-string v11, "/system/"

    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_121

    const-string v11, "/data/dalvik-cache/arm/"

    const-string v12, "/data/dalvik-cache/arm64/"

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v11

    const-string v12, "art"

    const-string v13, "dex"

    const-string/jumbo v14, "vdex"

    filled-new-array {v12, v13, v14}, [Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x2f

    const/16 v8, 0x40

    invoke-virtual {v14, v15, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "@classes."

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    :goto_e0
    const/4 v14, 0x2

    if-ge v13, v14, :cond_121

    const/4 v14, 0x0

    :goto_e4
    const/4 v15, 0x3

    if-ge v14, v15, :cond_118

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    aget-object v0, v11, v13

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v12, v14

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->addSizeForVramdisk(J)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    goto :goto_e4

    :cond_118
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    add-int/lit8 v13, v13, 0x1

    goto :goto_e0

    :cond_121
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/Pageboost$ApkParser;->getApkInfo(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_143

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    iput v3, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkSize:I

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iput-object v3, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkInfo:Ljava/lang/String;

    iget v3, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkSize:I

    int-to-long v3, v3

    invoke-direct {v1, v3, v4}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->addSizeForVramdisk(J)V

    :cond_143
    goto :goto_151

    :cond_144
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->addSizeForVramdisk(J)V
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_151} :catch_164

    :goto_151
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    goto/16 :goto_87

    :cond_15b
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    goto/16 :goto_75

    :cond_163
    goto :goto_168

    :catch_164
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_168
    return-void
.end method

.method public setCapturedLevel(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mCaptured:I

    return-void
.end method

.method public setCapturedSize(J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForPrefetch:J

    return-void
.end method

.method public setSeqNum()V
    .registers 4

    sget-object v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->current_seq_num:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/android/server/am/Pageboost$PageboostAppInfo;->current_seq_num:I

    iput v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSeqNum:I

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public setVramdiskState(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInVramdisk:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mCaptured:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForPrefetch:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForVramdisk:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mScore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt:I

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_cc

    iget-wide v5, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime:J

    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt:I

    int-to-long v7, v2

    div-long/2addr v5, v7

    goto :goto_cd

    :cond_cc
    move-wide v5, v3

    :goto_cd
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInVramdisk:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mStateActive:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPreferred:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mFixed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt_Vramdisk:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime_Vramdisk:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt_Vramdisk:I

    if-eqz v2, :cond_171

    iget-wide v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime_Vramdisk:J

    iget v4, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt_Vramdisk:I

    int-to-long v4, v4

    div-long v3, v2, v4

    nop

    :cond_171
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSeqNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPrefetchCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mHitCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateExecTime(I)V
    .registers 6

    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInVramdisk:I

    if-lez v0, :cond_11

    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt_Vramdisk:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt_Vramdisk:I

    iget-wide v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime_Vramdisk:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime_Vramdisk:J

    goto :goto_1d

    :cond_11
    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt:I

    iget-wide v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime:J

    :goto_1d
    return-void
.end method
