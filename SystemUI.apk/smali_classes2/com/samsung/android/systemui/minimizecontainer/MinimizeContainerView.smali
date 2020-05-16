.class public Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;
.super Landroid/widget/FrameLayout;
.source "MinimizeContainerView.java"

# interfaces
.implements Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$MinimizeContainerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field private static MAX_SPRING_COUNT:I


# instance fields
.field private mActivatedXSpringList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/rebound/Spring;",
            ">;"
        }
    .end annotation
.end field

.field private mActivatedYSpringList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/rebound/Spring;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimElevation:I

.field private mContext:Landroid/content/Context;

.field private mFirstDownX:F

.field private mFirstDownY:F

.field private mFolderItemLeftMargin:I

.field private mFolderItemTopMargin:I

.field private mFolderItemWidth:I

.field private final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private mIsAppIconMoving:Z

.field private mLastPositionX:F

.field private mLastPositionY:F

.field private mLongClickPositionX:F

.field private mLongClickPositionY:F

.field private mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

.field private mMoveInterval:I

.field private mPointerAppIconGroupView:Landroid/view/ViewGroup;

.field private mPointerAppIconHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPointerHeight:I

.field private mPointerLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mPointerSettleDownEffectRequested:Z

.field private mPointerSettleDownGap:I

.field private mPointerTouchListener:Landroid/view/View$OnTouchListener;

.field private mPointerView:Landroid/widget/ImageView;

.field private mPointerWidth:I

.field private mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

.field private mSecondPointerAppIcon:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

.field private mSpringChainX:Lcom/facebook/rebound/SpringChain;

.field private mSpringChainY:Lcom/facebook/rebound/SpringChain;

.field private mStatusBarHeight:I

