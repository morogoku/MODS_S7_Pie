.class public Lcom/facebook/rebound/AnimationQueue;
.super Ljava/lang/Object;
.source "AnimationQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rebound/AnimationQueue$Callback;
    }
.end annotation


# instance fields
.field private final mAnimationQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/rebound/AnimationQueue$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mChoreographer:Lcom/facebook/rebound/ChoreographerCompat;

.field private final mChoreographerCallback:Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;

.field private final mPendingQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mRunning:Z

.field private final mTempValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/AnimationQueue;->mPendingQueue:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/AnimationQueue;->mAnimationQueue:Ljava/util/Queue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/AnimationQueue;->mCallbacks:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/AnimationQueue;->mTempValues:Ljava/util/ArrayList;

    invoke-static {}, Lcom/facebook/rebound/ChoreographerCompat;->getInstance()Lcom/facebook/rebound/ChoreographerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rebound/AnimationQueue;->mChoreographer:Lcom/facebook/rebound/ChoreographerCompat;

    new-instance v0, Lcom/facebook/rebound/AnimationQueue$1;

    invoke-direct {v0, p0}, Lcom/facebook/rebound/AnimationQueue$1;-><init>(Lcom/facebook/rebound/AnimationQueue;)V

    iput-object v0, p0, Lcom/facebook/rebound/AnimationQueue;->mChoreographerCallback:Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/rebound/AnimationQueue;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/rebound/AnimationQueue;->onFrame(J)V

    return-void
.end method

.method private onFrame(J)V
    .locals 7

    iget-object v0, p0, Lcom/facebook/rebound/AnimationQueue;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/facebook/rebound/AnimationQueue;->mAnimationQueue:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/facebook/rebound/AnimationQueue;->mCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/facebook/rebound/AnimationQueue;->mAnimationQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_0
    iget-object v3, p0, Lcom/facebook/rebound/AnimationQueue;->mTempValues:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/facebook/rebound/AnimationQueue;->mAnimationQueue:Ljava/util/Queue;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/facebook/rebound/AnimationQueue;->mTempValues:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    const/4 v4, -0x1

    if-le v3, v4, :cond_2

    iget-object v4, p0, Lcom/facebook/rebound/AnimationQueue;->mTempValues:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    iget-object v5, p0, Lcom/facebook/rebound/AnimationQueue;->mTempValues:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v3

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/facebook/rebound/AnimationQueue;->mCallbacks:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v5, :cond_1

    iget-object v6, p0, Lcom/facebook/rebound/AnimationQueue;->mCallbacks:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/rebound/AnimationQueue$Callback;

    invoke-interface {v6, v4}, Lcom/facebook/rebound/AnimationQueue$Callback;->onFrame(Ljava/lang/Double;)V

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/facebook/rebound/AnimationQueue;->mTempValues:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :goto_2
    iget-object v3, p0, Lcom/facebook/rebound/AnimationQueue;->mAnimationQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/facebook/rebound/AnimationQueue;->mCallbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_3

    iget-object v3, p0, Lcom/facebook/rebound/AnimationQueue;->mAnimationQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/facebook/rebound/AnimationQueue;->mAnimationQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/facebook/rebound/AnimationQueue;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    iput-boolean v1, p0, Lcom/facebook/rebound/AnimationQueue;->mRunning:Z

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/facebook/rebound/AnimationQueue;->mChoreographer:Lcom/facebook/rebound/ChoreographerCompat;

    iget-object v3, p0, Lcom/facebook/rebound/AnimationQueue;->mChoreographerCallback:Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;

    invoke-virtual {v1, v3}, Lcom/facebook/rebound/ChoreographerCompat;->postFrameCallback(Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;)V

    :goto_3
    return-void
.end method
