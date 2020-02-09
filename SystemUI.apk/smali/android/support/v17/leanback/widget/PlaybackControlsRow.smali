.class public Landroid/support/v17/leanback/widget/PlaybackControlsRow;
.super Landroid/support/v17/leanback/widget/Row;
.source "PlaybackControlsRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$ClosedCaptioningAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$HighQualityAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$ShuffleAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$RepeatAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsDownAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsUpAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$MoreActions;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$PictureInPictureAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;
    }
.end annotation


# instance fields
.field private mBufferedProgressMs:J

.field private mCurrentTimeMs:J

.field private mImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mItem:Ljava/lang/Object;

.field private mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

.field private mPrimaryActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field private mSecondaryActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field private mTotalTimeMs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Row;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Row;-><init>()V

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mItem:Ljava/lang/Object;

    return-void
.end method

.method static getStyledDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$attr;->playbackControlsActionIcons:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iget v2, v0, Landroid/util/TypedValue;->data:I

    sget-object v3, Landroid/support/v17/leanback/R$styleable;->lbPlaybackControlsActionIcons:[I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2
.end method


# virtual methods
.method public getActionForKeyCode(Landroid/support/v17/leanback/widget/ObjectAdapter;I)Landroid/support/v17/leanback/widget/Action;
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mPrimaryActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mSecondaryActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/Action;

    invoke-virtual {v1, p2}, Landroid/support/v17/leanback/widget/Action;->respondsToKeyCode(I)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBufferedPosition()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mBufferedProgressMs:J

    return-wide v0
.end method

.method public getBufferedProgress()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getBufferedPosition()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/support/v17/leanback/util/MathUtil;->safeLongToInt(J)I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mCurrentTimeMs:J

    return-wide v0
.end method

.method public getCurrentTime()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getCurrentTimeLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/support/v17/leanback/util/MathUtil;->safeLongToInt(J)I

    move-result v0

    return v0
.end method

.method public getCurrentTimeLong()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mCurrentTimeMs:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mTotalTimeMs:J

    return-wide v0
.end method

.method public final getImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getItem()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mItem:Ljava/lang/Object;

    return-object v0
.end method

.method public final getPrimaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mPrimaryActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public final getSecondaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mSecondaryActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public getTotalTime()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getTotalTimeLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/support/v17/leanback/util/MathUtil;->safeLongToInt(J)I

    move-result v0

    return v0
.end method

.method public getTotalTimeLong()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mTotalTimeMs:J

    return-wide v0
.end method

.method public setBufferedPosition(J)V
    .locals 3

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mBufferedProgressMs:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    iput-wide p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mBufferedProgressMs:J

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

    iget-wide v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mBufferedProgressMs:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;->onBufferedPositionChanged(Landroid/support/v17/leanback/widget/PlaybackControlsRow;J)V

    :cond_0
    return-void
.end method

.method public setBufferedProgress(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setBufferedPosition(J)V

    return-void
.end method

.method public setCurrentPosition(J)V
    .locals 3

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mCurrentTimeMs:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    iput-wide p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mCurrentTimeMs:J

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

    iget-wide v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mCurrentTimeMs:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;->onCurrentPositionChanged(Landroid/support/v17/leanback/widget/PlaybackControlsRow;J)V

    :cond_0
    return-void
.end method

.method public setCurrentTime(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setCurrentTimeLong(J)V

    return-void
.end method

.method public setCurrentTimeLong(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setCurrentPosition(J)V

    return-void
.end method

.method public setDuration(J)V
    .locals 3

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mTotalTimeMs:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    iput-wide p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mTotalTimeMs:J

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

    iget-wide v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mTotalTimeMs:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;->onDurationChanged(Landroid/support/v17/leanback/widget/PlaybackControlsRow;J)V

    :cond_0
    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setOnPlaybackProgressChangedListener(Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

    return-void
.end method

.method public final setPrimaryActionsAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mPrimaryActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-void
.end method

.method public final setSecondaryActionsAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mSecondaryActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-void
.end method

.method public setTotalTime(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setDuration(J)V

    return-void
.end method
