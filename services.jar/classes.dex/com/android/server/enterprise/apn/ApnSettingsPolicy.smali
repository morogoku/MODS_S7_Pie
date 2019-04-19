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

.field private static final TAG:Ljava/lang/String; = "ApnSettingsPolicyService"


# instance fields
.field private dunRequired:Z

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field mMDMConfigVersion:I


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
    .registers 14

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9e

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_14

    goto/16 :goto_9e

    :cond_14
    const-string/jumbo v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    if-eqz v1, :cond_95

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2f

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_33

    :cond_2f
    new-array v5, v3, [Ljava/lang/String;

    aput-object v1, v5, v6

    :goto_33
    move-object v7, v4

    move v4, v6

    :goto_35
    array-length v8, v5

    if-ge v4, v8, :cond_94

    aget-object v8, v5, v4

    if-eqz v8, :cond_91

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x4

    if-le v9, v10, :cond_91

    const/4 v9, 0x3

    invoke-virtual {v8, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v10, :cond_91

    if-eqz v9, :cond_91

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "(mcc = \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\" AND "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "mnc"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " = \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    array-length v11, v5

    sub-int/2addr v11, v3

    if-ge v4, v11, :cond_91

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " OR "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_91
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    :cond_94
    move-object v4, v7

    :cond_95
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9c

    goto :goto_9d

    :cond_9c
    move-object v2, v4

    :goto_9d
    return-object v2

    :cond_9e
    :goto_9e
    const-string v1, "ApnSettingsPolicyService"

    const-string v3, "No SIM "

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
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
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v2, v2, p1

    if-gez v2, :cond_a8

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

    if-eqz v0, :cond_92

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_91

    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_91

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "dun"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_91

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "mms"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_8f} :catch_9a
    .catchall {:try_start_14 .. :try_end_8f} :catchall_98

    if-eqz v5, :cond_92

    :cond_91
    const/4 v0, 0x0

    :cond_92
    if-eqz v1, :cond_a1

    :goto_94
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_a1

    :catchall_98
    move-exception v2

    goto :goto_a2

    :catch_9a
    move-exception v2

    :try_start_9b
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_98

    if-eqz v1, :cond_a1

    goto :goto_94

    :cond_a1
    :goto_a1
    goto :goto_bf

    :goto_a2
    if-eqz v1, :cond_a7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a7
    throw v2

    :cond_a8
    const-string v2, "ApnSettingsPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isValidApnId() : invalid apId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_bf
    return v0
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
    .registers 65

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    monitor-enter p0

    :try_start_7
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_77a

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

    if-eqz v4, :cond_757

    move-wide/from16 v26, v5

    move-object/from16 v5, v22

    if-nez v5, :cond_84

    move-object/from16 v47, v4

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-wide/from16 v57, v10

    move/from16 v7, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v4, v19

    move/from16 v8, v20

    move v9, v2

    move-object v2, v15

    goto/16 :goto_771

    :cond_84
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v6, 0x41

    if-le v0, v6, :cond_95

    const-string v0, "ApnSettingsPolicyService"

    const-string v6, "APN name maximum length (65)"

    invoke-static {v0, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_93
    .catchall {:try_start_14 .. :try_end_93} :catchall_77a

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
    .catchall {:try_start_95 .. :try_end_a4} :catchall_77a

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
    .catchall {:try_start_a6 .. :try_end_da} :catchall_77a

    monitor-exit p0

    return-wide v23

    :cond_dc
    move-object/from16 v32, v8

    :try_start_de
    iget-object v0, v3, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    move-object v8, v0

    invoke-direct {v1, v8}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateProtocol(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f0

    const-string v0, "ApnSettingsPolicyService"

    const-string v3, "Invalid Roaming Protocol!"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ee
    .catchall {:try_start_de .. :try_end_ee} :catchall_77a

    monitor-exit p0

    return-wide v23

    :cond_f0
    move-object/from16 v3, v28

    :try_start_f2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_f8} :catch_22e
    .catchall {:try_start_f2 .. :try_end_f8} :catchall_77a

    const/4 v0, -0x1

    move-object/from16 v33, v9

    move-object/from16 v9, v29

    :try_start_fd
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v21
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_101} :catch_21e
    .catchall {:try_start_fd .. :try_end_101} :catchall_77a

    if-nez v21, :cond_123

    move/from16 v34, v0

    :try_start_105
    const-string v0, "*"

    invoke-virtual {v9, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_125

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_111} :catch_112
    .catchall {:try_start_105 .. :try_end_111} :catchall_77a

    goto :goto_127

    :catch_112
    move-exception v0

    move-object/from16 v36, v7

    move-object/from16 v35, v8

    move-object/from16 v37, v9

    move-object/from16 v39, v15

    move/from16 v7, v16

    move/from16 v8, v20

    move/from16 v38, v25

    goto/16 :goto_23f

    :cond_123
    move/from16 v34, v0

    :cond_125
    move/from16 v0, v34

    :goto_127
    const-wide/16 v21, 0x1

    move-object/from16 v35, v8

    const/4 v8, -0x1

    if-nez v2, :cond_13c

    cmp-long v23, v21, v10

    if-gtz v23, :cond_133

    goto :goto_13c

    :cond_133
    move-object/from16 v36, v7

    move-object/from16 v37, v9

    move/from16 v7, v16

    move/from16 v8, v20

    goto :goto_191

    :cond_13c
    :goto_13c
    if-eqz v6, :cond_189

    :try_start_13e
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_189

    if-eqz v3, :cond_189

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_189

    if-eqz v4, :cond_189

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_189

    if-eqz v5, :cond_189

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v23
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_15a} :catch_17a
    .catchall {:try_start_13e .. :try_end_15a} :catchall_77a

    if-eqz v23, :cond_189

    move-object/from16 v36, v7

    move/from16 v7, v16

    if-gt v8, v7, :cond_175

    if-gt v8, v0, :cond_175

    move-object/from16 v37, v9

    move/from16 v8, v20

    const/4 v9, -0x2

    if-gt v9, v8, :cond_191

    const/4 v9, 0x3

    if-ge v9, v8, :cond_16f

    goto :goto_191

    :cond_16f
    move-object/from16 v39, v15

    move/from16 v38, v25

    goto/16 :goto_21d

    :cond_175
    move-object/from16 v37, v9

    move/from16 v8, v20

    goto :goto_191

    :catch_17a
    move-exception v0

    move-object/from16 v36, v7

    move-object/from16 v37, v9

    move/from16 v7, v16

    move/from16 v8, v20

    move-object/from16 v39, v15

    move/from16 v38, v25

    goto/16 :goto_23f

    :cond_189
    move-object/from16 v36, v7

    move-object/from16 v37, v9

    move/from16 v7, v16

    move/from16 v8, v20

    :cond_191
    :goto_191
    const/4 v9, 0x0

    if-nez v2, :cond_1b8

    cmp-long v16, v21, v10

    if-lez v16, :cond_1b8

    move/from16 v38, v9

    :try_start_19a
    const-string v9, "ApnSettingsPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1a1
    .catch Ljava/lang/Exception; {:try_start_19a .. :try_end_1a1} :catch_1b3
    .catchall {:try_start_19a .. :try_end_1a1} :catchall_77a

    move-object/from16 v39, v15

    :try_start_1a3
    const-string v15, "addUpdateAp() : invalid ap Id "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1bc

    :catch_1b3
    move-exception v0

    move-object/from16 v39, v15

    goto/16 :goto_23f

    :cond_1b8
    move/from16 v38, v9

    move-object/from16 v39, v15

    :goto_1bc
    if-eqz v4, :cond_1c8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1cf

    goto :goto_1c8

    :catch_1c5
    move-exception v0

    goto/16 :goto_23f

    :cond_1c8
    :goto_1c8
    const-string v2, "ApnSettingsPolicyService"

    const-string v9, "addUpdateAp() : invalid ap name"

    invoke-static {v2, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1cf
    if-eqz v5, :cond_1d7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1de

    :cond_1d7
    const-string v2, "ApnSettingsPolicyService"

    const-string v9, "addUpdateAp() : invalid ap apn"

    invoke-static {v2, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1de
    if-eqz v6, :cond_1e6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1ed

    :cond_1e6
    const-string v2, "ApnSettingsPolicyService"

    const-string v9, "addUpdateAp() : invalid ap mcc"

    invoke-static {v2, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1ed
    if-eqz v3, :cond_1f5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1fc

    :cond_1f5
    const-string v2, "ApnSettingsPolicyService"

    const-string v9, "addUpdateAp() : invalid ap mnc"

    invoke-static {v2, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1fc
    const/4 v2, -0x1

    if-le v2, v7, :cond_206

    const-string v2, "ApnSettingsPolicyService"

    const-string v9, "addUpdateAp() : invalid ap port"

    invoke-static {v2, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_206
    const/4 v2, -0x1

    if-le v2, v0, :cond_210

    const-string v2, "ApnSettingsPolicyService"

    const-string v9, "addUpdateAp() : invalid ap iMmsPort"

    invoke-static {v2, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_210
    const/4 v2, -0x2

    if-gt v2, v8, :cond_216

    const/4 v2, 0x3

    if-ge v2, v8, :cond_21d

    :cond_216
    const-string v2, "ApnSettingsPolicyService"

    const-string v9, "addUpdateAp() : invalid ap authType"

    invoke-static {v2, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21d
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_21d} :catch_1c5
    .catchall {:try_start_1a3 .. :try_end_21d} :catchall_77a

    :cond_21d
    :goto_21d
    goto :goto_244

    :catch_21e
    move-exception v0

    move-object/from16 v36, v7

    move-object/from16 v35, v8

    move-object/from16 v37, v9

    move-object/from16 v39, v15

    move/from16 v7, v16

    move/from16 v8, v20

    move/from16 v38, v25

    goto :goto_23f

    :catch_22e
    move-exception v0

    move-object/from16 v36, v7

    move-object/from16 v35, v8

    move-object/from16 v33, v9

    move-object/from16 v39, v15

    move/from16 v7, v16

    move/from16 v8, v20

    move-object/from16 v37, v29

    move/from16 v38, v25

    :goto_23f
    const/16 v38, 0x0

    :try_start_241
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_244
    .catchall {:try_start_241 .. :try_end_244} :catchall_77a

    :goto_244
    if-eqz v38, :cond_735

    :try_start_246
    iget-object v0, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2
    :try_end_255
    .catch Ljava/lang/Exception; {:try_start_246 .. :try_end_255} :catch_70c
    .catchall {:try_start_246 .. :try_end_255} :catchall_77a

    const/4 v15, 0x4

    if-eqz v2, :cond_291

    :try_start_258
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v15, v9, :cond_291

    const/4 v9, 0x3

    const/4 v15, 0x0

    invoke-virtual {v2, v15, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16
    :try_end_264
    .catch Ljava/lang/Exception; {:try_start_258 .. :try_end_264} :catch_278
    .catchall {:try_start_258 .. :try_end_264} :catchall_77a

    :try_start_264
    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9
    :try_end_268
    .catch Ljava/lang/Exception; {:try_start_264 .. :try_end_268} :catch_26c
    .catchall {:try_start_264 .. :try_end_268} :catchall_77a

    move-object v15, v9

    move-object/from16 v9, v16

    goto :goto_296

    :catch_26c
    move-exception v0

    move-object/from16 v40, v2

    move-object/from16 v51, v3

    move-object/from16 v47, v4

    move-wide/from16 v57, v10

    move-object/from16 v50, v16

    goto :goto_283

    :catch_278
    move-exception v0

    move-object/from16 v40, v2

    move-object/from16 v51, v3

    move-object/from16 v47, v4

    move-wide/from16 v57, v10

    move-object/from16 v50, v31

    :goto_283
    move-object/from16 v49, v32

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-object/from16 v15, v37

    move-object/from16 v48, v39

    move/from16 v9, p2

    goto/16 :goto_72b

    :cond_291
    const/4 v15, 0x0

    move-object/from16 v9, v31

    move-object/from16 v15, v32

    :goto_296
    :try_start_296
    invoke-direct {v1, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16
    :try_end_29a
    .catch Ljava/lang/Exception; {:try_start_296 .. :try_end_29a} :catch_6eb
    .catchall {:try_start_296 .. :try_end_29a} :catchall_77a

    move-object/from16 v2, v16

    :try_start_29c
    invoke-direct {v1, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v12, v16

    invoke-direct {v1, v13}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v13, v16

    invoke-direct {v1, v14}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16
    :try_end_2ac
    .catch Ljava/lang/Exception; {:try_start_29c .. :try_end_2ac} :catch_6cb
    .catchall {:try_start_29c .. :try_end_2ac} :catchall_77a

    move-object/from16 v14, v16

    move-object/from16 v40, v2

    move-object/from16 v2, v39

    :try_start_2b2
    invoke-direct {v1, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16
    :try_end_2b6
    .catch Ljava/lang/Exception; {:try_start_2b2 .. :try_end_2b6} :catch_6ae
    .catchall {:try_start_2b2 .. :try_end_2b6} :catchall_77a

    move-object/from16 v2, v16

    move-wide/from16 v41, v10

    move-object/from16 v10, v17

    :try_start_2bc
    invoke-direct {v1, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_2c0
    .catch Ljava/lang/Exception; {:try_start_2bc .. :try_end_2c0} :catch_691
    .catchall {:try_start_2bc .. :try_end_2c0} :catchall_77a

    move-object v10, v11

    move-object/from16 v11, v18

    :try_start_2c3
    invoke-direct {v1, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16
    :try_end_2c7
    .catch Ljava/lang/Exception; {:try_start_2c3 .. :try_end_2c7} :catch_674
    .catchall {:try_start_2c3 .. :try_end_2c7} :catchall_77a

    move-object/from16 v11, v16

    move-object/from16 v43, v9

    move-object/from16 v9, v19

    :try_start_2cd
    invoke-direct {v1, v9}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16
    :try_end_2d1
    .catch Ljava/lang/Exception; {:try_start_2cd .. :try_end_2d1} :catch_656
    .catchall {:try_start_2cd .. :try_end_2d1} :catchall_77a

    move-object/from16 v9, v16

    move-object/from16 v44, v0

    :try_start_2d5
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V
    :try_end_2da
    .catch Ljava/lang/Exception; {:try_start_2d5 .. :try_end_2da} :catch_637
    .catchall {:try_start_2d5 .. :try_end_2da} :catchall_77a

    move-object/from16 v45, v15

    :try_start_2dc
    const-string/jumbo v15, "name"
    :try_end_2df
    .catch Ljava/lang/Exception; {:try_start_2dc .. :try_end_2df} :catch_618
    .catchall {:try_start_2dc .. :try_end_2df} :catchall_77a

    move-object/from16 v46, v9

    move/from16 v9, p2

    :try_start_2e3
    invoke-direct {v1, v9, v0, v15, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v15, "numeric"
    :try_end_2e9
    .catch Ljava/lang/Exception; {:try_start_2e3 .. :try_end_2e9} :catch_5fb
    .catchall {:try_start_2e3 .. :try_end_2e9} :catchall_77a

    move-object/from16 v47, v4

    if-eqz v6, :cond_319

    if-nez v3, :cond_2f0

    goto :goto_319

    :cond_2f0
    :try_start_2f0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_2ff
    .catch Ljava/lang/Exception; {:try_start_2f0 .. :try_end_2ff} :catch_300
    .catchall {:try_start_2f0 .. :try_end_2ff} :catchall_77a

    goto :goto_31b

    :catch_300
    move-exception v0

    move-object/from16 v48, v2

    move-object/from16 v51, v3

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-object/from16 v15, v37

    :goto_30f
    move-wide/from16 v57, v41

    move-object/from16 v50, v43

    move-object/from16 v49, v45

    move-object/from16 v19, v46

    goto/16 :goto_72b

    :cond_319
    :goto_319
    nop

    const/4 v4, 0x0

    :goto_31b
    :try_start_31b
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
    :try_end_34a
    .catch Ljava/lang/Exception; {:try_start_31b .. :try_end_34a} :catch_5e0
    .catchall {:try_start_31b .. :try_end_34a} :catchall_77a

    if-ltz v7, :cond_351

    :try_start_34c
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15
    :try_end_350
    .catch Ljava/lang/Exception; {:try_start_34c .. :try_end_350} :catch_300
    .catchall {:try_start_34c .. :try_end_350} :catchall_77a

    goto :goto_353

    :cond_351
    :try_start_351
    const-string v15, ""

    :goto_353
    invoke-direct {v1, v9, v0, v4, v15}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "mmsproxy"

    invoke-direct {v1, v9, v0, v4, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "mmsport"
    :try_end_35f
    .catch Ljava/lang/Exception; {:try_start_351 .. :try_end_35f} :catch_5e0
    .catchall {:try_start_351 .. :try_end_35f} :catchall_77a

    move-object/from16 v15, v37

    :try_start_361
    invoke-direct {v1, v9, v0, v4, v15}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "mmsc"

    invoke-direct {v1, v9, v0, v4, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36a
    .catch Ljava/lang/Exception; {:try_start_361 .. :try_end_36a} :catch_5c7
    .catchall {:try_start_361 .. :try_end_36a} :catchall_77a

    if-eqz v9, :cond_3a7

    :try_start_36c
    const-string v4, "authtype"
    :try_end_36e
    .catch Ljava/lang/Exception; {:try_start_36c .. :try_end_36e} :catch_390
    .catchall {:try_start_36c .. :try_end_36e} :catchall_77a

    move-object/from16 v48, v2

    const/4 v2, -0x2

    if-ge v2, v8, :cond_378

    const/4 v2, 0x4

    if-le v2, v8, :cond_378

    move v2, v8

    goto :goto_37c

    :cond_378
    :try_start_378
    sget v20, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_NOTSET:I

    move/from16 v2, v20

    :goto_37c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3ba

    :catch_384
    move-exception v0

    move-object/from16 v51, v3

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    goto :goto_30f

    :catch_390
    move-exception v0

    move-object/from16 v48, v2

    move-object/from16 v51, v3

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-wide/from16 v57, v41

    move-object/from16 v50, v43

    move-object/from16 v49, v45

    move-object/from16 v19, v46

    goto/16 :goto_72b

    :cond_3a7
    move-object/from16 v48, v2

    if-nez v9, :cond_3ba

    const/4 v2, -0x2

    if-ge v2, v8, :cond_3ba

    const/4 v2, 0x4

    if-le v2, v8, :cond_3ba

    const-string v2, "authtype"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_3ba
    .catch Ljava/lang/Exception; {:try_start_378 .. :try_end_3ba} :catch_384
    .catchall {:try_start_378 .. :try_end_3ba} :catchall_77a

    :cond_3ba
    :goto_3ba
    :try_start_3ba
    const-string/jumbo v2, "type"
    :try_end_3bd
    .catch Ljava/lang/Exception; {:try_start_3ba .. :try_end_3bd} :catch_5b0
    .catchall {:try_start_3ba .. :try_end_3bd} :catchall_77a

    move-object/from16 v4, v46

    :try_start_3bf
    invoke-direct {v1, v9, v0, v2, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c2
    .catch Ljava/lang/Exception; {:try_start_3bf .. :try_end_3c2} :catch_599
    .catchall {:try_start_3bf .. :try_end_3c2} :catchall_77a

    if-eqz v45, :cond_446

    if-eqz v43, :cond_446

    move-object/from16 v2, v45

    :try_start_3c8
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16
    :try_end_3cc
    .catch Ljava/lang/Exception; {:try_start_3c8 .. :try_end_3cc} :catch_42f
    .catchall {:try_start_3c8 .. :try_end_3cc} :catchall_77a

    if-eqz v16, :cond_425

    move-object/from16 v49, v2

    move-object/from16 v2, v43

    :try_start_3d2
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16
    :try_end_3d6
    .catch Ljava/lang/Exception; {:try_start_3d2 .. :try_end_3d6} :catch_410
    .catchall {:try_start_3d2 .. :try_end_3d6} :catchall_77a

    if-eqz v16, :cond_408

    move-object/from16 v50, v2

    :try_start_3da
    const-string v2, "current"
    :try_end_3dc
    .catch Ljava/lang/Exception; {:try_start_3da .. :try_end_3dc} :catch_3f5
    .catchall {:try_start_3da .. :try_end_3dc} :catchall_77a

    move-object/from16 v51, v3

    move-object/from16 v52, v4

    const/4 v3, 0x1

    :try_start_3e1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_3e8
    .catch Ljava/lang/Exception; {:try_start_3e1 .. :try_end_3e8} :catch_3ea
    .catchall {:try_start_3e1 .. :try_end_3e8} :catchall_77a

    goto/16 :goto_44f

    :catch_3ea
    move-exception v0

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    goto/16 :goto_46f

    :catch_3f5
    move-exception v0

    move-object/from16 v51, v3

    move-object/from16 v52, v4

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-wide/from16 v57, v41

    move-object/from16 v19, v52

    goto/16 :goto_72b

    :cond_408
    move-object/from16 v50, v2

    move-object/from16 v51, v3

    move-object/from16 v52, v4

    const/4 v3, 0x1

    goto :goto_44f

    :catch_410
    move-exception v0

    move-object/from16 v50, v2

    move-object/from16 v51, v3

    move-object/from16 v52, v4

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-wide/from16 v57, v41

    move-object/from16 v19, v52

    goto/16 :goto_72b

    :cond_425
    move-object/from16 v49, v2

    move-object/from16 v51, v3

    move-object/from16 v52, v4

    move-object/from16 v50, v43

    const/4 v3, 0x1

    goto :goto_44f

    :catch_42f
    move-exception v0

    move-object/from16 v49, v2

    move-object/from16 v51, v3

    move-object/from16 v52, v4

    move-object/from16 v50, v43

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-wide/from16 v57, v41

    move-object/from16 v19, v52

    goto/16 :goto_72b

    :cond_446
    move-object/from16 v51, v3

    move-object/from16 v52, v4

    move-object/from16 v50, v43

    move-object/from16 v49, v45

    const/4 v3, 0x1

    :goto_44f
    :try_start_44f
    iget v2, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I
    :try_end_451
    .catch Ljava/lang/Exception; {:try_start_44f .. :try_end_451} :catch_58a
    .catchall {:try_start_44f .. :try_end_451} :catchall_77a

    const/16 v4, 0x11

    if-lt v2, v4, :cond_491

    :try_start_455
    const-string/jumbo v2, "protocol"
    :try_end_458
    .catch Ljava/lang/Exception; {:try_start_455 .. :try_end_458} :catch_482
    .catchall {:try_start_455 .. :try_end_458} :catchall_77a

    move-object/from16 v4, v36

    :try_start_45a
    invoke-direct {v1, v9, v0, v2, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "roaming_protocol"
    :try_end_460
    .catch Ljava/lang/Exception; {:try_start_45a .. :try_end_460} :catch_473
    .catchall {:try_start_45a .. :try_end_460} :catchall_77a

    move-object/from16 v3, v35

    :try_start_462
    invoke-direct {v1, v9, v0, v2, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_465
    .catch Ljava/lang/Exception; {:try_start_462 .. :try_end_465} :catch_466
    .catchall {:try_start_462 .. :try_end_465} :catchall_77a

    goto :goto_495

    :catch_466
    move-exception v0

    move-object/from16 v54, v3

    move-object/from16 v56, v4

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    :goto_46f
    move-wide/from16 v57, v41

    goto/16 :goto_577

    :catch_473
    move-exception v0

    move-object/from16 v56, v4

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v54, v35

    move-wide/from16 v57, v41

    move-object/from16 v19, v52

    goto/16 :goto_72b

    :catch_482
    move-exception v0

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-wide/from16 v57, v41

    move-object/from16 v19, v52

    goto/16 :goto_72b

    :cond_491
    move-object/from16 v3, v35

    move-object/from16 v4, v36

    :goto_495
    :try_start_495
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v2
    :try_end_499
    .catch Ljava/lang/Exception; {:try_start_495 .. :try_end_499} :catch_57b
    .catchall {:try_start_495 .. :try_end_499} :catchall_77a

    if-lez v2, :cond_561

    if-eqz v9, :cond_50a

    :try_start_49d
    iget-object v2, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2
    :try_end_4a3
    .catch Ljava/lang/Exception; {:try_start_49d .. :try_end_4a3} :catch_4fb
    .catchall {:try_start_49d .. :try_end_4a3} :catchall_77a

    move-object/from16 v54, v3

    :try_start_4a5
    sget-object v3, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2
    :try_end_4ab
    .catch Ljava/lang/Exception; {:try_start_4a5 .. :try_end_4ab} :catch_4ee
    .catchall {:try_start_4a5 .. :try_end_4ab} :catchall_77a

    if-eqz v2, :cond_4b0

    const/16 v53, 0x1

    goto :goto_4b2

    :cond_4b0
    const/16 v53, 0x0

    :goto_4b2
    move/from16 v3, v53

    if-eqz v3, :cond_4e4

    move/from16 v55, v3

    :try_start_4b8
    const-string v3, "ApnSettingsPolicyService"
    :try_end_4ba
    .catch Ljava/lang/Exception; {:try_start_4b8 .. :try_end_4ba} :catch_4d6
    .catchall {:try_start_4b8 .. :try_end_4ba} :catchall_77a

    move-object/from16 v56, v4

    :try_start_4bc
    const-string v4, "addUpdateAp Created rowUri : "

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3
    :try_end_4c5
    .catch Ljava/lang/Exception; {:try_start_4bc .. :try_end_4c5} :catch_4c9
    .catchall {:try_start_4bc .. :try_end_4c5} :catchall_77a

    move-wide v2, v3

    move-wide/from16 v26, v2

    goto :goto_4e8

    :catch_4c9
    move-exception v0

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-wide/from16 v57, v41

    move-object/from16 v19, v52

    move/from16 v38, v55

    goto/16 :goto_72b

    :catch_4d6
    move-exception v0

    move-object/from16 v56, v4

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-wide/from16 v57, v41

    move-object/from16 v19, v52

    move/from16 v38, v55

    goto :goto_4f9

    :cond_4e4
    move/from16 v55, v3

    move-object/from16 v56, v4

    :goto_4e8
    move-wide/from16 v57, v41

    move/from16 v38, v55

    goto/16 :goto_570

    :catch_4ee
    move-exception v0

    move-object/from16 v56, v4

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-wide/from16 v57, v41

    move-object/from16 v19, v52

    :goto_4f9
    goto/16 :goto_72b

    :catch_4fb
    move-exception v0

    move-object/from16 v54, v3

    move-object/from16 v56, v4

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-wide/from16 v57, v41

    move-object/from16 v19, v52

    goto/16 :goto_72b

    :cond_50a
    move-object/from16 v54, v3

    move-object/from16 v56, v4

    :try_start_50e
    sget-object v2, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;
    :try_end_510
    .catch Ljava/lang/Exception; {:try_start_50e .. :try_end_510} :catch_556
    .catchall {:try_start_50e .. :try_end_510} :catchall_77a

    move-wide/from16 v3, v41

    :try_start_512
    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2
    :try_end_516
    .catch Ljava/lang/Exception; {:try_start_512 .. :try_end_516} :catch_54b
    .catchall {:try_start_512 .. :try_end_516} :catchall_77a

    move-wide/from16 v57, v3

    :try_start_518
    iget-object v3, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3
    :try_end_523
    .catch Ljava/lang/Exception; {:try_start_518 .. :try_end_523} :catch_572
    .catchall {:try_start_518 .. :try_end_523} :catchall_77a

    if-lez v3, :cond_528

    const/16 v53, 0x1

    goto :goto_52a

    :cond_528
    const/16 v53, 0x0

    :goto_52a
    move/from16 v4, v53

    if-eqz v4, :cond_546

    move-object/from16 v59, v0

    :try_start_530
    const-string v0, "ApnSettingsPolicyService"

    move/from16 v60, v3

    const-string v3, "addUpdateAp Updated rowUri : "

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16
    :try_end_53d
    .catch Ljava/lang/Exception; {:try_start_530 .. :try_end_53d} :catch_542
    .catchall {:try_start_530 .. :try_end_53d} :catchall_77a

    move-wide/from16 v2, v16

    move-wide/from16 v26, v2

    goto :goto_548

    :catch_542
    move-exception v0

    move/from16 v38, v4

    goto :goto_573

    :cond_546
    move-object/from16 v59, v0

    :goto_548
    move/from16 v38, v4

    goto :goto_570

    :catch_54b
    move-exception v0

    move-wide/from16 v57, v3

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v52

    goto/16 :goto_72b

    :catch_556
    move-exception v0

    move-wide/from16 v57, v41

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v52

    goto/16 :goto_72b

    :cond_561
    move-object/from16 v59, v0

    move-object/from16 v54, v3

    move-object/from16 v56, v4

    move-wide/from16 v57, v41

    :try_start_569
    const-string v0, "ApnSettingsPolicyService"

    const-string v2, "addUpdateAp Error: Empty dataset."

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_570
    .catch Ljava/lang/Exception; {:try_start_569 .. :try_end_570} :catch_572
    .catchall {:try_start_569 .. :try_end_570} :catchall_77a

    :goto_570
    goto/16 :goto_755

    :catch_572
    move-exception v0

    :goto_573
    move-object/from16 v17, v10

    move-object/from16 v18, v11

    :goto_577
    move-object/from16 v19, v52

    goto/16 :goto_72b

    :catch_57b
    move-exception v0

    move-object/from16 v54, v3

    move-object/from16 v56, v4

    move-wide/from16 v57, v41

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v52

    goto/16 :goto_72b

    :catch_58a
    move-exception v0

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-wide/from16 v57, v41

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v52

    goto/16 :goto_72b

    :catch_599
    move-exception v0

    move-object/from16 v51, v3

    move-object/from16 v52, v4

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-wide/from16 v57, v41

    move-object/from16 v50, v43

    move-object/from16 v49, v45

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v52

    goto/16 :goto_72b

    :catch_5b0
    move-exception v0

    move-object/from16 v51, v3

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-wide/from16 v57, v41

    move-object/from16 v50, v43

    move-object/from16 v49, v45

    move-object/from16 v52, v46

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v52

    goto/16 :goto_72b

    :catch_5c7
    move-exception v0

    move-object/from16 v48, v2

    move-object/from16 v51, v3

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-wide/from16 v57, v41

    move-object/from16 v50, v43

    move-object/from16 v49, v45

    move-object/from16 v52, v46

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v52

    goto/16 :goto_72b

    :catch_5e0
    move-exception v0

    move-object/from16 v48, v2

    move-object/from16 v51, v3

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-object/from16 v15, v37

    move-wide/from16 v57, v41

    move-object/from16 v50, v43

    move-object/from16 v49, v45

    move-object/from16 v52, v46

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v52

    goto/16 :goto_72b

    :catch_5fb
    move-exception v0

    move-object/from16 v48, v2

    move-object/from16 v51, v3

    move-object/from16 v47, v4

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-object/from16 v15, v37

    move-wide/from16 v57, v41

    move-object/from16 v50, v43

    move-object/from16 v49, v45

    move-object/from16 v52, v46

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v52

    goto/16 :goto_72b

    :catch_618
    move-exception v0

    move-object/from16 v48, v2

    move-object/from16 v51, v3

    move-object/from16 v47, v4

    move-object/from16 v52, v9

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-object/from16 v15, v37

    move-wide/from16 v57, v41

    move-object/from16 v50, v43

    move-object/from16 v49, v45

    move/from16 v9, p2

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v52

    goto/16 :goto_72b

    :catch_637
    move-exception v0

    move-object/from16 v48, v2

    move-object/from16 v51, v3

    move-object/from16 v47, v4

    move-object/from16 v52, v9

    move-object/from16 v49, v15

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-object/from16 v15, v37

    move-wide/from16 v57, v41

    move-object/from16 v50, v43

    move/from16 v9, p2

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v52

    goto/16 :goto_72b

    :catch_656
    move-exception v0

    move-object/from16 v48, v2

    move-object/from16 v51, v3

    move-object/from16 v47, v4

    move-object v4, v9

    move-object/from16 v49, v15

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-object/from16 v15, v37

    move-wide/from16 v57, v41

    move-object/from16 v50, v43

    move/from16 v9, p2

    move-object/from16 v19, v4

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    goto/16 :goto_72b

    :catch_674
    move-exception v0

    move-object/from16 v48, v2

    move-object/from16 v51, v3

    move-object/from16 v47, v4

    move-object/from16 v50, v9

    move-object/from16 v49, v15

    move-object/from16 v4, v19

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-object/from16 v15, v37

    move-wide/from16 v57, v41

    move/from16 v9, p2

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    goto/16 :goto_72b

    :catch_691
    move-exception v0

    move-object/from16 v48, v2

    move-object/from16 v51, v3

    move-object/from16 v47, v4

    move-object/from16 v50, v9

    move-object/from16 v49, v15

    move-object/from16 v11, v18

    move-object/from16 v4, v19

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-object/from16 v15, v37

    move-wide/from16 v57, v41

    move/from16 v9, p2

    move-object/from16 v17, v10

    goto/16 :goto_72b

    :catch_6ae
    move-exception v0

    move-object/from16 v51, v3

    move-object/from16 v47, v4

    move-object/from16 v50, v9

    move-wide/from16 v57, v10

    move-object/from16 v49, v15

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v4, v19

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-object/from16 v15, v37

    move/from16 v9, p2

    move-object/from16 v48, v2

    goto/16 :goto_72b

    :catch_6cb
    move-exception v0

    move-object/from16 v40, v2

    move-object/from16 v51, v3

    move-object/from16 v47, v4

    move-object/from16 v50, v9

    move-wide/from16 v57, v10

    move-object/from16 v49, v15

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v4, v19

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-object/from16 v15, v37

    move-object/from16 v2, v39

    move/from16 v9, p2

    move-object/from16 v48, v2

    goto :goto_72b

    :catch_6eb
    move-exception v0

    move-object/from16 v51, v3

    move-object/from16 v47, v4

    move-object/from16 v50, v9

    move-wide/from16 v57, v10

    move-object/from16 v49, v15

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v4, v19

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-object/from16 v15, v37

    move/from16 v9, p2

    move-object v3, v2

    move-object/from16 v2, v39

    move-object/from16 v48, v2

    move-object/from16 v40, v3

    goto :goto_72b

    :catch_70c
    move-exception v0

    move-object/from16 v51, v3

    move-object/from16 v47, v4

    move-wide/from16 v57, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v4, v19

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-object/from16 v15, v37

    move-object/from16 v2, v39

    move/from16 v9, p2

    move-object/from16 v48, v2

    move-object/from16 v50, v31

    move-object/from16 v49, v32

    move-object/from16 v40, v33

    :goto_72b
    :try_start_72b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_72e
    .catchall {:try_start_72b .. :try_end_72e} :catchall_77a

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v52, v19

    goto :goto_755

    :cond_735
    move-object/from16 v51, v3

    move-object/from16 v47, v4

    move-wide/from16 v57, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v4, v19

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-object/from16 v15, v37

    move-object/from16 v2, v39

    move/from16 v9, p2

    move-object/from16 v48, v2

    move-object/from16 v52, v4

    move-object/from16 v50, v31

    move-object/from16 v49, v32

    move-object/from16 v40, v33

    :goto_755
    monitor-exit p0

    return-wide v26

    :cond_757
    move-object/from16 v47, v4

    move-wide/from16 v26, v5

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-wide/from16 v57, v10

    move/from16 v7, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v4, v19

    move/from16 v8, v20

    move-object/from16 v5, v22

    move v9, v2

    move-object v2, v15

    :goto_771
    :try_start_771
    const-string v0, "ApnSettingsPolicyService"

    const-string v3, "Invalid value"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_778
    .catchall {:try_start_771 .. :try_end_778} :catchall_77a

    monitor-exit p0

    return-wide v23

    :catchall_77a
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

.method public getApnList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/apn/ApnSettings;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

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

    filled-new-array/range {v4 .. v20}, [Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getApnListConditionStr()Ljava/lang/String;

    move-result-object v24

    :try_start_3f
    iget-object v0, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    sget-object v22, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v21 .. v26}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    if-eqz v2, :cond_12f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_12f

    :cond_5e
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

    if-nez v7, :cond_d3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPort(I)V

    :cond_d3
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

    if-nez v8, :cond_104

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setAuthType(I)V

    :cond_104
    const-string/jumbo v8, "type"

    invoke-direct {v1, v8, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setType(Ljava/lang/String;)V

    iget v8, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I

    const/16 v9, 0x11

    if-lt v8, v9, :cond_126

    const-string/jumbo v8, "protocol"

    invoke-direct {v1, v8, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    const-string/jumbo v8, "roaming_protocol"

    invoke-direct {v1, v8, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    :cond_126
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_12d} :catch_137
    .catchall {:try_start_3f .. :try_end_12d} :catchall_135

    if-nez v0, :cond_5e

    :cond_12f
    if-eqz v2, :cond_13e

    :goto_131
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_13e

    :catchall_135
    move-exception v0

    goto :goto_13f

    :catch_137
    move-exception v0

    :try_start_138
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13b
    .catchall {:try_start_138 .. :try_end_13b} :catchall_135

    if-eqz v2, :cond_13e

    goto :goto_131

    :cond_13e
    :goto_13e
    return-object v3

    :goto_13f
    if-eqz v2, :cond_144

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_144
    throw v0
.end method

.method public getApnSettings(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/net/apn/ApnSettings;
    .registers 14

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

    if-eqz v0, :cond_100

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_100

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
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_f9} :catch_108
    .catchall {:try_start_14 .. :try_end_f9} :catchall_106

    :cond_f9
    nop

    if-eqz v0, :cond_ff

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_ff
    return-object v1

    :cond_100
    if-eqz v0, :cond_10f

    :goto_102
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_10f

    :catchall_106
    move-exception v1

    goto :goto_110

    :catch_108
    move-exception v1

    :try_start_109
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10c
    .catchall {:try_start_109 .. :try_end_10c} :catchall_106

    if-eqz v0, :cond_10f

    goto :goto_102

    :cond_10f
    :goto_10f
    return-object v2

    :goto_110
    if-eqz v0, :cond_115

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_115
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
