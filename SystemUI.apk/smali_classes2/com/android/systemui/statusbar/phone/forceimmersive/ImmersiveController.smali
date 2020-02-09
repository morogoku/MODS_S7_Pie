.class public Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;
.super Ljava/lang/Object;
.source "ImmersiveController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;,
        Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;
    }
.end annotation


# instance fields
.field mAllKeyDisabled:Z

.field private mBackEnabled:Z

.field mBarMode:I

.field private final mContext:Landroid/content/Context;

.field mDarkIntensity:F

.field private mGestureDetector:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;

.field private mGestureDisabledByPolicy:Z

.field mGestureHintEnabled:Z

.field mGestureListener:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureListener;

.field mGestureStyleInfoStore:Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;

.field private final mGestureStyleStoreFactory:Lcom/android/systemui/statusbar/phone/forceimmersive/GestureStyleStoreFactory;

.field mGestureWhileHiddenEnabled:Z

.field mHideEnabled:Z

.field private mHomeEnabled:Z

.field mIsDark:Z

.field mIsKeyguard:Z

.field mIsSPayVisible:Z

.field private final mKeyInjector:Lcom/android/systemui/statusbar/phone/util/KeyInjector;

.field private mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

.field private mOverviewProxyAdapter:Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;

.field private mRecentEnabled:Z

.field private final mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

.field mState:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

.field private mToolViewController:Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;

.field private final mVibratorUtil:Lcom/android/systemui/statusbar/phone/util/VibratorUtil;

