.class public Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;
.super Ljava/lang/Object;
.source "ImmersiveControllerAdapter.java"


# instance fields
.field private mBackEnabled:Z

.field private mButtonOrderSetting:Lcom/android/systemui/statusbar/phone/interactor/ButtonOrderSetting;

.field private mContext:Landroid/content/Context;

.field mController:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;

.field private mDisplay:Landroid/view/Display;

.field private mGestureDisabledByPolicySetting:Lcom/android/systemui/statusbar/phone/interactor/GestureDisabledByPolicySetting;

.field private mGestureHintSetting:Lcom/android/systemui/statusbar/phone/interactor/GestureHintSetting;

.field private mGestureWhileHiddenSetting:Lcom/android/systemui/statusbar/phone/interactor/GestureWhileHiddenSetting;

.field private mHideEnabledInteractor:Lcom/android/systemui/statusbar/phone/interactor/HideEnabledSetting;

.field private mHideSettingInteractor:Lcom/android/systemui/statusbar/phone/interactor/HideSetting;

.field private mHomeEnabled:Z

.field private mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

.field private mOneHandSetting:Lcom/android/systemui/statusbar/phone/interactor/OneHandSetting;

.field private mRecentEnabled:Z

.field mToolViewController:Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/util/LogWrapper;Lcom/android/systemui/statusbar/phone/interactor/HideSetting;Lcom/android/systemui/statusbar/phone/interactor/HideEnabledSetting;Lcom/android/systemui/statusbar/phone/interactor/GestureWhileHiddenSetting;Lcom/android/systemui/statusbar/phone/interactor/GestureHintSetting;Lcom/android/systemui/statusbar/phone/interactor/ButtonOrderSetting;Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mDisplay:Landroid/view/Display;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mHideSettingInteractor:Lcom/android/systemui/statusbar/phone/interactor/HideSetting;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mHideEnabledInteractor:Lcom/android/systemui/statusbar/phone/interactor/HideEnabledSetting;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mGestureWhileHiddenSetting:Lcom/android/systemui/statusbar/phone/interactor/GestureWhileHiddenSetting;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mGestureHintSetting:Lcom/android/systemui/statusbar/phone/interactor/GestureHintSetting;

    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mButtonOrderSetting:Lcom/android/systemui/statusbar/phone/interactor/ButtonOrderSetting;

    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mController:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;

    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mToolViewController:Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;

    new-instance v0, Lcom/android/systemui/statusbar/phone/interactor/GestureDisabledByPolicySetting;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/interactor/GestureDisabledByPolicySetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mGestureDisabledByPolicySetting:Lcom/android/systemui/statusbar/phone/interactor/GestureDisabledByPolicySetting;

    new-instance v0, Lcom/android/systemui/statusbar/phone/interactor/OneHandSetting;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/interactor/OneHandSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mOneHandSetting:Lcom/android/systemui/statusbar/phone/interactor/OneHandSetting;

    return-void
.end method

