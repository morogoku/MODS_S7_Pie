.class public Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;
.super Landroid/widget/FrameLayout;
.source "SecStatusBarNwBoosterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/SecStatusBarIconBugDetectorInterface;
.implements Lcom/android/systemui/statusbar/StatusIconDisplayable;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# instance fields
.field private mActivity:Landroid/widget/ImageView;

.field private mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private mLayoutBugDetector:Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;

.field private mMobileType:Landroid/widget/ImageView;

.field private mNwBoosterCombo:Landroid/view/ViewGroup;

.field private mNwBoosterDisabledAlpha:F

.field private mNwBoosterGroup:Landroid/widget/LinearLayout;

.field private mSlot:Ljava/lang/String;

.field private mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

.field private mVisibleState:I

.field private mWifiStrength:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mVisibleState:I

    new-instance v0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mLayoutBugDetector:Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mVisibleState:I

    new-instance v0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mLayoutBugDetector:Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mVisibleState:I

    new-instance v0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mLayoutBugDetector:Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mVisibleState:I

    new-instance v0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mLayoutBugDetector:Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;

    return-void
.end method

.method public static fromContext(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;
    .locals 3

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    nop

    const v1, 0x7f0d01e5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->setSlot(Ljava/lang/String;)V

    invoke-direct {v1}, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->init()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->setVisibleState(I)V

    return-object v1
.end method

.method private init()V
    .locals 2

    const v0, 0x7f0a03ab

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mNwBoosterGroup:Landroid/widget/LinearLayout;

    const v0, 0x7f0a03aa

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mNwBoosterCombo:Landroid/view/ViewGroup;

    const v0, 0x7f0a0667

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mWifiStrength:Landroid/widget/ImageView;

    const v0, 0x7f0a032e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mMobileType:Landroid/widget/ImageView;

    const v0, 0x7f0a003d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mActivity:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mNwBoosterDisabledAlpha:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->initDotView()V

    return-void
.end method

.method private initDotView()V
    .locals 4

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mSlot:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v2, 0x800013

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initViewState()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->visible:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mNwBoosterGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mNwBoosterGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    sget-boolean v0, Lcom/android/systemui/Rune;->STATBAR_DISPLAY_NETWORK_BOOSTER_ICON_AS_SIMPLE_TYPE:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->wifiStrengthId:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mWifiStrength:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    iget v4, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->wifiStrengthId:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mWifiStrength:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mWifiStrength:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->mobileTypeId:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mMobileType:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    iget v4, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->mobileTypeId:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->mobileDataVisible:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->running:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mMobileType:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mNwBoosterDisabledAlpha:F

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_3

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->activityId:I

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mActivity:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->activityId:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->running:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mActivity:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mNwBoosterDisabledAlpha:F

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    return-void
.end method

.method private updateState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->visible:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->visible:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mNwBoosterGroup:Landroid/widget/LinearLayout;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->visible:Z

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    sget-boolean v0, Lcom/android/systemui/Rune;->STATBAR_DISPLAY_NETWORK_BOOSTER_ICON_AS_SIMPLE_TYPE:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->wifiStrengthId:I

    iget v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->wifiStrengthId:I

    if-eq v0, v4, :cond_3

    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->wifiStrengthId:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mWifiStrength:Landroid/widget/ImageView;

    iget v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->wifiStrengthId:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mWifiStrength:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mWifiStrength:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->mobileTypeId:I

    iget v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->mobileTypeId:I

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->mobileDataVisible:Z

    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->mobileDataVisible:Z

    if-eq v0, v4, :cond_7

    :cond_4
    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->mobileTypeId:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mMobileType:Landroid/widget/ImageView;

    iget v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->mobileTypeId:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->mobileDataVisible:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mMobileType:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mNwBoosterDisabledAlpha:F

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->activityId:I

    iget v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->activityId:I

    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->running:Z

    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->running:Z

    if-eq v0, v4, :cond_b

    :cond_8
    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->activityId:I

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mActivity:Landroid/widget/ImageView;

    iget v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->activityId:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->running:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mActivity:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mNwBoosterDisabledAlpha:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b
    :goto_5
    iput-object p1, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    return-void
.end method


# virtual methods
.method public applyNwBoosterState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;)V
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->initViewState()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->updateState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;)V

    :cond_2
    return-void
.end method

.method public forceUpdateState()V
    .locals 3

    const-string v0, "SecStatusBarNwBoosterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceUpdateState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mNwBoosterGroup:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mWifiStrength:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->initViewState()V

    :cond_0
    return-void
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->getTranslationX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->getTranslationY()F

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getSlot()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mSlot:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    return-object v0
.end method

.method public getVisibleState()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mVisibleState:I

    return v0
.end method

.method public isIconVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->visible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needRelayout()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mWifiStrength:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mWifiStrength:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mNwBoosterCombo:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mNwBoosterCombo:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mWifiStrength:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->forceUpdateState()V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 3

    invoke-static {p1, p0, p3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mWifiStrength:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mActivity:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, p3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconColor(IZ)V

    return-void
.end method

.method public requestLayoutToFixLayoutBug()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mLayoutBugDetector:Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mLayoutBugDetector:Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->requestLayoutToFixLayoutBugFromExternal()V

    :cond_0
    return-void
.end method

.method public setDecorColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    return-void
.end method

.method public setSlot(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mSlot:Ljava/lang/String;

    return-void
.end method

.method public setStaticDrawableColor(I)V
    .locals 3

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mWifiStrength:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mActivity:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    return-void
.end method

.method public setVisibleState(I)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mVisibleState:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mVisibleState:I

    const/4 v0, 0x0

    const/4 v1, 0x4

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->setVisibility(I)V

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mNwBoosterGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mNwBoosterGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecStatusBarNwBoosterView(slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