.field mWindowState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;Lcom/android/systemui/statusbar/phone/util/LogWrapper;Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;Lcom/android/systemui/statusbar/phone/util/KeyInjector;Lcom/android/systemui/statusbar/phone/util/VibratorUtil;Lcom/android/systemui/statusbar/phone/util/FeatureChecker;Lcom/android/systemui/statusbar/phone/forceimmersive/GestureStyleStoreFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$1;-><init>(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureListener:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureDetector:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mToolViewController:Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mOverviewProxyAdapter:Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mKeyInjector:Lcom/android/systemui/statusbar/phone/util/KeyInjector;

    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mVibratorUtil:Lcom/android/systemui/statusbar/phone/util/VibratorUtil;

    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureStyleStoreFactory:Lcom/android/systemui/statusbar/phone/forceimmersive/GestureStyleStoreFactory;

    invoke-virtual {p9}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureStyleStoreFactory;->createDefaultGestureStyle()Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureStyleInfoStore:Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->INIT:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mState:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    return-void
.end method

.method private canHandleQuickScrub(Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;)Z
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;->None:Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    if-eq p1, v0, :cond_0

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getKeyCode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->needKeyAction()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private canHandleQuickStep(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->needKeyAction()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mIsKeyguard:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getKeyCode()I

    move-result v0

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private canShowGestureHint()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mIsSPayVisible:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mWindowState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateKeyInjectionInfos()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureStyleInfoStore:Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;->update()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureDetector:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureStyleInfoStore:Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;->getKeyInjectionInfos()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->setKeyInjectionInfos(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method applyButtonsVisibilityChangeOnGestureStyle()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureStyleInfoStore:Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mRecentEnabled:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mHomeEnabled:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mBackEnabled:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;->onButtonsVisibilityChanged(ZZZ)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->updateKeyInjectionInfos()V

    return-void
.end method

.method disableGestureWhileShowing()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureDetector:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->setVIEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureDetector:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->setGestureEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureDetector:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->setEnableRestoreTouchEvents(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureStyleInfoStore:Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;

    invoke-interface {v0, v1, v1}, Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;->setRecentKeySettings(ZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureStyleInfoStore:Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;

    invoke-interface {v0, v1, v1}, Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;->setHomeKeySettings(ZZ)V

    return-void
.end method

.method handleActionDown(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;Landroid/view/MotionEvent;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->canHandleQuickStep(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->isFollowingUpEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mOverviewProxyAdapter:Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->onPreQuickStep(Landroid/view/MotionEvent;Z)V

    :cond_0
    return-void
.end method

.method handleActionUpAndMove(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;Landroid/view/MotionEvent;Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->canHandleQuickStep(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mOverviewProxyAdapter:Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->onMotionEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3, p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->canHandleQuickScrub(Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mOverviewProxyAdapter:Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->onQuickScrubMotionEvent(Landroid/view/MotionEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public handleEvent(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->handleEvent(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;Z)V

    return-void
.end method

.method public handleEvent(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;Z)V
    .locals 7

    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->DARK_INTENSITY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->ENTRY:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->EXIT:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "ImmersiveController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEvent - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mState:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$2;->$SwitchMap$com$android$systemui$statusbar$phone$forceimmersive$ImmersiveController$Event:[I

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->floatingButtonVisible:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mToolViewController:Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;

    iget v3, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->floatingButtonType:I

    iget-boolean v4, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->floatingButtonVisible:Z

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->setFloatingButtonVisibility(IZ)V

    goto/16 :goto_2

    :pswitch_1
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->gestureDisabledByPolicy:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureDisabledByPolicy:Z

    goto/16 :goto_2

    :pswitch_2
    iget v0, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->windowState:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mWindowState:I

    goto/16 :goto_2

    :pswitch_3
    iget-object v0, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->gestureStyle:Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->setGestureStyle(Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;)V

    goto/16 :goto_2

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureStyleInfoStore:Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;

    iget v3, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->requestedSystemKey:I

    invoke-interface {v0, v3}, Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;->onRequestedSystemKeyChanged(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureDetector:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureStyleInfoStore:Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;

    invoke-interface {v3}, Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;->getKeyInjectionInfos()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->setKeyInjectionInfos(Ljava/util/List;)V

    goto/16 :goto_2

    :pswitch_5
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->isKeyguard:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mIsKeyguard:Z

    goto/16 :goto_2

    :pswitch_6
    iget v0, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->darkIntensity:F

    float-to-double v3, v0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v3, v5

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mIsDark:Z

    if-eq v3, v0, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mIsDark:Z

    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mIsDark:Z

    iget v3, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->darkIntensity:F

    iput v3, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mDarkIntensity:F

    goto/16 :goto_2

    :pswitch_7
    iget v0, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->barMode:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mBarMode:I

    goto/16 :goto_2

    :pswitch_8
    iget v0, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->windowVisibility:I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_3

    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->GONE:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->setState(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureDetector:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->stop()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mToolViewController:Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->removeToolView()V

    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->INIT:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->setState(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;)V

    return-void

    :pswitch_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureDetector:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureListener:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->start(Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureDetector:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureStyleInfoStore:Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;->getKeyInjectionInfos()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->setKeyInjectionInfos(Ljava/util/List;)V

    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->VISIBLE:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->setState(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;)V

    return-void

    :pswitch_b
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->gestureWhileHiddenEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureWhileHiddenEnabled:Z

    goto :goto_2

    :pswitch_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureStyleInfoStore:Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;

    iget-boolean v3, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->gestureHintEnabled:Z

    invoke-interface {v0, v3}, Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;->setEnableOptionalGesture(Z)V

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->gestureHintEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureHintEnabled:Z

    goto :goto_2

    :pswitch_d
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->hideEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mHideEnabled:Z

    goto :goto_2

    :pswitch_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureStyleInfoStore:Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;

    iget-boolean v3, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->buttonOrderDefault:Z

    invoke-interface {v0, v3}, Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;->onButtonOrderChanged(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureDetector:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureStyleInfoStore:Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;

    invoke-interface {v3}, Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;->getKeyInjectionInfos()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->setKeyInjectionInfos(Ljava/util/List;)V

    goto :goto_2

    :pswitch_f
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->recentEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mRecentEnabled:Z

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->homeEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mHomeEnabled:Z

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->backEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mBackEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->applyButtonsVisibilityChangeOnGestureStyle()V

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->recentEnabled:Z

    if-nez v0, :cond_3

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->homeEnabled:Z

    if-nez v0, :cond_3

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->backEnabled:Z

    if-nez v0, :cond_3

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mAllKeyDisabled:Z

    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->GONE:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->setState(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;)V

    return-void

    :pswitch_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureStyleInfoStore:Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;

    iget-boolean v3, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->oneHandModeEnabled:Z

    invoke-interface {v0, v3}, Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;->updateOneHandModeEnabled(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->updateKeyInjectionInfos()V

    goto :goto_2

    :pswitch_11
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->updateKeyInjectionInfos()V

    goto :goto_2

    :pswitch_12
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->isSPayVisible:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mIsSPayVisible:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureStyleInfoStore:Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;

    iget-boolean v3, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->isSPayVisible:Z

    iget v4, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->spayHintWidth:I

    invoke-interface {v0, v3, v4}, Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;->updateSPayHintInfo(ZI)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->updateKeyInjectionInfos()V

    nop

    :cond_3
    :goto_2
    if-eqz p3, :cond_4

    return-void

    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$2;->$SwitchMap$com$android$systemui$statusbar$phone$forceimmersive$ImmersiveController$State:[I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mState:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_5

    :pswitch_13
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->ENTRY:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureDetector:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->setGestureEnabled(Z)V

    goto/16 :goto_5

    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->VISIBILITY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-ne p1, v0, :cond_6

    iget v0, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->windowVisibility:I

    if-nez v0, :cond_23

    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->VISIBLE:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->setState(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;)V

    goto/16 :goto_5

    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->BUTTONS_VISIBILITY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-ne p1, v0, :cond_23

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mAllKeyDisabled:Z

    if-eqz v0, :cond_23

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->recentEnabled:Z

    if-nez v0, :cond_7

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->homeEnabled:Z

    if-nez v0, :cond_7

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->backEnabled:Z

    if-eqz v0, :cond_23

    :cond_7
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mAllKeyDisabled:Z

    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->VISIBLE:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->setState(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;)V

    goto/16 :goto_5

    :pswitch_14
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->ENTRY:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureDetector:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->setGestureEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mToolViewController:Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->showTouchConsumingView()V

    goto/16 :goto_5

    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->EXIT:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mToolViewController:Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->hideTouchConsumingView()V

    goto/16 :goto_5

    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->ORIENTATION_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mToolViewController:Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;

    iget v1, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->displayRotation:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->updateTouchConsumingView(I)V

    goto/16 :goto_5

    :cond_a
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->GESTURE_WHILE_HIDDEN_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-ne p1, v0, :cond_b

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->gestureWhileHiddenEnabled:Z

    if-eqz v0, :cond_23

    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->HIDDEN:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->setState(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;)V

    goto/16 :goto_5

    :cond_b
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->HIDE_BAR_SETTING_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-ne p1, v0, :cond_c

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->hideBarSettingEnabled:Z

    if-nez v0, :cond_23

    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->VISIBLE:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->setState(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;)V

    goto/16 :goto_5

    :cond_c
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->WINDOW_STATE_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-ne p1, v0, :cond_23

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->onWindowStateChangedWhileHiding(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;)V

    goto/16 :goto_5

    :pswitch_15
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->ENTRY:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureDetector:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->setGestureEnabled(Z)V

    goto/16 :goto_5

    :cond_d
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->WINDOW_STATE_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-ne p1, v0, :cond_e

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->onWindowStateChangedWhileHiding(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;)V

    goto/16 :goto_5

    :cond_e
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->GESTURE_WHILE_HIDDEN_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-ne p1, v0, :cond_23

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->gestureWhileHiddenEnabled:Z

    if-eqz v0, :cond_23

    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->HIDDEN:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->setState(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;)V

    goto/16 :goto_5

    :pswitch_16
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->ENTRY:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-ne p1, v0, :cond_10

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureDisabledByPolicy:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureDetector:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->setGestureEnabled(Z)V

    goto/16 :goto_5

    :cond_f
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->showHintAndEnableGestureWhileHiding()V

    goto/16 :goto_5

    :cond_10
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->EXIT:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-ne p1, v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mToolViewController:Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->hideGestureView()V

    goto/16 :goto_5

    :cond_11
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->ORIENTATION_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-eq p1, v0, :cond_1b

    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->BUTTONS_VISIBILITY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-eq p1, v0, :cond_1b

    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->GESTURE_HINT_SETTING_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-eq p1, v0, :cond_1b

    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->CONFIGURATION_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-eq p1, v0, :cond_1b

    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->OPENTHEME_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-eq p1, v0, :cond_1b

    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->SPAY_HINT_VISIBILITY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-eq p1, v0, :cond_1b

    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->ONE_HAND_MODE_SETTING_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-ne p1, v0, :cond_12

    goto/16 :goto_4

    :cond_12
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->GESTURE_WHILE_HIDDEN_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-ne p1, v0, :cond_13

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->gestureWhileHiddenEnabled:Z

    if-nez v0, :cond_23

    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->VISIBLE:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->setState(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;)V

    goto/16 :goto_5

    :cond_13
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->DARK_INTENSITY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-ne p1, v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mToolViewController:Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mDarkIntensity:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->setDarkIntensity(F)V

    goto/16 :goto_5

    :cond_14
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->WINDOW_STATE_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-ne p1, v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/util/FeatureChecker;->isSupportGestureExtraArea()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mToolViewController:Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->canShowGestureHint()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->setGestureHintVisiblity(Z)V

    goto/16 :goto_5

    :cond_15
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->KEYGUARD_STATE_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-eq p1, v0, :cond_1a

    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->REQUESTED_SYSTEM_KEY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-ne p1, v0, :cond_16

    goto :goto_3

    :cond_16
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->GESTURE_STYLE_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-ne p1, v0, :cond_17

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->updateGestureStyle()V

    goto/16 :goto_5

    :cond_17
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->FLOATING_BUTTON_VISIBILITY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-ne p1, v0, :cond_18

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mToolViewController:Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;

    iget v1, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->floatingButtonType:I

    iget-boolean v2, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->floatingButtonVisible:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->setFloatingButtonVisibility(IZ)V

    goto/16 :goto_5

    :cond_18
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->GESTURE_DISABLED_BY_POLICY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-ne p1, v0, :cond_23

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->gestureDisabledByPolicy:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureDetector:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->setGestureEnabled(Z)V

    goto/16 :goto_5

    :cond_19
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->showHintAndEnableGestureWhileHiding()V

    goto/16 :goto_5

    :cond_1a
    :goto_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mIsKeyguard:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->setGestureThreshold(Z)V

    goto/16 :goto_5

    :cond_1b
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mToolViewController:Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureStyleInfoStore:Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;->getKeyInjectionInfos()Ljava/util/List;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureHintEnabled:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mIsDark:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->updateGestureView(Ljava/util/List;ZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mToolViewController:Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->canShowGestureHint()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->setGestureHintVisiblity(Z)V

    goto/16 :goto_5

    :pswitch_17
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->ENTRY:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-ne p1, v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->disableGestureWhileShowing()V

    goto/16 :goto_5

    :cond_1c
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->HIDE_ENABLED_SETTING_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-ne p1, v0, :cond_1d

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->hideEnabled:Z

    if-nez v0, :cond_23

    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->VISIBLE:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->setState(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;)V

    goto :goto_5

    :cond_1d
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->WINDOW_STATE_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-ne p1, v0, :cond_1e

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->onWindowStateChangedWhileShowing(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;)V

    goto :goto_5

    :cond_1e
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->BAR_MODE_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-ne p1, v0, :cond_1f

    iget v0, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->barMode:I

    if-eq v0, v1, :cond_23

    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->VISIBLE:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->setState(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;)V

    goto :goto_5

    :cond_1f
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->GESTURE_WHILE_HIDDEN_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-ne p1, v0, :cond_23

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->gestureWhileHiddenEnabled:Z

    if-eqz v0, :cond_23

    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->HIDDEN:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->setState(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;)V

    goto :goto_5

    :pswitch_18
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->ENTRY:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-ne p1, v0, :cond_20

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->disableGestureWhileShowing()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureWhileHiddenEnabled:Z

    if-eqz v0, :cond_23

    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->HIDDEN:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->setState(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;)V

    goto :goto_5

    :cond_20
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->HIDE_ENABLED_SETTING_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-ne p1, v0, :cond_21

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->hideEnabled:Z

    if-eqz v0, :cond_23

    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->FORCE_IMMERSIVE:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->setState(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;)V

    goto :goto_5

    :cond_21
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->GESTURE_WHILE_HIDDEN_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-ne p1, v0, :cond_22

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->gestureWhileHiddenEnabled:Z

    if-eqz v0, :cond_23

    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->HIDDEN:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->setState(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;)V

    goto :goto_5

    :cond_22
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->WINDOW_STATE_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    if-ne p1, v0, :cond_23

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->onWindowStateChangedWhileShowing(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;)V

    :cond_23
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public handleEventInternal(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->handleEvent(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;Z)V

    return-void
.end method

.method handleSwipe(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;Landroid/view/MotionEvent;Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;)V
    .locals 4

    invoke-direct {p0, p3, p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->canHandleQuickScrub(Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mOverviewProxyAdapter:Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->onStartQuickScrub(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->canHandleQuickStep(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mOverviewProxyAdapter:Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->onStartQuickStep(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getKeyCode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->needKeyAction()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mKeyInjector:Lcom/android/systemui/statusbar/phone/util/KeyInjector;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getKeyCode()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/util/KeyInjector;->inject(IZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mVibratorUtil:Lcom/android/systemui/statusbar/phone/util/VibratorUtil;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getKeyCode()I

    move-result v2

    if-ne v2, v1, :cond_3

    const/4 v3, 0x1

    nop

    :cond_3
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/util/VibratorUtil;->vibrate(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method onWindowStateChangedWhileHiding(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;)V
    .locals 2

    iget v0, p1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->windowState:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mBarMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->TRANSIENT:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->setState(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->VISIBLE:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->setState(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;)V

    :cond_1
    :goto_0
    return-void
.end method

.method onWindowStateChangedWhileShowing(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;)V
    .locals 2

    iget v0, p1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->windowState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mHideEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->FORCE_IMMERSIVE:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->setState(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->IMMERSIVE:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->setState(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;)V

    :cond_1
    :goto_0
    return-void
.end method

.method setGestureStyle(Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureStyleInfoStore:Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->applyButtonsVisibilityChangeOnGestureStyle()V

    return-void
.end method

.method setGestureThreshold(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureStyleInfoStore:Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;->setGestureThreshold(Z)V

    return-void
.end method

.method setState(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "ImmersiveController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setState - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->EXIT:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->handleEventInternal(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mState:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->ENTRY:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->handleEventInternal(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;)V

    return-void
.end method

.method showHintAndEnableGestureWhileHiding()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureDetector:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->setVIEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureStyleInfoStore:Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;

    invoke-interface {v0, v1, v1}, Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;->setRecentKeySettings(ZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureStyleInfoStore:Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;

    invoke-interface {v0, v1, v1}, Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;->setHomeKeySettings(ZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureStyleInfoStore:Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mIsKeyguard:Z

    invoke-interface {v0, v2}, Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;->setGestureThreshold(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->updateKeyInjectionInfos()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureDetector:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->setGestureEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureDetector:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->setEnableRestoreTouchEvents(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mToolViewController:Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->showGestureView()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mToolViewController:Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureStyleInfoStore:Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;->getKeyInjectionInfos()Ljava/util/List;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mGestureHintEnabled:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mIsDark:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->updateGestureView(Ljava/util/List;ZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->mToolViewController:Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->canShowGestureHint()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->setGestureHintVisiblity(Z)V

    return-void
.end method

.method updateGestureStyle()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->showHintAndEnableGestureWhileHiding()V

    return-void
.end method
