.class public Lcom/android/systemui/qs/SecQuickStatusBarHeader;
.super Landroid/widget/RelativeLayout;
.source "SecQuickStatusBarHeader.java"

# interfaces
.implements Lcom/android/systemui/coloring/QSColoringServiceObject;


# instance fields
.field private mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

.field private mCameraPadding:I

.field private mCameraTopMargin:I

.field private mDefaultTextSize:F

.field private mDisplayCutout:Landroid/view/DisplayCutout;

.field private mExpanded:Z

.field protected mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private mHeaderServiceContainerView:Landroid/view/View;

.field protected mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

.field private mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

.field private mInflated:Z

.field private mIsCenterCutoutDevice:Z

.field private mListening:Z

.field private mQsDisabled:Z

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQuickStatusBarAreaView:Landroid/view/View;

.field private mSmallClock:Lcom/android/systemui/statusbar/policy/QSClock;

.field private mSmallDate:Lcom/android/systemui/statusbar/policy/DateView;

.field private mSystemIconsView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mInflated:Z

    iput v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCameraPadding:I

    iput v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCameraTopMargin:I

    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mIsCenterCutoutDevice:Z

    return-void
.end method

.method public static getColorIntensity(I)F
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method private getRoundCornerSidePaddingWithDensity()I
    .locals 2

    sget v0, Lcom/android/systemui/Rune;->STATBAR_CONFIG_STATUSBAR_SIDE_PADDING:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private isQsPanelBgColorDark(I)Z
    .locals 11

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, p1, 0xff

    mul-int v3, v0, v0

    int-to-double v3, v3

    const-wide v5, 0x3fced916872b020cL    # 0.241

    mul-double/2addr v3, v5

    mul-int v5, v1, v1

    int-to-double v5, v5

    const-wide v7, 0x3fe61cac083126e9L    # 0.691

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    mul-int v5, v2, v2

    int-to-double v5, v5

    const-wide v7, 0x3fb16872b020c49cL    # 0.068

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v3, v3

    const-string v4, "SecQuickStatusBarHeader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isQsPanelBgColorDark bgColor = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "%06X"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    const v9, 0xffffff

    and-int/2addr v9, p1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " brightnessValue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x82

    if-ge v3, v4, :cond_0

    return v7

    :cond_0
    return v10
.end method

