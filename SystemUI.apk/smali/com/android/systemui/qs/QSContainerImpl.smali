.class public Lcom/android/systemui/qs/QSContainerImpl;
.super Landroid/widget/FrameLayout;
.source "QSContainerImpl.java"

# interfaces
.implements Lcom/android/systemui/coloring/QSColoringServiceObject;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field private mBackground:Landroid/view/View;

.field private mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mBarController:Lcom/android/systemui/bar/BarController;

.field private mBottomLeftRadius:I

.field private mBottomRightRadius:I

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mDisplayCutout:Landroid/view/DisplayCutout;

.field private mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

.field private mExtendedAppBarHeight:I

.field private mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

.field private mHeaderBottomMargin:I

.field private mHeaderIconsHeight:I

.field private mHeightOverride:I

.field private mIsCenterCutoutDevice:Z

.field private mNaviBarHeight:I

.field private mNaviGestureHintHeight:I

.field private mNightModeMask:I

.field mNotificationCount:I

.field private mOrientation:I

.field mPrimaryLabelColor:I

.field private mQSBigTimeContainer:Landroid/view/View;

.field private mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

.field private mQSDetail:Lcom/android/systemui/qs/QSDetail;

.field private mQSDetailHeaderContainer:Landroid/view/View;

.field private mQSEmptyButtonsContainer:Landroid/view/View;

.field private mQSHeaderButtonsContaier:Landroid/view/View;

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field mQSTileLabelColor:I

.field private mQsDisabled:Z

.field private mQsExpansion:F

.field private mQuickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field mSecondaryTextColor:I

.field private mServiceBox:Lcom/android/systemui/qs/QSServiceBox;

.field private mSideMargins:I

.field private final mSizePoint:Landroid/graphics/Point;

.field private mSystemIconsHeight:I

.field private mSystemIconsView:Landroid/view/View;

.field private mTopLeftRadius:I

.field private mTopRightRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mNaviBarHeight:I

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mOrientation:I

    iput v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mNotificationCount:I

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mIsCenterCutoutDevice:Z

    iput v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSTileLabelColor:I

    iput v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mPrimaryLabelColor:I

    iput v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSecondaryTextColor:I

    const-class v0, Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationEntryManager;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    return-void
.end method

.method private getDisplayHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public static synthetic lambda$updateColors$0(Lcom/android/systemui/qs/QSContainerImpl;III)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSTileLabelColor:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "qs_panel_tile_text_color"

    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSTileLabelColor:I

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mPrimaryLabelColor:I

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "qs_detail_content_primary_text_color"

    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mPrimaryLabelColor:I

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSecondaryTextColor:I

    if-eq p3, v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "qs_detail_content_secondary_text_color"

    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSecondaryTextColor:I

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_2
    return-void
.end method

