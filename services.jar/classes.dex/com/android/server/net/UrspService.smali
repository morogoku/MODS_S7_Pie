.class public Lcom/android/server/net/UrspService;
.super Landroid/net/IUrspManager$Stub;
.source "UrspService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/UrspService$UrspHandler;
    }
.end annotation


# static fields
.field public static final ATTR_MDO_STATE:Ljava/lang/String; = "mdo-state"

.field public static final ATTR_POLICY:Ljava/lang/String; = "policy"

.field public static final ATTR_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final BIGDATA_MOBILE_DATA:Ljava/lang/String; = "com.samsung.intent.action.BIG_DATA_MOBILE_DATA"

.field public static final DBG:Z = true

.field private static final MAX_URSP_LOG_HISTORY:I = 0xc8

.field public static final MSG_FACTORY_RESET_DONE:I = 0x2715

.field private static final MSG_INIT_URSP_SERVICE:I = 0x2711

.field private static final MSG_REQUEST_MDO_CONNECTION:I = 0x2712

.field public static final MSG_SET_URSP_RULES_DONE:I = 0x2714

.field public static final MSG_SET_URSP_RULE_DONE:I = 0x2713

.field private static final TAG:Ljava/lang/String; = "UrspService"

.field public static final TAG_FOC_POLICY:Ljava/lang/String; = "foc-policy"

.field public static final TAG_FOC_UID_POLICY:Ljava/lang/String; = "foc-uid-policy"

.field public static final TAG_MDO_BLACKLIST_POLICY:Ljava/lang/String; = "mdo-blacklist-policy"

.field public static final TAG_MDO_POLICY:Ljava/lang/String; = "mdo-policy"

.field public static final TAG_MDO_UID_POLICY:Ljava/lang/String; = "mdo-uid-policy"

.field private static final TAG_POLICY_LIST:Ljava/lang/String; = "policy-list"

.field private static final TAG_VERSION:Ljava/lang/String; = "version"

.field public static final URSP_BIG_DATA_MDO_APP_ADD:I = 0x1

.field public static final URSP_BIG_DATA_MDO_APP_ADD_BLACKLIST:I = 0x3

.field public static final URSP_BIG_DATA_MDO_APP_CLEAR_BLACKLIST:I = 0x5

.field public static final URSP_BIG_DATA_MDO_APP_NETWORK_FACTORY_RESET:I = 0x6

.field public static final URSP_BIG_DATA_MDO_APP_REMOVE:I = 0x2

.field public static final URSP_BIG_DATA_MDO_APP_REMOVE_BLACKLIST:I = 0x4

.field public static final URSP_BIG_DATA_NO_APP:I = -0x1

.field public static final VDBG:Z = true

.field private static final VERSION_INIT:I = 0x1

