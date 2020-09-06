.class public Lcom/android/server/enterprise/apn/ApnSettingsPolicy;
.super Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy$Stub;
.source "ApnSettingsPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;
    }
.end annotation


# static fields
.field public static AUTH_TYPE_CHAP:I = 0x0

.field public static AUTH_TYPE_NONE:I = 0x0

.field private static AUTH_TYPE_NOTSET:I = 0x0

.field public static AUTH_TYPE_PAP:I = 0x0

.field public static AUTH_TYPE_PAP_OR_CHAP:I = 0x0

.field private static final CURRENT_SIM_ACTIVATED_STATUS:I = 0x1

.field private static final CURRENT_SIM_SLOT1:Ljava/lang/String; = "current"

.field private static final CURRENT_SIM_SLOT2:Ljava/lang/String; = "current1"

.field private static final TAG:Ljava/lang/String; = "ApnSettingsPolicyService"


# instance fields
.field private dunRequired:Z

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field mMDMConfigVersion:I

.field private mPendingGetApnList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/apn/ApnSettings;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_NOTSET:I

    const/4 v0, 0x0

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_NONE:I

    const/4 v0, 0x1

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_PAP:I

    const/4 v0, 0x2

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_CHAP:I

    const/4 v0, 0x3

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_PAP_OR_CHAP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->dunRequired:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    const-string v0, "25"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mPendingGetApnList:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    return-void
.end method

