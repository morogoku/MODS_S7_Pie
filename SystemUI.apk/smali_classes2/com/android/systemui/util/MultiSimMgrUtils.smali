.class public final Lcom/android/systemui/util/MultiSimMgrUtils;
.super Ljava/lang/Object;
.source "MultiSimMgrUtils.java"


# static fields
.field public static final DEBUG:Z

.field public static SOFTSIM_STATUS_DEFAULT:I

.field public static SOFTSIM_STATUS_DISABLE:I

.field public static SOFTSIM_STATUS_ENABLE:I

.field private static countryCode:Ljava/lang/String;

.field public static final is3G:Z

.field public static final isSupportChangeNetworkModeForSlotNoActiveSim:Z

.field public static final isTdscdma:Z

.field public static final mPhoneCount:I

.field private static final mPhoneOnKey:[Ljava/lang/String;

.field private static sEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private static sPhoneRestrictionPolicy:Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

.field private static salesCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "phone1_on"

    const-string v1, "phone2_on"

    const-string v2, "phone3_on"

    const-string v3, "phone4_on"

    const-string v4, "phone5_on"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/util/MultiSimMgrUtils;->mPhoneOnKey:[Ljava/lang/String;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/systemui/util/MultiSimMgrUtils;->mPhoneCount:I

    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/systemui/util/MultiSimMgrUtils;->DEBUG:Z

    const/16 v0, 0x9

    sput v0, Lcom/android/systemui/util/MultiSimMgrUtils;->SOFTSIM_STATUS_DEFAULT:I

    sput v2, Lcom/android/systemui/util/MultiSimMgrUtils;->SOFTSIM_STATUS_ENABLE:I

    sput v1, Lcom/android/systemui/util/MultiSimMgrUtils;->SOFTSIM_STATUS_DISABLE:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/util/MultiSimMgrUtils;->sEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    sput-object v0, Lcom/android/systemui/util/MultiSimMgrUtils;->sPhoneRestrictionPolicy:Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    const-string v0, ""

    sput-object v0, Lcom/android/systemui/util/MultiSimMgrUtils;->salesCode:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/android/systemui/util/MultiSimMgrUtils;->countryCode:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Setting_ConfigOpMenuStructure"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/util/MultiSimMgrUtils;->salesCode:Ljava/lang/String;

    sget-object v0, Lcom/android/systemui/util/MultiSimMgrUtils;->salesCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/util/MultiSimMgrUtils;->salesCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->getCSCSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/util/MultiSimMgrUtils;->salesCode:Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v3, "CountryISO"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/util/MultiSimMgrUtils;->countryCode:Ljava/lang/String;

    const-string v0, "MultiSimMgrUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "salesCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/systemui/util/MultiSimMgrUtils;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", countryCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/systemui/util/MultiSimMgrUtils;->countryCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ro.product.device"

    const-string v3, "unknown"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "3g"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Setting_DisableNetworkMode"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "lte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    move v1, v2

    :goto_2
    sput-boolean v1, Lcom/android/systemui/util/MultiSimMgrUtils;->is3G:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VoiceCall_ConfigOpStyleForNetworkSetting"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SupportChangeNetworkModeForSlotNoActiveSim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/util/MultiSimMgrUtils;->isSupportChangeNetworkModeForSlotNoActiveSim:Z

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isSupportTdscdma()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/util/MultiSimMgrUtils;->isTdscdma:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCall()Z
    .locals 7

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSubId(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v0

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSubId(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v2

    const-string v4, "MultiSimMgrUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Check Call SIM1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", SIM2 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v3, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    if-eq v2, v3, :cond_1

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v3
.end method

.method public static checkSimCoverage(II)Z
    .locals 4

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isChinaModel()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isHKTWModel()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p0, :cond_1

    const-string v0, "ril.ICC_TYPE0"

    :goto_0
    const-string v2, "0"

    invoke-static {v0, v2}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSystemSingleProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "ril.ICC_TYPE1"

    goto :goto_0

    :goto_1
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/systemui/util/MultiSimMgrUtils;->convertToTdscdmaType(I)I

    move-result v3

    if-ne p1, v3, :cond_2

    const-string v1, "MultiSimMgrUtils"

    const-string v3, "changed sim only support GSM only!!!"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    return v1
.end method

.method public static convertToTdscdmaType(I)I
    .locals 4

    const/16 v0, 0x9

    sget-boolean v1, Lcom/android/systemui/util/MultiSimMgrUtils;->isTdscdma:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x9

    if-ne p0, v1, :cond_0

    const/16 v0, 0x14

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    const/16 v0, 0x12

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    const/16 v0, 0xe

    goto :goto_0

    :cond_2
    const/16 v1, 0xc

    if-ne p0, v1, :cond_3

    const/16 v0, 0x13

    goto :goto_0

    :cond_3
    move v0, p0

    :goto_0
    const-string v1, "MultiSimMgrUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tdscdma convertToTdscdmaType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move v0, p0

    :goto_1
    return v0
.end method

.method public static firstSimLockEnabled()Z
    .locals 2

    const-string v0, "ril.lockpolicy"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static getCMCCSpecVer()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigOperatorNetCapaVer"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCSCSalesCode()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MultiSimMgrUtils"

    const-string v3, "readSalesCode failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public static getCurrentVoiceCall(Landroid/content/Context;)I
    .locals 12

    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "prefered_voice_call"

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isChinaModel()Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    move v6, v5

    const/4 v7, 0x3

    const/4 v9, -0x1

    const/4 v10, 0x0

    if-ne v4, v9, :cond_8

    invoke-static {p0}, Lcom/android/systemui/util/MultiSimMgrUtils;->isSupportCallpreferredOthers(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_8

    if-eq v5, v7, :cond_8

    const-string v7, "MultiSimMgrUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GetCurrentVoiceCall: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "phone1_on"

    invoke-static {v7, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_0

    move v7, v8

    goto :goto_0

    :cond_0
    move v7, v10

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "phone2_on"

    invoke-static {v9, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v8, :cond_1

    move v9, v8

    goto :goto_1

    :cond_1
    move v9, v10

    :goto_1
    const-string v11, "ABSENT"

    invoke-static {v10}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSimState(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "ABSENT"

    invoke-static {v8}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSimState(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v7, :cond_2

    if-nez v9, :cond_3

    :cond_2
    if-eqz v10, :cond_4

    if-nez v8, :cond_4

    :cond_3
    const/4 v5, 0x2

    :cond_4
    if-eqz v7, :cond_5

    if-eqz v9, :cond_6

    :cond_5
    if-nez v10, :cond_7

    if-eqz v8, :cond_7

    :cond_6
    const/4 v5, 0x1

    :cond_7
    const-string v7, "MultiSimMgrUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GetCurrentVoiceCall change: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_8
    if-ne v5, v7, :cond_9

    invoke-static {p0}, Lcom/android/systemui/util/MultiSimMgrUtils;->isSupportCallpreferredOthers(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "prefered_voice_call"

    invoke-static {v7, v11, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v5, 0x0

    :cond_9
    invoke-static {v10}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSubId(I)I

    move-result v7

    if-ne v4, v7, :cond_a

    const/4 v5, 0x1

    goto :goto_2

    :cond_a
    invoke-static {v8}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSubId(I)I

    move-result v7

    if-ne v4, v7, :cond_b

    const/4 v5, 0x2

    goto :goto_2

    :cond_b
    if-ne v4, v9, :cond_c

    if-eqz v2, :cond_c

    const/4 v5, 0x3

    goto :goto_2

    :cond_c
    const/4 v5, 0x0

    :goto_2
    const-string v7, "MultiSimMgrUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GetCurrentVoiceCall index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " subId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method public static getDataEnabled()Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    const-string v2, "MultiSimMgrUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataEnabled subId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    :goto_0
    const-string v2, "MultiSimMgrUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataEnabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getIccId(I)Ljava/lang/String;
    .locals 4

    const-string v0, "0"

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-static {p0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSubId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getMultiSimNumeric(I)Ljava/lang/String;
    .locals 4

    const-string v0, "0"

    :try_start_0
    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, "0"

    invoke-static {p0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v0, "0"

    :goto_0
    const-string v1, "MultiSimMgrUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is getMultiSimNumeric : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getOperatorByIccId(I)Ljava/lang/String;
    .locals 6

    invoke-static {p0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getIccId(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v1, "0"

    const-string v3, "MultiSimMgrUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IndexOutOfBoundsException getOperatorByIccId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string v2, "MultiSimMgrUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is getOperatorByIccId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static getPreferredNetworkType(I)I
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VoiceCall_ConfigOpStyleMobileNetworkSettingMenu"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ForceLteOnlyForPsOnlyOperatorAfterRebootComplete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "XSE"

    sget-object v1, Lcom/android/systemui/util/MultiSimMgrUtils;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "XID"

    sget-object v1, Lcom/android/systemui/util/MultiSimMgrUtils;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isMultisimModel()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getMultiSimNumeric(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiSimMgrUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "salescode XID or XSE: getPreferredNetworkType: operator= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "51009"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "51028"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/16 v1, 0xb

    invoke-static {v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->convertToTdscdmaType(I)I

    move-result v1

    return v1

    :cond_2
    sget-boolean v0, Lcom/android/systemui/util/MultiSimMgrUtils;->is3G:Z

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isChinaModel()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isHKTWModel()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {p0}, Lcom/android/systemui/util/MultiSimMgrUtils;->isLTESupportSim(I)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    sget-boolean v0, Lcom/android/systemui/util/MultiSimMgrUtils;->isTdscdma:Z

    if-eqz v0, :cond_5

    const/16 v0, 0x14

    return v0

    :cond_5
    const/16 v0, 0x9

    return v0

    :cond_6
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/systemui/util/MultiSimMgrUtils;->convertToTdscdmaType(I)I

    move-result v0

    return v0
.end method

.method public static final getSRoamingStatus(Ljava/lang/String;)I
    .locals 2

    sget v0, Lcom/android/systemui/util/MultiSimMgrUtils;->SOFTSIM_STATUS_DEFAULT:I

    const-string v1, "activating"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "activated"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "deactivating"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "deactivated"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    sget v0, Lcom/android/systemui/util/MultiSimMgrUtils;->SOFTSIM_STATUS_DISABLE:I

    goto :goto_1

    :cond_2
    :goto_0
    sget v0, Lcom/android/systemui/util/MultiSimMgrUtils;->SOFTSIM_STATUS_ENABLE:I

    :cond_3
    :goto_1
    return v0
.end method

.method public static getSRoamingVirtualSlot(Landroid/content/Context;)I
    .locals 8

    sget v0, Lcom/android/systemui/util/MultiSimMgrUtils;->SOFTSIM_STATUS_DEFAULT:I

    const-string v1, "com.samsung.android.globalroaming"

    invoke-static {p0, v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "MultiSimMgrUtils"

    const-string v2, "has sroaming package"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "persist.sys.softsim.status"

    const/4 v2, 0x0

    const-string v3, "default"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "persist.sys.softsim.status"

    const/4 v3, 0x1

    const-string v4, "default"

    invoke-static {v2, v3, v4}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSRoamingStatus(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSRoamingStatus(Ljava/lang/String;)I

    move-result v4

    sget v5, Lcom/android/systemui/util/MultiSimMgrUtils;->SOFTSIM_STATUS_ENABLE:I

    if-eq v3, v5, :cond_1

    sget v5, Lcom/android/systemui/util/MultiSimMgrUtils;->SOFTSIM_STATUS_ENABLE:I

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    sget v5, Lcom/android/systemui/util/MultiSimMgrUtils;->SOFTSIM_STATUS_DISABLE:I

    if-ne v3, v5, :cond_2

    sget v5, Lcom/android/systemui/util/MultiSimMgrUtils;->SOFTSIM_STATUS_DISABLE:I

    if-ne v4, v5, :cond_2

    sget v0, Lcom/android/systemui/util/MultiSimMgrUtils;->SOFTSIM_STATUS_DISABLE:I

    goto :goto_1

    :cond_1
    :goto_0
    sget v0, Lcom/android/systemui/util/MultiSimMgrUtils;->SOFTSIM_STATUS_ENABLE:I

    :cond_2
    :goto_1
    const-string v5, "MultiSimMgrUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sroaming status : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0
.end method

.method public static getSimState(I)Ljava/lang/String;
    .locals 2

    const-string v0, "gsm.sim.state"

    const-string v1, "NotReady"

    invoke-static {v0, p0, v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSlaveNetworkMode(I)I
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v0}, Lcom/android/systemui/util/MultiSimMgrUtils;->convertToTdscdmaType(I)I

    move-result v3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_SupportWcdmaInSlave"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_WCDMA_INSLAVE"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "MultiSimMgrUtils"

    const-string v1, "Not support slave slot WCDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isImsNonDDS()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "MultiSimMgrUtils"

    const-string v5, "Support slave slot LTE_GSM_WCDMA in L+L mode"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x9

    invoke-static {v4}, Lcom/android/systemui/util/MultiSimMgrUtils;->convertToTdscdmaType(I)I

    move-result v3

    invoke-static {p0}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCMCCcardinserted(I)Z

    move-result v5

    invoke-static {v2}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCMCCcardinserted(I)Z

    move-result v6

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCMCCmodel()Z

    move-result v7

    if-eqz v7, :cond_7

    if-nez v5, :cond_3

    if-eqz v6, :cond_7

    :cond_3
    if-eqz v5, :cond_4

    if-nez v6, :cond_7

    :cond_4
    invoke-static {p0}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCMCCcardinserted(I)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {v4}, Lcom/android/systemui/util/MultiSimMgrUtils;->convertToTdscdmaType(I)I

    move-result v0

    return v0

    :cond_5
    const-string v4, "MultiSimMgrUtils"

    const-string v7, "Support slave slot GSM_ONLY 2017 CMCC concept, CMCC + non CMCC"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/systemui/util/MultiSimMgrUtils;->convertToTdscdmaType(I)I

    move-result v0

    const-string v3, "18"

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->getCMCCSpecVer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "MultiSimMgrUtils"

    const-string v4, "Support slave slot GSM_ONLY 2018 CMCC concept, CMCC + non CMCC, slave set to 3/2 auto, Ril,CP side control china mainland 2G"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->convertToTdscdmaType(I)I

    move-result v0

    :cond_6
    move v3, v0

    :cond_7
    goto :goto_5

    :cond_8
    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCMCCmodel()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {p0}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCMCCcardinserted(I)Z

    move-result v4

    invoke-static {v2}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCMCCcardinserted(I)Z

    move-result v5

    if-nez v4, :cond_9

    if-eqz v5, :cond_a

    :cond_9
    if-eqz v4, :cond_c

    if-nez v5, :cond_a

    goto :goto_3

    :cond_a
    const-string v0, "MultiSimMgrUtils"

    const-string v6, "Support slave slot WCDMA_CHN"

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->convertToTdscdmaType(I)I

    move-result v0

    :cond_b
    :goto_2
    move v3, v0

    goto :goto_4

    :cond_c
    :goto_3
    const-string v6, "MultiSimMgrUtils"

    const-string v7, "Support slave slot GSM_ONLY 2017 CMCC concept"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/systemui/util/MultiSimMgrUtils;->convertToTdscdmaType(I)I

    move-result v0

    const-string v3, "18"

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->getCMCCSpecVer()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "MultiSimMgrUtils"

    const-string v6, "Support slave slot GSM_ONLY 2018 CMCC concept, CMCC + non CMCC, slave set to 3/2 auto, Ril,CP side control china mainland 2G"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->convertToTdscdmaType(I)I

    move-result v0

    goto :goto_2

    :goto_4
    goto :goto_5

    :cond_d
    const-string v0, "MultiSimMgrUtils"

    const-string v4, "Support slave slot WCDMA_COMMON or WCDMA_CHN"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->convertToTdscdmaType(I)I

    move-result v3

    :goto_5
    return v3
.end method

.method public static getSubId(I)I
    .locals 3

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget v1, v0, v1

    return v1

    :cond_0
    const-string v1, "MultiSimMgrUtils"

    const-string v2, "getSubId: no valid subs"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1
.end method

.method private static getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    aget v3, v2, v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    :cond_0
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-ltz v1, :cond_1

    array-length v5, v4

    if-ge v1, v5, :cond_1

    aget-object v5, v4, v1

    if-eqz v5, :cond_1

    aget-object v0, v4, v1

    :cond_1
    if-nez v0, :cond_2

    move-object v4, p2

    goto :goto_0

    :cond_2
    move-object v4, v0

    :goto_0
    return-object v4
.end method

.method public static getSystemSingleProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    if-nez p0, :cond_0

    const-string v0, "MultiSimMgrUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context is null : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v1, 0x0

    const-string v3, "MultiSimMgrUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package not found : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public static isCMCCcardinserted(I)Z
    .locals 5

    invoke-static {p0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getOperatorByIccId(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getMultiSimNumeric(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "898600"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "898602"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "898604"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "898607"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "898608"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "46000"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "46002"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "46004"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "46007"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "46008"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    :goto_0
    const-string v2, "MultiSimMgrUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isCMCCcardinserted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2
.end method

.method public static isCMCCmodel()Z
    .locals 2

    sget-object v0, Lcom/android/systemui/util/MultiSimMgrUtils;->salesCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "CHM"

    sget-object v1, Lcom/android/systemui/util/MultiSimMgrUtils;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCTCModel()Z
    .locals 2

    sget-object v0, Lcom/android/systemui/util/MultiSimMgrUtils;->salesCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "CTC"

    sget-object v1, Lcom/android/systemui/util/MultiSimMgrUtils;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCTCcardinserted(I)Z
    .locals 5

    if-nez p0, :cond_0

    const-string v0, "ril.ICC_TYPE0"

    :goto_0
    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSystemSingleProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const-string v0, "ril.ICC_TYPE1"

    goto :goto_0

    :goto_1
    invoke-static {p0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getOperatorByIccId(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "898603"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "898605"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "898611"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "898530"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v2, "3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    return v2

    :cond_3
    :goto_2
    const-string v2, "MultiSimMgrUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isCTCcardinserted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2
.end method

.method public static isCUcardinserted(I)Z
    .locals 4

    invoke-static {p0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getOperatorByIccId(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "898601"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "898606"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    :goto_0
    const-string v1, "MultiSimMgrUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isCUcardinserted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1
.end method

.method public static isChinaModel()Z
    .locals 2

    const-string v0, "CN"

    sget-object v1, Lcom/android/systemui/util/MultiSimMgrUtils;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isDataAllowedFromSimSlotByMDM(Landroid/content/Context;I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/android/systemui/util/MultiSimMgrUtils;->sEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v1, :cond_1

    const-string v1, "enterprise_policy_new"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    sput-object v1, Lcom/android/systemui/util/MultiSimMgrUtils;->sEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_1
    sget-object v1, Lcom/android/systemui/util/MultiSimMgrUtils;->sPhoneRestrictionPolicy:Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/systemui/util/MultiSimMgrUtils;->sEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/util/MultiSimMgrUtils;->sPhoneRestrictionPolicy:Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    :cond_2
    :try_start_0
    sget-object v1, Lcom/android/systemui/util/MultiSimMgrUtils;->sPhoneRestrictionPolicy:Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->isDataAllowedFromSimSlot(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_3

    const/4 v0, 0x0

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MultiSimMgrUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecurityException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v1, "MultiSimMgrUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slotId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isDataAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isEnabledSim(Landroid/content/Context;I)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/util/MultiSimMgrUtils;->mPhoneOnKey:[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isHKTWModel()Z
    .locals 2

    const-string v0, "TW"

    sget-object v1, Lcom/android/systemui/util/MultiSimMgrUtils;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "HK"

    sget-object v1, Lcom/android/systemui/util/MultiSimMgrUtils;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isImsNonDDS()Z
    .locals 2

    const-string v0, "DSDS_SI"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DSDS_DI"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const-string v0, "MultiSimMgrUtils"

    const-string v1, "4G+4G mode available"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public static isLTESupportSim(I)Z
    .locals 3

    if-nez p0, :cond_0

    const-string v0, "ril.ICC_TYPE0"

    :goto_0
    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSystemSingleProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const-string v0, "ril.ICC_TYPE1"

    goto :goto_0

    :goto_1
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ril.IsCSIM"

    const-string v2, "0"

    invoke-static {v1, p0, v2}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    return v1

    :cond_2
    :goto_2
    const/4 v1, 0x1

    return v1
.end method

.method public static isMultisimModel()Z
    .locals 2

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isNonCMCCChangeDDS(Landroid/content/Context;I)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->getCMCCSpecVer()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v1, :cond_1

    const-string v4, "phone1_on"

    goto :goto_1

    :cond_1
    const-string v4, "phone2_on"

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v0

    :goto_2
    const-string v6, "MultiSimMgrUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CMCC ver: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCMCCmodel()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "19"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {p1}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCMCCcardinserted(I)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v2}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCMCCcardinserted(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    if-eq p1, v6, :cond_4

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-static {v2}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSubId(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v5, :cond_4

    const-string v0, "MultiSimMgrUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2018 CMCC spec: CMCC + Non CMCC case,  one of sim CMCC then none CMCC slot should disable : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_3
    return v0
.end method

.method public static isSuport75Mode()Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "MultiSimMgrUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSuport75Mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isSupportCallpreferredOthers(Landroid/content/Context;)Z
    .locals 8

    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    nop

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v4}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v6

    if-eqz v6, :cond_1

    nop

    invoke-virtual {v6}, Landroid/telecom/PhoneAccount;->getCapabilities()I

    move-result v7

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_0

    move v5, v1

    nop

    :cond_0
    if-nez v5, :cond_1

    const-string v3, "MultiSimMgrUtils"

    const-string v7, "Support Call preferred Others"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    goto :goto_0

    :cond_2
    return v5
.end method

.method public static isSupportCrossMapping()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SupportQcomCrossMapping"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportTdscdma()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_SupportTdsCdma"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportWcdmaFddLte()Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportWcdmaFddLte"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "MultiSimMgrUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportWcdmaFddLte:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static restrictNetworkModeChange(Landroid/content/Context;)Z
    .locals 6

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isChinaModel()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isHKTWModel()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "phone1_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone2_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCMCCmodel()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isSupportWcdmaFddLte()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCMCCcardinserted(I)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v2}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCMCCcardinserted(I)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_3
    invoke-static {v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCMCCcardinserted(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v2}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCMCCcardinserted(I)Z

    move-result v4

    if-nez v4, :cond_b

    :cond_4
    const-string v1, "MultiSimMgrUtils"

    const-string v4, "CMCC+CU card OR CMCC+CTC card is not changed"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    invoke-static {v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCUcardinserted(I)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v2}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCUcardinserted(I)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_6
    const-string v1, "MultiSimMgrUtils"

    const-string v4, "CMCC B-type, CU card is not changed!"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_7
    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCTCModel()Z

    move-result v4

    if-eqz v4, :cond_8

    return v2

    :cond_8
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    if-eqz v0, :cond_9

    invoke-static {v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCTCcardinserted(I)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {v2}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCTCcardinserted(I)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    if-eqz v3, :cond_b

    invoke-static {v2}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCTCcardinserted(I)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCTCcardinserted(I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    const-string v2, "MultiSimMgrUtils"

    const-string v4, "One of slot CTC card!"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_b
    return v1
.end method

.method public static selectNetworkModeByMTK()Z
    .locals 3

    const-string v0, "Mojito"

    const-string v1, "Strawberry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_WCDMA_INSLAVE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static setDefaultDataSlot(Landroid/content/Context;I)V
    .locals 7

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCTCModel()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "MultiSimMgrUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDefualtDataSlot(CTC):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSubId(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "default_data"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->getDataEnabled()Z

    move-result v0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const-string v3, "MultiSimMgrUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDefualtDataSlot "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", DataSubscriptionId("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") true"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v2

    const-string v3, "MultiSimMgrUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDefualtDataSlot "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", DataSubscriptionId("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") false"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    :goto_0
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-static {p1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSubId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    :goto_1
    return-void
.end method

.method public static subscriptionIdToPhoneAccountHandle(Landroid/content/Context;I)Landroid/telecom/PhoneAccountHandle;
    .locals 6

    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    nop

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v3}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v5

    if-ne p1, v5, :cond_0

    return-object v3

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method
