.class public Lcom/android/systemui/statusbar/SecStatusBarWifiView;
.super Lcom/android/systemui/statusbar/StatusBarWifiView;
.source "SecStatusBarWifiView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/SecStatusBarIconBugDetectorInterface;


# instance fields
.field private mDarkContext:Landroid/view/ContextThemeWrapper;

.field private mDarkIntensity:F

.field private mDebug:Z

.field private mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private mLayoutBugDetector:Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;

.field private mLightContext:Landroid/view/ContextThemeWrapper;

.field private mSlot:Ljava/lang/String;

.field private mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

.field private mVisibleState:I

.field private mWifiActivity:Landroid/widget/ImageView;

.field private mWifiCombo:Landroid/view/ViewGroup;

.field private mWifiGroup:Landroid/widget/LinearLayout;

.field private mWifiIcon:Landroid/widget/ImageView;

.field private mWifiIconSet:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarWifiView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mDarkIntensity:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mVisibleState:I

    new-instance v0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mLayoutBugDetector:Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/StatusBarWifiView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mDarkIntensity:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mVisibleState:I

    new-instance v0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mLayoutBugDetector:Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/StatusBarWifiView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mDarkIntensity:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mVisibleState:I

    new-instance v0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mLayoutBugDetector:Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/StatusBarWifiView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mDarkIntensity:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mVisibleState:I

    new-instance v0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mLayoutBugDetector:Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;

    return-void
.end method

.method public static fromContext(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/statusbar/SecStatusBarWifiView;
    .locals 3

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01e6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SecStatusBarWifiView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->setSlot(Ljava/lang/String;)V

    invoke-direct {v1}, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->init()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->setVisibleState(I)V

    return-object v1
.end method

.method private init()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mContext:Landroid/content/Context;

    const v1, 0x7f04022b

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mContext:Landroid/content/Context;

    const v2, 0x7f040101

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mLightContext:Landroid/view/ContextThemeWrapper;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mDarkContext:Landroid/view/ContextThemeWrapper;

    const v2, 0x7f0a065a

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mWifiGroup:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0659

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mWifiCombo:Landroid/view/ViewGroup;

    const v2, 0x7f0a065b

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mWifiIconSet:Landroid/view/ViewGroup;

    const v2, 0x7f0a0666

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    const v2, 0x7f0a0657

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mWifiActivity:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->initDotView()V

    return-void
.end method

.method private initDotView()V
    .locals 4

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mSlot:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v2, 0x800013

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initViewState()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->contentDescription:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityId:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mWifiActivity:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityId:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mWifiActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->setVisibility(I)V

    return-void
.end method

.method private updateState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "SecStatusBarWifiView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->contentDescription:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityId:I

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityId:I

    if-eq v0, v1, :cond_4

    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityId:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mWifiActivity:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mWifiActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mWifiActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    if-eq v0, v1, :cond_6

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    if-eqz v0, :cond_5

    move v2, v3

    nop

    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->setVisibility(I)V

    :cond_6
    iput-object p1, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    return-void
.end method


# virtual methods
.method public applyWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->initViewState()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->updateState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    :cond_2
    return-void
.end method

.method public forceUpdateState()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "SecStatusBarWifiView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceUpdateState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mWifiActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->initViewState()V

    :cond_1
    return-void
.end method

.method public getSlot()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mSlot:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibleState()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mVisibleState:I

    return v0
.end method

.method public isIconVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

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

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mWifiCombo:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mWifiCombo:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mWifiGroup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mWifiGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mWifiIconSet:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mWifiIconSet:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->forceUpdateState()V

    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "ShouldLog"

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mDebug:Z

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 3

    invoke-static {p1, p0, p3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mWifiActivity:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, p3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconColor(IZ)V

    return-void
.end method

.method public requestLayoutToFixLayoutBug()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mLayoutBugDetector:Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mLayoutBugDetector:Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->requestLayoutToFixLayoutBugFromExternal()V

    :cond_0
    return-void
.end method

.method public setDecorColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    return-void
.end method

.method public setSlot(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mSlot:Ljava/lang/String;

    return-void
.end method

.method public setStaticDrawableColor(I)V
    .locals 2

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mWifiActivity:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    return-void
.end method

.method public setVisibleState(I)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mVisibleState:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mVisibleState:I

    const/4 v0, 0x0

    const/16 v1, 0x8

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mWifiGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mWifiGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mWifiGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

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

    const-string v1, "SecStatusBarWifiView(slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mVisibleState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->mVisibleState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
