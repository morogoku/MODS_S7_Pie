.class Lcom/android/server/wm/SideScreenSlideOverPositioner;
.super Lcom/android/server/wm/SideScreenPositioner;
.source "SideScreenSlideOverPositioner.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SideScreenSlideOverPositioner"


# instance fields
.field private final mLastResizeBounds:Landroid/graphics/Rect;

.field private final mLastSideTargetBounds:Landroid/graphics/Rect;

.field private final mSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/wm/SideScreenPositioner;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mLastSideTargetBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mLastResizeBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    iget-object v0, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    invoke-virtual {v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getLastSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mLastSideTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic lambda$onDragEnded$0(Lcom/android/server/wm/SideScreenSlideOverPositioner;)V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SideScreenSlideOverPositioner;->setSideScreenMode(I)V

    return-void
.end method

.method public static synthetic lambda$onDragEnded$1(Lcom/android/server/wm/SideScreenSlideOverPositioner;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenSlideOverPositioner;->hideSideScreen()V

    return-void
.end method


# virtual methods
.method onActionMove()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mIsRightDockSide:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mLastSideTargetBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_1c

    :cond_e
    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mIsRightDockSide:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mLastSideTargetBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_24

    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mLastSideTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2b

    :cond_24
    iget-object v0, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_2b
    iget-object v0, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SideScreenSlideOverPositioner;->resizeSideScreen(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mLastResizeBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_41
    return-void
.end method

.method onDragEnded()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    iget-boolean v1, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mIsRightDockSide:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    goto :goto_f

    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    :goto_f
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mLastResizeBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_24
    iget-boolean v1, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mOpening:Z

    if-eqz v1, :cond_3b

    invoke-virtual {v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->isDismissTarget()Z

    move-result v1

    if-nez v1, :cond_3b

    new-instance v1, Lcom/android/server/wm/-$$Lambda$SideScreenSlideOverPositioner$JCBXhUNBRqKAI6J201wIGvU_GIo;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$SideScreenSlideOverPositioner$JCBXhUNBRqKAI6J201wIGvU_GIo;-><init>(Lcom/android/server/wm/SideScreenSlideOverPositioner;)V

    iget-object v2, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mLastResizeBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mLastSideTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/wm/SideScreenSlideOverPositioner;->animateMoveScreen(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    goto :goto_58

    :cond_3b
    invoke-virtual {v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->isDismissTarget()Z

    move-result v1

    if-eqz v1, :cond_58

    new-instance v1, Lcom/android/server/wm/-$$Lambda$SideScreenSlideOverPositioner$RSyJmVS_17RAEBomFKAIvT-xNuw;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$SideScreenSlideOverPositioner$RSyJmVS_17RAEBomFKAIvT-xNuw;-><init>(Lcom/android/server/wm/SideScreenSlideOverPositioner;)V

    iget-object v2, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    invoke-virtual {v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getDismissEndSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mLastResizeBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/SideScreenSlideOverPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/wm/SideScreenSlideOverPositioner;->animateMoveScreen(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    :cond_58
    :goto_58
    return-void
.end method

.method startDrag(Lcom/android/server/wm/WindowState;FF)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/SideScreenPositioner;->startDrag(Lcom/android/server/wm/WindowState;FF)V

    return-void
.end method
