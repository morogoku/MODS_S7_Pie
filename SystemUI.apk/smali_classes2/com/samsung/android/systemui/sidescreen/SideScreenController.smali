.class public Lcom/samsung/android/systemui/sidescreen/SideScreenController;
.super Ljava/lang/Object;
.source "SideScreenController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/systemui/sidescreen/SideScreenController$H;,
        Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenMenuModeListener;,
        Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final mDefaultDisplay:Landroid/view/Display;

.field private final mDisplayCutoutBackground:Lcom/samsung/android/systemui/sidescreen/DisplayCutoutBackground;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private final mDivider:Lcom/android/systemui/stackdivider/Divider;

.field private mDockSide:I

.field private final mH:Lcom/samsung/android/systemui/sidescreen/SideScreenController$H;

.field private mLastFocusedWindowingMode:I

.field private final mMenusMode:Landroid/util/SparseIntArray;

.field private final mPrimaryMenu:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

.field private final mScreenDivider:Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;

.field private final mSecondaryMenu:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

.field mSideScreenVisible:Z

.field private mSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

.field private mStableInsets:Landroid/graphics/Rect;

.field private final mStackDivider:Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;


# direct methods
.method static synthetic access$000(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Lcom/samsung/android/systemui/sidescreen/SideScreenController$H;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mH:Lcom/samsung/android/systemui/sidescreen/SideScreenController$H;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mScreenDivider:Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->isInFocusMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mLastFocusedWindowingMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Lcom/samsung/android/systemui/sidescreen/DisplayCutoutBackground;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mDisplayCutoutBackground:Lcom/samsung/android/systemui/sidescreen/DisplayCutoutBackground;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mStackDivider:Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mPrimaryMenu:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mSecondaryMenu:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mDockSide:I

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/android/systemui/sidescreen/SideScreenController;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mDockSide:I

    return p1
.end method

.method static synthetic access$702(Lcom/samsung/android/systemui/sidescreen/SideScreenController;Lcom/samsung/android/internal/policy/SideSnapAlgorithm;)Lcom/samsung/android/internal/policy/SideSnapAlgorithm;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    return-object p1
.end method

.method static synthetic access$800(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->initializeSnapAlgorithm()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mMenusMode:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method private initializeSnapAlgorithm()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mDisplayWidth:I

    iget v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mDisplayHeight:I

    iget-object v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mStableInsets:Landroid/graphics/Rect;

    iget v4, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mDockSide:I

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$Factory;->getFixedModeAlgorithm(Landroid/content/res/Resources;IILandroid/graphics/Rect;I)Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    :cond_1
    return-void
.end method

.method private isInFocusMode()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mMenusMode:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mMenusMode:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public getComponent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/Divider;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getDisplayHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mDisplayHeight:I

    return v0
.end method

.method getDisplayWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mDisplayWidth:I

    return v0
.end method

.method getStableInset()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mStableInsets:Landroid/graphics/Rect;

    return-object v0
.end method
