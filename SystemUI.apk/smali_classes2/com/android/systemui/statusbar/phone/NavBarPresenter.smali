.class public Lcom/android/systemui/statusbar/phone/NavBarPresenter;
.super Ljava/lang/Object;
.source "NavBarPresenter.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/ExtendableNavigationBar;


# instance fields
.field private mAllKeyDisabled:Z

.field mButtonDispatcherProxy:Lcom/samsung/systemui/splugins/navigationbar/ButtonDispatcherProxyBase;

.field mCarModeSettingImpl:Lcom/android/systemui/statusbar/phone/interactor/CarModeSetting;

.field mColorSettingImpl:Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

.field private mContext:Landroid/content/Context;

.field mEmergencyModeSettingImpl:Lcom/android/systemui/statusbar/phone/interactor/EmergencyModeSetting;

.field mEnvironmentChecker:Lcom/android/systemui/statusbar/phone/util/EnvironmentCheckerBase;

.field mForceImmersiveSettingImpl:Lcom/android/systemui/statusbar/phone/interactor/ForceImmersiveSetting;

.field private final mGestureStyleStoreFactory:Lcom/android/systemui/statusbar/phone/forceimmersive/GestureStyleStoreFactory;

.field mGestureWhileHiddenSettingImpl:Lcom/android/systemui/statusbar/phone/interactor/GestureWhileHiddenSetting;

.field private mHandlerWrapper:Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;

.field private mHelpConfirmed:Z

.field mHideEnabledSettingImpl:Lcom/android/systemui/statusbar/phone/interactor/HideEnabledSetting;

.field mHideSettingInteractor:Lcom/android/systemui/statusbar/phone/interactor/HideSetting;

.field private mImmersiveControllerAdapter:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;

.field private mImmersiveToastShowing:Z

.field private mIsKeyguard:Z

.field private mIsNightModeOn:Z

.field private mIsThemeDefault:Z

.field private mLastPinButtonClickTime:J

.field mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

.field private mNavBarState:I

.field private mNavBarVisibility:I

.field private mPinBtnHelpDoubleTapPolicyCount:I

.field private mPinBtnHelpSingleTapPolicyCount:I

.field private mPinButtonToastShownCount:I

.field mRemoveAllSettingsCallback:Lcom/android/systemui/statusbar/phone/interactor/RemoveAllCallback;

.field mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

.field mSALogger:Lcom/android/systemui/statusbar/phone/util/SALoggerBase;

.field mShowPinButtonToastRunnable:Ljava/lang/Runnable;

.field mStatusBarWrapper:Lcom/android/systemui/statusbar/phone/StatusBarWrapperBase;

.field mThemeDefaultSettingInterator:Lcom/android/systemui/statusbar/phone/interactor/ThemeDefaultSetting;

