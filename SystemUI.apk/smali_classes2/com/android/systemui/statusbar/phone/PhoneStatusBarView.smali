.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.super Lcom/android/systemui/statusbar/phone/PanelBar;
.source "PhoneStatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$FindWidthBugHelper;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;
    }
.end annotation


# instance fields
.field private mBackgroundView:Landroid/view/View;

.field mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mBarAlpha:F

.field private final mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

.field private mBattery:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

.field private mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

.field private mCameraPadding:I

.field private mCameraTopMargin:I

.field private mClearCoverMargin:I

.field private mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

.field private mCornerCutoutMargins:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentCoverStatusBarMargin:I

.field private mCurrentRotaion:I

.field private mCutoutSideNudge:I

.field private mCutoutSpace:Landroid/view/View;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayCutout:Landroid/view/DisplayCutout;

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mFWBugHelper:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$FindWidthBugHelper;

.field private mHideExpandedRunnable:Ljava/lang/Runnable;

.field mIsFullyOpenedPanel:Z

.field private mLastLayoutDirection:I

.field private mLastOrientation:I

.field private mLayoutBugDetector:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;

.field private mLeftCutOutPadding:I

.field private mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

.field private mMinFraction:F

.field private mOldBatteryPercentVisiblilty:Z

.field private mOldCoverStatusBarMargin:I

.field public mOperationLogoHelper:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;

.field private mPanelFraction:F

.field private mRightCutOutPadding:I

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private final mSetStausIconMaxWidthRunnable:Ljava/lang/Runnable;

.field private mStatusBarAreaView:Landroid/view/ViewGroup;

.field private mStatusBarContents:Landroid/view/ViewGroup;

.field private mStatusBarState:I

.field private mStatusIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