.field private static final VERSION_LATEST:I = 0x1


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCores:[Lcom/android/server/net/UrspCore;

.field private mHandler:Landroid/os/Handler;

.field private mNetStats:Lcom/android/server/net/UrspNetworkStatsService;

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field private final mNetworkStats:Landroid/net/INetworkStatsService;

.field private mOperatorSvc:Lcom/android/server/net/UrspOperatorService;

.field private final mPoliciesSecondLock:Ljava/lang/Object;

.field private mPolicyFile:Landroid/util/AtomicFile;

.field private final mPolicyLocked:Ljava/lang/Object;

.field private mUrspConn:Lcom/android/server/net/UrspConnectivityController;

.field private mUrspNms:Lcom/android/server/net/UrspNetworkManagementService;

.field private final mUrspmObservedHistory:Landroid/util/LocalLog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    .registers 7

    invoke-direct {p0}, Landroid/net/IUrspManager$Stub;-><init>()V

    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/net/UrspService;->mUrspmObservedHistory:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/UrspService;->mPolicyLocked:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/UrspService;->mPoliciesSecondLock:Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/net/UrspCore;

    iput-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    const-string/jumbo v0, "missing context"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "missing activityManager"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    iput-object v0, p0, Lcom/android/server/net/UrspService;->mActivityManager:Landroid/app/IActivityManager;

    const-string/jumbo v0, "missing networkManagement"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/INetworkManagementService;

    iput-object v0, p0, Lcom/android/server/net/UrspService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const-string/jumbo v0, "missing networkStats"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/INetworkStatsService;

    iput-object v0, p0, Lcom/android/server/net/UrspService;->mNetworkStats:Landroid/net/INetworkStatsService;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/UrspService;)[Lcom/android/server/net/UrspCore;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    return-object v0
.end method

.method private checkPermission()Z
    .registers 8

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x2710

    if-le v1, v3, :cond_44

    :try_start_e
    iget-object v3, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.WRITE_APN_SETTINGS"

    invoke-virtual {v3, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1f

    const/4 v3, 0x1

    goto :goto_20

    :cond_1f
    move v3, v4

    :goto_20
    move v2, v3

    :cond_21
    invoke-virtual {p0, v1}, Lcom/android/server/net/UrspService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v6
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_33} :catch_39

    if-nez v6, :cond_38

    if-nez v2, :cond_38

    const/4 v0, 0x0

    :cond_38
    goto :goto_44

    :catch_39
    move-exception v3

    const-string v4, "UrspService"

    const-string v5, "checkPermission has exception."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_44
    :goto_44
    if-nez v0, :cond_62

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPermission() uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    :cond_62
    return v0
.end method

.method private static getSystemDir()Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private isAvailableUrspRuleCall(I)Z
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(IZ)Z

    move-result v0

    return v0
.end method

.method private isAvailableUrspRuleCall(IZ)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-lt p1, v1, :cond_5

    return v0

    :cond_5
    if-gez p1, :cond_8

    return v0

    :cond_8
    iget-object v1, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v1, v1, p1

    if-nez v1, :cond_f

    return v0

    :cond_f
    if-eqz p2, :cond_35

    invoke-direct {p0}, Lcom/android/server/net/UrspService;->checkPermission()Z

    move-result v1

    if-nez v1, :cond_35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UID("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") does not have permission."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    return v0

    :cond_35
    const/4 v0, 0x1

    return v0
.end method

.method protected static log(Ljava/lang/String;)V
    .registers 2

    const-string v0, "UrspService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static logn(Ljava/lang/String;)V
    .registers 2

    const-string v0, "UrspService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private readPolicy()V
    .registers 14

    const-string/jumbo v0, "readPolicy"

    invoke-static {v0}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/server/net/UrspService;->mPolicyLocked:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_d
    iget-object v5, p0, Lcom/android/server/net/UrspService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5

    move-object v2, v5

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_21} :catch_168
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_21} :catch_14c
    .catchall {:try_start_d .. :try_end_21} :catchall_148

    move v6, v0

    move v0, v3

    :goto_23
    :try_start_23
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v8, v7

    if-eq v7, v3, :cond_164

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_141

    const-string/jumbo v9, "policy-list"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_59

    const-string/jumbo v9, "version"

    invoke-static {v5, v9}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v9

    move v0, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "readPolicy, version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/net/UrspService;->logn(Ljava/lang/String;)V

    goto/16 :goto_142

    :cond_59
    const-string/jumbo v9, "mdo-policy"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_86

    const-string/jumbo v9, "mdo-state"

    invoke-static {v5, v9}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "readPolicy, mdoState: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/net/UrspService;->logn(Ljava/lang/String;)V

    if-eqz v9, :cond_82

    move v10, v3

    goto :goto_83

    :cond_82
    move v10, v4

    :goto_83
    move v6, v10

    goto/16 :goto_142

    :cond_86
    const-string/jumbo v9, "mdo-uid-policy"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c5

    const-string/jumbo v9, "uid"

    invoke-static {v5, v9}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v10, "policy"

    invoke-static {v5, v10}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a6

    iget-object v11, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v11, v11, v4

    invoke-virtual {v11, v10, v9, v4}, Lcom/android/server/net/UrspCore;->setUrspRule(ZIZ)V

    :cond_a6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "readPolicy, mMdoUidRule - uid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", Policy: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/net/UrspService;->logn(Ljava/lang/String;)V

    goto/16 :goto_142

    :cond_c5
    const-string/jumbo v9, "mdo-blacklist-policy"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_103

    const-string/jumbo v9, "uid"

    invoke-static {v5, v9}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v10, "policy"

    invoke-static {v5, v10}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e5

    iget-object v11, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v11, v11, v4

    invoke-virtual {v11, v10, v9, v4}, Lcom/android/server/net/UrspCore;->setUrspBlackListUidRule(ZIZ)V

    :cond_e5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "readPolicy, mMdoBlackListUidRule - uid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", Policy: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/net/UrspService;->logn(Ljava/lang/String;)V

    goto :goto_142

    :cond_103
    const-string/jumbo v9, "foc-uid-policy"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_142

    const-string/jumbo v9, "uid"

    invoke-static {v5, v9}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v10, "policy"

    invoke-static {v5, v10}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_123

    iget-object v11, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v11, v11, v3

    invoke-virtual {v11, v10, v9}, Lcom/android/server/net/UrspCore;->setUrspRule(ZI)V

    :cond_123
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "readPolicy, mFocUidRule - uid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", Policy: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/net/UrspService;->logn(Ljava/lang/String;)V
    :try_end_140
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_140} :catch_146
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_140} :catch_144
    .catchall {:try_start_23 .. :try_end_140} :catchall_18e

    goto :goto_142

    :cond_141
    nop

    :cond_142
    :goto_142
    goto/16 :goto_23

    :catch_144
    move-exception v0

    goto :goto_14f

    :catch_146
    move-exception v0

    goto :goto_16b

    :catchall_148
    move-exception v3

    move v6, v0

    move-object v0, v3

    goto :goto_18f

    :catch_14c
    move-exception v5

    move v6, v0

    move-object v0, v5

    :goto_14f
    :try_start_14f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fail to read policy file: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V
    :try_end_164
    .catchall {:try_start_14f .. :try_end_164} :catchall_18e

    :cond_164
    :goto_164
    :try_start_164
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_167
    .catchall {:try_start_164 .. :try_end_167} :catchall_193

    goto :goto_180

    :catch_168
    move-exception v5

    move v6, v0

    move-object v0, v5

    :goto_16b
    :try_start_16b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO fail to read policy file: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V
    :try_end_17f
    .catchall {:try_start_16b .. :try_end_17f} :catchall_18e

    goto :goto_164

    :goto_180
    nop

    :try_start_181
    monitor-exit v1
    :try_end_182
    .catchall {:try_start_181 .. :try_end_182} :catchall_193

    const/4 v0, -0x1

    if-eq v6, v0, :cond_18d

    if-ne v6, v3, :cond_188

    goto :goto_189

    :cond_188
    move v3, v4

    :goto_189
    move v0, v3

    invoke-virtual {p0, v4, v0}, Lcom/android/server/net/UrspService;->setUrspMode(IZ)V

    :cond_18d
    return-void

    :catchall_18e
    move-exception v0

    :goto_18f
    :try_start_18f
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :catchall_193
    move-exception v0

    monitor-exit v1
    :try_end_195
    .catchall {:try_start_18f .. :try_end_195} :catchall_193

    throw v0