.method public static synthetic lambda$updateEverything$0(Lcom/android/systemui/qs/SecQuickStatusBarHeader;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->setClickable(Z)V

    return-void
.end method

.method private updateColors()V
    .locals 6

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateQSColoringResources(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSmallClock:Lcom/android/systemui/statusbar/policy/QSClock;

    const v1, 0x7f0602c3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSmallClock:Lcom/android/systemui/statusbar/policy/QSClock;

    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/QSClock;->setTextColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSmallDate:Lcom/android/systemui/statusbar/policy/DateView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSmallDate:Lcom/android/systemui/statusbar/policy/DateView;

    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/DateView;->setTextColor(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mContext:Landroid/content/Context;

    const v2, 0x7f0602c2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->setTint(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mContext:Landroid/content/Context;

    const v1, 0x7f060210

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->isQsPanelBgColorDark(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mContext:Landroid/content/Context;

    const v3, 0x7f06017b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mContext:Landroid/content/Context;

    const v3, 0x7f0600c4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->setTint(I)V

    const v1, 0x7f0a009e

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/BatteryMeterView;

    iput-object v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v1, v4}, Lcom/android/systemui/BatteryMeterView;->setForceShowPercent(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    if-eqz v0, :cond_4

    move v5, v3

    goto :goto_1

    :cond_4
    move v5, v2

    :goto_1
    invoke-virtual {v1, v4, v5}, Lcom/android/systemui/BatteryMeterView;->setForceQsTintColor(ZF)V

    :cond_5
    const v1, 0x7f0a0375

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetspeedView;

    if-eqz v1, :cond_7

    if-eqz v0, :cond_6

    move v2, v3

    nop

    :cond_6
    invoke-virtual {v1, v4, v2}, Lcom/android/systemui/statusbar/policy/NetspeedView;->setForceQsTintColor(ZF)V

    :cond_7
    return-void
.end method

.method private updateResources()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mIsCenterCutoutDevice:Z

    if-eqz v2, :cond_0

    mul-int/lit8 v1, v1, 0x2

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget v4, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCameraPadding:I

    if-lez v4, :cond_3

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCameraPadding:I

    add-int/2addr v4, v5

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCameraPadding:I

    :goto_0
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCameraPadding:I

    add-int/2addr v5, v6

    goto :goto_1

    :cond_2
    iget v5, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCameraPadding:I

    :goto_1
    goto :goto_2

    :cond_3
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const v6, 0x7f0707c2

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v5, v6

    :goto_2
    iget-object v6, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    invoke-virtual {v6, v4, v3, v5, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateSidePadding()V

    :goto_3
    iget-object v4, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QuickQSPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    const v5, 0x7f070660

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v5, v4}, Lcom/android/systemui/qs/QuickQSPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQsDisabled:Z

    if-eqz v6, :cond_5

    move v6, v3

    goto :goto_4

    :cond_5
    const/4 v6, -0x2

    :goto_4
    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSmallClock:Lcom/android/systemui/statusbar/policy/QSClock;

    iget v6, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDefaultTextSize:F

    invoke-virtual {v5, v3, v6}, Lcom/android/systemui/statusbar/policy/QSClock;->setTextSize(IF)V

    iget-object v5, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSmallClock:Lcom/android/systemui/statusbar/policy/QSClock;

    const v6, 0x3f99999a    # 1.2f

    const v7, 0x3f4ccccd    # 0.8f

    const v8, 0x7f0707ae

    invoke-static {v5, v8, v7, v6}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    iget-object v5, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSmallDate:Lcom/android/systemui/statusbar/policy/DateView;

    iget v9, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDefaultTextSize:F

    invoke-virtual {v5, v3, v9}, Lcom/android/systemui/statusbar/policy/DateView;->setTextSize(IF)V

    iget-object v3, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSmallDate:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-static {v3, v8, v7, v6}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    return-void
.end method

.method private updateSidePadding()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/android/systemui/Rune;->STATBAR_CONFIG_DEVICE_CORNER_ROUND:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    const v4, 0x7f0707c3

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v4, 0x7f0707c2

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->getRoundCornerSidePaddingWithDensity()I

    move-result v2

    move v1, v2

    :goto_0
    const v4, 0x7f0707b7

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    iget-boolean v6, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mIsCenterCutoutDevice:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    div-int/lit8 v6, v4, 0x2

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    invoke-virtual {v5, v1, v6, v2, v7}, Landroid/view/View;->setPaddingRelative(IIII)V

    const-string v5, "SecQuickStatusBarHeader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateResources: startPadding = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " endPadding = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public disable(IIZ)V
    .locals 5

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQsDisabled:Z

    if-ne v0, v2, :cond_1

    return-void

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQsDisabled:Z

    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/QuickQSPanel;->setDisabledByPolicy(Z)V

    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderServiceContainerView:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQsDisabled:Z

    const/16 v4, 0x8

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQsDisabled:Z

    if-eqz v3, :cond_3

    move v1, v4

    nop

    :cond_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateResources()V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 9

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDisplayCutout:Landroid/view/DisplayCutout;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mIsCenterCutoutDevice:Z

    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mIsCenterCutoutDevice:Z

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDisplayCutout:Landroid/view/DisplayCutout;

    const v3, 0x7f0707c2

    const v4, 0x7f0707b7

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0707c3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v4, v1, v3, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto/16 :goto_4

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v5}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v5

    sub-int/2addr v2, v5

    iget-boolean v5, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mIsCenterCutoutDevice:Z

    if-eqz v5, :cond_2

    mul-int/lit8 v2, v2, 0x2

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQuickStatusBarAreaView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v6, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCameraTopMargin:I

    sub-int v4, v2, v4

    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v4, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCameraTopMargin:I

    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    if-eqz v0, :cond_7

    iget v4, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCameraPadding:I

    if-lez v4, :cond_6

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCameraPadding:I

    add-int/2addr v3, v4

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCameraPadding:I

    :goto_1
    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_5

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v6, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCameraPadding:I

    add-int/2addr v4, v6

    goto :goto_2

    :cond_5
    iget v4, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCameraPadding:I

    :goto_2
    goto :goto_3

    :cond_6
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->getRoundCornerSidePaddingWithDensity()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v6

    move v8, v4

    move v4, v3

    move v3, v8

    goto :goto_3

    :cond_7
    move v4, v1

    move v3, v1

    :goto_3
    iget-object v6, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQuickStatusBarAreaView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    invoke-virtual {v6, v3, v1, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    :goto_4
    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateSidePadding()V

    :cond_8
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->requestApplyInsets()V

    return-void
.end method

.method public onColorChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mInflated:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateColors()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateResources()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDisplayCutout:Landroid/view/DisplayCutout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->setListening(Z)V

    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a042d

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const v0, 0x7f0a0434

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    const v0, 0x7f0a0421

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderServiceContainerView:Landroid/view/View;

    const v0, 0x7f0a0577

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->setShouldRestrictIcons(Z)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    sget-object v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;->QUICKHEADER:Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->setType(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;)V

    const v0, 0x7f0a0542

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/QSClock;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSmallClock:Lcom/android/systemui/statusbar/policy/QSClock;

    const v0, 0x7f0a0543

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DateView;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSmallDate:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDefaultTextSize:F

    const v1, 0x7f0a0433

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQuickStatusBarAreaView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mContext:Landroid/content/Context;

    const v2, 0x1050367

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/util/DeviceState;->getDeviceResolutionPixelSize(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCameraTopMargin:I

    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mContext:Landroid/content/Context;

    const v2, 0x1050366

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/util/DeviceState;->getDeviceResolutionPixelSize(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCameraPadding:I

    invoke-direct {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateResources()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateQSColoringResources(Landroid/view/View;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mInflated:Z

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRtlPropertiesChanged(I)V

    invoke-direct {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateResources()V

    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mExpanded:Z

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setExpanded(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateEverything()V

    return-void
.end method

.method public setExpansion(ZFF)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return-void
.end method

.method public setListening(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setListening(Z)V

    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mListening:Z

    return-void
.end method

.method public setMargins(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->setupHost(Lcom/android/systemui/qs/QSTileHost;)V

    :cond_0
    return-void
.end method

.method public setupHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/qs/QuickQSPanel;->setQSPanelAndHeader(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setHost(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    return-void
.end method

.method public updateEverything()V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/-$$Lambda$SecQuickStatusBarHeader$fA_X1nYD_EfuprGqmNi04LzODr4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/-$$Lambda$SecQuickStatusBarHeader$fA_X1nYD_EfuprGqmNi04LzODr4;-><init>(Lcom/android/systemui/qs/SecQuickStatusBarHeader;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateQSColoringResources(Landroid/view/View;)V
    .locals 10

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateColors()V

    return-void

    :cond_0
    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v0

    const-class v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSmallClock:Lcom/android/systemui/statusbar/policy/QSClock;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSmallClock:Lcom/android/systemui/statusbar/policy/QSClock;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/QSClock;->setTextColor(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSmallDate:Lcom/android/systemui/statusbar/policy/DateView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSmallDate:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/DateView;->setTextColor(I)V

    :cond_2
    const v3, 0x7f0a0134

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    const-class v4, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/16 v5, 0x1f

    invoke-virtual {v4, v5}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->setTint(I)V

    invoke-direct {p0, v4}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->isQsPanelBgColorDark(I)Z

    move-result v5

    const v6, 0x7f0a009e

    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/BatteryMeterView;

    iput-object v6, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    iget-object v6, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v6, v1}, Lcom/android/systemui/BatteryMeterView;->setForceShowPercent(Z)V

    iget-object v6, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    if-eqz v5, :cond_4

    move v9, v8

    goto :goto_0

    :cond_4
    move v9, v7

    :goto_0
    invoke-virtual {v6, v1, v9}, Lcom/android/systemui/BatteryMeterView;->setForceQsTintColor(ZF)V

    :cond_5
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->isQsPanelBgColorDark(I)Z

    move-result v6

    const v9, 0x7f0a0375

    invoke-virtual {p0, v9}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/NetspeedView;

    if-eqz v9, :cond_7

    if-eqz v6, :cond_6

    move v7, v8

    nop

    :cond_6
    invoke-virtual {v9, v1, v7}, Lcom/android/systemui/statusbar/policy/NetspeedView;->setForceQsTintColor(ZF)V

    :cond_7
    return-void
.end method
