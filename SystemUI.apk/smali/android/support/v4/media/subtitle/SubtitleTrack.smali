.class public abstract Landroid/support/v4/media/subtitle/SubtitleTrack;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"

# interfaces
.implements Landroid/support/v4/media/subtitle/MediaTimeProvider$OnMediaTimeListener;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/subtitle/SubtitleTrack$RenderingWidget;,
        Landroid/support/v4/media/subtitle/SubtitleTrack$Run;,
        Landroid/support/v4/media/subtitle/SubtitleTrack$Cue;,
        Landroid/support/v4/media/subtitle/SubtitleTrack$CueList;
    }
.end annotation


# instance fields
.field public DEBUG:Z

.field private final mActiveCues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/media/subtitle/SubtitleTrack$Cue;",
            ">;"
        }
    .end annotation
.end field

.field private mCues:Landroid/support/v4/media/subtitle/SubtitleTrack$CueList;

.field private mFormat:Landroid/media/MediaFormat;

.field private mLastUpdateTimeMs:J

.field private mRunnable:Ljava/lang/Runnable;

.field private final mRunsByEndTime:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/support/v4/media/subtitle/SubtitleTrack$Run;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunsByID:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/support/v4/media/subtitle/SubtitleTrack$Run;",
            ">;"
        }
    .end annotation
.end field

.field protected mTimeProvider:Landroid/support/v4/media/subtitle/MediaTimeProvider;

.field protected mVisible:Z