.end method


# virtual methods
.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .registers 4

    const-string v0, "bindConnectivityManager Called"

    invoke-static {v0}, Lcom/android/server/net/UrspService;->logn(Ljava/lang/String;)V

    const-string/jumbo v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/UrspService;->mConnManager:Landroid/net/IConnectivityManager;

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mUrspConn:Lcom/android/server/net/UrspConnectivityController;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mUrspConn:Lcom/android/server/net/UrspConnectivityController;

    iget-object v1, p0, Lcom/android/server/net/UrspService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-virtual {v0, v1}, Lcom/android/server/net/UrspConnectivityController;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    :cond_1b
    return-void
.end method

.method public clearUrspBlackListUidRule(I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/net/UrspCore;->clearUrspBlackListUidRule()V

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    const-string v1, "UrspService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/net/UrspService;->mPolicyLocked:Ljava/lang/Object;

    monitor-enter v1

    :try_start_15
    iget-object v2, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v3, :cond_23

    aget-object v5, v2, v4

    invoke-virtual {v5, v0}, Lcom/android/server/net/UrspCore;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_23
    const-string v2, "Ursp Logs (most recent first):"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/net/UrspService;->mUrspmObservedHistory:Landroid/util/LocalLog;

    invoke-virtual {v2, p1, v0, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    monitor-exit v1

    return-void

    :catchall_35
    move-exception v2

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_15 .. :try_end_37} :catchall_35

    throw v2
.end method

.method public factoryReset()V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/net/UrspService;->checkPermission()Z

    move-result v0

    if-nez v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UID("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") does not have permission."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    return-void

    :cond_24
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/server/net/UrspCore;->factoryReset()V

    return-void
.end method

.method public getAllUrspBlackListUidsRule(I)[I
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(IZ)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/net/UrspCore;->getAllUrspBlackListUidsRule()[I

    move-result-object v0

    return-object v0
.end method

.method public getAllUrspRule(I)[I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/net/UrspCore;->getAllUrspRule()[I

    move-result-object v0

    return-object v0
.end method

.method public getConnectivityManager()Landroid/net/IConnectivityManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mConnManager:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getIntervalUsageForUrsp(ILjava/lang/String;IJJ)J
    .registers 20

    move-object v0, p0

    invoke-direct {v0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(I)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_a

    return-wide v2

    :cond_a
    iget-object v1, v0, Lcom/android/server/net/UrspService;->mNetStats:Lcom/android/server/net/UrspNetworkStatsService;

    if-eqz v1, :cond_1c

    iget-object v4, v0, Lcom/android/server/net/UrspService;->mNetStats:Lcom/android/server/net/UrspNetworkStatsService;

    move v5, p1

    move-object v6, p2

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/net/UrspNetworkStatsService;->getIntervalUsageForUrsp(ILjava/lang/String;IJJ)J

    move-result-wide v1

    return-wide v1

    :cond_1c
    return-wide v2
.end method

.method public getPackageNameForUid(I)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    iget-object v1, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_32

    :try_start_6
    iget-object v1, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    const/4 v2, 0x0

    aget-object v2, v1, v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_15} :catch_17

    move-object v0, v2

    :cond_16
    goto :goto_32

    :catch_17
    move-exception v1

    const-string v2, "UrspService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at getPackageName API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    :goto_32
    return-object v0
.end method

.method public getPoliciesSecondLocked()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mPoliciesSecondLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getPolicyLocked()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mPolicyLocked:Ljava/lang/Object;

    return-object v0
.end method

.method public getServerInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(I)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, " "

    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mOperatorSvc:Lcom/android/server/net/UrspOperatorService;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mOperatorSvc:Lcom/android/server/net/UrspOperatorService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/net/UrspOperatorService;->getServerInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrspConnectivityController()Lcom/android/server/net/UrspConnectivityController;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mUrspConn:Lcom/android/server/net/UrspConnectivityController;

    return-object v0
.end method

.method public getUrspMode(I)Z
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(IZ)Z

    move-result v1

    if-nez v1, :cond_8

    return v0

    :cond_8
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/net/UrspCore;->getUrspMode()Z

    move-result v0

    return v0
.end method

.method public getUrspNetId(I)I
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(IZ)Z

    move-result v1

    if-nez v1, :cond_8

    return v0

    :cond_8
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/net/UrspCore;->getUrspNetId()I

    move-result v0

    return v0
.end method

.method public getUrspNetworkManagementService()Lcom/android/server/net/UrspNetworkManagementService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mUrspNms:Lcom/android/server/net/UrspNetworkManagementService;

    return-object v0
.end method

.method public getUrspmObservedHistory()Landroid/util/LocalLog;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mUrspmObservedHistory:Landroid/util/LocalLog;

    return-object v0
.end method

.method public isUrspRuleEnabled(II)Z
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(IZ)Z

    move-result v1

    if-nez v1, :cond_8

    return v0

    :cond_8
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/server/net/UrspCore;->isUrspRuleEnabled(I)Z

    move-result v0

    return v0
.end method

.method public registerUrspAppListener(ILandroid/net/IUrspAppListener;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(IZ)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/server/net/UrspCore;->registerUrspAppListner(Landroid/net/IUrspAppListener;)V

    return-void
.end method

.method public registerUrspConnListener(Landroid/net/IUrspConnectionListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mUrspConn:Lcom/android/server/net/UrspConnectivityController;

    invoke-virtual {v0, p1}, Lcom/android/server/net/UrspConnectivityController;->registerUrspConnListener(Landroid/net/IUrspConnectionListener;)V

    return-void
.end method

.method public requestPduSession(IZLandroid/os/Messenger;Landroid/os/IBinder;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/net/UrspCore;->requestPduSession(IZLandroid/os/Messenger;Landroid/os/IBinder;)V

    return-void
.end method

.method public sendBigData(II)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.intent.action.BIG_DATA_MOBILE_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "category"

    const-string v2, "URSP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sending MdcService. state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    return-void
.end method

.method public setUrspBlackListUidRule(IZI)V
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(IZ)Z

    move-result v1

    if-nez v1, :cond_8

    return-void

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUrspBlackListUidRule, UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", blacklisted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/net/UrspService;->mUrspmObservedHistory:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUrspBlackListUidRule: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", UID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez p2, :cond_46

    const-string v3, " - disable"

    goto :goto_48

    :cond_46
    const-string v3, " - enable"

    :goto_48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0, p3}, Lcom/android/server/net/UrspCore;->setUrspRule(ZI)V

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/server/net/UrspCore;->setUrspBlackListUidRule(ZI)V

    return-void
.end method

.method public setUrspDnn(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/data/ApnSetting;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0, p1, p2}, Lcom/android/server/net/UrspCore;->setUrspDnn(ILjava/util/List;)V

    return-void
.end method

.method public setUrspMode(IZ)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspMode - type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mUrspmObservedHistory:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUrspMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_47

    const-string/jumbo v2, "disable"

    goto :goto_4a

    :cond_47
    const-string/jumbo v2, "enable"

    :goto_4a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/server/net/UrspCore;->setUrspMode(Z)V

    return-void
.end method

.method public setUrspNetId(II)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspNetId, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", netId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mUrspmObservedHistory:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUrspNetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", NetId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/server/net/UrspCore;->setUrspNetId(I)V

    return-void
.end method

.method public setUrspRule(IZI)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspRule, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mUrspmObservedHistory:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUrspRule: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", UID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez p2, :cond_51

    const-string v2, " - disable"

    goto :goto_53

    :cond_51
    const-string v2, " - enable"

    :goto_53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/server/net/UrspCore;->setUrspRule(ZI)V

    return-void
.end method

.method public setUrspRules(I[I)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/net/UrspService;->getUrspMode(I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUrspRules, type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", uids - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/net/UrspService;->mUrspmObservedHistory:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUrspRules: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0, p2}, Lcom/android/server/net/UrspCore;->setUrspRules(Z[I)V

    return-void
.end method

.method public systemReady()V
    .registers 8

    const-string/jumbo v0, "systemReady Called"

    invoke-static {v0}, Lcom/android/server/net/UrspService;->logn(Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UrspService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1e

    new-instance v2, Lcom/android/server/net/UrspService$UrspHandler;

    invoke-direct {v2, p0, v1}, Lcom/android/server/net/UrspService$UrspHandler;-><init>(Lcom/android/server/net/UrspService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/net/UrspService;->mHandler:Landroid/os/Handler;

    goto :goto_24

    :cond_1e
    const-string/jumbo v2, "handlerThread.getLooper() returned null"

    invoke-static {v2}, Lcom/android/server/net/UrspService;->logn(Ljava/lang/String;)V

    :goto_24
    iget-object v2, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    new-instance v3, Lcom/android/server/net/MdoCore;

    invoke-direct {v3, p0}, Lcom/android/server/net/MdoCore;-><init>(Lcom/android/server/net/UrspService;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v2, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    const/4 v3, 0x1

    new-instance v5, Lcom/android/server/net/FocCore;

    invoke-direct {v5, p0}, Lcom/android/server/net/FocCore;-><init>(Lcom/android/server/net/UrspService;)V

    aput-object v5, v2, v3

    new-instance v2, Lcom/android/server/net/UrspConnectivityController;

    iget-object v3, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/net/UrspConnectivityController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/net/UrspService;->mUrspConn:Lcom/android/server/net/UrspConnectivityController;

    new-instance v2, Lcom/android/server/net/UrspNetworkManagementService;

    iget-object v3, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/net/UrspService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-direct {v2, v3, v5}, Lcom/android/server/net/UrspNetworkManagementService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;)V

    iput-object v2, p0, Lcom/android/server/net/UrspService;->mUrspNms:Lcom/android/server/net/UrspNetworkManagementService;

    new-instance v2, Lcom/android/server/net/UrspOperatorService;

    iget-object v3, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/net/UrspOperatorService;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/net/UrspService;->mOperatorSvc:Lcom/android/server/net/UrspOperatorService;

    new-instance v2, Lcom/android/server/net/UrspNetworkStatsService;

    iget-object v3, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/net/UrspService;->mNetworkStats:Landroid/net/INetworkStatsService;

    invoke-direct {v2, v3, v5}, Lcom/android/server/net/UrspNetworkStatsService;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsService;)V

    iput-object v2, p0, Lcom/android/server/net/UrspService;->mNetStats:Lcom/android/server/net/UrspNetworkStatsService;

    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/android/server/net/UrspService;->getSystemDir()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v6, "ursppolicy.xml"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/net/UrspService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-direct {p0}, Lcom/android/server/net/UrspService;->readPolicy()V

    iget-object v2, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/android/server/net/UrspCore;->systemReady()V

    return-void
.end method

.method public unregisterUrspAppListener(ILandroid/net/IUrspAppListener;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(IZ)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/server/net/UrspCore;->unregisterUrspAppListner(Landroid/net/IUrspAppListener;)V

    return-void
.end method

.method public unregisterUrspConnListener(Landroid/net/IUrspConnectionListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mUrspConn:Lcom/android/server/net/UrspConnectivityController;

    invoke-virtual {v0, p1}, Lcom/android/server/net/UrspConnectivityController;->unregisterUrspConnListener(Landroid/net/IUrspConnectionListener;)V

    return-void
.end method

.method public writePolicy()V
    .registers 9

    const-string/jumbo v0, "writePolicy"

    invoke-static {v0}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/net/UrspService;->mPolicyLocked:Ljava/lang/Object;

    monitor-enter v1

    :try_start_a
    iget-object v2, p0, Lcom/android/server/net/UrspService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v0, v2

    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v4, "policy-list"

    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "version"

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    array-length v4, v3

    const/4 v6, 0x0

    :goto_38
    if-ge v6, v4, :cond_42

    aget-object v7, v3, v6

    invoke-virtual {v7, v0, v2}, Lcom/android/server/net/UrspCore;->writePolicy(Ljava/io/FileOutputStream;Lorg/xmlpull/v1/XmlSerializer;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    :cond_42
    const-string/jumbo v3, "policy-list"

    invoke-interface {v2, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    iget-object v3, p0, Lcom/android/server/net/UrspService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_50} :catch_53
    .catchall {:try_start_a .. :try_end_50} :catchall_51

    goto :goto_70

    :catchall_51
    move-exception v2

    goto :goto_72

    :catch_53
    move-exception v2

    if-eqz v0, :cond_5b

    :try_start_56
    iget-object v3, p0, Lcom/android/server/net/UrspService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_5b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fail to write policy file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    :goto_70
    monitor-exit v1

    return-void

    :goto_72
    monitor-exit v1
    :try_end_73
    .catchall {:try_start_56 .. :try_end_73} :catchall_51

    throw v2
.end method
