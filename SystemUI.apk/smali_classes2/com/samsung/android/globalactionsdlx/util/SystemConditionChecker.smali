.class public Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;
.super Ljava/lang/Object;
.source "SystemConditionChecker.java"

# interfaces
.implements Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemConditionChecker"


# instance fields
.field private final mFeatures:Lcom/samsung/android/globalactionsdlx/presentation/features/Features;

.field private final mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

.field private final mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactionsdlx/util/UtilFactory;Lcom/samsung/android/globalactionsdlx/presentation/features/Features;Lcom/samsung/android/globalactionsdlx/util/LogWrapper;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    iput-object p2, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mFeatures:Lcom/samsung/android/globalactionsdlx/presentation/features/Features;

    iput-object p3, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    return-void
.end method

.method private isEnabled(Lcom/samsung/android/globalactionsdlx/util/SystemConditions;)Z
    .registers 4

    sget-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker$1;->$SwitchMap$com$samsung$android$globalactions$util$SystemConditions:[I

    invoke-virtual {p1}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_29c

    const/4 v0, 0x0

    return v0

    :pswitch_d
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;->isEmergencyModeUserAgreement()Z

    move-result v0

    return v0

    :pswitch_1c
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;->isPasswordChangeEnforced()Z

    move-result v0

    return v0

    :pswitch_2b
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mFeatures:Lcom/samsung/android/globalactionsdlx/presentation/features/Features;

    const-string v1, "SAFETY_CARE"

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0

    :pswitch_34
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsManager;->isFOTAAvailableForGlobalActions()Z

    move-result v0

    return v0

    :pswitch_43
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;->isShopDemo()Z

    move-result v0

    return v0

    :pswitch_52
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;->isUltraPowerSavingMode()Z

    move-result v0

    return v0

    :pswitch_61
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;->isWhiteTheme()Z

    move-result v0

    return v0

    :pswitch_70
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/AccessibilityManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/AccessibilityManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/AccessibilityManagerWrapper;->isVoiceAssistantMode()Z

    move-result v0

    return v0

    :pswitch_7f
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;->isStrongAuthForLockDown()Z

    move-result v0

    return v0

    :pswitch_8e
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;->isCurrentUserSecure()Z

    move-result v0

    return v0

    :pswitch_9d
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;->isLockDownInPowerMenu()Z

    move-result v0

    return v0

    :pswitch_ac
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/DesktopModeManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/DesktopModeManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/DesktopModeManagerWrapper;->isDesktopModeDualView()Z

    move-result v0

    return v0

    :pswitch_bb
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/UserManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/UserManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/UserManagerWrapper;->isAllowedSafeBoot()Z

    move-result v0

    return v0

    :pswitch_ca
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/TelephonyManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/TelephonyManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/TelephonyManagerWrapper;->isFirstnetSIM()Z

    move-result v0

    return v0

    :pswitch_d9
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/TelephonyManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/TelephonyManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/TelephonyManagerWrapper;->hasAnySim()Z

    move-result v0

    return v0

    :pswitch_e8
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/TelephonyManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/TelephonyManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/TelephonyManagerWrapper;->isSimLock()Z

    move-result v0

    return v0

    :pswitch_f7
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/TSafeLockUtil;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/TSafeLockUtil;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/TSafeLockUtil;->isTSafeLock()Z

    move-result v0

    return v0

    :pswitch_106
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/SystemPropertiesWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/SystemPropertiesWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/SystemPropertiesWrapper;->isTabletDevice()Z

    move-result v0

    return v0

    :pswitch_115
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/SystemPropertiesWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/SystemPropertiesWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/SystemPropertiesWrapper;->isDomesticOtaMode()Z

    move-result v0

    return v0

    :pswitch_124
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/SystemPropertiesWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/SystemPropertiesWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/SystemPropertiesWrapper;->isSimStateAbsent()Z

    move-result v0

    return v0

    :pswitch_133
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;->isLockNetworkAndSecurityOn()Z

    move-result v0

    return v0

    :pswitch_142
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;->isAirplaneMode()Z

    move-result v0

    return v0

    :pswitch_151
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;->isMissingPhoneLock()Z

    move-result v0

    return v0

    :pswitch_160
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;->isBikeMode()Z

    move-result v0

    return v0

    :pswitch_16f
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;->isBugReportMode()Z

    move-result v0

    return v0

    :pswitch_17e
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/SemPersonaWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/SemPersonaWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/SemPersonaWrapper;->getKeyguardShowState()Z

    move-result v0

    return v0

    :pswitch_18d
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/SemPersonaWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/SemPersonaWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/SemPersonaWrapper;->isCOMContainerMode()Z

    move-result v0

    return v0

    :pswitch_19c
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/SemPersonaWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/SemPersonaWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/SemPersonaWrapper;->isDOProvisioningMode()Z

    move-result v0

    return v0

    :pswitch_1ab
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/SemPersonaWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/SemPersonaWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/SemPersonaWrapper;->isValidVersion()Z

    move-result v0

    return v0

    :pswitch_1ba
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/SemEmergencyManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/SemEmergencyManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/SemEmergencyManagerWrapper;->isModifying()Z

    move-result v0

    return v0

    :pswitch_1c9
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/SemEmergencyManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/SemEmergencyManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/SemEmergencyManagerWrapper;->isEmergencyMode()Z

    move-result v0

    return v0

    :pswitch_1d8
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/SemEmergencyManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/SemEmergencyManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/SemEmergencyManagerWrapper;->isUPSMEnabled()Z

    move-result v0

    return v0

    :pswitch_1e7
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/SemEmergencyManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/SemEmergencyManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/SemEmergencyManagerWrapper;->canSetMode()Z

    move-result v0

    return v0

    :pswitch_1f6
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/PackageManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/PackageManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/PackageManagerWrapper;->isATTFOTAPackageAvailable()Z

    move-result v0

    return v0

    :pswitch_205
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/PackageManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/PackageManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/PackageManagerWrapper;->isKidsHomeMode()Z

    move-result v0

    return v0

    :pswitch_214
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/PackageManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/PackageManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/PackageManagerWrapper;->isBixbyPackageAvailable()Z

    move-result v0

    return v0

    :pswitch_223
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/PackageManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/PackageManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/PackageManagerWrapper;->isBikeModeInstalled()Z

    move-result v0

    return v0

    :pswitch_232
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;->isRMMLocked()Z

    move-result v0

    return v0

    :pswitch_241
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;->isCarrierLockPlusEnabled()Z

    move-result v0

    return v0

    :pswitch_250
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;->isFMMLocked()Z

    move-result v0

    return v0

    :pswitch_25f
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;->isSecureKeyguard()Z

    move-result v0

    return v0

    :pswitch_26e
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/DevicePolicyManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/DevicePolicyManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/DevicePolicyManagerWrapper;->isLogoutEnabled()Z

    move-result v0

    return v0

    :pswitch_27d
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/DevicePolicyManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/DevicePolicyManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/DevicePolicyManagerWrapper;->isEncryptionStatusActive()Z

    move-result v0

    return v0

    :pswitch_28c
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactionsdlx/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactionsdlx/util/ConnectivityManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/ConnectivityManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/ConnectivityManagerWrapper;->getMobileDataEnabled()Z

    move-result v0

    return v0

    nop

    :pswitch_data_29c
    .packed-switch 0x1
        :pswitch_28c
        :pswitch_27d
        :pswitch_26e
        :pswitch_25f
        :pswitch_250
        :pswitch_241
        :pswitch_232
        :pswitch_223
        :pswitch_214
        :pswitch_205
        :pswitch_1f6
        :pswitch_1e7
        :pswitch_1d8
        :pswitch_1c9
        :pswitch_1ba
        :pswitch_1ab
        :pswitch_19c
        :pswitch_18d
        :pswitch_17e
        :pswitch_16f
        :pswitch_160
        :pswitch_151
        :pswitch_142
        :pswitch_133
        :pswitch_124
        :pswitch_115
        :pswitch_106
        :pswitch_f7
        :pswitch_e8
        :pswitch_d9
        :pswitch_ca
        :pswitch_bb
        :pswitch_ac
        :pswitch_9d
        :pswitch_8e
        :pswitch_7f
        :pswitch_70
        :pswitch_61
        :pswitch_52
        :pswitch_43
        :pswitch_34
        :pswitch_2b
        :pswitch_1c
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public isEnabled(Ljava/lang/Object;)Z
    .registers 13

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->valueOf(Ljava/lang/String;)Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->isEnabled(Lcom/samsung/android/globalactionsdlx/util/SystemConditions;)Z

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/globalactionsdlx/util/SystemConditionChecker;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    const-string v5, "SystemConditionChecker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5a} :catch_5b

    return v2

    :catch_5b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method