.field protected mTwoPhoneModeIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullyOpenedPanel:Z

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHideExpandedRunnable:Ljava/lang/Runnable;

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSideNudge:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLeftCutOutPadding:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mRightCutOutPadding:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCameraTopMargin:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCameraPadding:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastLayoutDirection:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentRotaion:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOldCoverStatusBarMargin:I

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarView$k5HPJ-E4_9yyFizL8TGtlKz166I;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarView$k5HPJ-E4_9yyFizL8TGtlKz166I;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSetStausIconMaxWidthRunnable:Ljava/lang/Runnable;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarAlpha:F

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOperationLogoHelper:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$FindWidthBugHelper;

    invoke-direct {v0, p0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$FindWidthBugHelper;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFWBugHelper:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$FindWidthBugHelper;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;

    invoke-direct {v0, p0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLayoutBugDetector:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplay:Landroid/view/Display;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->access$402(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070146

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanelFraction:F

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentRotaion:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentRotaion:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Lcom/android/systemui/statusbar/phone/StatusIconContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Lcom/android/systemui/BatteryMeterView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateSidePadding(Landroid/util/Pair;)V

    return-void
.end method

.method public static cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/DisplayCutout;",
            "Landroid/view/Display;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/16 v3, 0x30

    invoke-static {p0, v3, v2}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->boundsFromDirection(Landroid/view/DisplayCutout;ILandroid/graphics/Rect;)V

    iget v3, v2, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x0

    if-gtz v3, :cond_1

    new-instance v0, Landroid/util/Pair;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Point;->x:I

    if-lt v3, v5, :cond_3

    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-le v0, v3, :cond_2

    new-instance v0, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_2
    new-instance v0, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_3
    return-object v0
.end method

.method public static synthetic lambda$new$2(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v1}, Lcom/android/systemui/BatteryMeterView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v1}, Lcom/android/systemui/BatteryMeterView;->isBatteryPercentVisible()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOldBatteryPercentVisiblilty:Z

    if-eq v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOldBatteryPercentVisiblilty:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->getClockView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->getClockView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCornerCutoutMargins:Landroid/util/Pair;

    if-nez v3, :cond_2

    div-int/lit8 v0, v0, 0x2

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    invoke-virtual {v3, v0, v2}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->setMaxWidth(IZ)V

    return-void
.end method

.method public static synthetic lambda$onAttachedToWindow$1(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateLayoutForCutout()V

    return-void
.end method

.method static synthetic lambda$setBar$0()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->getInstance()Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->updateTwoPhoneIcons()V

    :cond_0
    return-void
.end method

.method private updateCutoutLocation(Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSpace:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSpace:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSpace:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    const/16 v3, 0x30

    invoke-static {v2, v3, v1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->boundsFromDirection(Landroid/view/DisplayCutout;ILandroid/graphics/Rect;)V

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSideNudge:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSideNudge:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSpace:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateLayoutForCutout()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCornerCutoutMargins:Landroid/util/Pair;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCornerCutoutMargins:Landroid/util/Pair;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const v1, 0x7f0a059a

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f0a0393

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/16 v4, 0x14

    invoke-virtual {v2, v3, v3, v4, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCornerCutoutMargins:Landroid/util/Pair;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateCutoutLocation(Landroid/util/Pair;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCornerCutoutMargins:Landroid/util/Pair;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateSafeInsets(Landroid/util/Pair;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCornerCutoutMargins:Landroid/util/Pair;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateSidePadding(Landroid/util/Pair;)V

    return-void
.end method

.method private updateMarqueeStatusBar()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->access$1100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->access$1200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->access$1102(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->access$1100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v1

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->access$1100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v1

    neg-int v1, v1

    if-ge v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->access$1200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v1

    neg-int v1, v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->access$1202(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->access$1300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->access$1302(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->access$1300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x2

    neg-int v1, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->access$1100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->access$900(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->access$700(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->access$1100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->access$1000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->invalidate()V

    return-void
.end method

.method private updateOrientationAndCutout(I)Z
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastOrientation:I

    if-eq v1, p1, :cond_0

    const/4 v0, 0x1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastOrientation:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    :cond_1
    return v0
.end method

.method private updateSafeInsets(Landroid/util/Pair;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarAreaView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    const v3, 0x7f0707b7

    const v4, 0x7f0707b2

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-nez v2, :cond_2

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplay:Landroid/view/Display;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    if-ne v2, v5, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_0
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLeftCutOutPadding:I

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mRightCutOutPadding:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateStatusBarHeight(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v7}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v7

    sub-int/2addr v2, v7

    if-gtz v2, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplay:Landroid/view/Display;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v7

    if-ne v7, v5, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_1
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_2

    :cond_4
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCameraTopMargin:I

    sub-int v3, v2, v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCameraTopMargin:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateStatusBarHeight(I)V

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-eqz p1, :cond_7

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v4, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const-string v3, "PhoneStatusBarView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSafeInsets lp.leftMargin = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " lp.rightMargin = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v5

    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-gt v7, v4, :cond_6

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :cond_6
    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-gt v7, v5, :cond_7

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_7
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLeftCutOutPadding:I

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mRightCutOutPadding:I

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    return-void
.end method

.method private updateScrimFraction()V
    .locals 4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanelFraction:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMinFraction:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanelFraction:F

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMinFraction:F

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMinFraction:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setPanelExpansion(F)V

    :cond_1
    return-void
.end method

.method private updateSidePadding(Landroid/util/Pair;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/Rune;->STATBAR_CONFIG_DEVICE_CORNER_ROUND:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    const v4, 0x7f0707c2

    if-nez v3, :cond_0

    const v3, 0x7f0707c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_0
    sget v3, Lcom/android/systemui/Rune;->STATBAR_CONFIG_STATUSBAR_SIDE_PADDING:I

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v5

    float-to-int v1, v3

    move v0, v1

    if-eqz p1, :cond_1

    iget-object v3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_1
    :goto_0
    const-string v3, "PhoneStatusBarView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSidePadding - startPadding = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " endPadding = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mLeftCutOutPadding = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLeftCutOutPadding:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mRightCutOutPadding = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mRightCutOutPadding:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplay:Landroid/view/Display;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    if-eqz p1, :cond_4

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCameraPadding:I

    if-lez v3, :cond_4

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLeftCutOutPadding:I

    if-lez v3, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLeftCutOutPadding:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCameraPadding:I

    add-int/2addr v3, v4

    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCameraPadding:I

    :goto_1
    move v0, v3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mRightCutOutPadding:I

    if-lez v3, :cond_3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mRightCutOutPadding:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCameraPadding:I

    add-int/2addr v3, v4

    goto :goto_2

    :cond_3
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCameraPadding:I

    :goto_2
    move v1, v3

    goto :goto_3

    :cond_4
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLeftCutOutPadding:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mRightCutOutPadding:I

    add-int/2addr v1, v3

    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->access$602(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->access$802(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->access$902(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->access$1002(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->access$502(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->access$800(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->access$702(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I

    :cond_7
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFWBugHelper:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$FindWidthBugHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFWBugHelper:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$FindWidthBugHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$FindWidthBugHelper;->checkWidthOfChildren(Ljava/io/PrintWriter;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLayoutBugDetector:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLayoutBugDetector:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->dumpBugViews(Ljava/io/PrintWriter;)V

    :cond_1
    return-void
.end method

.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    return-object v0
.end method

.method public getClockView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->getClockView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f0a00fe

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getOperationLogoHelper()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOperationLogoHelper:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;

    return-object v0
.end method

.method public getTwoPhoneIcon()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastOrientation:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateOrientationAndCutout(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateLayoutForCutout()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->requestLayout()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onAttachedToWindow()V

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBattery:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateOrientationAndCutout(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateLayoutForCutout()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastLayoutDirection:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastLayoutDirection:I

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarView$WX5LIdBsuNfgJjCid-qLZzvT0Ak;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarView$WX5LIdBsuNfgJjCid-qLZzvT0Ak;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->onAttachedToWindow()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOperationLogoHelper:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;->init()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLayoutBugDetector:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLayoutBugDetector:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->init()V

    :cond_3
    return-void
.end method

.method public onClosingFinished()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onClosingFinished()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onClosingFinished()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateMarqueeStatusBar()V

    nop

    :goto_0
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastOrientation:I

    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateOrientationAndCutout(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastLayoutDirection:I

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastLayoutDirection:I

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateLayoutForCutout()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->requestLayout()V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onDetachedFromWindow()V

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBattery:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->onDetachedFromWindow()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLayoutBugDetector:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLayoutBugDetector:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->destroy()V

    :cond_1
    return-void
.end method

.method public onExpandingFinished()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onExpandingFinished()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onExpandingFinished()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onExpandingFinished()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->init()V

    const v0, 0x7f0a009e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBattery:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    const v1, 0x7f0a012f

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSpace:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050365

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/util/DeviceState;->getDeviceResolutionPixelSize(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCameraTopMargin:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050364

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/util/DeviceState;->getDeviceResolutionPixelSize(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCameraPadding:I

    const v1, 0x7f0a0579

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarAreaView:Landroid/view/ViewGroup;

    const v1, 0x7f0a008d

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBackgroundView:Landroid/view/View;

    const v1, 0x7f0a057b

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateResources()V

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_TWO_PHONE:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0a059a

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    const v1, 0x7f0a0577

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/BatteryMeterView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    return-void
.end method

.method public onFinishedGoingToSleep()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateMarqueeStatusBar()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->getInstance()Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->onBarInterceptTouchEvent(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

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

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/PanelBar;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSetStausIconMaxWidthRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onPanelCollapsed()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelCollapsed()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHideExpandedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullyOpenedPanel:Z

    return-void
.end method

.method public onPanelFullyOpened()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullyOpenedPanel:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->sendAccessibilityEvent(I)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullyOpenedPanel:Z

    return-void
.end method

.method public onPanelPeeked()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeExpandedVisible(Z)V

    return-void
.end method

.method public onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->getInstance()Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->onBarInterceptTouchEvent(Landroid/view/MotionEvent;)V

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public onTrackingStarted()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStarted()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onTrackingStarted()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onTrackingStarted()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->removePendingHideExpandedRunnables()V

    return-void
.end method

.method public onTrackingStopped(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStopped(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onTrackingStopped(Z)V

    return-void
.end method

.method public panelEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->panelsEnabled()Z

    move-result v0

    return v0
.end method

.method public panelExpansionChanged(FZ)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(FZ)V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanelFraction:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateScrimFraction()V

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onPanelExpandedChange(Z)V

    :cond_1
    return-void
.end method

.method public panelScrimMinFractionChanged(F)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMinFraction:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMinFraction:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateScrimFraction()V

    :cond_0
    return-void
.end method

.method public removePendingHideExpandedRunnables()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHideExpandedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getIndicatorBgColor()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBackgroundView:Landroid/view/View;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_TWO_PHONE:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarView$JibGs7u8xUSydzUeJY48R-gEgvU;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarView$JibGs7u8xUSydzUeJY48R-gEgvU;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateLayoutForCutout()V

    const-class v0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManager;->isDualView()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setVisibility(I)V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->getInstance()Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->onUpdateStatusBarIcons()V

    return-void
.end method

.method public setBarState(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarState:I

    return-void
.end method

.method public setBgAlpha(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringBackgroundAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    const/4 v0, 0x0

    nop

    :cond_1
    move p1, v0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarAlpha:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->setFraction(F)V

    :cond_2
    return-void
.end method

.method public setBgColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCoverMargin(IZ)V
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusBarMargin:I

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusBarMargin:I

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusBarMargin:I

    nop

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusBarMargin:I

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLeftCutOutPadding:I

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusBarMargin:I

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v3

    :goto_1
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->access$502(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusBarMargin:I

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mRightCutOutPadding:I

    if-nez v3, :cond_3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusBarMargin:I

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->access$800(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v3

    :goto_2
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->access$702(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I

    if-eq p1, v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setFocusable(Z)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setFocusable(Z)V

    nop

    :goto_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusBarMargin:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOldCoverStatusBarMargin:I

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusBarMargin:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOldCoverStatusBarMargin:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateMarqueeStatusBar()V

    :cond_5
    return-void
.end method

.method public setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    move v0, p1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    const-class v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitor;->isStatusBarHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    :cond_0
    invoke-super {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->setVisibility(I)V

    return-void
.end method

.method public updateNotificationIcons()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLayoutBugDetector:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->checkAndUpdateLayout()V

    return-void
.end method

.method public updateResources()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07019b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSideNudge:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCornerCutoutMargins:Landroid/util/Pair;

    if-nez v0, :cond_0

    const/16 v0, 0x46

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSideNudge:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateLayoutForCutout()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->updateResources()V

    :cond_1
    return-void
.end method