.method private enforceApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 6

    invoke-direct {p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_APN"

    const-string v3, "com.samsung.android.knox.permission.KNOX_APN"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 6

    invoke-direct {p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_APN"

    const-string v3, "com.samsung.android.knox.permission.KNOX_APN"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getApnListConditionStr()Ljava/lang/String;
    .registers 16

    const/4 v0, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_131

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_15

    goto/16 :goto_131

    :cond_15
    const-string/jumbo v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, ""

    if-eqz v2, :cond_128

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_31

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x1

    goto :goto_35

    :cond_31
    new-array v6, v4, [Ljava/lang/String;

    aput-object v2, v6, v7

    :goto_35
    move-object v8, v5

    move v5, v7

    :goto_37
    array-length v9, v6

    if-ge v5, v9, :cond_127

    aget-object v9, v6, v5

    if-eqz v9, :cond_123

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x4

    if-le v10, v11, :cond_123

    const-string/jumbo v10, "ril.simoperator"

    const-string v11, "ETC"

    invoke-static {v5, v10, v11}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "ApnSettingsPolicyService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getApnListConditionStr: simOp = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", numericIndividual = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "CTC"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a8

    const-string/jumbo v11, "gsm.sim.cdmaoperator.numeric"

    const-string v12, ""

    invoke-static {v5, v11, v12}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_87

    const-string v12, "46003"

    goto :goto_88

    :cond_87
    move-object v12, v11

    :goto_88
    move-object v9, v12

    const-string v12, "ApnSettingsPolicyService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getApnListConditionStr: CTC card! numericIndividual = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", cdmaOperator = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a8
    const/4 v11, 0x3

    invoke-virtual {v9, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v12, :cond_123

    if-eqz v11, :cond_123

    if-eqz v0, :cond_d1

    if-eqz v0, :cond_bf

    if-nez v5, :cond_bf

    array-length v13, v6

    if-le v13, v4, :cond_bf

    goto :goto_d1

    :cond_bf
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "(current1 = 1"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_e2

    :cond_d1
    :goto_d1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "(current = 1"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_e2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " AND mcc = \""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\" AND "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v14, "mnc"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " = \""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    array-length v13, v6

    sub-int/2addr v13, v4

    if-ge v5, v13, :cond_123

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " OR "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_123
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_37

    :cond_127
    move-object v5, v8

    :cond_128
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_12f

    goto :goto_130

    :cond_12f
    move-object v3, v5

    :goto_130
    return-object v3

    :cond_131
    :goto_131
    const-string v2, "ApnSettingsPolicyService"

    const-string v4, "No SIM "

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    :try_start_2
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    if-nez v0, :cond_10

    const-string v1, ""
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_11

    move-object v0, v1

    :cond_10
    goto :goto_15

    :catch_11
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_15
    return-object v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_11
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private isValidApnId(J)Z
    .registers 16

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v2, v2, p1

    if-gez v2, :cond_111

    const-string v2, "_id"

    const-string/jumbo v3, "numeric"

    const-string/jumbo v4, "type"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v7

    :try_start_14
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v5

    move v11, v5

    const-string/jumbo v5, "ril.simoperator"

    const-string v6, "ETC"

    invoke-static {v11, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v12, v5

    const-string v5, "ApnSettingsPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isValidApnId: simOp = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", numeric = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "CTC"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_90

    const-string/jumbo v5, "gsm.sim.cdmaoperator.numeric"

    const-string v6, ""

    invoke-static {v11, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6f

    const-string v6, "46003"

    goto :goto_70

    :cond_6f
    move-object v6, v5

    :goto_70
    move-object v4, v6

    const-string v6, "ApnSettingsPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isValidApnId: CTC card! numeric = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", cdmaOperator = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_90
    sget-object v5, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    iget-object v5, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v1, v5

    const-string v5, "ApnSettingsPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isValidApnId() row count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " for apId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    move v0, v5

    if-eqz v0, :cond_fb

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_fa

    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_fa

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "dun"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_fa

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "mms"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_f8} :catch_103
    .catchall {:try_start_14 .. :try_end_f8} :catchall_101

    if-eqz v5, :cond_fb

    :cond_fa
    const/4 v0, 0x0

    :cond_fb
    if-eqz v1, :cond_10a

    :goto_fd
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_10a

    :catchall_101
    move-exception v2

    goto :goto_10b

    :catch_103
    move-exception v2

    :try_start_104
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_107
    .catchall {:try_start_104 .. :try_end_107} :catchall_101

    if-eqz v1, :cond_10a

    goto :goto_fd

    :cond_10a
    :goto_10a
    goto :goto_128

    :goto_10b
    if-eqz v1, :cond_110

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_110
    throw v2

    :cond_111
    const-string v2, "ApnSettingsPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isValidApnId() : invalid apId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_128
    return v0
.end method

.method private retrieveApnListFromDatabase()Ljava/util/List;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/apn/ApnSettings;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    :try_start_9
    const-string v4, "_id"

    const-string/jumbo v5, "name"

    const-string/jumbo v6, "mcc"

    const-string/jumbo v7, "mnc"

    const-string v8, "apn"

    const-string/jumbo v9, "user"

    const-string/jumbo v10, "server"

    const-string/jumbo v11, "password"

    const-string/jumbo v12, "proxy"

    const-string/jumbo v13, "port"

    const-string/jumbo v14, "mmsproxy"

    const-string/jumbo v15, "mmsport"

    const-string/jumbo v16, "mmsc"

    const-string v17, "authtype"

    const-string/jumbo v18, "type"

    const-string/jumbo v19, "protocol"

    const-string/jumbo v20, "roaming_protocol"

    const-string/jumbo v21, "mvno_type"

    const-string/jumbo v22, "mvno_match_data"

    filled-new-array/range {v4 .. v22}, [Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getApnListConditionStr()Ljava/lang/String;

    move-result-object v26

    iget-object v0, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    sget-object v24, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v23 .. v28}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    if-eqz v2, :cond_14f

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_14f

    :cond_60
    new-instance v0, Lcom/samsung/android/knox/net/apn/ApnSettings;

    invoke-direct {v0}, Lcom/samsung/android/knox/net/apn/ApnSettings;-><init>()V

    const-string v4, "_id"

    invoke-direct {v1, v4, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setId(J)V

    const-string/jumbo v6, "name"

    invoke-direct {v1, v6, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setName(Ljava/lang/String;)V

    const-string/jumbo v6, "mcc"

    invoke-direct {v1, v6, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMcc(Ljava/lang/String;)V

    const-string/jumbo v6, "mnc"

    invoke-direct {v1, v6, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMnc(Ljava/lang/String;)V

    const-string v6, "apn"

    invoke-direct {v1, v6, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setApn(Ljava/lang/String;)V

    const-string/jumbo v6, "user"

    invoke-direct {v1, v6, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setUser(Ljava/lang/String;)V

    const-string/jumbo v6, "server"

    invoke-direct {v1, v6, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setServer(Ljava/lang/String;)V

    const-string/jumbo v6, "password"

    invoke-direct {v1, v6, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPassword(Ljava/lang/String;)V

    const-string/jumbo v6, "proxy"

    invoke-direct {v1, v6, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setProxy(Ljava/lang/String;)V

    const-string/jumbo v6, "port"

    invoke-direct {v1, v6, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_d5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPort(I)V

    :cond_d5
    const-string/jumbo v7, "mmsproxy"

    invoke-direct {v1, v7, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsProxy(Ljava/lang/String;)V

    const-string/jumbo v7, "mmsport"

    invoke-direct {v1, v7, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsPort(Ljava/lang/String;)V

    const-string/jumbo v7, "mmsc"

    invoke-direct {v1, v7, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsc(Ljava/lang/String;)V

    const-string v7, "authtype"

    invoke-direct {v1, v7, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_106

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setAuthType(I)V

    :cond_106
    const-string/jumbo v8, "type"

    invoke-direct {v1, v8, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setType(Ljava/lang/String;)V

    iget v8, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I

    const/16 v9, 0x11

    if-lt v8, v9, :cond_128

    const-string/jumbo v8, "protocol"

    invoke-direct {v1, v8, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    const-string/jumbo v8, "roaming_protocol"

    invoke-direct {v1, v8, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    :cond_128
    const-string/jumbo v8, "mvno_type"

    invoke-direct {v1, v8, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_137

    iput-object v8, v0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;

    :cond_137
    const-string/jumbo v9, "mvno_match_data"

    invoke-direct {v1, v9, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_146

    iput-object v9, v0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;

    :cond_146
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_14d
    .catchall {:try_start_9 .. :try_end_14d} :catchall_155

    if-nez v0, :cond_60

    :cond_14f
    if-eqz v2, :cond_154

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_154
    return-object v3

    :catchall_155
    move-exception v0

    if-eqz v2, :cond_15b

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_15b
    throw v0
.end method

.method private setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    if-eqz p1, :cond_f

    if-nez p4, :cond_7

    const-string v0, ""

    goto :goto_b

    :cond_7
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_b
    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    :cond_f
    if-eqz p4, :cond_18

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    :goto_18
    const-string v0, "ApnSettingsPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setColumnValue: key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private validateMVNOType(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_4a

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3c

    const v4, 0x18fc2

    if-eq v2, v4, :cond_31

    const v4, 0x1bdb1

    if-eq v2, v4, :cond_26

    const v4, 0x31627a

    if-eq v2, v4, :cond_1b

    goto :goto_45

    :cond_1b
    const-string/jumbo v2, "imsi"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    const/4 v1, 0x2

    goto :goto_45

    :cond_26
    const-string/jumbo v2, "spn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    move v1, v3

    goto :goto_45

    :cond_31
    const-string/jumbo v2, "gid"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    const/4 v1, 0x3

    goto :goto_45

    :cond_3c
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    move v1, v0

    :cond_45
    :goto_45
    packed-switch v1, :pswitch_data_4c

    goto :goto_4a

    :pswitch_49
    return v3

    :cond_4a
    :goto_4a
    return v0

    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
    .end packed-switch
.end method

.method private validateProtocol(Ljava/lang/String;)Z
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x7edefc9b

    const/4 v4, 0x1

    if-eq v2, v3, :cond_31

    const/16 v3, 0x927

    if-eq v2, v3, :cond_27

    const v3, 0x226607

    if-eq v2, v3, :cond_1d

    goto :goto_3a

    :cond_1d
    const-string v2, "IPV6"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    move v0, v4

    goto :goto_3a

    :cond_27
    const-string v2, "IP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    move v0, v1

    goto :goto_3a

    :cond_31
    const-string v2, "IPV4V6"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    const/4 v0, 0x2

    :cond_3a
    :goto_3a
    packed-switch v0, :pswitch_data_40

    return v1

    :pswitch_3e
    return v4

    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
    .end packed-switch
.end method

.method private validateString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_4

    move-object v0, p1

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0
.end method


# virtual methods
.method public declared-synchronized addUpdateApn(Lcom/samsung/android/knox/ContextInfo;ZLcom/samsung/android/knox/net/apn/ApnSettings;)J
    .registers 69

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    monitor-enter p0

    :try_start_7
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_840

    const/4 v4, 0x1

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-nez v3, :cond_14

    monitor-exit p0

    return-wide v5

    :cond_14
    :try_start_14
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getId()J

    move-result-wide v10

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getUser()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getServer()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getPassword()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getProxy()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getPort()I

    move-result v0

    move/from16 v16, v0

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMmsProxy()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMmsc()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getType()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getAuthType()I

    move-result v0

    move/from16 v20, v0

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v22, v0

    const-wide/16 v23, -0x1

    move/from16 v25, v4

    move-object/from16 v4, v21

    if-eqz v4, :cond_81d

    move-wide/from16 v26, v5

    move-object/from16 v5, v22

    if-nez v5, :cond_84

    move-object/from16 v49, v4

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-wide/from16 v61, v10

    move/from16 v7, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v4, v19

    move/from16 v8, v20

    move v9, v2

    move-object v2, v15

    goto/16 :goto_837

    :cond_84
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v6, 0x41

    if-le v0, v6, :cond_95

    const-string v0, "ApnSettingsPolicyService"

    const-string v6, "APN name maximum length (65)"

    invoke-static {v0, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_93
    .catchall {:try_start_14 .. :try_end_93} :catchall_840

    monitor-exit p0

    return-wide v23

    :cond_95
    :try_start_95
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v6, 0x78

    if-le v0, v6, :cond_a6

    const-string v0, "ApnSettingsPolicyService"

    const-string v6, "APN excedes maximum length (120)"

    invoke-static {v0, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a4
    .catchall {:try_start_95 .. :try_end_a4} :catchall_840

    monitor-exit p0

    return-wide v23

    :cond_a6
    :try_start_a6
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMcc()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMnc()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v28, v0

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMmsPort()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v29, v0

    iget-object v0, v3, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v31, v7

    move-object/from16 v7, v30

    invoke-direct {v1, v7}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateProtocol(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_dc

    const-string v0, "ApnSettingsPolicyService"

    move-object/from16 v32, v8

    const-string v8, "Invalid protocol!"

    invoke-static {v0, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_da
    .catchall {:try_start_a6 .. :try_end_da} :catchall_840

    monitor-exit p0

    return-wide v23

    :cond_dc
    move-object/from16 v32, v8

    :try_start_de
    iget-object v0, v3, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    move-object v8, v0

    invoke-direct {v1, v8}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateProtocol(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f2

    const-string v0, "ApnSettingsPolicyService"

    move-object/from16 v33, v9

    const-string v9, "Invalid Roaming Protocol!"

    invoke-static {v0, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f0
    .catchall {:try_start_de .. :try_end_f0} :catchall_840

    monitor-exit p0

    return-wide v23

    :cond_f2
    move-object/from16 v33, v9

    :try_start_f4
    iget-object v0, v3, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;

    move-object v9, v0

    invoke-direct {v1, v9}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateMVNOType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_108

    const-string v0, "ApnSettingsPolicyService"

    move-object/from16 v34, v9

    const-string v9, "Invalid mvno type!"

    invoke-static {v0, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_106
    .catchall {:try_start_f4 .. :try_end_106} :catchall_840

    monitor-exit p0

    return-wide v23

    :cond_108
    move-object/from16 v34, v9

    :try_start_10a
    iget-object v0, v3, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_110
    .catchall {:try_start_10a .. :try_end_110} :catchall_840

    move-object v9, v0

    move-object/from16 v3, v28

    :try_start_113
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_119} :catch_24f
    .catchall {:try_start_113 .. :try_end_119} :catchall_840

    const/4 v0, -0x1

    move-object/from16 v35, v9

    move-object/from16 v9, v29

    :try_start_11e
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v21
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_122} :catch_23f
    .catchall {:try_start_11e .. :try_end_122} :catchall_840

    if-nez v21, :cond_144

    move/from16 v36, v0

    :try_start_126
    const-string v0, "*"

    invoke-virtual {v9, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_146

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_132} :catch_133
    .catchall {:try_start_126 .. :try_end_132} :catchall_840

    goto :goto_148

    :catch_133
    move-exception v0

    move-object/from16 v38, v7

    move-object/from16 v37, v8

    move-object/from16 v39, v9

    move-object/from16 v41, v15

    move/from16 v7, v16

    move/from16 v8, v20

    move/from16 v40, v25

    goto/16 :goto_260

    :cond_144
    move/from16 v36, v0

    :cond_146
    move/from16 v0, v36

    :goto_148
    const-wide/16 v21, 0x1

    move-object/from16 v37, v8

    const/4 v8, -0x1

    if-nez v2, :cond_15d

    cmp-long v23, v21, v10

    if-gtz v23, :cond_154

    goto :goto_15d

    :cond_154
    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move/from16 v7, v16

    move/from16 v8, v20

    goto :goto_1b2

    :cond_15d
    :goto_15d
    if-eqz v6, :cond_1aa

    :try_start_15f
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_1aa

    if-eqz v3, :cond_1aa

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_1aa

    if-eqz v4, :cond_1aa

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_1aa

    if-eqz v5, :cond_1aa

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v23
    :try_end_17b
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_17b} :catch_19b
    .catchall {:try_start_15f .. :try_end_17b} :catchall_840

    if-eqz v23, :cond_1aa

    move-object/from16 v38, v7

    move/from16 v7, v16

    if-gt v8, v7, :cond_196

    if-gt v8, v0, :cond_196

    move-object/from16 v39, v9

    move/from16 v8, v20

    const/4 v9, -0x2

    if-gt v9, v8, :cond_1b2

    const/4 v9, 0x3

    if-ge v9, v8, :cond_190

    goto :goto_1b2

    :cond_190
    move-object/from16 v41, v15

    move/from16 v40, v25

    goto/16 :goto_23e

    :cond_196
    move-object/from16 v39, v9

    move/from16 v8, v20

    goto :goto_1b2

    :catch_19b
    move-exception v0

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move/from16 v7, v16

    move/from16 v8, v20

    move-object/from16 v41, v15

    move/from16 v40, v25

    goto/16 :goto_260

    :cond_1aa
    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move/from16 v7, v16

    move/from16 v8, v20

    :cond_1b2
    :goto_1b2
    const/4 v9, 0x0

    if-nez v2, :cond_1d9

    cmp-long v16, v21, v10

    if-lez v16, :cond_1d9

    move/from16 v40, v9

    :try_start_1bb
    const-string v9, "ApnSettingsPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1c2
    .catch Ljava/lang/Exception; {:try_start_1bb .. :try_end_1c2} :catch_1d4
    .catchall {:try_start_1bb .. :try_end_1c2} :catchall_840

    move-object/from16 v41, v15

    :try_start_1c4
    const-string v15, "addUpdateAp() : invalid ap Id "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1dd

    :catch_1d4
    move-exception v0

    move-object/from16 v41, v15

    goto/16 :goto_260

    :cond_1d9
    move/from16 v40, v9

    move-object/from16 v41, v15

    :goto_1dd
    if-eqz v4, :cond_1e9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1f0

    goto :goto_1e9

    :catch_1e6
    move-exception v0

    goto/16 :goto_260

    :cond_1e9
    :goto_1e9
    const-string v2, "ApnSettingsPolicyService"

    const-string v9, "addUpdateAp() : invalid ap name"

    invoke-static {v2, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f0
    if-eqz v5, :cond_1f8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1ff

    :cond_1f8
    const-string v2, "ApnSettingsPolicyService"

    const-string v9, "addUpdateAp() : invalid ap apn"

    invoke-static {v2, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1ff
    if-eqz v6, :cond_207

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_20e

    :cond_207
    const-string v2, "ApnSettingsPolicyService"

    const-string v9, "addUpdateAp() : invalid ap mcc"

    invoke-static {v2, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20e
    if-eqz v3, :cond_216

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_21d

    :cond_216
    const-string v2, "ApnSettingsPolicyService"

    const-string v9, "addUpdateAp() : invalid ap mnc"

    invoke-static {v2, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21d
    const/4 v2, -0x1

    if-le v2, v7, :cond_227

    const-string v2, "ApnSettingsPolicyService"

    const-string v9, "addUpdateAp() : invalid ap port"

    invoke-static {v2, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_227
    const/4 v2, -0x1

    if-le v2, v0, :cond_231

    const-string v2, "ApnSettingsPolicyService"

    const-string v9, "addUpdateAp() : invalid ap iMmsPort"

    invoke-static {v2, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_231
    const/4 v2, -0x2

    if-gt v2, v8, :cond_237

    const/4 v2, 0x3

    if-ge v2, v8, :cond_23e

    :cond_237
    const-string v2, "ApnSettingsPolicyService"

    const-string v9, "addUpdateAp() : invalid ap authType"

    invoke-static {v2, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23e
    .catch Ljava/lang/Exception; {:try_start_1c4 .. :try_end_23e} :catch_1e6
    .catchall {:try_start_1c4 .. :try_end_23e} :catchall_840

    :cond_23e
    :goto_23e
    goto :goto_265

    :catch_23f
    move-exception v0

    move-object/from16 v38, v7

    move-object/from16 v37, v8

    move-object/from16 v39, v9

    move-object/from16 v41, v15

    move/from16 v7, v16

    move/from16 v8, v20

    move/from16 v40, v25

    goto :goto_260

    :catch_24f
    move-exception v0

    move-object/from16 v38, v7

    move-object/from16 v37, v8

    move-object/from16 v35, v9

    move-object/from16 v41, v15

    move/from16 v7, v16

    move/from16 v8, v20

    move-object/from16 v39, v29

    move/from16 v40, v25

    :goto_260
    const/16 v40, 0x0

    :try_start_262
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_265
    .catchall {:try_start_262 .. :try_end_265} :catchall_840

    :goto_265
    if-eqz v40, :cond_7f7

    :try_start_267
    iget-object v0, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2
    :try_end_276
    .catch Ljava/lang/Exception; {:try_start_267 .. :try_end_276} :catch_7ca
    .catchall {:try_start_267 .. :try_end_276} :catchall_840

    const/4 v15, 0x4

    if-eqz v2, :cond_2b6

    :try_start_279
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v15, v9, :cond_2b6

    const/4 v9, 0x3

    const/4 v15, 0x0

    invoke-virtual {v2, v15, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16
    :try_end_285
    .catch Ljava/lang/Exception; {:try_start_279 .. :try_end_285} :catch_299
    .catchall {:try_start_279 .. :try_end_285} :catchall_840

    :try_start_285
    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9
    :try_end_289
    .catch Ljava/lang/Exception; {:try_start_285 .. :try_end_289} :catch_28d
    .catchall {:try_start_285 .. :try_end_289} :catchall_840

    move-object v15, v9

    move-object/from16 v9, v16

    goto :goto_2bb

    :catch_28d
    move-exception v0

    move-object/from16 v42, v2

    move-object/from16 v53, v3

    move-object/from16 v49, v4

    move-wide/from16 v61, v10

    move-object/from16 v52, v16

    goto :goto_2a4

    :catch_299
    move-exception v0

    move-object/from16 v42, v2

    move-object/from16 v53, v3

    move-object/from16 v49, v4

    move-wide/from16 v61, v10

    move-object/from16 v52, v31

    :goto_2a4
    move-object/from16 v51, v32

    move-object/from16 v57, v34

    move-object/from16 v58, v35

    move-object/from16 v56, v37

    move-object/from16 v60, v38

    move-object/from16 v15, v39

    move-object/from16 v50, v41

    move/from16 v9, p2

    goto/16 :goto_7ed

    :cond_2b6
    const/4 v15, 0x0

    move-object/from16 v9, v31

    move-object/from16 v15, v32

    :goto_2bb
    :try_start_2bb
    invoke-direct {v1, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16
    :try_end_2bf
    .catch Ljava/lang/Exception; {:try_start_2bb .. :try_end_2bf} :catch_7a5
    .catchall {:try_start_2bb .. :try_end_2bf} :catchall_840

    move-object/from16 v2, v16

    :try_start_2c1
    invoke-direct {v1, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v12, v16

    invoke-direct {v1, v13}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v13, v16

    invoke-direct {v1, v14}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16
    :try_end_2d1
    .catch Ljava/lang/Exception; {:try_start_2c1 .. :try_end_2d1} :catch_781
    .catchall {:try_start_2c1 .. :try_end_2d1} :catchall_840

    move-object/from16 v14, v16

    move-object/from16 v42, v2

    move-object/from16 v2, v41

    :try_start_2d7
    invoke-direct {v1, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16
    :try_end_2db
    .catch Ljava/lang/Exception; {:try_start_2d7 .. :try_end_2db} :catch_760
    .catchall {:try_start_2d7 .. :try_end_2db} :catchall_840

    move-object/from16 v2, v16

    move-wide/from16 v43, v10

    move-object/from16 v10, v17

    :try_start_2e1
    invoke-direct {v1, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_2e5
    .catch Ljava/lang/Exception; {:try_start_2e1 .. :try_end_2e5} :catch_73f
    .catchall {:try_start_2e1 .. :try_end_2e5} :catchall_840

    move-object v10, v11

    move-object/from16 v11, v18

    :try_start_2e8
    invoke-direct {v1, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16
    :try_end_2ec
    .catch Ljava/lang/Exception; {:try_start_2e8 .. :try_end_2ec} :catch_71e
    .catchall {:try_start_2e8 .. :try_end_2ec} :catchall_840

    move-object/from16 v11, v16

    move-object/from16 v45, v9

    move-object/from16 v9, v19

    :try_start_2f2
    invoke-direct {v1, v9}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16
    :try_end_2f6
    .catch Ljava/lang/Exception; {:try_start_2f2 .. :try_end_2f6} :catch_6fc
    .catchall {:try_start_2f2 .. :try_end_2f6} :catchall_840

    move-object/from16 v9, v16

    move-object/from16 v46, v0

    :try_start_2fa
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V
    :try_end_2ff
    .catch Ljava/lang/Exception; {:try_start_2fa .. :try_end_2ff} :catch_6d9
    .catchall {:try_start_2fa .. :try_end_2ff} :catchall_840

    move-object/from16 v47, v15

    :try_start_301
    const-string/jumbo v15, "name"
    :try_end_304
    .catch Ljava/lang/Exception; {:try_start_301 .. :try_end_304} :catch_6b6
    .catchall {:try_start_301 .. :try_end_304} :catchall_840

    move-object/from16 v48, v9

    move/from16 v9, p2

    :try_start_308
    invoke-direct {v1, v9, v0, v15, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v15, "numeric"
    :try_end_30e
    .catch Ljava/lang/Exception; {:try_start_308 .. :try_end_30e} :catch_695
    .catchall {:try_start_308 .. :try_end_30e} :catchall_840

    move-object/from16 v49, v4

    if-eqz v6, :cond_342

    if-nez v3, :cond_315

    goto :goto_342

    :cond_315
    :try_start_315
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_324
    .catch Ljava/lang/Exception; {:try_start_315 .. :try_end_324} :catch_325
    .catchall {:try_start_315 .. :try_end_324} :catchall_840

    goto :goto_344

    :catch_325
    move-exception v0

    move-object/from16 v50, v2

    move-object/from16 v53, v3

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v57, v34

    move-object/from16 v58, v35

    move-object/from16 v56, v37

    move-object/from16 v60, v38

    move-object/from16 v15, v39

    :goto_338
    move-wide/from16 v61, v43

    move-object/from16 v52, v45

    move-object/from16 v51, v47

    move-object/from16 v19, v48

    goto/16 :goto_7ed

    :cond_342
    :goto_342
    nop

    const/4 v4, 0x0

    :goto_344
    :try_start_344
    invoke-direct {v1, v9, v0, v15, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "mcc"

    invoke-direct {v1, v9, v0, v4, v6}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "mnc"

    invoke-direct {v1, v9, v0, v4, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "apn"

    invoke-direct {v1, v9, v0, v4, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "user"

    invoke-direct {v1, v9, v0, v4, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "server"

    invoke-direct {v1, v9, v0, v4, v13}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "password"

    invoke-direct {v1, v9, v0, v4, v14}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "proxy"

    invoke-direct {v1, v9, v0, v4, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "port"
    :try_end_373
    .catch Ljava/lang/Exception; {:try_start_344 .. :try_end_373} :catch_676
    .catchall {:try_start_344 .. :try_end_373} :catchall_840

    if-ltz v7, :cond_37a

    :try_start_375
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15
    :try_end_379
    .catch Ljava/lang/Exception; {:try_start_375 .. :try_end_379} :catch_325
    .catchall {:try_start_375 .. :try_end_379} :catchall_840

    goto :goto_37c

    :cond_37a
    :try_start_37a
    const-string v15, ""

    :goto_37c
    invoke-direct {v1, v9, v0, v4, v15}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "mmsproxy"

    invoke-direct {v1, v9, v0, v4, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "mmsport"
    :try_end_388
    .catch Ljava/lang/Exception; {:try_start_37a .. :try_end_388} :catch_676
    .catchall {:try_start_37a .. :try_end_388} :catchall_840

    move-object/from16 v15, v39

    :try_start_38a
    invoke-direct {v1, v9, v0, v4, v15}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "mmsc"

    invoke-direct {v1, v9, v0, v4, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_393
    .catch Ljava/lang/Exception; {:try_start_38a .. :try_end_393} :catch_659
    .catchall {:try_start_38a .. :try_end_393} :catchall_840

    if-eqz v9, :cond_3d9

    :try_start_395
    const-string v4, "authtype"
    :try_end_397
    .catch Ljava/lang/Exception; {:try_start_395 .. :try_end_397} :catch_3be
    .catchall {:try_start_395 .. :try_end_397} :catchall_840

    move-object/from16 v50, v2

    const/4 v2, -0x2

    if-ge v2, v8, :cond_3a1

    const/4 v2, 0x4

    if-le v2, v8, :cond_3a1

    move v2, v8

    goto :goto_3a5

    :cond_3a1
    :try_start_3a1
    sget v20, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_NOTSET:I

    move/from16 v2, v20

    :goto_3a5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3ec

    :catch_3ad
    move-exception v0

    move-object/from16 v53, v3

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v57, v34

    move-object/from16 v58, v35

    move-object/from16 v56, v37

    move-object/from16 v60, v38

    goto/16 :goto_338

    :catch_3be
    move-exception v0

    move-object/from16 v50, v2

    move-object/from16 v53, v3

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v57, v34

    move-object/from16 v58, v35

    move-object/from16 v56, v37

    move-object/from16 v60, v38

    move-wide/from16 v61, v43

    move-object/from16 v52, v45

    move-object/from16 v51, v47

    move-object/from16 v19, v48

    goto/16 :goto_7ed

    :cond_3d9
    move-object/from16 v50, v2

    if-nez v9, :cond_3ec

    const/4 v2, -0x2

    if-ge v2, v8, :cond_3ec

    const/4 v2, 0x4

    if-le v2, v8, :cond_3ec

    const-string v2, "authtype"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_3ec
    .catch Ljava/lang/Exception; {:try_start_3a1 .. :try_end_3ec} :catch_3ad
    .catchall {:try_start_3a1 .. :try_end_3ec} :catchall_840

    :cond_3ec
    :goto_3ec
    :try_start_3ec
    const-string/jumbo v2, "type"
    :try_end_3ef
    .catch Ljava/lang/Exception; {:try_start_3ec .. :try_end_3ef} :catch_63e
    .catchall {:try_start_3ec .. :try_end_3ef} :catchall_840

    move-object/from16 v4, v48

    :try_start_3f1
    invoke-direct {v1, v9, v0, v2, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f4
    .catch Ljava/lang/Exception; {:try_start_3f1 .. :try_end_3f4} :catch_623
    .catchall {:try_start_3f1 .. :try_end_3f4} :catchall_840

    if-eqz v47, :cond_488

    if-eqz v45, :cond_488

    move-object/from16 v2, v47

    :try_start_3fa
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16
    :try_end_3fe
    .catch Ljava/lang/Exception; {:try_start_3fa .. :try_end_3fe} :catch_46d
    .catchall {:try_start_3fa .. :try_end_3fe} :catchall_840

    if-eqz v16, :cond_463

    move-object/from16 v51, v2

    move-object/from16 v2, v45

    :try_start_404
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16
    :try_end_408
    .catch Ljava/lang/Exception; {:try_start_404 .. :try_end_408} :catch_44a
    .catchall {:try_start_404 .. :try_end_408} :catchall_840

    if-eqz v16, :cond_442

    move-object/from16 v52, v2

    :try_start_40c
    const-string v2, "current"
    :try_end_40e
    .catch Ljava/lang/Exception; {:try_start_40c .. :try_end_40e} :catch_42b
    .catchall {:try_start_40c .. :try_end_40e} :catchall_840

    move-object/from16 v53, v3

    move-object/from16 v54, v4

    const/4 v3, 0x1

    :try_start_413
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_41a
    .catch Ljava/lang/Exception; {:try_start_413 .. :try_end_41a} :catch_41c
    .catchall {:try_start_413 .. :try_end_41a} :catchall_840

    goto/16 :goto_491

    :catch_41c
    move-exception v0

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v57, v34

    move-object/from16 v58, v35

    move-object/from16 v56, v37

    move-object/from16 v60, v38

    goto/16 :goto_4b5

    :catch_42b
    move-exception v0

    move-object/from16 v53, v3

    move-object/from16 v54, v4

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v57, v34

    move-object/from16 v58, v35

    move-object/from16 v56, v37

    move-object/from16 v60, v38

    move-wide/from16 v61, v43

    move-object/from16 v19, v54

    goto/16 :goto_7ed

    :cond_442
    move-object/from16 v52, v2

    move-object/from16 v53, v3

    move-object/from16 v54, v4

    const/4 v3, 0x1

    goto :goto_491

    :catch_44a
    move-exception v0

    move-object/from16 v52, v2

    move-object/from16 v53, v3

    move-object/from16 v54, v4

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v57, v34

    move-object/from16 v58, v35

    move-object/from16 v56, v37

    move-object/from16 v60, v38

    move-wide/from16 v61, v43

    move-object/from16 v19, v54

    goto/16 :goto_7ed

    :cond_463
    move-object/from16 v51, v2

    move-object/from16 v53, v3

    move-object/from16 v54, v4

    move-object/from16 v52, v45

    const/4 v3, 0x1

    goto :goto_491

    :catch_46d
    move-exception v0

    move-object/from16 v51, v2

    move-object/from16 v53, v3

    move-object/from16 v54, v4

    move-object/from16 v52, v45

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v57, v34

    move-object/from16 v58, v35

    move-object/from16 v56, v37

    move-object/from16 v60, v38

    move-wide/from16 v61, v43

    move-object/from16 v19, v54

    goto/16 :goto_7ed

    :cond_488
    move-object/from16 v53, v3

    move-object/from16 v54, v4

    move-object/from16 v52, v45

    move-object/from16 v51, v47

    const/4 v3, 0x1

    :goto_491
    :try_start_491
    iget v2, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I
    :try_end_493
    .catch Ljava/lang/Exception; {:try_start_491 .. :try_end_493} :catch_610
    .catchall {:try_start_491 .. :try_end_493} :catchall_840

    const/16 v4, 0x11

    if-lt v2, v4, :cond_4e1

    :try_start_497
    const-string/jumbo v2, "protocol"
    :try_end_49a
    .catch Ljava/lang/Exception; {:try_start_497 .. :try_end_49a} :catch_4ce
    .catchall {:try_start_497 .. :try_end_49a} :catchall_840

    move-object/from16 v4, v38

    :try_start_49c
    invoke-direct {v1, v9, v0, v2, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "roaming_protocol"
    :try_end_4a2
    .catch Ljava/lang/Exception; {:try_start_49c .. :try_end_4a2} :catch_4bb
    .catchall {:try_start_49c .. :try_end_4a2} :catchall_840

    move-object/from16 v3, v37

    :try_start_4a4
    invoke-direct {v1, v9, v0, v2, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a7
    .catch Ljava/lang/Exception; {:try_start_4a4 .. :try_end_4a7} :catch_4a8
    .catchall {:try_start_4a4 .. :try_end_4a7} :catchall_840

    goto :goto_4e5

    :catch_4a8
    move-exception v0

    move-object/from16 v56, v3

    move-object/from16 v60, v4

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v57, v34

    move-object/from16 v58, v35

    :goto_4b5
    move-wide/from16 v61, v43

    :goto_4b7
    move-object/from16 v19, v54

    goto/16 :goto_7ed

    :catch_4bb
    move-exception v0

    move-object/from16 v60, v4

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v57, v34

    move-object/from16 v58, v35

    move-object/from16 v56, v37

    move-wide/from16 v61, v43

    move-object/from16 v19, v54

    goto/16 :goto_7ed

    :catch_4ce
    move-exception v0

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v57, v34

    move-object/from16 v58, v35

    move-object/from16 v56, v37

    move-object/from16 v60, v38

    move-wide/from16 v61, v43

    move-object/from16 v19, v54

    goto/16 :goto_7ed

    :cond_4e1
    move-object/from16 v3, v37

    move-object/from16 v4, v38

    :goto_4e5
    :try_start_4e5
    const-string/jumbo v2, "mvno_type"
    :try_end_4e8
    .catch Ljava/lang/Exception; {:try_start_4e5 .. :try_end_4e8} :catch_5fd
    .catchall {:try_start_4e5 .. :try_end_4e8} :catchall_840

    move-object/from16 v56, v3

    move-object/from16 v3, v34

    :try_start_4ec
    invoke-direct {v1, v9, v0, v2, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "mvno_match_data"
    :try_end_4f2
    .catch Ljava/lang/Exception; {:try_start_4ec .. :try_end_4f2} :catch_5ec
    .catchall {:try_start_4ec .. :try_end_4f2} :catchall_840

    move-object/from16 v57, v3

    move-object/from16 v3, v35

    :try_start_4f6
    invoke-direct {v1, v9, v0, v2, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v2
    :try_end_4fd
    .catch Ljava/lang/Exception; {:try_start_4f6 .. :try_end_4fd} :catch_5dd
    .catchall {:try_start_4f6 .. :try_end_4fd} :catchall_840

    if-lez v2, :cond_5c5

    if-eqz v9, :cond_56e

    :try_start_501
    iget-object v2, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2
    :try_end_507
    .catch Ljava/lang/Exception; {:try_start_501 .. :try_end_507} :catch_55f
    .catchall {:try_start_501 .. :try_end_507} :catchall_840

    move-object/from16 v58, v3

    :try_start_509
    sget-object v3, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2
    :try_end_50f
    .catch Ljava/lang/Exception; {:try_start_509 .. :try_end_50f} :catch_552
    .catchall {:try_start_509 .. :try_end_50f} :catchall_840

    if-eqz v2, :cond_514

    const/16 v55, 0x1

    goto :goto_516

    :cond_514
    const/16 v55, 0x0

    :goto_516
    move/from16 v3, v55

    if-eqz v3, :cond_548

    move/from16 v59, v3

    :try_start_51c
    const-string v3, "ApnSettingsPolicyService"
    :try_end_51e
    .catch Ljava/lang/Exception; {:try_start_51c .. :try_end_51e} :catch_53a
    .catchall {:try_start_51c .. :try_end_51e} :catchall_840

    move-object/from16 v60, v4

    :try_start_520
    const-string v4, "addUpdateAp Created rowUri : "

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3
    :try_end_529
    .catch Ljava/lang/Exception; {:try_start_520 .. :try_end_529} :catch_52d
    .catchall {:try_start_520 .. :try_end_529} :catchall_840

    move-wide v2, v3

    move-wide/from16 v26, v2

    goto :goto_54c

    :catch_52d
    move-exception v0

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-wide/from16 v61, v43

    move-object/from16 v19, v54

    move/from16 v40, v59

    goto/16 :goto_7ed

    :catch_53a
    move-exception v0

    move-object/from16 v60, v4

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-wide/from16 v61, v43

    move-object/from16 v19, v54

    move/from16 v40, v59

    goto :goto_55d

    :cond_548
    move/from16 v59, v3

    move-object/from16 v60, v4

    :goto_54c
    move-wide/from16 v61, v43

    move/from16 v40, v59

    goto/16 :goto_5d4

    :catch_552
    move-exception v0

    move-object/from16 v60, v4

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-wide/from16 v61, v43

    move-object/from16 v19, v54

    :goto_55d
    goto/16 :goto_7ed

    :catch_55f
    move-exception v0

    move-object/from16 v58, v3

    move-object/from16 v60, v4

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-wide/from16 v61, v43

    move-object/from16 v19, v54

    goto/16 :goto_7ed

    :cond_56e
    move-object/from16 v58, v3

    move-object/from16 v60, v4

    :try_start_572
    sget-object v2, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;
    :try_end_574
    .catch Ljava/lang/Exception; {:try_start_572 .. :try_end_574} :catch_5ba
    .catchall {:try_start_572 .. :try_end_574} :catchall_840

    move-wide/from16 v3, v43

    :try_start_576
    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2
    :try_end_57a
    .catch Ljava/lang/Exception; {:try_start_576 .. :try_end_57a} :catch_5af
    .catchall {:try_start_576 .. :try_end_57a} :catchall_840

    move-wide/from16 v61, v3

    :try_start_57c
    iget-object v3, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3
    :try_end_587
    .catch Ljava/lang/Exception; {:try_start_57c .. :try_end_587} :catch_5d6
    .catchall {:try_start_57c .. :try_end_587} :catchall_840

    if-lez v3, :cond_58c

    const/16 v55, 0x1

    goto :goto_58e

    :cond_58c
    const/16 v55, 0x0

    :goto_58e
    move/from16 v4, v55

    if-eqz v4, :cond_5aa

    move-object/from16 v63, v0

    :try_start_594
    const-string v0, "ApnSettingsPolicyService"

    move/from16 v64, v3

    const-string v3, "addUpdateAp Updated rowUri : "

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16
    :try_end_5a1
    .catch Ljava/lang/Exception; {:try_start_594 .. :try_end_5a1} :catch_5a6
    .catchall {:try_start_594 .. :try_end_5a1} :catchall_840

    move-wide/from16 v2, v16

    move-wide/from16 v26, v2

    goto :goto_5ac

    :catch_5a6
    move-exception v0

    move/from16 v40, v4

    goto :goto_5d7

    :cond_5aa
    move-object/from16 v63, v0

    :goto_5ac
    move/from16 v40, v4

    goto :goto_5d4

    :catch_5af
    move-exception v0

    move-wide/from16 v61, v3

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v54

    goto/16 :goto_7ed

    :catch_5ba
    move-exception v0

    move-wide/from16 v61, v43

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v54

    goto/16 :goto_7ed

    :cond_5c5
    move-object/from16 v63, v0

    move-object/from16 v58, v3

    move-object/from16 v60, v4

    move-wide/from16 v61, v43

    :try_start_5cd
    const-string v0, "ApnSettingsPolicyService"

    const-string v2, "addUpdateAp Error: Empty dataset."

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d4
    .catch Ljava/lang/Exception; {:try_start_5cd .. :try_end_5d4} :catch_5d6
    .catchall {:try_start_5cd .. :try_end_5d4} :catchall_840

    :goto_5d4
    goto/16 :goto_81b

    :catch_5d6
    move-exception v0

    :goto_5d7
    move-object/from16 v17, v10

    move-object/from16 v18, v11

    goto/16 :goto_4b7

    :catch_5dd
    move-exception v0

    move-object/from16 v58, v3

    move-object/from16 v60, v4

    move-wide/from16 v61, v43

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v54

    goto/16 :goto_7ed

    :catch_5ec
    move-exception v0

    move-object/from16 v57, v3

    move-object/from16 v60, v4

    move-object/from16 v58, v35

    move-wide/from16 v61, v43

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v54

    goto/16 :goto_7ed

    :catch_5fd
    move-exception v0

    move-object/from16 v56, v3

    move-object/from16 v60, v4

    move-object/from16 v57, v34

    move-object/from16 v58, v35

    move-wide/from16 v61, v43

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v54

    goto/16 :goto_7ed

    :catch_610
    move-exception v0

    move-object/from16 v57, v34

    move-object/from16 v58, v35

    move-object/from16 v56, v37

    move-object/from16 v60, v38

    move-wide/from16 v61, v43

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v54

    goto/16 :goto_7ed

    :catch_623
    move-exception v0

    move-object/from16 v53, v3

    move-object/from16 v54, v4

    move-object/from16 v57, v34

    move-object/from16 v58, v35

    move-object/from16 v56, v37

    move-object/from16 v60, v38

    move-wide/from16 v61, v43

    move-object/from16 v52, v45

    move-object/from16 v51, v47

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v54

    goto/16 :goto_7ed

    :catch_63e
    move-exception v0

    move-object/from16 v53, v3

    move-object/from16 v57, v34

    move-object/from16 v58, v35

    move-object/from16 v56, v37

    move-object/from16 v60, v38

    move-wide/from16 v61, v43

    move-object/from16 v52, v45

    move-object/from16 v51, v47

    move-object/from16 v54, v48

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v54

    goto/16 :goto_7ed

    :catch_659
    move-exception v0

    move-object/from16 v50, v2

    move-object/from16 v53, v3

    move-object/from16 v57, v34

    move-object/from16 v58, v35

    move-object/from16 v56, v37

    move-object/from16 v60, v38

    move-wide/from16 v61, v43

    move-object/from16 v52, v45

    move-object/from16 v51, v47

    move-object/from16 v54, v48

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v54

    goto/16 :goto_7ed

    :catch_676
    move-exception v0

    move-object/from16 v50, v2

    move-object/from16 v53, v3

    move-object/from16 v57, v34

    move-object/from16 v58, v35

    move-object/from16 v56, v37

    move-object/from16 v60, v38

    move-object/from16 v15, v39

    move-wide/from16 v61, v43

    move-object/from16 v52, v45

    move-object/from16 v51, v47

    move-object/from16 v54, v48

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v54

    goto/16 :goto_7ed

    :catch_695
    move-exception v0

    move-object/from16 v50, v2

    move-object/from16 v53, v3

    move-object/from16 v49, v4

    move-object/from16 v57, v34

    move-object/from16 v58, v35

    move-object/from16 v56, v37

    move-object/from16 v60, v38

    move-object/from16 v15, v39

    move-wide/from16 v61, v43

    move-object/from16 v52, v45

    move-object/from16 v51, v47

    move-object/from16 v54, v48

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v54

    goto/16 :goto_7ed

    :catch_6b6
    move-exception v0

    move-object/from16 v50, v2

    move-object/from16 v53, v3

    move-object/from16 v49, v4

    move-object/from16 v54, v9

    move-object/from16 v57, v34

    move-object/from16 v58, v35

    move-object/from16 v56, v37

    move-object/from16 v60, v38

    move-object/from16 v15, v39

    move-wide/from16 v61, v43

    move-object/from16 v52, v45

    move-object/from16 v51, v47

    move/from16 v9, p2

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v54

    goto/16 :goto_7ed

    :catch_6d9
    move-exception v0

    move-object/from16 v50, v2

    move-object/from16 v53, v3

    move-object/from16 v49, v4

    move-object/from16 v54, v9

    move-object/from16 v51, v15

    move-object/from16 v57, v34

    move-object/from16 v58, v35

    move-object/from16 v56, v37

    move-object/from16 v60, v38

    move-object/from16 v15, v39

    move-wide/from16 v61, v43

    move-object/from16 v52, v45

    move/from16 v9, p2

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v54

    goto/16 :goto_7ed

    :catch_6fc
    move-exception v0

    move-object/from16 v50, v2

    move-object/from16 v53, v3

    move-object/from16 v49, v4

    move-object v4, v9

    move-object/from16 v51, v15

    move-object/from16 v57, v34

    move-object/from16 v58, v35

    move-object/from16 v56, v37

    move-object/from16 v60, v38

    move-object/from16 v15, v39

    move-wide/from16 v61, v43

    move-object/from16 v52, v45

    move/from16 v9, p2

    move-object/from16 v19, v4

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    goto/16 :goto_7ed

    :catch_71e
    move-exception v0

    move-object/from16 v50, v2

    move-object/from16 v53, v3

    move-object/from16 v49, v4

    move-object/from16 v52, v9

    move-object/from16 v51, v15

    move-object/from16 v4, v19

    move-object/from16 v57, v34

    move-object/from16 v58, v35

    move-object/from16 v56, v37

    move-object/from16 v60, v38

    move-object/from16 v15, v39

    move-wide/from16 v61, v43

    move/from16 v9, p2

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    goto/16 :goto_7ed

    :catch_73f
    move-exception v0

    move-object/from16 v50, v2

    move-object/from16 v53, v3

    move-object/from16 v49, v4

    move-object/from16 v52, v9

    move-object/from16 v51, v15

    move-object/from16 v11, v18

    move-object/from16 v4, v19

    move-object/from16 v57, v34

    move-object/from16 v58, v35

    move-object/from16 v56, v37

    move-object/from16 v60, v38

    move-object/from16 v15, v39

    move-wide/from16 v61, v43

    move/from16 v9, p2

    move-object/from16 v17, v10

    goto/16 :goto_7ed

    :catch_760
    move-exception v0

    move-object/from16 v53, v3

    move-object/from16 v49, v4

    move-object/from16 v52, v9

    move-wide/from16 v61, v10

    move-object/from16 v51, v15

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v4, v19

    move-object/from16 v57, v34

    move-object/from16 v58, v35

    move-object/from16 v56, v37

    move-object/from16 v60, v38

    move-object/from16 v15, v39

    move/from16 v9, p2

    move-object/from16 v50, v2

    goto/16 :goto_7ed

    :catch_781
    move-exception v0

    move-object/from16 v42, v2

    move-object/from16 v53, v3

    move-object/from16 v49, v4

    move-object/from16 v52, v9

    move-wide/from16 v61, v10

    move-object/from16 v51, v15

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v4, v19

    move-object/from16 v57, v34

    move-object/from16 v58, v35

    move-object/from16 v56, v37

    move-object/from16 v60, v38

    move-object/from16 v15, v39

    move-object/from16 v2, v41

    move/from16 v9, p2

    move-object/from16 v50, v2

    goto :goto_7ed

    :catch_7a5
    move-exception v0

    move-object/from16 v53, v3

    move-object/from16 v49, v4

    move-object/from16 v52, v9

    move-wide/from16 v61, v10

    move-object/from16 v51, v15

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v4, v19

    move-object/from16 v57, v34

    move-object/from16 v58, v35

    move-object/from16 v56, v37

    move-object/from16 v60, v38

    move-object/from16 v15, v39

    move/from16 v9, p2

    move-object v3, v2

    move-object/from16 v2, v41

    move-object/from16 v50, v2

    move-object/from16 v42, v3

    goto :goto_7ed

    :catch_7ca
    move-exception v0

    move-object/from16 v53, v3

    move-object/from16 v49, v4

    move-wide/from16 v61, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v4, v19

    move-object/from16 v57, v34

    move-object/from16 v58, v35

    move-object/from16 v56, v37

    move-object/from16 v60, v38

    move-object/from16 v15, v39

    move-object/from16 v2, v41

    move/from16 v9, p2

    move-object/from16 v50, v2

    move-object/from16 v52, v31

    move-object/from16 v51, v32

    move-object/from16 v42, v33

    :goto_7ed
    :try_start_7ed
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7f0
    .catchall {:try_start_7ed .. :try_end_7f0} :catchall_840

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v54, v19

    goto :goto_81b

    :cond_7f7
    move-object/from16 v53, v3

    move-object/from16 v49, v4

    move-wide/from16 v61, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v4, v19

    move-object/from16 v57, v34

    move-object/from16 v58, v35

    move-object/from16 v56, v37

    move-object/from16 v60, v38

    move-object/from16 v15, v39

    move-object/from16 v2, v41

    move/from16 v9, p2

    move-object/from16 v50, v2

    move-object/from16 v54, v4

    move-object/from16 v52, v31

    move-object/from16 v51, v32

    move-object/from16 v42, v33

    :goto_81b
    monitor-exit p0

    return-wide v26

    :cond_81d
    move-object/from16 v49, v4

    move-wide/from16 v26, v5

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-wide/from16 v61, v10

    move/from16 v7, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v4, v19

    move/from16 v8, v20

    move-object/from16 v5, v22

    move v9, v2

    move-object v2, v15

    :goto_837
    :try_start_837
    const-string v0, "ApnSettingsPolicyService"

    const-string v3, "Invalid value"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_83e
    .catchall {:try_start_837 .. :try_end_83e} :catchall_840

    monitor-exit p0

    return-wide v23

    :catchall_840
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteApn(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 10

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const-wide/16 v1, 0x1

    cmp-long v1, v1, p2

    const/4 v2, 0x0

    if-lez v1, :cond_15

    const-string v1, "ApnSettingsPolicyService"

    const-string v3, "deleteAp : apId is invalid"

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_48

    monitor-exit p0

    return v2

    :cond_15
    :try_start_15
    sget-object v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move v0, v3

    const-string v3, "ApnSettingsPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteAp : deleted rowCount from ApTable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3d} :catch_3e
    .catchall {:try_start_15 .. :try_end_3d} :catchall_48

    goto :goto_42

    :catch_3e
    move-exception v1

    :try_start_3f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_48

    :goto_42
    if-lez v0, :cond_46

    const/4 v2, 0x1

    nop

    :cond_46
    monitor-exit p0

    return v2

    :catchall_48
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getApnList(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/apn/ApnSettings;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mPendingGetApnList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mPendingGetApnList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2b

    :cond_24
    invoke-direct {p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->retrieveApnListFromDatabase()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_2b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->MAXIMUM_APNS_OVER_IPC:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_4e

    iget-object v1, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mPendingGetApnList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v4, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->MAXIMUM_APNS_OVER_IPC:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v0, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->MAXIMUM_APNS_OVER_IPC:I

    invoke-interface {v0, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_5f

    :cond_4e
    iget-object v1, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mPendingGetApnList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :goto_5f
    return-object v0
.end method

.method public getApnSettings(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/net/apn/ApnSettings;
    .registers 15

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const/4 v0, 0x0

    const-wide/16 v1, 0x1

    cmp-long v1, v1, p2

    const/4 v2, 0x0

    if-lez v1, :cond_14

    const-string v1, "ApnSettingsPolicyService"

    const-string/jumbo v3, "getApnSettings : apId is invalid"

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_14
    :try_start_14
    sget-object v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iget-object v1, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    if-eqz v0, :cond_11e

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_11e

    new-instance v1, Lcom/samsung/android/knox/net/apn/ApnSettings;

    invoke-direct {v1}, Lcom/samsung/android/knox/net/apn/ApnSettings;-><init>()V

    const-string v3, "_id"

    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setId(J)V

    const-string/jumbo v3, "name"

    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setName(Ljava/lang/String;)V

    const-string/jumbo v3, "mcc"

    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMcc(Ljava/lang/String;)V

    const-string/jumbo v3, "mnc"

    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMnc(Ljava/lang/String;)V

    const-string v3, "apn"

    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setApn(Ljava/lang/String;)V

    const-string/jumbo v3, "user"

    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setUser(Ljava/lang/String;)V

    const-string/jumbo v3, "server"

    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setServer(Ljava/lang/String;)V

    const-string/jumbo v3, "password"

    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPassword(Ljava/lang/String;)V

    const-string/jumbo v3, "proxy"

    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setProxy(Ljava/lang/String;)V

    const-string/jumbo v3, "port"

    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPort(I)V

    :cond_a6
    const-string/jumbo v7, "mmsproxy"

    invoke-direct {p0, v7, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsProxy(Ljava/lang/String;)V

    const-string/jumbo v7, "mmsport"

    invoke-direct {p0, v7, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsPort(Ljava/lang/String;)V

    const-string/jumbo v7, "mmsc"

    invoke-direct {p0, v7, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsc(Ljava/lang/String;)V

    const-string v7, "authtype"

    invoke-direct {p0, v7, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setAuthType(I)V

    :cond_d7
    const-string/jumbo v8, "type"

    invoke-direct {p0, v8, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setType(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I

    const/16 v9, 0x11

    if-lt v8, v9, :cond_f9

    const-string/jumbo v8, "protocol"

    invoke-direct {p0, v8, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    const-string/jumbo v8, "roaming_protocol"

    invoke-direct {p0, v8, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    :cond_f9
    const-string/jumbo v8, "mvno_type"

    invoke-direct {p0, v8, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_108

    iput-object v8, v1, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;

    :cond_108
    const-string/jumbo v9, "mvno_match_data"

    invoke-direct {p0, v9, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_117

    iput-object v9, v1, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_117} :catch_126
    .catchall {:try_start_14 .. :try_end_117} :catchall_124

    :cond_117
    nop

    if-eqz v0, :cond_11d

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_11d
    return-object v1

    :cond_11e
    if-eqz v0, :cond_12d

    :goto_120
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_12d

    :catchall_124
    move-exception v1

    goto :goto_12e

    :catch_126
    move-exception v1

    :try_start_127
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12a
    .catchall {:try_start_127 .. :try_end_12a} :catchall_124

    if-eqz v0, :cond_12d

    goto :goto_120

    :cond_12d
    :goto_12d
    return-object v2

    :goto_12e
    if-eqz v0, :cond_133

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_133
    throw v1
.end method

.method public declared-synchronized getPreferredApn(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/apn/ApnSettings;
    .registers 11

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "ApnSettingsPolicyService"

    const-string/jumbo v3, "getPreferredApn():"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_8a

    :try_start_e
    iget-object v2, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->PREFERAPN_URI:Landroid/net/Uri;

    const-string v2, "_id"

    const-string/jumbo v5, "name"

    const-string v6, "apn"

    filled-new-array {v2, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "name ASC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    if-eqz v1, :cond_5f

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5f

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "ApnSettingsPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPreferredApn():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_5f

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getApnSettings(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/net/apn/ApnSettings;

    move-result-object v4
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_5e} :catch_67
    .catchall {:try_start_e .. :try_end_5e} :catchall_65

    move-object v0, v4

    :cond_5f
    if-eqz v1, :cond_82

    :goto_61
    :try_start_61
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_8a

    goto :goto_82

    :catchall_65
    move-exception v2

    goto :goto_84

    :catch_67
    move-exception v2

    :try_start_68
    const-string v3, "ApnSettingsPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPreferredApn Ex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7f
    .catchall {:try_start_68 .. :try_end_7f} :catchall_65

    if-eqz v1, :cond_82

    goto :goto_61

    :cond_82
    :goto_82
    monitor-exit p0

    return-object v0

    :goto_84
    if-eqz v1, :cond_89

    :try_start_86
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_89
    throw v2
    :try_end_8a
    .catchall {:try_start_86 .. :try_end_8a} :catchall_8a

    :catchall_8a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public declared-synchronized setPreferredApn(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 10

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_74

    const-wide/16 v1, 0x0

    cmp-long v3, v1, p2

    if-eqz v3, :cond_27

    cmp-long v3, v1, p2

    if-lez v3, :cond_27

    :try_start_f
    const-string v1, "ApnSettingsPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreferedAp() : invalid ap Id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6d

    :cond_27
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->isValidApnId(J)Z

    move-result v3

    if-eqz v3, :cond_6d

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "apn_id"

    cmp-long v1, v1, p2

    if-nez v1, :cond_3b

    const-wide/16 v1, -0x1

    goto :goto_3c

    :cond_3b
    move-wide v1, p2

    :goto_3c
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_54

    const/4 v2, 0x1

    goto :goto_55

    :cond_54
    const/4 v2, 0x0

    :goto_55
    move v0, v2

    const-string v2, "ApnSettingsPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPreferedAp() row count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_6d} :catch_6e
    .catchall {:try_start_f .. :try_end_6d} :catchall_74

    :cond_6d
    :goto_6d
    goto :goto_72

    :catch_6e
    move-exception v1

    :try_start_6f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_74

    :goto_72
    monitor-exit p0

    return v0

    :catchall_74
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method