.field private mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;Lcom/samsung/systemui/splugins/navigationbar/ButtonDispatcherProxyBase;Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;Lcom/android/systemui/statusbar/phone/StatusBarWrapperBase;Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;Lcom/android/systemui/statusbar/phone/interactor/ThemeDefaultSetting;Lcom/android/systemui/statusbar/phone/interactor/HideSetting;Lcom/android/systemui/statusbar/phone/interactor/HideEnabledSetting;Lcom/android/systemui/statusbar/phone/interactor/GestureWhileHiddenSetting;Lcom/android/systemui/statusbar/phone/interactor/ForceImmersiveSetting;Lcom/android/systemui/statusbar/phone/interactor/EmergencyModeSetting;Lcom/android/systemui/statusbar/phone/interactor/CarModeSetting;Lcom/android/systemui/statusbar/phone/interactor/RemoveAllCallback;Lcom/android/systemui/statusbar/phone/util/EnvironmentCheckerBase;Lcom/android/systemui/statusbar/phone/util/LogWrapper;Lcom/android/systemui/statusbar/phone/util/SALoggerBase;Lcom/android/systemui/statusbar/phone/util/FeatureChecker;Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;Lcom/android/systemui/statusbar/phone/forceimmersive/GestureStyleStoreFactory;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0xa

    iput v1, v0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mPinBtnHelpDoubleTapPolicyCount:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mPinBtnHelpSingleTapPolicyCount:I

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavBarPresenter$Sb8Dn6xmjCkk6cJKFIZeaEf4dy0;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavBarPresenter$Sb8Dn6xmjCkk6cJKFIZeaEf4dy0;-><init>(Lcom/android/systemui/statusbar/phone/NavBarPresenter;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mShowPinButtonToastRunnable:Ljava/lang/Runnable;

    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    move-object/from16 v4, p5

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mStatusBarWrapper:Lcom/android/systemui/statusbar/phone/StatusBarWrapperBase;

    move-object/from16 v5, p3

    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mButtonDispatcherProxy:Lcom/samsung/systemui/splugins/navigationbar/ButtonDispatcherProxyBase;

    move-object/from16 v6, p15

    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mEnvironmentChecker:Lcom/android/systemui/statusbar/phone/util/EnvironmentCheckerBase;

    move-object/from16 v7, p16

    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    move-object/from16 v8, p17

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mSALogger:Lcom/android/systemui/statusbar/phone/util/SALoggerBase;

    move-object/from16 v9, p18

    iput-object v9, v0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

    move-object/from16 v10, p19

    iput-object v10, v0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mHandlerWrapper:Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;

    move-object/from16 v11, p4

    iput-object v11, v0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mImmersiveControllerAdapter:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;

    move-object/from16 v12, p7

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mThemeDefaultSettingInterator:Lcom/android/systemui/statusbar/phone/interactor/ThemeDefaultSetting;

    move-object/from16 v13, p8

    iput-object v13, v0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mHideSettingInteractor:Lcom/android/systemui/statusbar/phone/interactor/HideSetting;

    move-object/from16 v14, p9

    iput-object v14, v0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mHideEnabledSettingImpl:Lcom/android/systemui/statusbar/phone/interactor/HideEnabledSetting;

    move-object/from16 v15, p10

    iput-object v15, v0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mGestureWhileHiddenSettingImpl:Lcom/android/systemui/statusbar/phone/interactor/GestureWhileHiddenSetting;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mForceImmersiveSettingImpl:Lcom/android/systemui/statusbar/phone/interactor/ForceImmersiveSetting;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mEmergencyModeSettingImpl:Lcom/android/systemui/statusbar/phone/interactor/EmergencyModeSetting;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mCarModeSettingImpl:Lcom/android/systemui/statusbar/phone/interactor/CarModeSetting;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mRemoveAllSettingsCallback:Lcom/android/systemui/statusbar/phone/interactor/RemoveAllCallback;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mRemoveAllSettingsCallback:Lcom/android/systemui/statusbar/phone/interactor/RemoveAllCallback;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/phone/interactor/RemoveAllCallback;->execute(Landroid/content/Context;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->updateThemeDefaultSetting()V

    move-object/from16 v1, p6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->setColorProvider(Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;Z)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mForceImmersiveSettingImpl:Lcom/android/systemui/statusbar/phone/interactor/ForceImmersiveSetting;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/interactor/ForceImmersiveSetting;->getToastCount()I

    move-result v2

    iput v2, v0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mPinButtonToastShownCount:I

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mForceImmersiveSettingImpl:Lcom/android/systemui/statusbar/phone/interactor/ForceImmersiveSetting;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/interactor/ForceImmersiveSetting;->isHelpConfirmed()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mHelpConfirmed:Z

    move-object/from16 v2, p20

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mGestureStyleStoreFactory:Lcom/android/systemui/statusbar/phone/forceimmersive/GestureStyleStoreFactory;

    return-void
.end method

.method private isPinDoubleTabbed(J)Z
    .locals 4

    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mLastPinButtonClickTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x190

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_1

    :cond_1
    move-wide v1, p1

    :goto_1
    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mLastPinButtonClickTime:J

    return v0
.end method

.method public static synthetic lambda$forceImmersivePinClick$3(Lcom/android/systemui/statusbar/phone/NavBarPresenter;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mHelpConfirmed:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mForceImmersiveSettingImpl:Lcom/android/systemui/statusbar/phone/interactor/ForceImmersiveSetting;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mHelpConfirmed:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/interactor/ForceImmersiveSetting;->setHelpConfirmed(Z)V

    return-void
.end method

.method public static synthetic lambda$forceImmersivePinClick$4(Lcom/android/systemui/statusbar/phone/NavBarPresenter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mForceImmersiveSettingImpl:Lcom/android/systemui/statusbar/phone/interactor/ForceImmersiveSetting;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/interactor/ForceImmersiveSetting;->isHelpConfirmed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->setHideBarEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->updateImmersivePinIcon()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->updatePinButtonVisibility()V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/systemui/statusbar/phone/NavBarPresenter;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mImmersiveToastShowing:Z

    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/android/systemui/statusbar/phone/NavBarPresenter;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mImmersiveToastShowing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->isHideEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->showImmersiveGuideToast(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mImmersiveToastShowing:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mHandlerWrapper:Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavBarPresenter$qMOy_-iNrij_eKyVD5jIcplOYxw;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavBarPresenter$qMOy_-iNrij_eKyVD5jIcplOYxw;-><init>(Lcom/android/systemui/statusbar/phone/NavBarPresenter;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic lambda$onAttachedToWindow$5(Lcom/android/systemui/statusbar/phone/NavBarPresenter;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->updateThemeDefaultSetting()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->updateNavigationBarColor()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->updateIconsAndHints()V

    return-void
.end method

.method public static synthetic lambda$onAttachedToWindow$6(Lcom/android/systemui/statusbar/phone/NavBarPresenter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->updateImmersivePinIcon()V

    return-void
.end method

.method public static synthetic lambda$onAttachedToWindow$7(Lcom/android/systemui/statusbar/phone/NavBarPresenter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->updateImmersivePinIcon()V

    return-void
.end method

.method public static synthetic lambda$onAttachedToWindow$8(Lcom/android/systemui/statusbar/phone/NavBarPresenter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mGestureWhileHiddenSettingImpl:Lcom/android/systemui/statusbar/phone/interactor/GestureWhileHiddenSetting;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/interactor/GestureWhileHiddenSetting;->isGestureEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE_EXTRA_AREA:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->showNavBarButton()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mHideEnabledSettingImpl:Lcom/android/systemui/statusbar/phone/interactor/HideEnabledSetting;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/interactor/HideEnabledSetting;->setHideBarEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->updateImmersivePinIcon()V

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE_EXTRA_AREA:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->hideNavBarButton()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mGestureWhileHiddenSettingImpl:Lcom/android/systemui/statusbar/phone/interactor/GestureWhileHiddenSetting;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/interactor/GestureWhileHiddenSetting;->isGestureEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->setNavBarVirtualKeyHapticFeedbackEnabled(Z)V

    return-void
.end method

.method public static synthetic lambda$onAttachedToWindow$9(Lcom/android/systemui/statusbar/phone/NavBarPresenter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mCarModeSettingImpl:Lcom/android/systemui/statusbar/phone/interactor/CarModeSetting;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/interactor/CarModeSetting;->isBlockingSystemKey()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->REQUESTED_HOME:I

    sget v1, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->REQUESTED_RECENT:I

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->notifyRequestedSystemKey(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->getRequestedSystemKeyState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->notifyRequestedSystemKey(I)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$setColorProvider$0(Lcom/android/systemui/statusbar/phone/NavBarPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->updateThemeDefaultSetting()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->updateNavigationBarColor()V

    return-void
.end method

.method private setHideBarEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mHideEnabledSettingImpl:Lcom/android/systemui/statusbar/phone/interactor/HideEnabledSetting;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/interactor/HideEnabledSetting;->setHideBarEnabled(Z)V

    return-void
.end method

.method private updateThemeDefaultSetting()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mThemeDefaultSettingInterator:Lcom/android/systemui/statusbar/phone/interactor/ThemeDefaultSetting;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/interactor/ThemeDefaultSetting;->isThemeDefault()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mIsThemeDefault:Z

    return-void
.end method


# virtual methods
.method public forceImmersivePinClick()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->isPinDoubleTabbed(J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mHandlerWrapper:Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mShowPinButtonToastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mPinBtnHelpSingleTapPolicyCount:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mPinButtonToastShownCount:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mPinBtnHelpDoubleTapPolicyCount:I

    if-ge v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mPinButtonToastShownCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mPinButtonToastShownCount:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mForceImmersiveSettingImpl:Lcom/android/systemui/statusbar/phone/interactor/ForceImmersiveSetting;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mPinButtonToastShownCount:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/phone/interactor/ForceImmersiveSetting;->setToastCount(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->isHideEnabled()Z

    move-result v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mHelpConfirmed:Z

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavBarPresenter$9-_ZT2TFdwCZq1OeRddmVAsbo30;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavBarPresenter$9-_ZT2TFdwCZq1OeRddmVAsbo30;-><init>(Lcom/android/systemui/statusbar/phone/NavBarPresenter;)V

    new-instance v5, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavBarPresenter$iLoNtYzNXf4bJK4cw6rngJ1ZuVY;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavBarPresenter$iLoNtYzNXf4bJK4cw6rngJ1ZuVY;-><init>(Lcom/android/systemui/statusbar/phone/NavBarPresenter;)V

    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->showForceImmersiveHelpDialog(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->setPinButtonVisibility(Z)V

    return-void

    :cond_1
    xor-int/lit8 v3, v2, 0x1

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->setHideBarEnabled(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->updateImmersivePinIcon()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mSALogger:Lcom/android/systemui/statusbar/phone/util/SALoggerBase;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/util/SALoggerBase;->sendForceImmersiveModeLog()V

    return-void

    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mPinBtnHelpSingleTapPolicyCount:I

    const-wide/16 v3, 0x190

    if-lez v2, :cond_3

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mPinButtonToastShownCount:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mPinBtnHelpSingleTapPolicyCount:I

    if-ge v2, v5, :cond_4

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mPinButtonToastShownCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mPinButtonToastShownCount:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mForceImmersiveSettingImpl:Lcom/android/systemui/statusbar/phone/interactor/ForceImmersiveSetting;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mPinButtonToastShownCount:I

    invoke-interface {v2, v5}, Lcom/android/systemui/statusbar/phone/interactor/ForceImmersiveSetting;->setToastCount(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mHandlerWrapper:Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mShowPinButtonToastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mPinButtonToastShownCount:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mPinBtnHelpDoubleTapPolicyCount:I

    if-ge v2, v5, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mHandlerWrapper:Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mShowPinButtonToastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_4
    :goto_0
    return-void
.end method

.method public getButtonDispatcherProxy()Lcom/samsung/systemui/splugins/navigationbar/ButtonDispatcherProxyBase;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mButtonDispatcherProxy:Lcom/samsung/systemui/splugins/navigationbar/ButtonDispatcherProxyBase;

    return-object v0
.end method

.method public getDefaultColorProvider()Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mColorSettingImpl:Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    return-object v0
.end method

.method public getDefaultGestureInfoStore()Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mGestureStyleStoreFactory:Lcom/android/systemui/statusbar/phone/forceimmersive/GestureStyleStoreFactory;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureStyleStoreFactory;->createDefaultGestureStyle()Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultIconTheme()Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->getDefaultIconTheme()Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultLayoutProvider()Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->getDefaultLayoutProvider()Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    move-result-object v0

    return-object v0
.end method

.method public isHideEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mHideEnabledSettingImpl:Lcom/android/systemui/statusbar/phone/interactor/HideEnabledSetting;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/interactor/HideEnabledSetting;->isHideBarEnabled()Z

    move-result v0

    return v0
.end method

.method public isNightModeOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mIsNightModeOn:Z

    return v0
.end method

.method public isThemeDefault()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mIsThemeDefault:Z

    return v0
.end method

.method public notifyRequestedSystemKey(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mImmersiveControllerAdapter:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->onSystemKeyRequestChanged(I)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mThemeDefaultSettingInterator:Lcom/android/systemui/statusbar/phone/interactor/ThemeDefaultSetting;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavBarPresenter$bm0_DoMUTJM7LGr_5QLg3xTKmBE;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavBarPresenter$bm0_DoMUTJM7LGr_5QLg3xTKmBE;-><init>(Lcom/android/systemui/statusbar/phone/NavBarPresenter;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/interactor/ThemeDefaultSetting;->addCallback(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mHideSettingInteractor:Lcom/android/systemui/statusbar/phone/interactor/HideSetting;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavBarPresenter$X1vdQGv8MWUbV1JMHZPeRZvk1tQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavBarPresenter$X1vdQGv8MWUbV1JMHZPeRZvk1tQ;-><init>(Lcom/android/systemui/statusbar/phone/NavBarPresenter;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/interactor/HideSetting;->addCallback(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mHideEnabledSettingImpl:Lcom/android/systemui/statusbar/phone/interactor/HideEnabledSetting;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavBarPresenter$Qpixals9Q6xfkC2UHn025P1nKMQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavBarPresenter$Qpixals9Q6xfkC2UHn025P1nKMQ;-><init>(Lcom/android/systemui/statusbar/phone/NavBarPresenter;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/interactor/HideEnabledSetting;->addCallback(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mGestureWhileHiddenSettingImpl:Lcom/android/systemui/statusbar/phone/interactor/GestureWhileHiddenSetting;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavBarPresenter$VcqMhvRJPqQoGuAXVZQyYPFFPls;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavBarPresenter$VcqMhvRJPqQoGuAXVZQyYPFFPls;-><init>(Lcom/android/systemui/statusbar/phone/NavBarPresenter;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/interactor/GestureWhileHiddenSetting;->addCallback(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mCarModeSettingImpl:Lcom/android/systemui/statusbar/phone/interactor/CarModeSetting;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavBarPresenter$Gs2Q3Kxet5jXB0fzlj1eCv-G92U;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavBarPresenter$Gs2Q3Kxet5jXB0fzlj1eCv-G92U;-><init>(Lcom/android/systemui/statusbar/phone/NavBarPresenter;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/interactor/CarModeSetting;->addCallback(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mImmersiveControllerAdapter:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->init()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mImmersiveControllerAdapter:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->onAttached()V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mImmersiveControllerAdapter:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->onConfigurationChanged()V

    return-void
.end method

.method public onDarkIntensityChange(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mImmersiveControllerAdapter:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->onDarkIntensityChanged(F)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mImmersiveControllerAdapter:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->onDetached()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mRemoveAllSettingsCallback:Lcom/android/systemui/statusbar/phone/interactor/RemoveAllCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/interactor/RemoveAllCallback;->execute(Landroid/content/Context;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/util/FeatureChecker;->isRemoteViewSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->initRemoteView()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/util/FeatureChecker;->isForceImmersiveSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->readHelpToastCSCPolicy()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->initNavBarPinButton()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->recoverPinButtonVisibility()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/util/FeatureChecker;->isOpenThemeSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->updateIconsAndHints()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/util/FeatureChecker;->isGSimLogSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->initImeSwitchButton()V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->initRestartButton()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mStatusBarWrapper:Lcom/android/systemui/statusbar/phone/StatusBarWrapperBase;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWrapperBase;->reScheduleAutohide(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onKeyguardStateChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mIsKeyguard:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mIsKeyguard:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mImmersiveControllerAdapter:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->onKeyguardStateChanged(Z)V

    return-void
.end method

.method public onOpenThemeChanged(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mIsThemeDefault:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mThemeDefaultSettingInterator:Lcom/android/systemui/statusbar/phone/interactor/ThemeDefaultSetting;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mIsThemeDefault:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/interactor/ThemeDefaultSetting;->setThemeDefault(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->updateNavigationBarColor()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->updateIconsAndHints()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mImmersiveControllerAdapter:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->onOpenThemeChanged()V

    return-void
.end method

.method public onOrientationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mImmersiveControllerAdapter:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->onOrientationChanged()V

    return-void
.end method

.method public onSetWindowState(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mNavBarState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mNavBarState:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mImmersiveControllerAdapter:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->onSetNavBarWindowState(I)V

    return-void
.end method

.method public onSystemUiVisibilityChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mImmersiveControllerAdapter:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->onSystemUiVisibilityChanged(II)V

    return-void
.end method

.method public readHelpToastCSCPolicy()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/util/FeatureChecker;->getHideCscPolicy()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    const-string v4, "DoubleTap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    const-string v1, "DoubleTap"

    const-string v2, ""

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mPinBtnHelpDoubleTapPolicyCount:I

    return-void

    :cond_0
    const-string v4, "SingleTap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v1, "SingleTap"

    const-string v2, ""

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mPinBtnHelpSingleTapPolicyCount:I

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method recoverPinButtonVisibility()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mStatusBarWrapper:Lcom/android/systemui/statusbar/phone/StatusBarWrapperBase;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWrapperBase;->isLastPinbuttonShowed()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->setPinButtonVisibility(Z)V

    return-void
.end method

.method public sendImeSwitcherLog()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mSALogger:Lcom/android/systemui/statusbar/phone/util/SALoggerBase;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/util/SALoggerBase;->sendImeSwitcherLog()V

    return-void
.end method

.method public setColorProvider(Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;Z)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mColorSettingImpl:Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->updateThemeDefaultSetting()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->updateNavigationBarColor()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mColorSettingImpl:Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavBarPresenter$lwfOzztqn-dt8vgPh_eSZu0GFug;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavBarPresenter$lwfOzztqn-dt8vgPh_eSZu0GFug;-><init>(Lcom/android/systemui/statusbar/phone/NavBarPresenter;)V

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;->addNavBarColorCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDefaultIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->setDefaultIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->updateIconsAndHints()V

    return-void
.end method

.method public setFloatingButtonVisibility(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mImmersiveControllerAdapter:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->onSetFloatingButtonVisibility(IZ)V

    return-void
.end method

.method public setGestureStyleInfo(Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mGestureStyleStoreFactory:Lcom/android/systemui/statusbar/phone/forceimmersive/GestureStyleStoreFactory;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureStyleStoreFactory;->updateGestureStyleUtils(Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mImmersiveControllerAdapter:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->onGestureStyleChanged(Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;)V

    return-void
.end method

.method public setIconThemeAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->setIconThemeAlpha(F)V

    return-void
.end method

.method public setLayoutProvider(Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->setLayoutProvider(Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;Z)V

    return-void
.end method

.method public setNavBarVisibility(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mNavBarVisibility:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mNavBarVisibility:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mImmersiveControllerAdapter:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->setNavBarVisibility(I)V

    return-void
.end method

.method public setNightModeOn(ZZ)V
    .locals 2

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mIsNightModeOn:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mIsNightModeOn:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->getBackgroundOpaqueColor()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->updateOpaqueColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mIsNightModeOn:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setNightModeOn(Z)V

    :cond_1
    return-void
.end method

.method public setPinButtonVisibility(Z)V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->hasNavBarPinButton()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mHelpConfirmed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mStatusBarWrapper:Lcom/android/systemui/statusbar/phone/StatusBarWrapperBase;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWrapperBase;->isOccludedOnKeyguard()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "NavBarPresenter"

    const-string v2, "setPinButtonVisibility() PIN Button disalbed!"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->hideNavBarPinButton()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/util/FeatureChecker;->isRemoteViewSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->isLeftRemoteViewVisible()Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mEmergencyModeSettingImpl:Lcom/android/systemui/statusbar/phone/interactor/EmergencyModeSetting;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/interactor/EmergencyModeSetting;->isEnabled()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mStatusBarWrapper:Lcom/android/systemui/statusbar/phone/StatusBarWrapperBase;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/StatusBarWrapperBase;->isBouncerShowing()Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mStatusBarWrapper:Lcom/android/systemui/statusbar/phone/StatusBarWrapperBase;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/phone/StatusBarWrapperBase;->isUltraPowerSavingMode()Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mStatusBarWrapper:Lcom/android/systemui/statusbar/phone/StatusBarWrapperBase;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/phone/StatusBarWrapperBase;->isDeviceEncrypted()Z

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mStatusBarWrapper:Lcom/android/systemui/statusbar/phone/StatusBarWrapperBase;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/phone/StatusBarWrapperBase;->isUserSetup()Z

    move-result v6

    if-eqz p1, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mEnvironmentChecker:Lcom/android/systemui/statusbar/phone/util/EnvironmentCheckerBase;

    invoke-interface {v7}, Lcom/android/systemui/statusbar/phone/util/EnvironmentCheckerBase;->isFactoryBinary()Z

    move-result v7

    if-nez v7, :cond_3

    if-nez v0, :cond_3

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mAllKeyDisabled:Z

    if-nez v7, :cond_3

    if-nez v3, :cond_3

    if-nez v4, :cond_3

    if-nez v2, :cond_3

    if-nez v5, :cond_3

    if-eqz v6, :cond_3

    const/4 v1, 0x1

    nop

    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v8, "NavBarPresenter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setPinButtonVisibility() shouldshow="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", leftRemoteVisible="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", mAllKeyDisabled="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mAllKeyDisabled:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isBouncerShowing="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isUltraPowerSaving="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isEmergencyMode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isDeviceEncrypted="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isUserSetupComplete : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    invoke-interface {v7, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->setPinButtonVisibilityInternal(Z)V

    return-void
.end method

.method public updateNavButtonIcons(ZZZ)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mAllKeyDisabled:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mAllKeyDisabled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mStatusBarWrapper:Lcom/android/systemui/statusbar/phone/StatusBarWrapperBase;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/StatusBarWrapperBase;->isLastPinbuttonShowed()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    nop

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->setPinButtonVisibility(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mImmersiveControllerAdapter:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->onButtonStatusChanged(ZZZ)V

    return-void
.end method

.method public updateNavigationBarColor()V
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mIsThemeDefault:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mColorSettingImpl:Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->getThemeNavigationBarColor()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;->setNavigationBarThemeColor(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mColorSettingImpl:Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;->getNavigationBarColor()I

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->getBackgroundOpaqueColor()I

    move-result v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;->updateOpaqueColor(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->mColorSettingImpl:Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    invoke-interface {v1, v0}, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;->setNavigationBarCurrentColor(I)V

    return-void
.end method