.method public static synthetic lambda$init$0(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->onHideBarSettingChanged(Z)V

    return-void
.end method

.method public static synthetic lambda$init$1(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->onHideEnabledChanged(Z)V

    return-void
.end method

.method public static synthetic lambda$init$2(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->onGestureSettingChanged(Z)V

    return-void
.end method

.method public static synthetic lambda$init$3(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->onGestureHintSettingChanged(Z)V

    return-void
.end method

.method public static synthetic lambda$init$4(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->onButtonOrderSettingChanged(Z)V

    return-void
.end method

.method public static synthetic lambda$init$5(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->onGestureDisabledByPolicySettingChanged()V

    return-void
.end method

.method public static synthetic lambda$init$6(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->onOneHandModeChanged(Z)V

    return-void
.end method

.method public static synthetic lambda$onAttached$7(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->onSPayHintVisibilityChanged(ZI)V

    return-void
.end method

.method private onButtonOrderSettingChanged(Z)V
    .locals 5

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mButtonOrderSetting:Lcom/android/systemui/statusbar/phone/interactor/ButtonOrderSetting;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/interactor/ButtonOrderSetting;->isOrderDefault()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->buttonOrderDefault:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v2, "ImmersiveControllerAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onButtonOrderSettingChanged - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->buttonOrderDefault:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mController:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;

    sget-object v2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->BUTTON_ORDER_SETTING_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    invoke-virtual {v1, v2, v0, p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->handleEvent(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;Z)V

    return-void
.end method

.method private onGestureDisabledByPolicySettingChanged()V
    .locals 5

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mGestureDisabledByPolicySetting:Lcom/android/systemui/statusbar/phone/interactor/GestureDisabledByPolicySetting;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/interactor/GestureDisabledByPolicySetting;->isGestureDisabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->gestureDisabledByPolicy:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v2, "ImmersiveControllerAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGestureDisabledByPolicySettingChanged - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->gestureDisabledByPolicy:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mController:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;

    sget-object v2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->GESTURE_DISABLED_BY_POLICY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->handleEvent(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;Z)V

    return-void
.end method

.method private onGestureHintSettingChanged(Z)V
    .locals 5

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mGestureHintSetting:Lcom/android/systemui/statusbar/phone/interactor/GestureHintSetting;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/interactor/GestureHintSetting;->isGestureHintEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->gestureHintEnabled:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v2, "ImmersiveControllerAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGestureHintSettingChanged - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->gestureHintEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mController:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;

    sget-object v2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->GESTURE_HINT_SETTING_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    invoke-virtual {v1, v2, v0, p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->handleEvent(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;Z)V

    return-void
.end method

.method private onGestureSettingChanged(Z)V
    .locals 5

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mGestureWhileHiddenSetting:Lcom/android/systemui/statusbar/phone/interactor/GestureWhileHiddenSetting;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/interactor/GestureWhileHiddenSetting;->isGestureEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->gestureWhileHiddenEnabled:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v2, "ImmersiveControllerAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGestureSettingChanged - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->gestureWhileHiddenEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mController:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;

    sget-object v2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->GESTURE_WHILE_HIDDEN_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    invoke-virtual {v1, v2, v0, p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->handleEvent(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;Z)V

    return-void
.end method

.method private onHideBarSettingChanged(Z)V
    .locals 5

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mHideSettingInteractor:Lcom/android/systemui/statusbar/phone/interactor/HideSetting;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/interactor/HideSetting;->isHideBarSettingOn()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->hideBarSettingEnabled:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v2, "ImmersiveControllerAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHideBarSettingChanged - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->hideBarSettingEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mController:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;

    sget-object v2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->HIDE_BAR_SETTING_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    invoke-virtual {v1, v2, v0, p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->handleEvent(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;Z)V

    return-void
.end method

.method private onHideEnabledChanged(Z)V
    .locals 5

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mHideEnabledInteractor:Lcom/android/systemui/statusbar/phone/interactor/HideEnabledSetting;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/interactor/HideEnabledSetting;->isHideBarEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->hideEnabled:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v2, "ImmersiveControllerAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHideEnabledChanged - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->hideEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mController:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;

    sget-object v2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->HIDE_ENABLED_SETTING_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    invoke-virtual {v1, v2, v0, p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->handleEvent(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;Z)V

    return-void
.end method

.method private onOneHandModeChanged(Z)V
    .locals 5

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mOneHandSetting:Lcom/android/systemui/statusbar/phone/interactor/OneHandSetting;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/interactor/OneHandSetting;->isEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->oneHandModeEnabled:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v2, "ImmersiveControllerAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOneHandModeChanged - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->oneHandModeEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mController:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;

    sget-object v2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->ONE_HAND_MODE_SETTING_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    invoke-virtual {v1, v2, v0, p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->handleEvent(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;Z)V

    return-void
.end method

.method private onSPayHintVisibilityChanged(ZI)V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;-><init>()V

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->isSPayVisible:Z

    iput p2, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->spayHintWidth:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mController:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;

    sget-object v2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->SPAY_HINT_VISIBILITY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->handleEvent(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "ImmersiveControllerAdapter"

    const-string v2, "init"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mHideSettingInteractor:Lcom/android/systemui/statusbar/phone/interactor/HideSetting;

    new-instance v1, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ImmersiveControllerAdapter$YnPamONO9dvdFI8mSmjD0IEewtU;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ImmersiveControllerAdapter$YnPamONO9dvdFI8mSmjD0IEewtU;-><init>(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/interactor/HideSetting;->addCallback(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mHideEnabledInteractor:Lcom/android/systemui/statusbar/phone/interactor/HideEnabledSetting;

    new-instance v1, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ImmersiveControllerAdapter$JLRqYhE7fj-1MMc0q8MmrEJAQXk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ImmersiveControllerAdapter$JLRqYhE7fj-1MMc0q8MmrEJAQXk;-><init>(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/interactor/HideEnabledSetting;->addCallback(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mGestureWhileHiddenSetting:Lcom/android/systemui/statusbar/phone/interactor/GestureWhileHiddenSetting;

    new-instance v1, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ImmersiveControllerAdapter$h2mP7vZkCX0ssLvWmRU87matAUQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ImmersiveControllerAdapter$h2mP7vZkCX0ssLvWmRU87matAUQ;-><init>(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/interactor/GestureWhileHiddenSetting;->addCallback(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mGestureHintSetting:Lcom/android/systemui/statusbar/phone/interactor/GestureHintSetting;

    new-instance v1, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ImmersiveControllerAdapter$egYdo7gPDZJJ1ni9v_Ni6JzYEB4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ImmersiveControllerAdapter$egYdo7gPDZJJ1ni9v_Ni6JzYEB4;-><init>(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/interactor/GestureHintSetting;->addCallback(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mButtonOrderSetting:Lcom/android/systemui/statusbar/phone/interactor/ButtonOrderSetting;

    new-instance v1, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ImmersiveControllerAdapter$fVg0bs4OT24Fo8ltucEUBd66x58;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ImmersiveControllerAdapter$fVg0bs4OT24Fo8ltucEUBd66x58;-><init>(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/interactor/ButtonOrderSetting;->addCallback(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mGestureDisabledByPolicySetting:Lcom/android/systemui/statusbar/phone/interactor/GestureDisabledByPolicySetting;

    new-instance v1, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ImmersiveControllerAdapter$TFDaTpf-Al-tlmpUZq5asIZBcbA;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ImmersiveControllerAdapter$TFDaTpf-Al-tlmpUZq5asIZBcbA;-><init>(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/interactor/GestureDisabledByPolicySetting;->addCallback(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mOneHandSetting:Lcom/android/systemui/statusbar/phone/interactor/OneHandSetting;

    new-instance v1, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ImmersiveControllerAdapter$L7569UW3yN3STQSxIsPK31DJQUw;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ImmersiveControllerAdapter$L7569UW3yN3STQSxIsPK31DJQUw;-><init>(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/interactor/OneHandSetting;->addCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAttached()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "ImmersiveControllerAdapter"

    const-string v2, "onAttached"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->onGestureSettingChanged(Z)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->onGestureHintSettingChanged(Z)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->onHideBarSettingChanged(Z)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->onHideEnabledChanged(Z)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->onButtonOrderSettingChanged(Z)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->onOneHandModeChanged(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mToolViewController:Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ImmersiveControllerAdapter$LHtL36c30-p_dlELMHpFQrqHW_0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ImmersiveControllerAdapter$LHtL36c30-p_dlELMHpFQrqHW_0;-><init>(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->setGestureViewInsetsChangedListener(Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView$OnInsetsChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mController:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->ATTACHED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->handleEvent(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mGestureDisabledByPolicySetting:Lcom/android/systemui/statusbar/phone/interactor/GestureDisabledByPolicySetting;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/interactor/GestureDisabledByPolicySetting;->resetGestureDisabled()V

    return-void
.end method

.method public onButtonStatusChanged(ZZZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "ImmersiveControllerAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onButtonStatusChanged - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mRecentEnabled:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mHomeEnabled:Z

    if-ne v0, p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mBackEnabled:Z

    if-ne v0, p3, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mRecentEnabled:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mHomeEnabled:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mBackEnabled:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;-><init>()V

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->recentEnabled:Z

    iput-boolean p2, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->homeEnabled:Z

    iput-boolean p3, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->backEnabled:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mController:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;

    sget-object v2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->BUTTONS_VISIBILITY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->handleEvent(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;)V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 4

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v2, "ImmersiveControllerAdapter"

    const-string v3, "onConfigurationChanged"

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mController:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;

    sget-object v2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->CONFIGURATION_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->handleEvent(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;)V

    return-void
.end method

.method public onDarkIntensityChanged(F)V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;-><init>()V

    iput p1, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->darkIntensity:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mController:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;

    sget-object v2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->DARK_INTENSITY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->handleEvent(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;)V

    return-void
.end method

.method public onDetached()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "ImmersiveControllerAdapter"

    const-string v2, "onDetached"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mController:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->DETACHED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->handleEvent(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mToolViewController:Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->setGestureViewInsetsChangedListener(Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView$OnInsetsChangedListener;)V

    return-void
.end method

.method public onGestureStyleChanged(Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;)V
    .locals 4

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;-><init>()V

    iput-object p1, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->gestureStyle:Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v2, "ImmersiveControllerAdapter"

    const-string v3, "onGestureStyleChanged"

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mController:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;

    sget-object v2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->GESTURE_STYLE_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->handleEvent(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;Z)V

    return-void
.end method

.method public onKeyguardStateChanged(Z)V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;-><init>()V

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->isKeyguard:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mController:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;

    sget-object v2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->KEYGUARD_STATE_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->handleEvent(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;)V

    return-void
.end method

.method public onOpenThemeChanged()V
    .locals 4

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v2, "ImmersiveControllerAdapter"

    const-string v3, "onOpenThemeChanged"

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mController:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;

    sget-object v2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->OPENTHEME_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->handleEvent(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;)V

    return-void
.end method

.method public onOrientationChanged()V
    .locals 5

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->displayRotation:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v2, "ImmersiveControllerAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOrientationChanged - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->displayRotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mController:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;

    sget-object v2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->ORIENTATION_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->handleEvent(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;)V

    return-void
.end method

.method public onSetFloatingButtonVisibility(IZ)V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;-><init>()V

    iput p1, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->floatingButtonType:I

    iput-boolean p2, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->floatingButtonVisible:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mController:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;

    sget-object v2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->FLOATING_BUTTON_VISIBILITY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->handleEvent(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;)V

    return-void
.end method

.method public onSetNavBarWindowState(I)V
    .locals 5

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;-><init>()V

    iput p1, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->windowState:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v2, "ImmersiveControllerAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetNavBarWindowState - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->windowState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mController:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;

    sget-object v2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->WINDOW_STATE_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->handleEvent(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;)V

    return-void
.end method

.method public onSystemKeyRequestChanged(I)V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;-><init>()V

    iput p1, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->requestedSystemKey:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mController:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;

    sget-object v2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->REQUESTED_SYSTEM_KEY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->handleEvent(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;)V

    return-void
.end method

.method public onSystemUiVisibilityChanged(II)V
    .locals 5

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v2, "ImmersiveControllerAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSystemUiVisibilityChanged - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p2, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->barMode:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mController:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;

    sget-object v2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->BAR_MODE_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->handleEvent(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;)V

    return-void
.end method

.method public setNavBarVisibility(I)V
    .locals 5

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;-><init>()V

    iput p1, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->windowVisibility:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v2, "ImmersiveControllerAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNavBarVisibility - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;->windowVisibility:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveControllerAdapter;->mController:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;

    sget-object v2, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->VISIBILITY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;->handleEvent(Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveEventData;)V

    return-void
.end method
