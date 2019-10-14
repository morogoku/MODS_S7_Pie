.class public Lcom/android/systemui/stackdivider/DividerCloseController;
.super Ljava/lang/Object;
.source "DividerCloseController.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/multistar/PluginIDividerCloseControll;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;,
        Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;
    }
.end annotation


# instance fields
.field private mCloseButtonView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDimBrightnessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;

.field private mDimDarknessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;

.field private mDividerSize:I

.field private mDockSide:I

.field private mIsShowing:Z

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mMinimizedPosition:I

.field private mMinimizedSplitView:Landroid/view/View;

.field private mPrevLocale:Ljava/util/Locale;

.field private mRemoved:Z

.field private mStartedSplitApp:Z

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;-><init>(Lcom/android/systemui/stackdivider/DividerCloseController;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDimBrightnessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;

    new-instance v0, Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;-><init>(Lcom/android/systemui/stackdivider/DividerCloseController;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDimDarknessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mContext:Landroid/content/Context;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDockSide:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mRemoved:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mIsShowing:Z

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/view/WindowManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10500a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/2addr v0, v3

    sub-int v0, v2, v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDividerSize:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mPrevLocale:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerCloseController;->register()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/stackdivider/DividerCloseController;)Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDimDarknessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/stackdivider/DividerCloseController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedSplitView:Landroid/view/View;

    return-object v0
.end method

.method private calculatePositionWithDockSide()V
    .locals 5

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDockSide:I

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedPosition:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDividerSize:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mLp:Landroid/view/WindowManager$LayoutParams;

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x15

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mLp:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedPosition:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedPosition:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mLp:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x13

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isDimAnimating()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDimBrightnessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDimBrightnessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDimDarknessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDimDarknessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;->isRunning()Z

    move-result v0

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

.method public static synthetic lambda$makeView$0(Lcom/android/systemui/stackdivider/DividerCloseController;Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->dismissDockedStack()V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_USAGE_LOGGING:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mContext:Landroid/content/Context;

    const-string v1, "1005"

    const-string v2, "Dismiss split view"

    const-string v3, "TapCloseBtn"

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$makeView$1(Lcom/android/systemui/stackdivider/DividerCloseController;Landroid/view/View;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerCloseController;->showToast()V

    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$startDimAnimation$2(Lcom/android/systemui/stackdivider/DividerCloseController;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDimBrightnessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;->start()V

    return-void
.end method

.method private showToast()V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mCloseButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050368

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105018c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mCloseButtonView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    iget v4, v3, Landroid/graphics/Point;->x:I

    aget v6, v0, v5

    sub-int/2addr v4, v6

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mCloseButtonView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v4, v6

    goto :goto_0

    :cond_0
    aget v4, v0, v5

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mCloseButtonView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    sub-int/2addr v4, v2

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mCloseButtonView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    const v6, 0x800035

    aget v7, v0, v7

    const-wide v8, 0x3ff199999999999aL    # 1.1

    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mCloseButtonView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    sub-int/2addr v7, v1

    invoke-virtual {v5, v6, v4, v7}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public addView()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mRemoved:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0xa2f

    const/16 v5, 0x8

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "DividerClose"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedSplitView:Landroid/view/View;

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerCloseController;->calculatePositionWithDockSide()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedSplitView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mRemoved:Z

    return-void
.end method

.method public appTransitionCancelledOrFinished()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mStartedSplitApp:Z

    if-eqz v0, :cond_0

    const-string v0, "DividerCloseController"

    const-string v1, "appTransitionCancelledOrFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDockSide:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedPosition:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/stackdivider/DividerCloseController;->show(II)V

    :cond_0
    return-void
.end method

.method public hide()V
    .locals 2

    const-string v0, "DividerCloseController"

    const-string v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mStartedSplitApp:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mIsShowing:Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDimBrightnessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDimBrightnessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDimDarknessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDimDarknessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;->cancel()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerCloseController;->removeView()V

    return-void
.end method

.method public makeView()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d011f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedSplitView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedSplitView:Landroid/view/View;

    const v1, 0x7f0a035f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mCloseButtonView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mCloseButtonView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/stackdivider/-$$Lambda$DividerCloseController$SFC39mpZsSQPtKYEJxe_IbltSi8;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$DividerCloseController$SFC39mpZsSQPtKYEJxe_IbltSi8;-><init>(Lcom/android/systemui/stackdivider/DividerCloseController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mCloseButtonView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/stackdivider/-$$Lambda$DividerCloseController$sygi_9JvknLKFjOBI4bOIkz6fIA;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$DividerCloseController$sygi_9JvknLKFjOBI4bOIkz6fIA;-><init>(Lcom/android/systemui/stackdivider/DividerCloseController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedFirstAnimationFrameEvent;)V
    .locals 2

    const-string v0, "DividerCloseController"

    const-string v1, "DockedFirstAnimationFrameEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mStartedSplitApp:Z

    return-void
.end method

.method public register()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerCloseController;->makeView()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public removeView()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mRemoved:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedSplitView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedSplitView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mRemoved:Z

    :cond_1
    return-void
.end method

.method public show(II)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mStartedSplitApp:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mIsShowing:Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDimBrightnessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDimDarknessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mRemoved:Z

    if-nez v0, :cond_1

    const-string v0, "DividerCloseController"

    const-string v1, "MinimizedSplitView has already been added"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput p1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDockSide:I

    iput p2, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedPosition:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerCloseController;->addView()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDimBrightnessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedSplitView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDimDarknessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedSplitView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;->setTarget(Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    const-string v0, "DividerCloseController"

    const-string v1, "Animator is running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startDimAnimation()V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerCloseController;->isDimAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDimBrightnessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedSplitView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/stackdivider/-$$Lambda$DividerCloseController$UNaEz01o-ZBETzgNh71FdKfO_CQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$DividerCloseController$UNaEz01o-ZBETzgNh71FdKfO_CQ;-><init>(Lcom/android/systemui/stackdivider/DividerCloseController;)V

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerCloseController;->removeView()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public update(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mPrevLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mPrevLocale:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerCloseController;->removeView()V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerCloseController;->makeView()V

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mIsShowing:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerCloseController;->addView()V

    :cond_1
    return-void
.end method

.method public updateDockside(II)V
    .locals 3

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDockSide:I

    iput p2, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedPosition:I

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mRemoved:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedSplitView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerCloseController;->calculatePositionWithDockSide()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedSplitView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedSplitView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
