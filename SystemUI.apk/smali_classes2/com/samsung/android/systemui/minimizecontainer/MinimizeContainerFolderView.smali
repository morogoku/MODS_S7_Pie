.class public Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;
.super Landroid/support/v7/widget/RecyclerView;
.source "MinimizeContainerFolderView.java"

# interfaces
.implements Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$MinimizeContainerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;,
        Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;,
        Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;
    }
.end annotation


# static fields
.field public static final DEBUG:Z


# instance fields
.field private mAdapter:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;

.field private mAnimatingSpringX:Z

.field private mAnimatingSpringY:Z

.field private mBlockDataUpdate:Z

.field private mContext:Landroid/content/Context;

.field private mDraggingAppIconSpringX:Lcom/facebook/rebound/Spring;

.field private mDraggingAppIconSpringY:Lcom/facebook/rebound/Spring;

.field mDraggingAppIconView:Landroid/widget/ImageView;

.field private mFolderViewHeight:I

.field private mFolderViewPositionPaddingLeft:I

.field private mFolderViewPositionPaddingRight:I

.field private mFolderViewWidth:I

.field private mIsCloseAnimating:Z

.field private mIsMoving:Z

.field private mIsOpenAnimating:Z

.field private mIsOpened:Z

.field private mIsTouchDown:Z

.field private mItemAddedWhileAnimating:Z

.field private mItemDecoration:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;

.field private mItemHeight:I

.field private mItemWidth:I

.field private mLastPositionX:F

.field private mLastPositionY:F

.field private mLastScrollState:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field private mMaxFolderViewWidth:I

.field private mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

.field private mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field mOpenFolderRunnable:Ljava/lang/Runnable;

.field private mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

.field private mSpringSystem:Lcom/facebook/rebound/SpringSystem;

.field private mStatusBarHeight:I

.field mTargetAppIconView:Landroid/widget/ImageView;

.field private mTargetLocation:[I

.field private mTargetTaskId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mIsOpened:Z

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mIsTouchDown:Z

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mIsMoving:Z

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mIsOpenAnimating:Z

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mIsCloseAnimating:Z

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mBlockDataUpdate:Z

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mItemAddedWhileAnimating:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mTargetTaskId:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mTargetLocation:[I

    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mAnimatingSpringX:Z

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mAnimatingSpringY:Z

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mLastScrollState:I

    new-instance v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$1;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)V

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    new-instance v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)V

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mOpenFolderRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mLayoutInflater:Landroid/view/LayoutInflater;

    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->isRtl()Z

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v0, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$1;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mAdapter:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;

    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mItemDecoration:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mAdapter:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mItemDecoration:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->setClipToOutline(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mLastScrollState:I

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mLastScrollState:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->finishDraggingAppIcon()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Landroid/support/v7/widget/GridLayoutManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->isRtl()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mIsOpenAnimating:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mIsOpenAnimating:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mIsCloseAnimating:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mAdapter:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mItemWidth:I

    return v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mItemDecoration:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mBlockDataUpdate:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mBlockDataUpdate:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mItemAddedWhileAnimating:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mItemAddedWhileAnimating:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->updateFolderSize()V

    return-void
.end method

.method static synthetic access$2402(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mAnimatingSpringX:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->isSpringAnimating()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2602(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mAnimatingSpringY:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mIsMoving:Z

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->getDraggingAppIconBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;Landroid/widget/ImageView;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->startDraggingAppIcon(Landroid/widget/ImageView;I)V

    return-void
.end method

.method private animateToReturnDraggingAppIconView()V
    .locals 14

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mTargetLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mTargetLocation:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    sub-float v6, v0, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v3

    :goto_0
    iput-boolean v6, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mAnimatingSpringX:Z

    sub-float v6, v1, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    move v3, v5

    nop

    :cond_1
    iput-boolean v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mAnimatingSpringY:Z

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->isSpringAnimating()Z

    move-result v3

    if-nez v3, :cond_3

    sget-boolean v3, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "MinimizeContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[FolderView] animateToReturnDraggingAppIconView: spring failed, from=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "], to=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "], call finishDraggingAppIcon()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->finishDraggingAppIcon()V

    return-void

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v3}, Lcom/facebook/rebound/SpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconSpringX:Lcom/facebook/rebound/Spring;

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconSpringX:Lcom/facebook/rebound/Spring;

    new-instance v5, Lcom/facebook/rebound/SpringConfig;

    const-wide/high16 v6, 0x4032000000000000L    # 18.0

    const-wide v8, 0x4066800000000000L    # 180.0

    invoke-direct {v5, v8, v9, v6, v7}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    invoke-virtual {v3, v5}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconSpringX:Lcom/facebook/rebound/Spring;

    const-wide v10, 0x3fd3333340000000L    # 0.30000001192092896

    invoke-virtual {v3, v10, v11}, Lcom/facebook/rebound/Spring;->setRestSpeedThreshold(D)Lcom/facebook/rebound/Spring;

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconSpringX:Lcom/facebook/rebound/Spring;

    invoke-virtual {v3, v10, v11}, Lcom/facebook/rebound/Spring;->setRestDisplacementThreshold(D)Lcom/facebook/rebound/Spring;

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconSpringX:Lcom/facebook/rebound/Spring;

    new-instance v5, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$6;

    invoke-direct {v5, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$6;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)V

    invoke-virtual {v3, v5}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconSpringX:Lcom/facebook/rebound/Spring;

    float-to-double v12, v0

    invoke-virtual {v3, v12, v13}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconSpringX:Lcom/facebook/rebound/Spring;

    float-to-double v12, v2

    invoke-virtual {v3, v12, v13}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v3}, Lcom/facebook/rebound/SpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconSpringY:Lcom/facebook/rebound/Spring;

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconSpringY:Lcom/facebook/rebound/Spring;

    new-instance v5, Lcom/facebook/rebound/SpringConfig;

    invoke-direct {v5, v8, v9, v6, v7}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    invoke-virtual {v3, v5}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconSpringY:Lcom/facebook/rebound/Spring;

    invoke-virtual {v3, v10, v11}, Lcom/facebook/rebound/Spring;->setRestSpeedThreshold(D)Lcom/facebook/rebound/Spring;

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconSpringY:Lcom/facebook/rebound/Spring;

    invoke-virtual {v3, v10, v11}, Lcom/facebook/rebound/Spring;->setRestDisplacementThreshold(D)Lcom/facebook/rebound/Spring;

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconSpringY:Lcom/facebook/rebound/Spring;

    new-instance v5, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$7;

    invoke-direct {v5, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$7;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)V

    invoke-virtual {v3, v5}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconSpringY:Lcom/facebook/rebound/Spring;

    float-to-double v5, v1

    invoke-virtual {v3, v5, v6}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconSpringY:Lcom/facebook/rebound/Spring;

    float-to-double v5, v4

    invoke-virtual {v3, v5, v6}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    return-void
