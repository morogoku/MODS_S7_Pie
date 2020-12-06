.class public Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;
.super Ljava/lang/Object;
.source "NetSpeedStatus.java"


# instance fields
.field public mCommand:Ljava/lang/String;

.field private mCurSpeed:I

.field public mDroppedBytes:Ljava/lang/String;

.field public mDroppedPackage:Ljava/lang/String;

.field public mEndtime:Ljava/lang/String;

.field private mLastTrafs:J

.field private mLimitSpeed:I

.field public mLimitedReason:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field private mPriority:I

.field public mReleasedReason:Ljava/lang/String;

.field public mStartTime:Ljava/lang/String;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mPackageName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mStartTime:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mEndtime:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mDroppedPackage:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mDroppedBytes:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mUid:I

    iput v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mCurSpeed:I

    iput v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLimitSpeed:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLastTrafs:J

    iput v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mPriority:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mPackageName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mStartTime:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mEndtime:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mDroppedPackage:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mDroppedBytes:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mCommand:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLimitedReason:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mReleasedReason:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mPackageName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mStartTime:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mEndtime:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mDroppedPackage:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mDroppedBytes:Ljava/lang/String;

    iput p1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mUid:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLastTrafs:J

    return-void
.end method

.method public constructor <init>(II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mPackageName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mStartTime:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mEndtime:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mDroppedPackage:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mDroppedBytes:Ljava/lang/String;

    iput p1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mUid:I

    iput p2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mCurSpeed:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLastTrafs:J

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mPackageName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mStartTime:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mEndtime:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mDroppedPackage:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mDroppedBytes:Ljava/lang/String;

    iput p1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mUid:I

    iput-object p2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public canRemove()Z
    .registers 2

    iget v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mPriority:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public dumpNetSpeedStatus()Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%-40s"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%-22s"

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mStartTime:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%-22s"

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mEndtime:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%-10s"

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLimitSpeed:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%-10s"

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mDroppedPackage:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%-10s"

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mDroppedBytes:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%-30s"

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mCommand:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%-65s"

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLimitedReason:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%-30s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mReleasedReason:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    if-eqz v0, :cond_11

    move-object v0, p1

    check-cast v0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    iget v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mUid:I

    iget v2, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mUid:I

    if-ne v1, v2, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1

    :cond_11
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCurSpeed()I
    .registers 2

    iget v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mCurSpeed:I

    return v0
.end method

.method public getLimitSpeed()I
    .registers 2

    iget v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLimitSpeed:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTrafs()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLastTrafs:J

    return-wide v0
.end method

.method public getUid()I
    .registers 2

    iget v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mUid:I

    return v0
.end method

.method public setCurSpeed(I)V
    .registers 3

    iput p1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mCurSpeed:I

    if-nez p1, :cond_e

    iget v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mPriority:I

    if-lez v0, :cond_e

    iget v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mPriority:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mPriority:I

    :cond_e
    return-void
.end method

.method public setLimitSpeed(I)V
    .registers 4

    iput p1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLimitSpeed:I

    iget v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mPriority:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_d

    iget v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mPriority:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mPriority:I

    :cond_d
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setTrafs(J)I
    .registers 6

    iget-wide v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLastTrafs:J

    sub-long v0, p1, v0

    iput-wide p1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLastTrafs:J

    long-to-int v2, v0

    return v2
.end method

.method public setUid(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mUid:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " curSpeed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mCurSpeed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " limitSpeed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLimitSpeed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " lastTrafs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLastTrafs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
