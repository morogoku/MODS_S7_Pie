.class public Lcom/altamirasoft/glanimationutil/GLEasingHelper;
.super Ljava/lang/Object;
.source "GLEasingHelper.java"

# interfaces
.implements Lcom/altamirasoft/glanimationutil/GLAnimatorFrameListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/altamirasoft/glanimationutil/GLEasingHelper$EasingListener;
    }
.end annotation


# instance fields
.field beforeTime:J

.field currentValue:F

.field easing:F

.field frameRate:F

.field friction:F

.field isPaused:Z

.field isStarted:Z

.field listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/altamirasoft/glanimationutil/GLEasingUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/altamirasoft/glanimationutil/GLEasingHelper$EasingListener;",
            ">;"
        }
    .end annotation
.end field

.field minDiffer:F

.field now:J

.field spring:F

.field targetValue:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->easing:F

    const v1, 0x3f733333    # 0.95f

    iput v1, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->friction:F

    iput v0, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->spring:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->minDiffer:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->isStarted:Z

    iput-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->isPaused:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->mListeners:Ljava/util/ArrayList;

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->frameRate:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->targetValue:F

    iput v0, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->currentValue:F

    return-void
.end method

.method private invalidateData()V
    .locals 6

    iget-wide v0, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->beforeTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->isPaused:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-wide v0, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->now:J

    iget-wide v2, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->beforeTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->frameRate:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_2
    iget v1, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->targetValue:F

    iget v2, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->currentValue:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->minDiffer:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    iget v2, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->targetValue:F

    iput v2, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->currentValue:F

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->currentValue:F

    iget v3, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->easing:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->currentValue:F

    :goto_0
    iget-object v2, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->listeners:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    move v2, v3

    :goto_1
    iget-object v4, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    iget-object v4, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/altamirasoft/glanimationutil/GLEasingUpdateListener;

    iget v5, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->currentValue:F

    invoke-interface {v4, v5}, Lcom/altamirasoft/glanimationutil/GLEasingUpdateListener;->onUpdateCurrentValue(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->currentValue:F

    iget v4, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->targetValue:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->pause()V

    goto :goto_2

    :cond_6
    iput-boolean v3, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->isPaused:Z

    :goto_2
    iget-object v2, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->isPaused:Z

    if-eqz v2, :cond_7

    nop

    :goto_3
    move v2, v3

    iget-object v3, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    iget-object v3, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/altamirasoft/glanimationutil/GLEasingHelper$EasingListener;

    invoke-interface {v3, p0}, Lcom/altamirasoft/glanimationutil/GLEasingHelper$EasingListener;->onEasingEnd(Lcom/altamirasoft/glanimationutil/GLEasingHelper;)V

    add-int/lit8 v3, v2, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method


# virtual methods
.method public doFrame()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->now:J

    invoke-direct {p0}, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->invalidateData()V

    iget-wide v0, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->now:J

    iput-wide v0, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->beforeTime:J

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->isPaused:Z

    return-void
.end method