.end method

.method private finishDraggingAppIcon()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->isSpringAnimating()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconSpringX:Lcom/facebook/rebound/Spring;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconSpringX:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->removeAllListeners()Lcom/facebook/rebound/Spring;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconSpringY:Lcom/facebook/rebound/Spring;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconSpringY:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->removeAllListeners()Lcom/facebook/rebound/Spring;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mAnimatingSpringX:Z

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mAnimatingSpringY:Z

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mTargetAppIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mTargetAppIconView:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mTargetAppIconView:Landroid/widget/ImageView;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mTargetTaskId:I

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private getDraggingAppIconBounds()Landroid/graphics/Rect;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    float-to-int v1, v1

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method private hideTrashBoxIfNeeded()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->isTrashBoxShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->getDraggingAppIconBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->isInRemoveRange(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mTargetTaskId:I

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    new-instance v2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$2;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;I)V

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->getDraggingAppIconBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->throwTrashAway(Ljava/lang/Runnable;Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->hideTrashBox()V

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->animateToReturnDraggingAppIconView()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->forceLayout()V

    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->requestLayout()V

    return-void
.end method

.method private isRtl()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isSpringAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mAnimatingSpringX:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mAnimatingSpringY:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private startDraggingAppIcon(Landroid/widget/ImageView;I)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->finishDraggingAppIcon()V

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mTargetAppIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mTargetAppIconView:Landroid/widget/ImageView;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iput p2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mTargetTaskId:I

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mTargetAppIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLocationOnScreen()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mTargetLocation:[I

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mTargetLocation:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mTargetLocation:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private updateFolderSize()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->getMinimizeTasksCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget v1, v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mMinimizeMaxCount:I

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mAdapter:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mItemDecoration:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->getItemMargin()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mFolderViewWidth:I

    iget v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mFolderViewHeight:I

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mItemDecoration:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;

    iget-object v4, v4, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mItemDecoration:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;

    iget-object v5, v5, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mItemWidth:I

    mul-int/2addr v5, v0

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mItemDecoration:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;

    iget v5, v5, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->mItemSpace:I

    add-int/lit8 v6, v0, -0x1

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mFolderViewWidth:I

    iget v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mFolderViewWidth:I

    iget v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mMaxFolderViewWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mFolderViewWidth:I

    iget v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mItemHeight:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mFolderViewHeight:I

    iget v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mFolderViewWidth:I

    if-ne v2, v4, :cond_1

    iget v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mFolderViewHeight:I

    if-eq v3, v4, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mFolderViewWidth:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mFolderViewHeight:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v5, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "MinimizeContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FolderView] updateFolderSize: itemCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", size=("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mFolderViewWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mFolderViewHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method animateToCloseFolderView()V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MinimizeContainer"

    const-string v1, "[FolderView] animateToCloseFolderView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mIsCloseAnimating:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$4;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$Utils;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method animateToOpenFolderView()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mIsOpenAnimating:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->setHorizontalScrollBarEnabled(Z)V

    nop

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mAdapter:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x11b

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$3;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$Utils;->sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v1, v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mOpenFolderRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method closeFolder(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mIsOpened:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mIsOpened:Z

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mBlockDataUpdate:Z

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mItemAddedWhileAnimating:Z

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/GridLayoutManager;->scrollToPosition(I)V

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->finishDraggingAppIcon()V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v1, v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mOpenFolderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->removeCallbacks(Ljava/lang/Runnable;)V

    nop

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mAdapter:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mAdapter:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->animateToCloseFolderView()V

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    const-string v2, "fullscreen_mode_request_folder"

    invoke-virtual {v1, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->closeFullscreenMode(Ljava/lang/String;)Z

    :goto_2
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mContext:Landroid/content/Context;

    const-string v2, "A"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public getFolderBounds()Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mFolderViewWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mFolderViewHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method public getFolderHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mFolderViewHeight:I

    return v0
.end method

.method public getFolderWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mFolderViewWidth:I

    return v0
.end method

.method init(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)V
    .locals 6

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->registerCallback(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$MinimizeContainerCallback;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->getPolicyController()Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a031c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050368

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mStatusBarHeight:I

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070449

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mItemWidth:I

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07043d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mItemHeight:I

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mItemDecoration:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->access$300(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07043a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mFolderViewPositionPaddingLeft:I

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07043b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mFolderViewPositionPaddingRight:I

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->getNonDecorDisplayFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    :goto_0
    move v3, v0

    :goto_1
    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    iget v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mItemWidth:I

    iget-object v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mItemDecoration:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;

    iget v5, v5, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->mItemSpace:I

    add-int/2addr v4, v5

    add-int/lit8 v5, v3, -0x1

    mul-int/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mItemDecoration:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;

    iget-object v5, v5, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mItemDecoration:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;

    iget v5, v5, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->mItemOverlapWidth:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mMaxFolderViewWidth:I

    iget v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mMaxFolderViewWidth:I

    iget v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mFolderViewPositionPaddingLeft:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mFolderViewPositionPaddingRight:I

    add-int/2addr v4, v5

    if-gt v4, v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method isFolderCloseAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mIsCloseAnimating:Z

    return v0
.end method

.method public onFlipFolderStateChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->updateFolderSize()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->isTrashBoxShown()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->hideTrashBoxIfNeeded()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mIsTouchDown:Z

    :cond_1
    return v2

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput-boolean v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mIsTouchDown:Z

    iput v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mLastPositionX:F

    iput v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mLastPositionY:F

    const-string v2, "MinimizeContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FolderView] onInterceptTouchEvent("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public onItemAdded(Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mBlockDataUpdate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mItemAddedWhileAnimating:Z

    const-string v0, "MinimizeContainer"

    const-string v1, "[FolderView] onItemAdded: item is added while opening folder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mAdapter:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->updateFolderSize()V

    return-void
.end method

.method public onItemRemoved(Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mAdapter:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->updateFolderSize()V

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->finishDraggingAppIcon()V

    return-void
.end method

.method public onRotationChanged(IILandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->updateFolderSize()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-boolean v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mIsTouchDown:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    invoke-virtual {v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->isTrashBoxShown()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mIsMoving:Z

    const/4 v4, 0x1

    if-nez v3, :cond_0

    iput-boolean v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mIsMoving:Z

    sget-boolean v3, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MinimizeContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[FolderView] onTouchEvent("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "): ready to move"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getX()F

    move-result v5

    iget v6, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mLastPositionX:F

    sub-float v6, v0, v6

    add-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setX(F)V

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getY()F

    move-result v5

    iget v6, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mLastPositionY:F

    sub-float v6, v1, v6

    add-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setY(F)V

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mLastPositionX:F

    iput v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mLastPositionY:F

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    invoke-virtual {v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->isTrashBoxShown()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->getDraggingAppIconBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->notifyIconPositionChanged(Landroid/graphics/Rect;)V

    :cond_1
    return v4

    :pswitch_1
    const-string v3, "MinimizeContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FolderView] onTouchEvent("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->hideTrashBoxIfNeeded()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mIsMoving:Z

    iput-boolean v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mIsTouchDown:Z

    nop

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowRemoved()V
    .locals 0

    return-void
.end method

.method openFolder(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    const-string v1, "fullscreen_mode_request_folder"

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->openFullscreenMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mIsOpened:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mAdapter:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mAdapter:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mIsOpened:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->setVisibility(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->animateToOpenFolderView()V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mContext:Landroid/content/Context;

    const-string v1, "2211"

    const-string v2, "Open minimized app tray"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setFolderPosition(Landroid/graphics/PointF;)V
    .locals 11

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/PointF;->y:F

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    iget v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mFolderViewWidth:I

    add-int/2addr v3, v4

    iget v4, p1, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    iget v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mFolderViewHeight:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->getNonDecorDisplayFrame()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mStatusBarHeight:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mFolderViewPositionPaddingLeft:I

    neg-int v7, v2

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->mFolderViewPositionPaddingRight:I

    neg-int v9, v2

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, v0

    move-object v6, v1

    invoke-static/range {v5 .. v10}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$Utils;->adjustPositionInDisplay(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)Z

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->setX(F)V

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->setY(F)V

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iput v2, p1, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iput v2, p1, Landroid/graphics/PointF;->y:F

    sget-boolean v2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MinimizeContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FolderView] setFolderPosition: x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", view="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
