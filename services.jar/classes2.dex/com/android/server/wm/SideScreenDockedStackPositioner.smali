.class Lcom/android/server/wm/SideScreenDockedStackPositioner;
.super Lcom/android/server/wm/SideScreenStackPositioner;
.source "SideScreenDockedStackPositioner.java"


# static fields
.field private static final DRAG_MODE_UNDOCK:I = 0x5

.field private static final UNDOCK_THRESHOLD_DIP:I = 0x4b


# instance fields
.field private final mSideScreenDragBounds:Landroid/graphics/Rect;

.field private mUnDockThreshold:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/SideScreenStackPositioner;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenDockedStackPositioner;->mSideScreenDragBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public static synthetic lambda$onDragEnded$0(Lcom/android/server/wm/SideScreenDockedStackPositioner;)V
    .registers 2

    nop

    sget-boolean v0, Lcom/samsung/android/multiwindow/SideScreenCoreState;->SLIDEOVER_DEFAULT:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SideScreenDockedStackPositioner;->setSideScreenMode(I)V

    return-void
.end method


# virtual methods
.method onActionMove()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenDockedStackPositioner;->mSideScreenDragBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SideScreenDockedStackPositioner;->resizeSideScreen(Landroid/graphics/Rect;)V

    return-void
.end method

.method onDragEnded()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenDockedStackPositioner;->mIsRightDockSide:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/SideScreenDockedStackPositioner;->mSideScreenDragBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/wm/SideScreenDockedStackPositioner;->mSideScreenOriginalBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    goto :goto_17

    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/SideScreenDockedStackPositioner;->mSideScreenDragBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/SideScreenDockedStackPositioner;->mSideScreenOriginalBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    :goto_17
    iget v1, p0, Lcom/android/server/wm/SideScreenDockedStackPositioner;->mUnDockThreshold:I

    if-lt v0, v1, :cond_21

    new-instance v1, Lcom/android/server/wm/-$$Lambda$SideScreenDockedStackPositioner$7UbWYqrsn4ARe5IkK9qU_jKitTo;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$SideScreenDockedStackPositioner$7UbWYqrsn4ARe5IkK9qU_jKitTo;-><init>(Lcom/android/server/wm/SideScreenDockedStackPositioner;)V

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    iget-object v2, p0, Lcom/android/server/wm/SideScreenDockedStackPositioner;->mSideScreenDragBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/SideScreenDockedStackPositioner;->mSideScreenOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/wm/SideScreenDockedStackPositioner;->animateMoveScreen(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    return-void
.end method

.method register(Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/server/wm/SideScreenStackPositioner;->register(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/16 v1, 0x4b

    invoke-static {v1, v0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/SideScreenDockedStackPositioner;->mUnDockThreshold:I

    return-void
.end method

.method updateDragBounds(II)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/SideScreenDockedStackPositioner;->mSideScreenDragBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenDockedStackPositioner;->mSideScreenOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenDockedStackPositioner;->mIsRightDockSide:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/SideScreenDockedStackPositioner;->mSideScreenDragBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenDockedStackPositioner;->mSideScreenOriginalBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenDockedStackPositioner;->mSideScreenOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/server/wm/SideScreenDockedStackPositioner;->mUnDockThreshold:I

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_34

    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/SideScreenDockedStackPositioner;->mSideScreenDragBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenDockedStackPositioner;->mSideScreenOriginalBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/server/wm/SideScreenDockedStackPositioner;->mUnDockThreshold:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/wm/SideScreenDockedStackPositioner;->mSideScreenOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_34
    return-void
.end method

.method updateDragMode(FF)I
    .registers 4

    const/4 v0, 0x5

    return v0
.end method
