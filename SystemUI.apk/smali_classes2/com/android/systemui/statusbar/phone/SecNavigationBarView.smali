.class public Lcom/android/systemui/statusbar/phone/SecNavigationBarView;
.super Lcom/android/systemui/statusbar/phone/NavigationBarView;
.source "SecNavigationBarView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;
.implements Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;


# static fields
.field static final DEBUG:Z


# instance fields
.field private mAnimationData:Lcom/android/systemui/statusbar/phone/animation/AnimationData;

.field private mBackAltIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mBackAltLandIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mBackLandIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mContext:Landroid/content/Context;

.field mCurrentRemoteView:Landroid/view/View;

.field private mForceImmersiveHelpDialog:Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;

.field private mGestureStyleStoreFactory:Lcom/android/systemui/statusbar/phone/forceimmersive/GestureStyleStoreFactory;

.field private final mHandler:Landroid/os/Handler;

.field private mHomeAnim:Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;

.field private final mImmersivePinClickListener:Landroid/view/View$OnClickListener;

.field private mInScreenPinning:Z

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mInteractorManager:Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;

.field mIsThemeIconUse:Z

.field private mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

.field private mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

.field private mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

.field private mMarqueeLogic:Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;

.field private mNavBarHideIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field mNavBarRemoteViewCallback:Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager$NavBarRemoteViewCallback;

.field mNavBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;

.field private mNavBarShowIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mOverviewProxyAdapter:Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;

.field private mPresenter:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

.field private mRequestedKey:I

.field private final mRestartClickListener:Landroid/view/View$OnClickListener;

.field private mRestartTaskId:I

.field private mRightRemoteViewContainer:Landroid/widget/LinearLayout;

.field private mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

.field private final mRunnable:Ljava/lang/Runnable;

.field private mSALogger:Lcom/android/systemui/statusbar/phone/util/SALogger;