.method private setMargins()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->setMargins(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->setMargins(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSideMargins:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setMargins(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSideMargins:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->setMargins(I)V

    return-void
.end method

.method private setMargins(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSideMargins:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSideMargins:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    return-void
.end method

.method private updateBackgroundRadius()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mTopLeftRadius:I

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mTopRightRadius:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07055a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBottomRightRadius:I

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBottomLeftRadius:I

    return-void
.end method

.method private updateColors()V
    .locals 8

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSTileLabelColor:I

    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mPrimaryLabelColor:I

    iget v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSecondaryTextColor:I

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-virtual {v0, v5}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mPrimaryLabelColor:I

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSecondaryTextColor:I

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    const v6, 0x7f06025d

    invoke-virtual {v4, v6}, Landroid/content/Context;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSTileLabelColor:I

    iget-object v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    const v6, 0x7f06022a

    invoke-virtual {v4, v6}, Landroid/content/Context;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mPrimaryLabelColor:I

    iget-object v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    const v6, 0x7f06021b

    invoke-virtual {v4, v6}, Landroid/content/Context;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSecondaryTextColor:I

    :goto_0
    invoke-static {}, Lcom/android/systemui/util/SimpleAsyncTask;->getNewInstance()Lcom/android/systemui/util/SimpleAsyncTask;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Runnable;

    const/4 v6, 0x0

    new-instance v7, Lcom/android/systemui/qs/-$$Lambda$QSContainerImpl$7WdkZJ5-STZd3BTZpaT8Dl2T56w;

    invoke-direct {v7, p0, v1, v2, v3}, Lcom/android/systemui/qs/-$$Lambda$QSContainerImpl$7WdkZJ5-STZd3BTZpaT8Dl2T56w;-><init>(Lcom/android/systemui/qs/QSContainerImpl;III)V

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/android/systemui/util/SimpleAsyncTask;->submit([Ljava/lang/Runnable;)V

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringBackgroundColor()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringBackgroundAlpha()I

    move-result v5

    const/16 v6, 0xff

    if-ge v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setElevation(F)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    const v5, 0x7f060210

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v5, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateResources()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mServiceBox:Lcom/android/systemui/qs/QSServiceBox;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSServiceBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSystemIconsHeight:I

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/qs/QSContainerImpl;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v5}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v5

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSystemIconsHeight:I

    :cond_1
    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSystemIconsHeight:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0707b7

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSystemIconsHeight:I

    :cond_2
    if-nez v1, :cond_6

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mIsCenterCutoutDevice:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSystemIconsHeight:I

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSystemIconsHeight:I

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSBigTimeContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSDetailHeaderContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSEmptyButtonsContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    sget-boolean v6, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070506

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/util/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getDisplayHeight()I

    move-result v6

    :goto_1
    iget-object v7, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0705c4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeaderIconsHeight:I

    iget-object v7, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0705af

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeaderBottomMargin:I

    iget v7, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSystemIconsHeight:I

    sub-int v7, v6, v7

    int-to-float v7, v7

    const v8, 0x3e99999a    # 0.3f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeaderIconsHeight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeaderBottomMargin:I

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/android/systemui/qs/QSContainerImpl;->mExtendedAppBarHeight:I

    iget v7, p0, Lcom/android/systemui/qs/QSContainerImpl;->mExtendedAppBarHeight:I

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v7, p0, Lcom/android/systemui/qs/QSContainerImpl;->mExtendedAppBarHeight:I

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v7, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSystemIconsHeight:I

    sub-int v7, v6, v7

    int-to-float v7, v7

    const v8, 0x3ec28f5c    # 0.38f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeaderIconsHeight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeaderBottomMargin:I

    sub-int/2addr v7, v8

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v7, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSystemIconsHeight:I

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v7, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSDetailHeaderContainer:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSBigTimeContainer:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSEmptyButtonsContainer:Landroid/view/View;

    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/android/systemui/qs/QSContainerImpl;->mServiceBox:Lcom/android/systemui/qs/QSServiceBox;

    invoke-virtual {v7, v4}, Lcom/android/systemui/qs/QSServiceBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_6
    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSystemIconsHeight:I

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mServiceBox:Lcom/android/systemui/qs/QSServiceBox;

    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/QSServiceBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    return-void
.end method


# virtual methods
.method protected calculateContainerHeight()I
    .locals 4

    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getMeasuredHeight()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v1}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBarController:Lcom/android/systemui/bar/BarController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBarController:Lcom/android/systemui/bar/BarController;

    invoke-virtual {v2}, Lcom/android/systemui/bar/BarController;->getQSBarsTranslation()I

    move-result v2

    add-int/2addr v1, v2

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomizing()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getHeight()I

    move-result v2

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    sub-int v3, v0, v1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, v1

    :goto_1
    return v2
.end method

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
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsDisabled:Z

    if-ne v0, v2, :cond_1

    return-void

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsDisabled:Z

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mServiceBox:Lcom/android/systemui/qs/QSServiceBox;

    const/16 v3, 0x8

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mServiceBox:Lcom/android/systemui/qs/QSServiceBox;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsDisabled:Z

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/QSServiceBox;->setVisibility(I)V

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsDisabled:Z

    if-eqz v4, :cond_4

    move v1, v3

    nop

    :cond_4
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mNaviGestureHintHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mNaviBarHeight:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    nop

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mIsCenterCutoutDevice:Z

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mIsCenterCutoutDevice:Z

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eq v0, v2, :cond_1

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateResources()V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v2

    return-object v2
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateResources()V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateColors()V

    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    iput v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mNightModeMask:I

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mNightModeMask:I

    if-eq v1, v2, :cond_7

    const-string v2, "QSContainer"

    const-string v3, "night mode changed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mNightModeMask:I

    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateColors()V

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/QSPanel;->onColorChanged(Landroid/content/res/Configuration;)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQuickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQuickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/QuickQSPanel;->onColorChanged(Landroid/content/res/Configuration;)V

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mServiceBox:Lcom/android/systemui/qs/QSServiceBox;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mServiceBox:Lcom/android/systemui/qs/QSServiceBox;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/QSServiceBox;->onColorChanged(Landroid/content/res/Configuration;)V

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->onColorChanged(Landroid/content/res/Configuration;)V

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/QSDetail;->onColorChanged(Landroid/content/res/Configuration;)V

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->onColorChanged(Landroid/content/res/Configuration;)V

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBarController:Lcom/android/systemui/bar/BarController;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBarController:Lcom/android/systemui/bar/BarController;

    invoke-virtual {v2, p1}, Lcom/android/systemui/bar/BarController;->onColorChanged(Landroid/content/res/Configuration;)V

    :cond_7
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateBackgroundRadius()V

    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateResources()V

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mOrientation:I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a042a

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSServiceBox;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mServiceBox:Lcom/android/systemui/qs/QSServiceBox;

    const v0, 0x7f0a0431

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mServiceBox:Lcom/android/systemui/qs/QSServiceBox;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setServiceBox(Lcom/android/systemui/qs/QSServiceBox;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mServiceBox:Lcom/android/systemui/qs/QSServiceBox;

    const v1, 0x7f0a0190

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSServiceBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSEmptyButtonsContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mServiceBox:Lcom/android/systemui/qs/QSServiceBox;

    const v1, 0x7f0a0201

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSServiceBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSHeaderButtonsContaier:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mServiceBox:Lcom/android/systemui/qs/QSServiceBox;

    const v1, 0x7f0a040b

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSServiceBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSBigTimeContainer:Landroid/view/View;

    const v0, 0x7f0a042d

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQuickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const v0, 0x7f0a0410

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSDetail;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mServiceBox:Lcom/android/systemui/qs/QSServiceBox;

    const v1, 0x7f0a0414

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSServiceBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSDetailHeaderContainer:Landroid/view/View;

    const v0, 0x7f0a0200

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    const v0, 0x7f0a0434

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSystemIconsView:Landroid/view/View;

    const v0, 0x7f0a0429

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    const v0, 0x7f0a042f

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070521

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSideMargins:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->setImportantForAccessibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->setMargins()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f06022a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f06021b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "qs_detail_content_primary_text_color"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "qs_detail_content_secondary_text_color"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateBackgroundRadius()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mNaviGestureHintHeight:I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/qs/QSPanel;->measure(II)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getMeasuredWidth()I

    move-result v0

    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mExtendedAppBarHeight:I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSystemIconsHeight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeaderIconsHeight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeaderBottomMargin:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mExtendedAppBarHeight:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070506

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    sget-boolean v5, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/util/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getDisplayHeight()I

    move-result v5

    iget v6, p0, Lcom/android/systemui/qs/QSContainerImpl;->mNaviBarHeight:I

    sub-int/2addr v5, v6

    :goto_0
    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-super {p0, v4, v5}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    sget-boolean v5, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/util/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getDisplayHeight()I

    move-result v5

    iget v6, p0, Lcom/android/systemui/qs/QSContainerImpl;->mNaviBarHeight:I

    sub-int/2addr v5, v6

    :goto_1
    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4, p1, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->measure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public performClick()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setBarController(Lcom/android/systemui/bar/BarController;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBarController:Lcom/android/systemui/bar/BarController;

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBarController:Lcom/android/systemui/bar/BarController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setBarController(Lcom/android/systemui/bar/BarController;)V

    return-void
.end method

.method public setExpansion(F)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->setExpansion(F)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    return-void
.end method

.method public setHeightOverride(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    return-void
.end method

.method public updateExpansion()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->calculateContainerHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSContainerImpl;->setBottom(I)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTop(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/util/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getDisplayHeight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mNaviBarHeight:I

    sub-int/2addr v3, v4

    :goto_0
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBottom(I)V

    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mNotificationCount:I

    :cond_2
    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mNotificationCount:I

    if-lez v2, :cond_5

    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/systemui/Rune;->NOTI_SUPPORT_QSEXPANSION_WITHOUT_NSSL:Z

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    goto :goto_2

    :cond_4
    :goto_1
    move v3, v4

    nop

    :cond_5
    :goto_2
    move v2, v3

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/16 v4, 0x8

    new-array v4, v4, [F

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/systemui/qs/QSContainerImpl;->mTopLeftRadius:I

    int-to-float v6, v6

    aput v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/android/systemui/qs/QSContainerImpl;->mTopLeftRadius:I

    int-to-float v6, v6

    aput v6, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Lcom/android/systemui/qs/QSContainerImpl;->mTopRightRadius:I

    int-to-float v6, v6

    aput v6, v4, v5

    const/4 v5, 0x3

    iget v6, p0, Lcom/android/systemui/qs/QSContainerImpl;->mTopRightRadius:I

    int-to-float v6, v6

    aput v6, v4, v5

    const/4 v5, 0x4

    iget v6, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBottomLeftRadius:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    aput v6, v4, v5

    const/4 v5, 0x5

    iget v6, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBottomLeftRadius:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    aput v6, v4, v5

    const/4 v5, 0x6

    iget v6, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBottomRightRadius:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    aput v6, v4, v5

    const/4 v5, 0x7

    iget v6, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBottomRightRadius:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    aput v6, v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    return-void
.end method
