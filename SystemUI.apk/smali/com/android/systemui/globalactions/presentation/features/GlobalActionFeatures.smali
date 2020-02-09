.class public Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;
.super Ljava/lang/Object;
.source "GlobalActionFeatures.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/features/Features;


# instance fields
.field mContext:Landroid/content/Context;

.field private final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field private final mSettingsWrapper:Lcom/samsung/android/globalactions/util/SettingsWrapper;

.field private final mSystemPropertiesWrapper:Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/SettingsWrapper;Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->mSettingsWrapper:Lcom/samsung/android/globalactions/util/SettingsWrapper;

    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->mSystemPropertiesWrapper:Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;

    iput-object p4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    return-void
.end method

.method private isBikeModeSupported()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bikemode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "globalaction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isBixbyOnPowerKeySupported()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_BIXBY_CONFIG_HWKEY"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pwrkey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isCoverSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isDataModeSupported()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_SupportDataModeSwitchGlobalAction"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isDemoModeSupported()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableLiveDemo"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->mSettingsWrapper:Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isShopDemo()Z

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

.method private isDesktopModeSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isEffectSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isFingerPrintInDisplay()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->isFingerprintSensorInDisplay(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isForceRestartMessageSupported()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_SupportForceRestartGlobalAction"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isGraceRModel()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->mSystemPropertiesWrapper:Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;

    const-string/jumbo v1, "ro.product.name"

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gracer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isKnoxContainerSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isKnoxMDMSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isKnoxSDKSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isNaviBarSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private isSafetyCareSupported()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public isEnabled(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, "SF_EFFECT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->isEffectSupported()Z

    move-result v0

    goto/16 :goto_0

    :cond_0
    const-string v1, "NAV_BAR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->isNaviBarSupported()Z

    move-result v0

    goto/16 :goto_0

    :cond_1
    const-string v1, "DESKTOP_MODE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->isDesktopModeSupported()Z

    move-result v0

    goto/16 :goto_0

    :cond_2
    const-string v1, "KNOX_SDK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->isKnoxSDKSupported()Z

    move-result v0

    goto/16 :goto_0

    :cond_3
    const-string v1, "SAFETY_CARE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->isSafetyCareSupported()Z

    move-result v0

    goto/16 :goto_0

    :cond_4
    const-string v1, "KNOX_CONTAINER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->isKnoxContainerSupported()Z

    move-result v0

    goto/16 :goto_0

    :cond_5
    const-string v1, "BIKE_MODE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->isBikeModeSupported()Z

    move-result v0

    goto/16 :goto_0

    :cond_6
    const-string v1, "SCOVER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->isCoverSupported()Z

    move-result v0

    goto :goto_0

    :cond_7
    const-string v1, "DATA_MODE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->isDataModeSupported()Z

    move-result v0

    goto :goto_0

    :cond_8
    const-string v1, "DEMO_MODE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->isDemoModeSupported()Z

    move-result v0

    goto :goto_0

    :cond_9
    const-string v1, "KNOX_DEVICE_MANAGER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->isKnoxMDMSupported()Z

    move-result v0

    goto :goto_0

    :cond_a
    const-string v1, "LOCK_DOWN_MODE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    goto :goto_0

    :cond_b
    const-string v1, "GRACE_BOTTOM_ICON"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->isGraceRModel()Z

    move-result v0

    goto :goto_0

    :cond_c
    const-string v1, "FORCE_RESTART_MESSAGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->isForceRestartMessageSupported()Z

    move-result v0

    goto :goto_0

    :cond_d
    const-string v1, "FINGERPRINT_IN_DISPLAY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->isFingerPrintInDisplay()Z

    move-result v0

    goto :goto_0

    :cond_e
    const-string v1, "SUPPORT_BIXBY_POWER_KEY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->isBixbyOnPowerKeySupported()Z

    move-result v0

    :cond_f
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v2, "GlobalActionFeatures"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