.field private final mSecImeSwitcherClickListener:Landroid/view/View$OnClickListener;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    nop

    :cond_0
    sput-boolean v1, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 32

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    invoke-direct/range {p0 .. p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, v15, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, v15, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    const/4 v13, 0x0

    iput-boolean v13, v15, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeIconUse:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$SecNavigationBarView$59-7DDo3mocJzpGUE2aiEL0BglY;

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/phone/-$$Lambda$SecNavigationBarView$59-7DDo3mocJzpGUE2aiEL0BglY;-><init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V

    iput-object v0, v15, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarRemoteViewCallback:Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager$NavBarRemoteViewCallback;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$SecNavigationBarView$t-mRZ2h8szGrZaj11HFo9mRd6Q0;

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/phone/-$$Lambda$SecNavigationBarView$t-mRZ2h8szGrZaj11HFo9mRd6Q0;-><init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V

    iput-object v0, v15, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImmersivePinClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$SecNavigationBarView$DmFWiDP9uXf7HbuoHy1w0ZteKUw;

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/phone/-$$Lambda$SecNavigationBarView$DmFWiDP9uXf7HbuoHy1w0ZteKUw;-><init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V

    iput-object v0, v15, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRestartClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V

    iput-object v0, v15, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V

    iput-object v0, v15, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mSecImeSwitcherClickListener:Landroid/view/View$OnClickListener;

    iput-object v14, v15, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    const-string v0, "input"

    invoke-virtual {v14, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, v15, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mInputManager:Landroid/hardware/input/InputManager;

    new-instance v0, Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;-><init>()V

    iput-object v0, v15, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    new-instance v0, Lcom/android/systemui/statusbar/phone/util/RuneWrapper;

    iget-object v1, v15, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/util/RuneWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, v15, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

    new-instance v0, Lcom/android/systemui/statusbar/phone/util/SALogger;

    iget-object v1, v15, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/util/SALogger;-><init>(Landroid/content/Context;)V

    iput-object v0, v15, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mSALogger:Lcom/android/systemui/statusbar/phone/util/SALogger;

    new-instance v0, Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;-><init>()V

    move-object v12, v0

    iget-object v0, v15, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/util/FeatureChecker;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/TabletHideProvider;

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/phone/forceimmersive/TabletHideProvider;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/PhoneHideProvider;

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/phone/forceimmersive/PhoneHideProvider;-><init>(Landroid/content/Context;)V

    :goto_0
    move-object v11, v0

    new-instance v0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    iget-object v1, v15, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    iget-object v2, v15, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

    invoke-direct {v0, v15, v14, v1, v2}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;-><init>(Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/util/LogWrapper;Lcom/android/systemui/statusbar/phone/util/FeatureChecker;)V

    iput-object v0, v15, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    invoke-direct {v15, v12, v11}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->initImmersiveController(Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;)Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v0, v15, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    new-instance v10, Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    new-instance v3, Lcom/android/systemui/statusbar/phone/ButtonDispatcherProxy;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getButtonDispatchers()Landroid/util/SparseArray;

    move-result-object v0

    invoke-direct {v3, v14, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcherProxy;-><init>(Landroid/content/Context;Landroid/util/SparseArray;)V

    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBarWrapper;

    iget-object v0, v15, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {v5, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWrapper;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    new-instance v6, Lcom/android/systemui/statusbar/phone/interactor/ColorSettingImpl;

    invoke-direct {v6, v14}, Lcom/android/systemui/statusbar/phone/interactor/ColorSettingImpl;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/android/systemui/statusbar/phone/interactor/ThemeDefaultSettingImpl;

    invoke-direct {v7, v14}, Lcom/android/systemui/statusbar/phone/interactor/ThemeDefaultSettingImpl;-><init>(Landroid/content/Context;)V

    new-instance v8, Lcom/android/systemui/statusbar/phone/interactor/HideSettingImpl;

    invoke-direct {v8, v14}, Lcom/android/systemui/statusbar/phone/interactor/HideSettingImpl;-><init>(Landroid/content/Context;)V

    new-instance v9, Lcom/android/systemui/statusbar/phone/interactor/HideEnabledSettingImpl;

    invoke-direct {v9, v14}, Lcom/android/systemui/statusbar/phone/interactor/HideEnabledSettingImpl;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/interactor/GestureWhileHiddenSettingImpl;

    invoke-direct {v4, v14}, Lcom/android/systemui/statusbar/phone/interactor/GestureWhileHiddenSettingImpl;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/systemui/statusbar/phone/interactor/ForceImmersiveSettingImpl;

    invoke-direct {v2, v14}, Lcom/android/systemui/statusbar/phone/interactor/ForceImmersiveSettingImpl;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/interactor/EmergencyModeSettingImpl;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/interactor/EmergencyModeSettingImpl;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/interactor/CarModeSettingImpl;

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/phone/interactor/CarModeSettingImpl;-><init>(Landroid/content/Context;)V

    new-instance v13, Lcom/android/systemui/statusbar/phone/interactor/RemoveAllCallbackImpl;

    invoke-direct {v13}, Lcom/android/systemui/statusbar/phone/interactor/RemoveAllCallbackImpl;-><init>()V

    move-object/from16 v23, v13

    new-instance v13, Lcom/android/systemui/statusbar/phone/util/EnvironmentChecker;

    invoke-direct {v13}, Lcom/android/systemui/statusbar/phone/util/EnvironmentChecker;-><init>()V

    move-object/from16 v24, v13

    iget-object v13, v15, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    move-object/from16 v25, v13

    iget-object v13, v15, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mSALogger:Lcom/android/systemui/statusbar/phone/util/SALogger;

    move-object/from16 v26, v13

    iget-object v13, v15, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

    move-object/from16 v27, v13

    iget-object v13, v15, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mGestureStyleStoreFactory:Lcom/android/systemui/statusbar/phone/forceimmersive/GestureStyleStoreFactory;

    move-object/from16 v16, v0

    move-object v0, v10

    move-object/from16 v17, v1

    move-object v1, v14

    move-object/from16 v18, v2

    move-object v2, v15

    move-object/from16 v19, v4

    move-object/from16 v4, v21

    move-object/from16 v28, v10

    move-object/from16 v10, v19

    move-object/from16 v29, v11

    move-object/from16 v11, v18

    move-object/from16 v30, v12

    move-object/from16 v12, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v24

    move-object/from16 v19, v25

    move-object/from16 v20, v26

    move-object/from16 v22, v27

    const/16 v24, 0x0

    move-object/from16 v23, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    move-object/from16 v15, v18

    move-object/from16 v16, v19

    move-object/from16 v17, v20

    move-object/from16 v18, v22

    move-object/from16 v19, v30

    move-object/from16 v20, v23

    invoke-direct/range {v0 .. v20}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/SecNavigationBarViewBase;Lcom/samsung/systemui/splugins/navigationbar/ButtonDispatcherProxyBase;Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;Lcom/android/systemui/statusbar/phone/StatusBarWrapperBase;Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;Lcom/android/systemui/statusbar/phone/interactor/ThemeDefaultSetting;Lcom/android/systemui/statusbar/phone/interactor/HideSetting;Lcom/android/systemui/statusbar/phone/interactor/HideEnabledSetting;Lcom/android/systemui/statusbar/phone/interactor/GestureWhileHiddenSetting;Lcom/android/systemui/statusbar/phone/interactor/ForceImmersiveSetting;Lcom/android/systemui/statusbar/phone/interactor/EmergencyModeSetting;Lcom/android/systemui/statusbar/phone/interactor/CarModeSetting;Lcom/android/systemui/statusbar/phone/interactor/RemoveAllCallback;Lcom/android/systemui/statusbar/phone/util/EnvironmentCheckerBase;Lcom/android/systemui/statusbar/phone/util/LogWrapper;Lcom/android/systemui/statusbar/phone/util/SALoggerBase;Lcom/android/systemui/statusbar/phone/util/FeatureChecker;Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;Lcom/android/systemui/statusbar/phone/forceimmersive/GestureStyleStoreFactory;)V

    move-object/from16 v1, v28

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPresenter:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    new-instance v1, Lcom/android/systemui/statusbar/phone/animation/AnimationData;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/animation/AnimationData;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mAnimationData:Lcom/android/systemui/statusbar/phone/animation/AnimationData;

    new-instance v1, Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeAnim:Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeAnim:Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mAnimationData:Lcom/android/systemui/statusbar/phone/animation/AnimationData;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/animation/AnimationData;->getHomeButtonAnimationFrames()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;->setAnimation(Ljava/util/List;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPresenter:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x20

    const/4 v13, 0x1

    if-eqz v3, :cond_1

    move v3, v13

    goto :goto_1

    :cond_1
    move/from16 v3, v24

    :goto_1
    invoke-virtual {v1, v3, v13}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->setNightModeOn(ZZ)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/util/MarqueeLogicImpl;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/util/MarqueeLogicImpl;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeLogic:Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;

    sget-boolean v1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_LIGHT_NAVIGATIONBAR:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPresenter:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->updateNavigationBarColor()V

    :cond_2
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v3, 0x7f0a0315

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->delete(I)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mForceImmersiveHelpDialog:Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPresenter:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;-><init>(Landroid/content/Context;Lcom/samsung/systemui/splugins/navigationbar/ExtendableNavigationBar;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mInteractorManager:Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Lcom/android/systemui/statusbar/phone/NavBarPresenter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPresenter:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    return-object v0
.end method

.method private initImmersiveController(Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;)Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;
    .locals 19
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    new-instance v8, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mGestureRotateButton:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mGestureRestartButton:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    move-object v1, v8

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;Lcom/android/systemui/statusbar/phone/util/LogWrapper;)V

    new-instance v2, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-class v4, Lcom/android/systemui/OverviewProxyService;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/OverviewProxyService;

    move-object/from16 v5, p1

    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;-><init>(Lcom/android/systemui/statusbar/phone/util/LogWrapper;Lcom/android/systemui/OverviewProxyService;Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mOverviewProxyAdapter:Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$SecNavigationBarView$X1iqL-d9ncJXVnDDrHHjYLPlAzc;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$SecNavigationBarView$X1iqL-d9ncJXVnDDrHHjYLPlAzc;-><init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setGestureConsumer(Ljava/util/function/Consumer;)V

    new-instance v2, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    invoke-direct {v2, v3, v4, v1}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/util/LogWrapper;Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;)V

    new-instance v3, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureStyleStoreFactory;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

    new-instance v7, Lcom/android/systemui/statusbar/phone/util/KeyInjector;

    invoke-direct {v7}, Lcom/android/systemui/statusbar/phone/util/KeyInjector;-><init>()V

    invoke-direct {v3, v4, v6, v7}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureStyleStoreFactory;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/util/FeatureChecker;Lcom/android/systemui/statusbar/phone/util/KeyInjector;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mGestureStyleStoreFactory:Lcom/android/systemui/statusbar/phone/forceimmersive/GestureStyleStoreFactory;

    new-instance v3, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-direct {v11, v4, v2}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;)V

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mOverviewProxyAdapter:Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;

    new-instance v15, Lcom/android/systemui/statusbar/phone/util/KeyInjector;

    invoke-direct {v15}, Lcom/android/systemui/statusbar/phone/util/KeyInjector;-><init>()V

    new-instance v4, Lcom/android/systemui/statusbar/phone/util/VibratorUtil;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/android/systemui/statusbar/phone/util/VibratorUtil;-><init>(Landroid/content/Context;)V

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mGestureStyleStoreFactory:Lcom/android/systemui/statusbar/phone/forceimmersive/GestureStyleStoreFactory;

    move-object v9, v3

    move-object v13, v1

    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    invoke-direct/range {v9 .. v18}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;Lcom/android/systemui/statusbar/phone/util/LogWrapper;Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;Lcom/android/systemui/statusbar/phone/util/KeyInjector;Lcom/android/systemui/statusbar/phone/util/VibratorUtil;Lcom/android/systemui/statusbar/phone/util/FeatureChecker;Lcom/android/systemui/statusbar/phone/forceimmersive/GestureStyleStoreFactory;)V

    move-object/from16 v17, v3

    new-instance v3, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    new-instance v12, Lcom/android/systemui/statusbar/phone/interactor/HideSettingImpl;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-direct {v12, v4}, Lcom/android/systemui/statusbar/phone/interactor/HideSettingImpl;-><init>(Landroid/content/Context;)V

    new-instance v13, Lcom/android/systemui/statusbar/phone/interactor/HideEnabledSettingImpl;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-direct {v13, v4}, Lcom/android/systemui/statusbar/phone/interactor/HideEnabledSettingImpl;-><init>(Landroid/content/Context;)V

    new-instance v14, Lcom/android/systemui/statusbar/phone/interactor/GestureWhileHiddenSettingImpl;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-direct {v14, v4}, Lcom/android/systemui/statusbar/phone/interactor/GestureWhileHiddenSettingImpl;-><init>(Landroid/content/Context;)V

    new-instance v15, Lcom/android/systemui/statusbar/phone/interactor/GestureHintSettingImpl;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-direct {v15, v4}, Lcom/android/systemui/statusbar/phone/interactor/GestureHintSettingImpl;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/interactor/ButtonOrderSettingImpl;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/android/systemui/statusbar/phone/interactor/ButtonOrderSettingImpl;-><init>(Landroid/content/Context;)V

    move-object v9, v3

    move-object/from16 v16, v4

    move-object/from16 v18, v1

    invoke-direct/range {v9 .. v18}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/util/LogWrapper;Lcom/android/systemui/statusbar/phone/interactor/HideSetting;Lcom/android/systemui/statusbar/phone/interactor/HideEnabledSetting;Lcom/android/systemui/statusbar/phone/interactor/GestureWhileHiddenSetting;Lcom/android/systemui/statusbar/phone/interactor/GestureHintSetting;Lcom/android/systemui/statusbar/phone/interactor/ButtonOrderSetting;Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;)V

    return-object v3
.end method

.method private isButtonVisible(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isHomeKey(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v2, Lcom/android/systemui/statusbar/phone/util/ButtonInteractionChecker;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/util/ButtonInteractionChecker;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentView:Landroid/view/View;

    const v3, 0x7f0a0210

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v4, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v5, v1

    iget v6, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    move v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/util/ButtonInteractionChecker;->isTouched(Landroid/view/View;IIII)Z

    move-result v1

    return v1
.end method

.method public static synthetic lambda$initImmersiveController$0(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mDownHitTarget:I

    return-void
.end method

.method public static synthetic lambda$initImmersiveController$1(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mOverviewProxyAdapter:Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$SecNavigationBarView$W8qE3kGGsaGQB-tuSE2OnIuM7Co;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$SecNavigationBarView$W8qE3kGGsaGQB-tuSE2OnIuM7Co;-><init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->setGestureHelper(Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$new$3(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateRemoteView()V

    return-void
.end method

.method public static synthetic lambda$new$4(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;Landroid/view/View;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "SecNavigationBarView"

    const-string v2, "ImmersivePinClickListener clicked"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPresenter:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->forceImmersivePinClick()V

    return-void
.end method

.method public static synthetic lambda$new$5(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;Landroid/view/View;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "SecNavigationBarView"

    const-string v2, "mOnRestartClickListener clicked"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->getInstance()Lcom/samsung/android/multidisplay/MultiDisplayManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRestartTaskId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->restartTask(I)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateRestartButton(IZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getLidState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mSALogger:Lcom/android/systemui/statusbar/phone/util/SALogger;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/util/SALogger;->sendRestartButtonEventLogInSub()V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$onAttachedToWindow$2(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPresenter:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->setNavBarVisibility(I)V

    return-void
.end method

.method private marqueeNavigationBar()V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->reorient()V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeLogic:Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;->update(F)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeLogic:Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mVertical:Z

    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;->getLeftShift(Z)I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeLogic:Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mVertical:Z

    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;->getTopShift(Z)I

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeLogic:Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;

    iget v6, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-interface {v5, v6, v7}, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;->getSidePadding(II)I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_b

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

    invoke-interface {v8}, Lcom/android/systemui/statusbar/phone/util/FeatureChecker;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setPadding(IIII)V

    goto/16 :goto_8

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-nez v8, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getRotateSuggestionButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getRestartButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    nop

    iget v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-nez v8, :cond_3

    add-int v8, v5, v0

    goto :goto_1

    :cond_3
    move v8, v0

    :goto_1
    iget v11, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-ne v11, v9, :cond_4

    add-int v9, v5, v1

    goto :goto_2

    :cond_4
    move v9, v1

    :goto_2
    iget v11, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-ne v11, v10, :cond_5

    add-int v10, v5, v3

    goto :goto_3

    :cond_5
    move v10, v3

    :goto_3
    invoke-virtual {v7, v8, v9, v2, v10}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setPadding(IIII)V

    goto :goto_8

    :cond_6
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setPadding(IIII)V

    goto :goto_8

    :cond_7
    :goto_4
    nop

    iget v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-ne v8, v10, :cond_8

    add-int v8, v5, v1

    goto :goto_5

    :cond_8
    move v8, v1

    :goto_5
    iget v10, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-nez v10, :cond_9

    add-int v10, v5, v2

    goto :goto_6

    :cond_9
    move v10, v2

    :goto_6
    iget v11, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-ne v11, v9, :cond_a

    add-int v9, v5, v3

    goto :goto_7

    :cond_a
    move v9, v3

    :goto_7
    invoke-virtual {v7, v0, v8, v10, v9}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setPadding(IIII)V

    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method private setGestureRotateButtonVisibility(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getGestureRotateButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-ne v0, v3, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPresenter:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    sget v3, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_FLOATING_ROTATION:I

    invoke-virtual {v0, v3, p1}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->setFloatingButtonVisibility(IZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getGestureRotateButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    if-eqz p1, :cond_2

    move v1, v2

    nop

    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    return-void
.end method

.method private setRestartButtonVisibility(ZZ)V
    .locals 5

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mShowRestartButton:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mShowRestartButton:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mShowRestartButton:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mShowAccessibilityButton:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mShowRotateButton:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getRestartButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v2

    const/4 v3, 0x4

    if-eqz v0, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getGestureRestartButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v2

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPresenter:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    sget v2, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_FLOATING_RESTART:I

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->setFloatingButtonVisibility(IZ)V

    return-void
.end method

.method private updateRemoteView()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    const v1, 0x7f0a02e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    const v1, 0x7f0a044d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeLogic:Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;->getSidePadding(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->update(IILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->isButtonVisible(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->isButtonVisible(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getRotateSuggestionButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->isButtonVisible(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getRestartButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->isButtonVisible(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/util/FeatureChecker;->isTablet()Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    :goto_0
    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_REMOTEVIEW:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->getLeftRemoteView()Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;

    move-result-object v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setPinButtonVisibility(Z)V

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->getLeftRemoteView()Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;

    move-result-object v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->getRightRemoteView()Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;

    move-result-object v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPresenter:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->recoverPinButtonVisibility()V

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->getCurrentDarkIntensity()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->getDarkIntensity()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->reapplyDarkIntensity()V

    :cond_7
    return-void

    :cond_8
    :goto_1
    return-void
.end method


# virtual methods
.method protected getBackIconWithAlt(ZZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltLandCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltLandIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    :goto_0
    return-object v0
.end method

.method public getBackgroundOpaqueColor()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    const v1, 0x7f06017c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getDefaultIconTheme()Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getDefaultIconTheme()Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultLayoutProvider()Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->getLayoutProvider()Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    move-result-object v0

    return-object v0
.end method

.method public getGestureHintDrawable(Landroid/content/Context;III)Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;
    .locals 2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getGestureHintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getGestureHintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;
    .locals 1

    invoke-static {p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;->create(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getKeyButtonDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getKeyButtonDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 1

    invoke-static {p2, p3}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    return-object v0
.end method

.method public getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x7f0a036a

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method protected getOpenThemeDrawable(Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 3

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0601c0

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const v2, 0x7f0601bf

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v2

    return-object v2
.end method

.method public getOpenThemeTintDrawable(Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getOpenThemeDrawable(Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedSystemKeyState()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRequestedKey:I

    return v0
.end method

.method protected getRtlDrawable(Landroid/content/Context;Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->createRTL(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getRtlKeyButtonDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 1

    invoke-virtual {p0, p1, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getRtlDrawable(Landroid/content/Context;Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getRtlKeyButtonDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->createRTL(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getThemeNavigationBarColor()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    const-string v2, "com.android.systemui"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    const v1, 0x7f0601c2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1
.end method

.method public hasNavBarPinButton()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hideNavBarButton()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/16 v2, 0x8

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_REMOTEVIEW:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public hideNavBarPinButton()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    return-void
.end method

.method public inScreenPinning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mInScreenPinning:Z

    return v0
.end method

.method public initImeSwitchButton()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mSecImeSwitcherClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initNavBarPinButton()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImmersivePinClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initRemoteView()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    const v1, 0x7f0a02e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    const v1, 0x7f0a044d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarRemoteViewCallback:Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager$NavBarRemoteViewCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->setRemoteViewCallback(Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager$NavBarRemoteViewCallback;)V

    :cond_0
    return-void
.end method

.method public initRestartButton()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getRestartButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getRestartButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRestartClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getGestureRestartButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRestartClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public isLeftRemoteViewVisible()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->isLeftRemoteViewVisible(I)Z

    move-result v0

    return v0
.end method

.method public isRequestedSystemKey(I)Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRequestedKey:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyRequestedSystemKey(I)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRequestedKey:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "SecNavigationBarView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyRequestedSystemKey requested = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRequestedKey:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPresenter:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->notifyRequestedSystemKey(I)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPresenter:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->onAttachedToWindow()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/feature/RestartButtonData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/feature/RestartButtonData;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavbarFeature()Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->getRestartData(Lcom/android/systemui/statusbar/phone/feature/RestartButtonData;)V

    nop

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/feature/RestartButtonData;->getTaskId()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/feature/RestartButtonData;->isDisplayCompatTask()Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/feature/RestartButtonData;->getButtonShow()Z

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateRestartButton(IZZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPresenter:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->setNavBarVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getRootView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$SecNavigationBarView$-uFnkqQUyVvRI0Tn_90ntyFi0O8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$SecNavigationBarView$-uFnkqQUyVvRI0Tn_90ntyFi0O8;-><init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->setOnVisibilityChangedListener(Lcom/android/systemui/statusbar/phone/NavigationBarFrame$OnVisibilityChangedListener;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPresenter:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->onConfigurationChanged()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPresenter:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->setNightModeOn(ZZ)V

    return-void
.end method

.method public onDarkIntensityChange(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onDarkIntensityChange(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->applyDarkIntensity(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPresenter:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->onDarkIntensityChange(F)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPresenter:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->setOnVisibilityChangedListener(Lcom/android/systemui/statusbar/phone/NavigationBarFrame$OnVisibilityChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mInteractorManager:Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mInteractorManager:Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;->stop()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mInteractorManager:Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setGestureConsumer(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPresenter:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->onFinishInflate()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const-class v0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->getNavigationBarGestureEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_ICON_ANIMATION:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeIconUse:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeAnim:Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;->isHomeAnimRunning()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->isHomeKey(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_3

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeAnim:Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;->playDown()V

    goto :goto_0

    :cond_3
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeAnim:Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;->playUp()V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPresenter:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->onInterceptTouchEvent(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->invalidateNavbarLayout()V

    :cond_0
    return-void
.end method

.method public onOpenThemeChanged()V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "SecNavigationBarView"

    const-string v2, "onOpenThemeChanged()"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_active_themepackage"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPresenter:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->onOpenThemeChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_ICON_MOVEMENT:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->marqueeNavigationBar()V

    :cond_0
    return-void
.end method

.method public onSystemUiVisibilityChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPresenter:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->onSystemUiVisibilityChanged(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_ICON_ANIMATION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeAnim:Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;->isHomeAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeAnim:Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;->playUp()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected orientBackButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V
    .locals 0

    return-void
.end method

.method protected orientHomeButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V
    .locals 0

    return-void
.end method

.method public reorient()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPresenter:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->onOrientationChanged()V

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_ICON_MOVEMENT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->marqueeNavigationBar()V

    :cond_0
    return-void
.end method

.method public setDefaultIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->setDefaultIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;)V

    return-void
.end method

.method public setIconThemeAlpha(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setLightsOutDisable(Z)V

    :cond_1
    nop

    :goto_1
    move v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRotatedViews:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v1, v1, v0

    const v2, 0x7f0a0364

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v1, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setLayoutProvider(Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->setLayoutProvider(Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;Z)V

    return-void
.end method

.method public setMenuVisibility(ZZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mShowMenu:Z

    const-class v1, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->getNavigationBarGestureEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    invoke-super {p0, v1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_REMOTEVIEW:Z

    if-eqz v2, :cond_2

    if-nez p2, :cond_1

    if-eq v0, v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateRemoteView()V

    :cond_2
    return-void
.end method

.method public setNavBarVirtualKeyHapticFeedbackEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->setNavBarVirtualKeyHapticFeedbackEnabled(Z)V

    return-void
.end method

.method public setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;I)V

    :cond_0
    return-void
.end method

.method public setNavigationIconHints(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(I)V

    return-void
.end method

.method public setPinButtonVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPresenter:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->setPinButtonVisibility(Z)V

    return-void
.end method

.method public setPinButtonVisibilityInternal(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    return-void
.end method

.method public setRotateButtonVisibility(Z)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setGestureRotateButtonVisibility(Z)V

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setRotateButtonVisibility(Z)I

    move-result v0

    return v0
.end method

.method public setScreenPinning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mInScreenPinning:Z

    return-void
.end method

.method public setStatusBarState(I)V
    .locals 2

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

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
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPresenter:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->onKeyguardStateChanged(Z)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setVisibility(I)V

    return-void
.end method

.method public setWindowState(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPresenter:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->onSetWindowState(I)V

    return-void
.end method

.method public showForceImmersiveHelpDialog(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mForceImmersiveHelpDialog:Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;->show(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public showImmersiveGuideToast(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    const v2, 0x7f12042f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    const v2, 0x7f12042e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showNavBarButton()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateNavButtonIcons()V

    return-void
.end method

.method protected updateCurrentView()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateCurrentView()V

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_REMOTEVIEW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0a0363

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateRemoteView()V

    :cond_0
    return-void
.end method

.method protected updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p2, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p3, Landroid/content/res/Configuration;->densityDpi:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-eq v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPresenter:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->isThemeDefault()Z

    move-result v1

    invoke-virtual {p3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->updateConditions(ZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackLandIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_DOCKED:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mDockedIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltLandIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HOME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeDefaultIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_RECENT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRecentIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_MENU:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMenuIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_IME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_SHOW_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarShowIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HIDE_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarHideIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_A11Y:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mAccessibilityIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_RESTART:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRestartIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->isThemeIconUse()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeIconUse:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "SecNavigationBarView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIcons mIsThemeDefault : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPresenter:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->isThemeDefault()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsThemeIconUse : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeIconUse:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isRTL : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public updateIconsAndHints()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationIconHints:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setNavigationIconHints(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateNavButtonIcons()V

    return-void
.end method

.method public updateImmersivePinIcon()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPresenter:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->isHideEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v2, "SecNavigationBarView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateImmersivePinIcon() isImmersiveMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarHideIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarShowIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->reapplyDarkIntensity()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    const v3, 0x7f120b3c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    const v3, 0x7f120b3b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateNavButtonIcons()V
    .locals 9

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getGestureRotateButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRotateSuggestionIcon:Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getGestureRestartButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRestartIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mInScreenPinning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPresenter:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    invoke-virtual {v5, v4, v3, v0}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->updateNavButtonIcons(ZZZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getRestartButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mShowRestartButton:Z

    invoke-direct {p0, v5, v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setRestartButtonVisibility(ZZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getRestartButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRestartIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    if-eqz v5, :cond_7

    sget-boolean v5, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_REMOTEVIEW:Z

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    move v2, v1

    :goto_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v6, "SecNavigationBarView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateNavButtonIcons showImeButton : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " mShowRestartButton : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mShowRestartButton:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    if-nez v2, :cond_6

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mShowRestartButton:Z

    if-nez v6, :cond_6

    goto :goto_4

    :cond_6
    const/4 v1, 0x4

    :goto_4
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    sget-boolean v1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE_EXTRA_AREA:Z

    if-eqz v1, :cond_8

    const-class v1, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->getNavigationBarGestureEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->hideNavBarButton()V

    :cond_8
    return-void
.end method

.method public updateOpaqueColor(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPresenter:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPresenter:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->isNightModeOn()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getBackgroundOpaqueColor()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->updateModeBackgroundColor(II)V

    :cond_1
    return-void
.end method

.method public updatePinButtonVisibility()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPresenter:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->recoverPinButtonVisibility()V

    return-void
.end method

.method public updateRestartButton(IZZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "SecNavigationBarView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRestartButton() : taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isDisplayCompatTask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", show="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRestartTaskId:I

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setRestartButtonVisibility(ZZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateNavButtonIcons()V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public updateRotateSuggestionButtonStyle(IZ)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRotateSuggestionButtonStyle(IZ)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getGestureRotateButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRotateSuggestionIcon:Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    :cond_0
    return-void
.end method

.method protected updateSlippery()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    sget-boolean v1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE_EXTRA_AREA:Z

    if-eqz v1, :cond_2

    const-class v1, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->getNavigationBarGestureEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setSlippery(Z)V

    return-void

    :cond_2
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSlippery()V

    return-void
.end method