# direct methods
.method static synthetic access$102(Landroid/support/v4/media/subtitle/SubtitleTrack;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Landroid/support/v4/media/subtitle/SubtitleTrack;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->mActiveCues:Ljava/util/ArrayList;

    return-object v0
.end method

.method private removeRunsByEndTimeIndex(I)V
    .locals 6

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/subtitle/SubtitleTrack$Run;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/support/v4/media/subtitle/SubtitleTrack$Run;->mFirstCue:Landroid/support/v4/media/subtitle/SubtitleTrack$Cue;

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->mCues:Landroid/support/v4/media/subtitle/SubtitleTrack$CueList;

    invoke-virtual {v3, v1}, Landroid/support/v4/media/subtitle/SubtitleTrack$CueList;->remove(Landroid/support/v4/media/subtitle/SubtitleTrack$Cue;)V

    iget-object v3, v1, Landroid/support/v4/media/subtitle/SubtitleTrack$Cue;->mNextInRun:Landroid/support/v4/media/subtitle/SubtitleTrack$Cue;

    iput-object v2, v1, Landroid/support/v4/media/subtitle/SubtitleTrack$Cue;->mNextInRun:Landroid/support/v4/media/subtitle/SubtitleTrack$Cue;

    move-object v1, v3

    goto :goto_1

    :cond_0
    iget-object v3, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    iget-wide v4, v0, Landroid/support/v4/media/subtitle/SubtitleTrack$Run;->mRunID:J

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V

    iget-object v3, v0, Landroid/support/v4/media/subtitle/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/support/v4/media/subtitle/SubtitleTrack$Run;

    iput-object v2, v0, Landroid/support/v4/media/subtitle/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/support/v4/media/subtitle/SubtitleTrack$Run;

    iput-object v2, v0, Landroid/support/v4/media/subtitle/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/support/v4/media/subtitle/SubtitleTrack$Run;

    move-object v0, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1}, Landroid/util/LongSparseArray;->removeAt(I)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized clearActiveCues()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SubtitleTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->mActiveCues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " active cues"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->mActiveCues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->mLastUpdateTimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-direct {p0, v1}, Landroid/support/v4/media/subtitle/SubtitleTrack;->removeRunsByEndTimeIndex(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final getFormat()Landroid/media/MediaFormat;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->mFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public abstract getRenderingWidget()Landroid/support/v4/media/subtitle/SubtitleTrack$RenderingWidget;
.end method

.method public getTrackType()I
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/media/subtitle/SubtitleTrack;->getRenderingWidget()Landroid/support/v4/media/subtitle/SubtitleTrack$RenderingWidget;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    return v0
.end method

.method public hide()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->mVisible:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->mTimeProvider:Landroid/support/v4/media/subtitle/MediaTimeProvider;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->mTimeProvider:Landroid/support/v4/media/subtitle/MediaTimeProvider;

    invoke-interface {v0, p0}, Landroid/support/v4/media/subtitle/MediaTimeProvider;->cancelNotifications(Landroid/support/v4/media/subtitle/MediaTimeProvider$OnMediaTimeListener;)V

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/media/subtitle/SubtitleTrack;->getRenderingWidget()Landroid/support/v4/media/subtitle/SubtitleTrack$RenderingWidget;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Landroid/support/v4/media/subtitle/SubtitleTrack$RenderingWidget;->setVisible(Z)V

    :cond_2
    iput-boolean v1, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->mVisible:Z

    return-void
.end method

.method public declared-synchronized setTimeProvider(Landroid/support/v4/media/subtitle/MediaTimeProvider;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->mTimeProvider:Landroid/support/v4/media/subtitle/MediaTimeProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->mTimeProvider:Landroid/support/v4/media/subtitle/MediaTimeProvider;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->mTimeProvider:Landroid/support/v4/media/subtitle/MediaTimeProvider;

    invoke-interface {v0, p0}, Landroid/support/v4/media/subtitle/MediaTimeProvider;->cancelNotifications(Landroid/support/v4/media/subtitle/MediaTimeProvider$OnMediaTimeListener;)V

    :cond_1
    iput-object p1, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->mTimeProvider:Landroid/support/v4/media/subtitle/MediaTimeProvider;

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->mTimeProvider:Landroid/support/v4/media/subtitle/MediaTimeProvider;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->mTimeProvider:Landroid/support/v4/media/subtitle/MediaTimeProvider;

    invoke-interface {v0, p0}, Landroid/support/v4/media/subtitle/MediaTimeProvider;->scheduleUpdate(Landroid/support/v4/media/subtitle/MediaTimeProvider$OnMediaTimeListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public show()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->mVisible:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->mVisible:Z

    invoke-virtual {p0}, Landroid/support/v4/media/subtitle/SubtitleTrack;->getRenderingWidget()Landroid/support/v4/media/subtitle/SubtitleTrack$RenderingWidget;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Landroid/support/v4/media/subtitle/SubtitleTrack$RenderingWidget;->setVisible(Z)V

    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->mTimeProvider:Landroid/support/v4/media/subtitle/MediaTimeProvider;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->mTimeProvider:Landroid/support/v4/media/subtitle/MediaTimeProvider;

    invoke-interface {v0, p0}, Landroid/support/v4/media/subtitle/MediaTimeProvider;->scheduleUpdate(Landroid/support/v4/media/subtitle/MediaTimeProvider$OnMediaTimeListener;)V

    :cond_2
    return-void
.end method

.method protected declared-synchronized updateActiveCues(ZJ)V
    .locals 7

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    iget-wide v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->mLastUpdateTimeMs:J

    cmp-long v0, v0, p2

    if-lez v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/media/subtitle/SubtitleTrack;->clearActiveCues()V

    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->mCues:Landroid/support/v4/media/subtitle/SubtitleTrack$CueList;

    iget-wide v1, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->mLastUpdateTimeMs:J

    invoke-virtual {v0, v1, v2, p2, p3}, Landroid/support/v4/media/subtitle/SubtitleTrack$CueList;->entriesBetween(JJ)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/support/v4/media/subtitle/SubtitleTrack$Cue;

    iget-wide v3, v2, Landroid/support/v4/media/subtitle/SubtitleTrack$Cue;->mEndTimeMs:J

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-boolean v3, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "SubtitleTrack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->mActiveCues:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-wide v3, v2, Landroid/support/v4/media/subtitle/SubtitleTrack$Cue;->mRunID:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_3
    iget-wide v3, v2, Landroid/support/v4/media/subtitle/SubtitleTrack$Cue;->mStartTimeMs:J

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    iget-boolean v3, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "SubtitleTrack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v3, v2, Landroid/support/v4/media/subtitle/SubtitleTrack$Cue;->mInnerTimesMs:[J

    if-eqz v3, :cond_5

    invoke-virtual {v2, p2, p3}, Landroid/support/v4/media/subtitle/SubtitleTrack$Cue;->onTime(J)V

    :cond_5
    iget-object v3, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->mActiveCues:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    iget-object v3, v2, Landroid/support/v4/media/subtitle/SubtitleTrack$Cue;->mInnerTimesMs:[J

    if-eqz v3, :cond_7

    invoke-virtual {v2, p2, p3}, Landroid/support/v4/media/subtitle/SubtitleTrack$Cue;->onTime(J)V

    :cond_7
    :goto_2
    goto/16 :goto_1

    :cond_8
    :goto_3
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    cmp-long v0, v2, p2

    if-gtz v0, :cond_9

    invoke-direct {p0, v1}, Landroid/support/v4/media/subtitle/SubtitleTrack;->removeRunsByEndTimeIndex(I)V

    goto :goto_3

    :cond_9
    iput-wide p2, p0, Landroid/support/v4/media/subtitle/SubtitleTrack;->mLastUpdateTimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public abstract updateView(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/media/subtitle/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation
.end method