.field private mTmpLocation:[I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRegion:Landroid/graphics/Region;

.field private mTouchableRegion:Landroid/graphics/Region;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->DEBUG:Z

    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->MAX_SPRING_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mIsAppIconMoving:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mTmpLocation:[I

    const/16 v1, 0xa

    const/16 v2, 0x96

    invoke-static {v2, v1, v2, v1}, Lcom/facebook/rebound/SpringChain;->create(IIII)Lcom/facebook/rebound/SpringChain;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-static {v2, v1, v2, v1}, Lcom/facebook/rebound/SpringChain;->create(IIII)Lcom/facebook/rebound/SpringChain;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mActivatedXSpringList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mActivatedYSpringList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerAppIconHolders:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerSettleDownEffectRequested:Z

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mTmpRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mTouchableRegion:Landroid/graphics/Region;

    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$1;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    const-string v0, "MinimizeContainer"

    const-string v1, "[ContainerView] Create MinimizeContainerView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Landroid/graphics/Region;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mTouchableRegion:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->settleDownPointerEffect()V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->setTopPointerAppIconPressed(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mLastPositionX:F

    return v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mLastPositionX:F

    return p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mFirstDownX:F

    return v0
.end method

.method static synthetic access$1402(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mFirstDownX:F

    return p1
.end method

.method static synthetic access$1500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mLastPositionY:F

    return v0
.end method

.method static synthetic access$1502(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mLastPositionY:F

    return p1
.end method

.method static synthetic access$1600(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mFirstDownY:F

    return v0
.end method

.method static synthetic access$1602(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mFirstDownY:F

    return p1
.end method

.method static synthetic access$1700(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mMoveInterval:I

    return v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->updateSpringConfig(II)V

    return-void
.end method

.method static synthetic access$1900(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSecondPointerAppIcon:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerAppIconHolders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->animateToScalePointerAppIcons(FF)V

    return-void
.end method

.method static synthetic access$2200(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->updateSpringChainEndValue()V

    return-void
.end method

.method static synthetic access$2300(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->adjustPointerPosition()V

    return-void
.end method

.method static synthetic access$2400(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mLongClickPositionX:F

    return v0
.end method

.method static synthetic access$2502(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mLongClickPositionX:F

    return p1
.end method

.method static synthetic access$2600(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mLongClickPositionY:F

    return v0
.end method

.method static synthetic access$2602(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mLongClickPositionY:F

    return p1
.end method

.method static synthetic access$2700(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->setPointerPosition(FF)V

    return-void
.end method

.method static synthetic access$2800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mActivatedXSpringList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->isSpringEffectCompleted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->updatePositionOfPointerAppIcons()V

    return-void
.end method

.method static synthetic access$3000(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mActivatedYSpringList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;FF)Landroid/view/animation/AnimationSet;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->createFloatingIconAnimation(FF)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerAppIconGroupView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->requestPointerSettleDownEffect()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mAnimElevation:I

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mIsAppIconMoving:Z

    return v0
.end method

.method static synthetic access$902(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mIsAppIconMoving:Z

    return p1
.end method

.method private addPointerAppIcon(Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->setTopPointerAppIconPressed(Z)V

    new-instance v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerAppIconHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerAppIconGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->getAppIconView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->updatePositionOfPointerAppIcons()V

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    invoke-virtual {v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->isPointerViewState()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->updatePointerAppIconVisibility(I)V

    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mIsAppIconMoving:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerAppIconHolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerAppIconHolders:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

    invoke-virtual {v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->getAppIconView()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->animateToShowPointerAppIcons()V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->buildSpringChainsOfAllAppIcons()V

    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mIsAppIconMoving:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->setTopPointerAppIconPressed(Z)V

    const v0, 0x3f933333    # 1.15f

    invoke-direct {p0, v0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->scaleTopPointerAppIcon(FF)V

    :cond_3
    return-void
.end method

.method private adjustPointerPosition()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->setPointerPosition(FF)V

    return-void
.end method

.method private animateToScalePointerAppIcons(FF)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$2;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0xa7

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private buildSpringChainsOfAllAppIcons()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerAppIconHolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mActivatedXSpringList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mActivatedYSpringList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/16 v0, 0xa

    const/16 v1, 0x96

    invoke-static {v1, v0, v1, v0}, Lcom/facebook/rebound/SpringChain;->create(IIII)Lcom/facebook/rebound/SpringChain;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-static {v1, v0, v1, v0}, Lcom/facebook/rebound/SpringChain;->create(IIII)Lcom/facebook/rebound/SpringChain;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerAppIconHolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerAppIconHolders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

    const/high16 v4, 0x3f800000    # 1.0f

    sub-int v5, v0, v1

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    const v6, 0x3dcccccd    # 0.1f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    sget v5, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->MAX_SPRING_COUNT:I

    sub-int v5, v0, v5

    if-ge v1, v5, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->getAppIconView()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->getAppIconView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    new-instance v5, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$11;

    invoke-direct {v5, p0, v3, v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$11;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;F)V

    invoke-virtual {v2, v5}, Lcom/facebook/rebound/SpringChain;->addSpring(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/SpringChain;

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    new-instance v5, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$12;

    invoke-direct {v5, p0, v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$12;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;)V

    invoke-virtual {v2, v5}, Lcom/facebook/rebound/SpringChain;->addSpring(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/SpringChain;

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->updateAllSpringsCurrentValue()V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v1, v2}, Lcom/facebook/rebound/SpringChain;->setControlSpringIndex(I)Lcom/facebook/rebound/SpringChain;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v1, v2}, Lcom/facebook/rebound/SpringChain;->setControlSpringIndex(I)Lcom/facebook/rebound/SpringChain;

    return-void
.end method

.method private createFloatingIconAnimation(FF)Landroid/view/animation/AnimationSet;
    .locals 11

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v10, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v10

    move v7, p1

    move v9, p2

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    const/high16 v5, 0x40400000    # 3.0f

    invoke-direct {v4, v5}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v1, v4}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const v5, 0x3dcccccd    # 0.1f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v4, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    sget-object v2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$Utils;->sSineInOut70Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$5;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method

.method private getViewBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mTmpLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mTmpLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mTmpLocation:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int v4, v0, v2

    add-int v5, v1, v3

    invoke-virtual {p2, v0, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private initListeners()V
    .locals 1

    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$7;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->registerListeners()V

    return-void
.end method

.method private initPosition()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mStatusBarHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->loadPositionFromSharedPreferences(FF)Landroid/graphics/PointF;

    move-result-object v2

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->setPointerPosition(FF)V

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->getPointerViewBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->reportMinimizeContainerBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private initResources()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050368

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mStatusBarHeight:I

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07044b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mMoveInterval:I

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07044d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerWidth:I

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07044a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerHeight:I

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07044c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerSettleDownGap:I

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070449

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mFolderItemWidth:I

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070441

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mFolderItemLeftMargin:I

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070443

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mFolderItemTopMargin:I

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070439

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mAnimElevation:I

    const v0, 0x7f0a0322

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerAppIconGroupView:Landroid/view/ViewGroup;

    const v0, 0x7f0a0321

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setHapticFeedbackEnabled(Z)V

    return-void
.end method

.method private isSpringEffectCompleted()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mActivatedYSpringList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mActivatedXSpringList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private registerListeners()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private removeAllSpringsListeners()V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MinimizeContainer"

    const-string v1, "[ContainerView] removeAllSpringsListeners"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringChain;->getAllSprings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rebound/Spring;

    invoke-virtual {v1}, Lcom/facebook/rebound/Spring;->removeAllListeners()Lcom/facebook/rebound/Spring;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringChain;->getAllSprings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rebound/Spring;

    invoke-virtual {v1}, Lcom/facebook/rebound/Spring;->removeAllListeners()Lcom/facebook/rebound/Spring;

    goto :goto_1

    :cond_2
    const/16 v0, 0xa

    const/16 v1, 0x96

    invoke-static {v1, v0, v1, v0}, Lcom/facebook/rebound/SpringChain;->create(IIII)Lcom/facebook/rebound/SpringChain;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-static {v1, v0, v1, v0}, Lcom/facebook/rebound/SpringChain;->create(IIII)Lcom/facebook/rebound/SpringChain;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    return-void
.end method

.method private removePointerAppIcon(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerAppIconHolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->getTaskId()I

    move-result v2

    if-ne v2, p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerAppIconHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->isPointerViewState()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    sget-object v2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$Utils;->sSineInOut70Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$8;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$8;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->getAppIconView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerAppIconGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->getAppIconView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->buildSpringChainsOfAllAppIcons()V

    return-void
.end method

.method private requestPointerSettleDownEffect()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerSettleDownEffectRequested:Z

    return-void
.end method

.method private scaleTopPointerAppIcon(FF)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerAppIconHolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerAppIconHolders:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerAppIconHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->getAppIconView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method private setPointerPosition(FF)V
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    float-to-int v3, p1

    iget v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerWidth:I

    add-int/2addr v3, v4

    float-to-int v4, p2

    iget v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerHeight:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->getNonDecorDisplayFrame()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mStatusBarHeight:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$Utils;->adjustPositionInDisplay(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setX(F)V

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method

.method private setTopPointerAppIconPressed(Z)V
    .locals 0

    return-void
.end method

.method private settleDownPointerEffect()V
    .locals 13

    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerSettleDownEffectRequested:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerSettleDownEffectRequested:Z

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerAppIconHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_2

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerAppIconHolders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

    invoke-virtual {v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->getAppIconView()Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSecondPointerAppIcon:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

    if-ne v3, v5, :cond_1

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSecondPointerAppIcon:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

    invoke-static {v5}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->access$800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;)Landroid/widget/ImageView;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getX()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setX(F)V

    iget-object v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSecondPointerAppIcon:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

    invoke-static {v5}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->access$800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;)Landroid/widget/ImageView;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getY()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setY(F)V

    iget-object v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getY()F

    move-result v6

    iget v7, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerSettleDownGap:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    const/4 v7, 0x2

    new-array v8, v7, [F

    aput v5, v8, v0

    const/4 v9, 0x1

    aput v6, v8, v9

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$9;

    invoke-direct {v9, p0, v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$9;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;Landroid/widget/ImageView;)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    new-instance v9, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$10;

    invoke-direct {v9, p0, v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$10;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;Landroid/widget/ImageView;)V

    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v11, 0xc8

    invoke-virtual {v9, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getY()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setY(F)V

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method private unregisterListeners()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void
.end method

.method private updateAllSpringsCurrentValue()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v2}, Lcom/facebook/rebound/SpringChain;->getAllSprings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-wide v4, 0x3fd3333340000000L    # 0.30000001192092896

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/rebound/Spring;

    invoke-virtual {v3, v4, v5}, Lcom/facebook/rebound/Spring;->setRestSpeedThreshold(D)Lcom/facebook/rebound/Spring;

    invoke-virtual {v3, v4, v5}, Lcom/facebook/rebound/Spring;->setRestDisplacementThreshold(D)Lcom/facebook/rebound/Spring;

    float-to-double v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v2}, Lcom/facebook/rebound/SpringChain;->getAllSprings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/rebound/Spring;

    invoke-virtual {v3, v4, v5}, Lcom/facebook/rebound/Spring;->setRestSpeedThreshold(D)Lcom/facebook/rebound/Spring;

    invoke-virtual {v3, v4, v5}, Lcom/facebook/rebound/Spring;->setRestDisplacementThreshold(D)Lcom/facebook/rebound/Spring;

    float-to-double v6, v1

    invoke-virtual {v3, v6, v7}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    goto :goto_1

    :cond_1
    return-void
.end method

.method private updatePositionOfPointerAppIcons()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerAppIconHolders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    :goto_0
    if-ltz v3, :cond_0

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerAppIconHolders:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

    invoke-virtual {v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->getAppIconView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setX(F)V

    invoke-virtual {v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->getAppIconView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setY(F)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateSecondPointerAppIcon()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerAppIconHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerAppIconHolders:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerAppIconHolders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSecondPointerAppIcon:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

    if-eq v1, v0, :cond_1

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSecondPointerAppIcon:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

    iput-boolean v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerSettleDownEffectRequested:Z

    :cond_1
    return-void
.end method

.method private updateSpringChainEndValue()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v2}, Lcom/facebook/rebound/SpringChain;->getAllSprings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v2}, Lcom/facebook/rebound/SpringChain;->getControlSpring()Lcom/facebook/rebound/Spring;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v2}, Lcom/facebook/rebound/SpringChain;->getControlSpring()Lcom/facebook/rebound/Spring;

    move-result-object v2

    float-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v2}, Lcom/facebook/rebound/SpringChain;->getAllSprings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v2}, Lcom/facebook/rebound/SpringChain;->getControlSpring()Lcom/facebook/rebound/Spring;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v2}, Lcom/facebook/rebound/SpringChain;->getControlSpring()Lcom/facebook/rebound/Spring;

    move-result-object v2

    float-to-double v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    :cond_1
    return-void
.end method

.method private updateSpringConfig(II)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringChain;->getMainSpringConfig()Lcom/facebook/rebound/SpringConfig;

    move-result-object v0

    int-to-double v1, p1

    invoke-static {v1, v2}, Lcom/facebook/rebound/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/facebook/rebound/SpringConfig;->tension:D

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringChain;->getMainSpringConfig()Lcom/facebook/rebound/SpringConfig;

    move-result-object v0

    int-to-double v1, p2

    invoke-static {v1, v2}, Lcom/facebook/rebound/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/facebook/rebound/SpringConfig;->friction:D

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringChain;->getMainSpringConfig()Lcom/facebook/rebound/SpringConfig;

    move-result-object v0

    int-to-double v1, p1

    invoke-static {v1, v2}, Lcom/facebook/rebound/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/facebook/rebound/SpringConfig;->tension:D

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringChain;->getMainSpringConfig()Lcom/facebook/rebound/SpringConfig;

    move-result-object v0

    int-to-double v1, p2

    invoke-static {v1, v2}, Lcom/facebook/rebound/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/facebook/rebound/SpringConfig;->friction:D

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringChain;->getAttachmentSpringConfig()Lcom/facebook/rebound/SpringConfig;

    move-result-object v0

    int-to-double v1, p1

    invoke-static {v1, v2}, Lcom/facebook/rebound/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/facebook/rebound/SpringConfig;->tension:D

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringChain;->getAttachmentSpringConfig()Lcom/facebook/rebound/SpringConfig;

    move-result-object v0

    int-to-double v1, p2

    invoke-static {v1, v2}, Lcom/facebook/rebound/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/facebook/rebound/SpringConfig;->friction:D

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringChain;->getAttachmentSpringConfig()Lcom/facebook/rebound/SpringConfig;

    move-result-object v0

    int-to-double v1, p1

    invoke-static {v1, v2}, Lcom/facebook/rebound/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/facebook/rebound/SpringConfig;->tension:D

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringChain;->getAttachmentSpringConfig()Lcom/facebook/rebound/SpringConfig;

    move-result-object v0

    int-to-double v1, p2

    invoke-static {v1, v2}, Lcom/facebook/rebound/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/facebook/rebound/SpringConfig;->friction:D

    return-void
.end method


# virtual methods
.method animateToHidePointerAppIcon(Landroid/graphics/Rect;)V
    .locals 10

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mFolderItemLeftMargin:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mFolderItemTopMargin:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mFolderItemWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mFolderItemLeftMargin:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v0, v2

    :cond_0
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float v3, v0

    int-to-float v4, v1

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v5, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v3, 0x11b

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    sget-object v6, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$Utils;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v6}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v6, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$4;

    invoke-direct {v6, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$4;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)V

    invoke-virtual {v2, v6}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->updatePositionOfPointerAppIcons()V

    iget-object v6, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSecondPointerAppIcon:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getY()F

    move-result v7

    iget v8, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerSettleDownGap:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSecondPointerAppIcon:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

    invoke-static {v8}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->access$800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;)Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setX(F)V

    iget-object v8, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSecondPointerAppIcon:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

    invoke-static {v8}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->access$800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;)Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setY(F)V

    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v5, v8

    invoke-virtual {v5, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    sget-object v3, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$Utils;->sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSecondPointerAppIcon:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

    invoke-static {v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->access$800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerAppIconGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method animateToShowPointerAppIcons()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->getViewBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v2, v2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    new-instance v3, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$3;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;FF)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MinimizeContainer"

    const-string v1, "[ContainerView] dispatchKeyEvent(DOWN)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    invoke-virtual {v1, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->onKeyDown(I)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->updateTouchableRegion()V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->isFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->isPointerViewState()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/graphics/Region;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Region;-><init>(IIII)V

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mTouchableRegion:Landroid/graphics/Region;

    sget-object v3, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    invoke-virtual {p1, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    :cond_1
    :goto_0
    return v0
.end method

.method getFolderPosition(II)Landroid/graphics/PointF;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerWidth:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    iget v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerHeight:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method getPointerViewBounds()Landroid/graphics/Rect;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    float-to-int v1, v1

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerWidth:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerHeight:I

    add-int/2addr v4, v1

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method init(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->registerCallback(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$MinimizeContainerCallback;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->getPolicyController()Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->initResources()V

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->initListeners()V

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->initPosition()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->setLayoutDirection(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    return-void
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCloseSystemDialogs(Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MinimizeContainer"

    const-string v1, "[ContainerView] onCloseSystemDialogs"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->updateContainerState(IZ)V

    return-void
.end method

.method public onFlipFolderStateChanged()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->initPosition()V

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->updatePositionOfPointerAppIcons()V

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->updateAllSpringsCurrentValue()V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSecondPointerAppIcon:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerSettleDownGap:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSecondPointerAppIcon:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

    invoke-static {v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->access$800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setX(F)V

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSecondPointerAppIcon:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

    invoke-static {v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->access$800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setY(F)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->requestLayout()V

    return-void
.end method

.method public onItemAdded(Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->getMinimizeTasksCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->showWindow()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->addPointerAppIcon(Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->updateSecondPointerAppIcon()V

    return-void
.end method

.method public onItemRemoved(Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->getMinimizeTasksCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v3, p1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->taskId:I

    if-nez v0, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-direct {p0, v3, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->removePointerAppIcon(IZ)V

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->updateSecondPointerAppIcon()V

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerAppIconGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerAppIconGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearDisappearingChildren()V

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->removeAllSpringsListeners()V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->hideWindow()V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->getMinimizeTasksCount()I

    move-result v1

    if-ne v1, v2, :cond_4

    sget-boolean v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "MinimizeContainer"

    const-string v3, "[ContainerView] onItemRemoved: 1 item left, close folder if needed"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    invoke-virtual {v1, v2, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->updateContainerState(IZ)V

    :cond_4
    return-void
.end method

.method public onRotationChanged(IILandroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->isPointerViewState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->updateContainerState(IZ)V

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->getViewBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {p1, p2, p3, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$Utils;->rotateBounds(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->setPointerPosition(FF)V

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->updatePositionOfPointerAppIcons()V

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->updateAllSpringsCurrentValue()V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSecondPointerAppIcon:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getY()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerSettleDownGap:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSecondPointerAppIcon:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

    invoke-static {v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->access$800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setX(F)V

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mSecondPointerAppIcon:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

    invoke-static {v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->access$800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setY(F)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->getPointerViewBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->reportMinimizeContainerBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->requestLayout()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->handleOutsideTouchFolderView(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowRemoved()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->unregisterListeners()V

    return-void
.end method

.method updatePointerAppIconVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerAppIconGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public updateTouchableRegion()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mTmpRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->isPointerViewState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->getViewBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerAppIconHolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mPointerSettleDownGap:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mTouchableRegion:Landroid/graphics/Region;

    new-instance v1, Landroid/graphics/Region;

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mTouchableRegion:Landroid/graphics/Region;

    new-instance v1, Landroid/graphics/Region;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Region;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mTmpRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->forceLayout()V

    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->requestLayout()V

    :cond_2
    return-void
.end method
