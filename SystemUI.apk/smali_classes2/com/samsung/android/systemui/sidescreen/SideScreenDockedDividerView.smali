.class public Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;
.super Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;
.source "SideScreenDockedDividerView.java"


# instance fields
.field private mBackground:Landroid/view/View;

.field private final mDefaultDisplay:Landroid/view/Display;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mFocusedWindowingMode:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGuideViewController:Lcom/samsung/android/systemui/sidescreen/GuideViewController;

.field private mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

.field private mHorizontalDivisionSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

.field private mMinimized:Z

.field private final mStableInsets:Landroid/graphics/Rect;

.field private final mTmpInt2:[I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVerticalDivisionSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mStableInsets:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mTmpInt2:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mDefaultDisplay:Landroid/view/Display;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mTmpRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->getBackgroundFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;)Lcom/samsung/android/systemui/sidescreen/GuideViewController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mGuideViewController:Lcom/samsung/android/systemui/sidescreen/GuideViewController;

    return-object v0
.end method

.method private getBackgroundFrame(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mBackground:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mTmpInt2:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mTmpInt2:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mTmpInt2:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    return-void
.end method

.method private getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mHorizontalDivisionSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mVerticalDivisionSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    :goto_0
    return-object v0
.end method

.method private initializeSnapAlgorithm(Z)V
    .locals 7

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mVerticalDivisionSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mHorizontalDivisionSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mVerticalDivisionSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    if-nez v0, :cond_1

    nop

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mDisplayWidth:I

    iget v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mDisplayHeight:I

    iget-object v4, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mStableInsets:Landroid/graphics/Rect;

    const/4 v5, 0x1

    iget-boolean v6, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mMinimized:Z

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$Factory;->getDockedModeAlgorithm(Landroid/content/res/Resources;IILandroid/graphics/Rect;IZ)Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mVerticalDivisionSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mHorizontalDivisionSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    if-nez v0, :cond_2

    nop

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mDisplayWidth:I

    iget v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mDisplayHeight:I

    iget-object v4, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mStableInsets:Landroid/graphics/Rect;

    const/4 v5, 0x2

    iget-boolean v6, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mMinimized:Z

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$Factory;->getDockedModeAlgorithm(Landroid/content/res/Resources;IILandroid/graphics/Rect;IZ)Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mHorizontalDivisionSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    :cond_2
    return-void
.end method

.method private isHorizontalDivision()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mDockSide:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private updateDisplayInfo()V
    .locals 2

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mDisplayWidth:I

    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mDisplayHeight:I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->initializeSnapAlgorithm(Z)V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->initializeSnapAlgorithm(Z)V

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 3

    const v0, 0x7f0a0176

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/DividerHandleView;

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    const v0, 0x7f0a0174

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mBackground:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mTouchSlop:I

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->updateDisplayInfo()V

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView$1;-><init>(Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/systemui/sidescreen/GuideViewController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mGuideViewController:Lcom/samsung/android/systemui/sidescreen/GuideViewController;

    return-void
.end method

.method onGuideViewVisibilityChanged(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mBackground:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_0

    const v2, 0x7f0601bb

    goto :goto_0

    :cond_0
    const v2, 0x7f0600e1

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/DividerHandleView;->setGuideViewMode(Z)V

    :cond_1
    return-void
.end method

.method public onSideScreenMinimizedChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mMinimized:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mMinimized:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->initializeSnapAlgorithm(Z)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    const-string v2, "SideScreenDockedDividerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouch : action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    nop

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->isHorizontalDivision()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mStartY:I

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v5, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mTouchSlop:I

    if-gt v2, v5, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->isHorizontalDivision()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mStartX:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v5, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mTouchSlop:I

    if-le v2, v5, :cond_2

    :cond_1
    move v3, v4

    nop

    :cond_2
    move v2, v3

    iget-boolean v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mMoving:Z

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    iput v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mStartX:I

    iput v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mStartY:I

    iput-boolean v4, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mMoving:Z

    :cond_3
    iget-boolean v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mMoving:Z

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mDockSide:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_6

    iget-object v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3}, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->getBackgroundFrame(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mGuideViewController:Lcom/samsung/android/systemui/sidescreen/GuideViewController;

    iget-object v5, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->isHorizontalDivision()Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v1

    goto :goto_0

    :cond_4
    move v6, v0

    :goto_0
    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->requestShow(Landroid/graphics/Rect;I)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->onGuideViewVisibilityChanged(Z)V

    goto :goto_2

    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mGuideViewController:Lcom/samsung/android/systemui/sidescreen/GuideViewController;

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->isHorizontalDivision()Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v1

    goto :goto_1

    :cond_5
    move v5, v0

    :goto_1
    invoke-virtual {v2, v5}, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->requestHide(I)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->onGuideViewVisibilityChanged(Z)V

    iput-boolean v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mMoving:Z

    goto :goto_2

    :pswitch_3
    iput v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mStartX:I

    iput v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mStartY:I

    iput-boolean v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mMoving:Z

    iget-object v6, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mGuideViewController:Lcom/samsung/android/systemui/sidescreen/GuideViewController;

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v7

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->isHorizontalDivision()Z

    move-result v8

    iget v9, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mDisplayWidth:I

    iget v10, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mDisplayHeight:I

    iget v11, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->mFocusedWindowingMode:I

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->initGuideController(Lcom/samsung/android/internal/policy/SideSnapAlgorithm;ZIII)V

    nop

    :cond_6
    :goto_2
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
