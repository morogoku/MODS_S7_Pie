.class public Lcom/android/server/enterprise/EnterpriseMigrationManager;
.super Ljava/lang/Object;
.source "EnterpriseMigrationManager.java"


# static fields
.field private static final BROWSER_PROXY_TABLE:Ljava/lang/String; = "BROWSER_PROXY"

.field private static final CONTAINER_MIGRATION_AGENT_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.containeragent"

.field private static final CONTAINER_SETTINGS_TABLE:Ljava/lang/String; = "ContainerSettings"

.field private static final DEFAULT_ALL_PACKAGES:Ljava/lang/String; = ".*"

.field private static final EMAIL_POLICY_TABLE:Ljava/lang/String; = "ADMIN_REF"

.field private static final KNOX_LAUNCHER_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.knoxlauncher"

.field public static final NEW_CONTAINER_ID:J = 0x0L

.field private static NEW_CONTAINER_USER_ID:J = 0x0L

.field private static OLD_CONTAINER_ID:J = 0x0L

.field public static final OLD_CONTAINER_USER_ID:J = 0x0L

.field private static final PREFIX_OF_CONTAINERIZED_APP:Ljava/lang/String; = "sec_container_1."

.field private static final TAG:Ljava/lang/String; = "EnterpriseMigrationManager"

.field private static final WHITE_LIST_INSTALL_APPS_TABLE:Ljava/lang/String; = "WhiteListInstallApps"

.field private static final deleteOldContainerIDRowTableNames:[Ljava/lang/String;

.field private static mInstance:Lcom/android/server/enterprise/EnterpriseMigrationManager;

.field private static migrationResult:Z

.field private static final updateAdminUIDTableNames:[Ljava/lang/String;

.field private static final updateDefaultValuesTableNames:[Ljava/lang/String;

.field private static final updatePackageNameTableNames:[Ljava/lang/String;


# instance fields
.field private mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

.field private mBrowserPolicyService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

.field private mContext:Landroid/content/Context;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mRCPService:Lcom/samsung/android/knox/container/IRCPPolicy;

.field private mRestrictionPolicyService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 19

    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    const-wide/16 v0, 0x64

    sput-wide v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->NEW_CONTAINER_USER_ID:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    const-string v1, "AccountBlackWhiteList"

    const-string v2, "ADMIN_REF"

    const-string v3, "APPLICATION_COMPONENT"

    const-string v4, "APPLICATION_GENERAL"

    const-string v5, "APPLICATION_MISC"

    const-string v6, "APPLICATION_PERMISSION"

    const-string v7, "APPLICATION_PERMISSIONCONTROL"

    const-string v8, "APPLICATION_SIGNATURE2"

    const-string v9, "BROWSER"

    const-string v10, "EmailSettingsTable"

    const-string v11, "ExchangeAccountTable"

    const-string v12, "SmartCardAccessTable"

    const-string v13, "SmartCardAccessWhitelistTable"

    const-string v14, "SmartCardBrowserCertAliasTable"

    const-string v15, "SmartCardBrowserTable"

    const-string v16, "SmartCardEmailTable"

    const-string v17, "WebFilterTable"

    const-string v18, "WebFilterSettingsTable"

    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateAdminUIDTableNames:[Ljava/lang/String;

    const-string v0, "APPLICATION"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updatePackageNameTableNames:[Ljava/lang/String;

    const-string v0, "PASSWORD"

    const-string v1, "RESTRICTION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateDefaultValuesTableNames:[Ljava/lang/String;

    const-string v0, "CONTAINER"

    const-string v1, "ADMIN"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mInstance:Lcom/android/server/enterprise/EnterpriseMigrationManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    const-string v0, "browser_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/browser/IBrowserPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/browser/IBrowserPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mBrowserPolicyService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mRestrictionPolicyService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    const-string/jumbo v0, "mum_container_rcp_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/container/IRCPPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mRCPService:Lcom/samsung/android/knox/container/IRCPPolicy;

    return-void
.end method

.method private deleteTableRow(Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 10

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    :try_start_5
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_11} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_13

    const/4 v1, 0x1

    return v1

    :catch_13
    move-exception v1

    const-string v2, "EnterpriseMigrationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not execute delete() for tablename : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    :catch_2b
    move-exception v1

    const-string v2, "EnterpriseMigrationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not execute delete() for tablename : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :goto_43
    const/4 v1, 0x0

    return v1
.end method

.method private enforceMigrationAgentSecurityCheck()V
    .registers 8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const-string v2, ""

    :try_start_a
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    invoke-virtual {v3, v1}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v4
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_1a

    move-object v2, v4

    goto :goto_31

    :catch_1a
    move-exception v3

    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to getPackageFromAppProcesses : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_31
    const-string v3, "EnterpriseMigrationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check permission for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e8

    if-ne v0, v4, :cond_60

    if-eqz v3, :cond_60

    const-string v4, "com.sec.knox.containeragent"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    return-void

    :cond_60
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No Container Migration Permission to calling Package : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private getAdminID()J
    .registers 8

    const-wide/16 v0, -0x1

    :try_start_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "containerID!=?"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "userID"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "ADMIN"

    const-string v6, "adminID"

    invoke-virtual {v3, v5, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_38

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_37
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_37} :catch_42
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_37} :catch_39

    move-wide v0, v4

    :cond_38
    :goto_38
    goto :goto_4b

    :catch_39
    move-exception v2

    const-string v3, "EnterpriseMigrationManager"

    const-string v4, "could not execute getLongList() in getAdminID()"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    :catch_42
    move-exception v2

    const-string v3, "EnterpriseMigrationManager"

    const-string v4, "could not execute getLongList() in getAdminID()"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    :goto_4b
    return-wide v0
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EnterpriseMigrationManager;
    .registers 3

    const-class v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mInstance:Lcom/android/server/enterprise/EnterpriseMigrationManager;

    if-nez v1, :cond_e

    new-instance v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mInstance:Lcom/android/server/enterprise/EnterpriseMigrationManager;

    :cond_e
    sget-object v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mInstance:Lcom/android/server/enterprise/EnterpriseMigrationManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getNewConatinerAdminUID()J
    .registers 7

    const-wide/16 v0, -0x1

    :try_start_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "containerID"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "userID"

    sget-wide v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->NEW_CONTAINER_USER_ID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ADMIN"

    const-string v5, "adminUid"

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3a

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_39
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_39} :catch_44
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_39} :catch_3b

    move-wide v0, v4

    :cond_3a
    :goto_3a
    goto :goto_4d

    :catch_3b
    move-exception v2

    const-string v3, "EnterpriseMigrationManager"

    const-string v4, "could not execute getLongList() in getNewConatinerAdminUID()"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d

    :catch_44
    move-exception v2

    const-string v3, "EnterpriseMigrationManager"

    const-string v4, "could not execute getLongList() in getNewConatinerAdminUID()"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    :goto_4d
    return-wide v0
.end method

.method private getOldConatinerAdminUID()J
    .registers 8

    const-wide/16 v0, -0x1

    :try_start_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "containerID!=?"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "userID"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "ADMIN"

    const-string v6, "adminUid"

    invoke-virtual {v3, v5, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_38

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_37
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_37} :catch_42
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_37} :catch_39

    move-wide v0, v4

    :cond_38
    :goto_38
    goto :goto_4b

    :catch_39
    move-exception v2

    const-string v3, "EnterpriseMigrationManager"

    const-string v4, "could not execute getLongList() in getOldConatinerAdminUID()"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    :catch_42
    move-exception v2

    const-string v3, "EnterpriseMigrationManager"

    const-string v4, "could not execute getLongList() in getOldConatinerAdminUID()"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    :goto_4b
    return-wide v0
.end method

.method private getOldContainerID()J
    .registers 8

    const-wide/16 v0, -0x1

    :try_start_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "containerID!=?"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "userID"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "ADMIN"

    const-string v6, "containerID"

    invoke-virtual {v3, v5, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_38

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_37
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_37} :catch_42
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_37} :catch_39

    move-wide v0, v4

    :cond_38
    :goto_38
    goto :goto_4b

    :catch_39
    move-exception v2

    const-string v3, "EnterpriseMigrationManager"

    const-string v4, "could not execute getLongList() in getOldContainerID()"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    :catch_42
    move-exception v2

    const-string v3, "EnterpriseMigrationManager"

    const-string v4, "could not execute getLongList() in getOldContainerID()"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    :goto_4b
    return-wide v0
.end method

.method private updateBrowserProxy(Ljava/lang/String;JJ)Z
    .registers 13

    const/4 v0, 0x1

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    long-to-int v3, p4

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    :try_start_d
    const-string v3, "adminUid"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "proxyServer"

    invoke-virtual {v3, p1, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mBrowserPolicyService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    invoke-interface {v4, v2, v3}, Lcom/samsung/android/knox/browser/IBrowserPolicy;->setHttpProxy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update BrowserProxy done with retrun : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3b} :catch_3c

    goto :goto_46

    :catch_3c
    move-exception v3

    const-string v4, "EnterpriseMigrationManager"

    const-string/jumbo v5, "update BrowserProxy could not be executed"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_46
    return v0
.end method

.method private updateContainerSettingsTable(Ljava/lang/String;JJ)Z
    .registers 13

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    long-to-int v3, p4

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    :try_start_c
    const-string v3, "adminUid"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "allowContactInfoToNonKnox"

    invoke-virtual {v3, p1, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, ""

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "Contacts"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mRCPService:Lcom/samsung/android/knox/container/IRCPPolicy;

    const-string/jumbo v6, "knox-export-data"

    invoke-interface {v5, v2, v4, v6, v3}, Lcom/samsung/android/knox/container/IRCPPolicy;->setAllowChangeDataSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;Z)Z

    move-result v5
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_35} :catch_37

    move v1, v5

    goto :goto_4f

    :catch_37
    move-exception v3

    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occured during updateContainerSettingsTable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_4f
    return v1
.end method

.method private updateDefaultContainerApplications(J)Z
    .registers 20

    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    move-wide/from16 v3, p1

    long-to-int v5, v3

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object v5, v0

    const/4 v6, 0x1

    move v7, v6

    :try_start_13
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/storage/ContainerStorageProvider;

    move-result-object v0

    sget-wide v8, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    long-to-int v8, v8

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->getPackageNames(I)Ljava/util/List;

    move-result-object v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_20} :catch_22

    move-object v2, v0

    goto :goto_2c

    :catch_22
    move-exception v0

    const-string v8, "EnterpriseMigrationManager"

    const-string/jumbo v9, "getPackageNames() for Application Table Update could not be executed"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_2c
    const/4 v8, 0x0

    if-eqz v2, :cond_117

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_37

    goto/16 :goto_117

    :cond_37
    const-string v0, "com.sec.android.app.knoxlauncher"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.sec.knox.app.container"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v8

    :goto_42
    move v9, v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_116

    const-string v0, "EnterpriseMigrationManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateDefaultContainerApplications : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v11, v0

    const-string v0, "adminUid"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v0, "packageName"

    invoke-virtual {v11, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_82
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "APPLICATION"

    const-string v13, "controlState"

    invoke-virtual {v0, v12, v13, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    move-object v12, v0

    if-eqz v12, :cond_dd

    const-string v0, "controlState"

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_dd

    const-string v0, "controlState"

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    move-object v13, v0

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_a2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_82 .. :try_end_a2} :catch_f7
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_a2} :catch_de

    and-int/2addr v0, v6

    if-ne v6, v0, :cond_dd

    :try_start_a5
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v0, v5, v10, v8}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationUninstallationDisabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V
    :try_end_aa
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a5 .. :try_end_aa} :catch_c4
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_aa} :catch_ab

    goto :goto_dc

    :catch_ab
    move-exception v0

    :try_start_ac
    const-string v14, "EnterpriseMigrationManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not execute putValues() for tablename : APPLICATION package name : "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    goto :goto_dd

    :catch_c4
    move-exception v0

    const-string v6, "EnterpriseMigrationManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "could not execute putValues() for tablename : APPLICATION package name : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_db
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ac .. :try_end_db} :catch_f7
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_db} :catch_de

    const/4 v7, 0x0

    :goto_dc
    nop

    :cond_dd
    :goto_dd
    goto :goto_111

    :catch_de
    move-exception v0

    const-string v6, "EnterpriseMigrationManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "could not execute getValue() for tablename : APPLICATION package name : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_110

    :catch_f7
    move-exception v0

    const-string v6, "EnterpriseMigrationManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "could not execute getValue() for tablename : APPLICATION package name : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    nop

    :goto_110
    move v7, v0

    :goto_111
    add-int/lit8 v0, v9, 0x1

    const/4 v6, 0x1

    goto/16 :goto_42

    :cond_116
    return v7

    :cond_117
    :goto_117
    const-string v0, "EnterpriseMigrationManager"

    const-string/jumbo v6, "getPackageNames() for Application Table Update returned empty list"

    invoke-static {v0, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v8
.end method

.method private updateEmailPolicyPkgName(Ljava/lang/String;J)Z
    .registers 11

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :try_start_f
    const-string v3, "adminUid"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "policyName"

    invoke-virtual {v3, p1, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "adminUid =? "

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "policyName"

    invoke-static {v3}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getNonContainerizedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, p1, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I
    :try_end_39
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_39} :catch_53
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_39} :catch_3b

    const/4 v4, 0x1

    return v4

    :catch_3b
    move-exception v3

    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not execute update() for tablename : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b

    :catch_53
    move-exception v3

    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not execute update() for tablename : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :goto_6b
    const/4 v3, 0x0

    return v3
.end method

.method private updatePkgNameInApplicationTable(Ljava/lang/String;Ljava/lang/String;JJJ)Z
    .registers 25

    move-object/from16 v1, p0

    const/4 v0, 0x1

    const/4 v2, 0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    move-wide/from16 v5, p7

    long-to-int v7, v5

    sget-wide v8, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    long-to-int v8, v8

    invoke-direct {v4, v7, v8}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    new-instance v7, Lcom/samsung/android/knox/ContextInfo;

    move-wide/from16 v8, p5

    long-to-int v10, v8

    const/4 v11, 0x0

    invoke-direct {v7, v10, v11}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    const/4 v10, 0x1

    :try_start_1e
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v0, v4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromClearDataBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    const-string v0, "EnterpriseMigrationManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getPackagesFromClearDataBlackList() for Application Policy Update returned : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_3c} :catch_3d

    goto :goto_47

    :catch_3d
    move-exception v0

    const-string v12, "EnterpriseMigrationManager"

    const-string/jumbo v13, "getPackagesFromClearDataBlackList() for Application Policy Update could not be executed"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    :goto_47
    move v0, v11

    :goto_48
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v0, v12, :cond_62

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, ".*"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5f

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    :cond_62
    :try_start_62
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v0, v7, v3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToClearDataBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0

    const-string v12, "EnterpriseMigrationManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "addPackagesToClearDataBlackList() for Application Policy Update returned : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_7e} :catch_7f

    goto :goto_88

    :catch_7f
    move-exception v0

    const-string v12, "EnterpriseMigrationManager"

    const-string v13, "addPackagesToClearDataBlackList() for Application Policy Update could not be executed"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    :goto_88
    const/4 v12, 0x1

    if-eqz v2, :cond_8f

    if-eqz v10, :cond_8f

    move v0, v12

    goto :goto_90

    :cond_8f
    move v0, v11

    :goto_90
    move v2, v0

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v10, 0x1

    :try_start_95
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v0, v4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromClearDataWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    const-string v0, "EnterpriseMigrationManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getPackagesFromClearDataWhiteList() for Application Policy Update returned : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_b3} :catch_b4

    goto :goto_be

    :catch_b4
    move-exception v0

    const-string v13, "EnterpriseMigrationManager"

    const-string/jumbo v14, "getPackagesFromClearDataWhiteList() for Application Policy Update could not be executed"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    :goto_be
    :try_start_be
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v0, v7, v3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToClearDataWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0

    const-string v13, "EnterpriseMigrationManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addPackagesToClearDataWhiteList() for Application Policy Update returned : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_da} :catch_db

    goto :goto_e4

    :catch_db
    move-exception v0

    const-string v13, "EnterpriseMigrationManager"

    const-string v14, "addPackagesToClearDataWhiteList() for Application Policy Update could not be executed"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    :goto_e4
    if-eqz v2, :cond_ea

    if-eqz v10, :cond_ea

    move v0, v12

    goto :goto_eb

    :cond_ea
    move v0, v11

    :goto_eb
    move v2, v0

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v10, 0x1

    :try_start_f0
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v0, v4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromClearCacheBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    const-string v0, "EnterpriseMigrationManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getPackagesFromClearCacheBlackList() for Application Policy Update returned : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_10e} :catch_10f

    goto :goto_119

    :catch_10f
    move-exception v0

    const-string v13, "EnterpriseMigrationManager"

    const-string/jumbo v14, "getPackagesFromClearCacheBlackList() for Application Policy Update could not be executed"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    :goto_119
    move v0, v11

    :goto_11a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v0, v13, :cond_134

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, ".*"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_131

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_131
    add-int/lit8 v0, v0, 0x1

    goto :goto_11a

    :cond_134
    :try_start_134
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v0, v7, v3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToClearCacheBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0

    const-string v13, "EnterpriseMigrationManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addPackagesToClearCacheBlackList() for Application Policy Update returned : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_150} :catch_151

    goto :goto_15a

    :catch_151
    move-exception v0

    const-string v13, "EnterpriseMigrationManager"

    const-string v14, "addPackagesToClearCacheBlackList() for Application Policy Update could not be executed"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    :goto_15a
    if-eqz v2, :cond_160

    if-eqz v10, :cond_160

    move v0, v12

    goto :goto_161

    :cond_160
    move v0, v11

    :goto_161
    move v2, v0

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v10, 0x1

    :try_start_166
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v0, v4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromClearCacheWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    const-string v0, "EnterpriseMigrationManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getPackagesFromClearCacheWhiteList() for Application Policy Update returned : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_184
    .catch Ljava/lang/Exception; {:try_start_166 .. :try_end_184} :catch_185

    goto :goto_18f

    :catch_185
    move-exception v0

    const-string v13, "EnterpriseMigrationManager"

    const-string/jumbo v14, "getPackagesFromClearCacheWhiteList() for Application Policy Update could not be executed"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    :goto_18f
    :try_start_18f
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v0, v7, v3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToClearCacheWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0

    const-string v13, "EnterpriseMigrationManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addPackagesToClearCacheWhiteList() for Application Policy Update returned : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ab
    .catch Ljava/lang/Exception; {:try_start_18f .. :try_end_1ab} :catch_1ac

    goto :goto_1b5

    :catch_1ac
    move-exception v0

    const-string v13, "EnterpriseMigrationManager"

    const-string v14, "addPackagesToClearCacheWhiteList() for Application Policy Update could not be executed"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    :goto_1b5
    if-eqz v2, :cond_1bb

    if-eqz v10, :cond_1bb

    move v0, v12

    goto :goto_1bc

    :cond_1bb
    move v0, v11

    :goto_1bc
    invoke-interface {v3}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_1c5

    if-eqz v10, :cond_1c5

    move v11, v12

    nop

    :cond_1c5
    return v11
.end method

.method private updateTableAdminUid(Ljava/lang/String;JJ)Z
    .registers 12

    const-string v0, "ADMIN_REF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateEmailPolicyPkgName(Ljava/lang/String;J)Z

    :cond_b
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_15
    const-string v2, "adminUid =? "

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "adminUid"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I
    :try_end_2c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_2c} :catch_46
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2c} :catch_2e

    const/4 v2, 0x1

    return v2

    :catch_2e
    move-exception v2

    const-string v3, "EnterpriseMigrationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not execute update() for tablename : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    :catch_46
    move-exception v2

    const-string v3, "EnterpriseMigrationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not execute update() for tablename : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :goto_5e
    const/4 v2, 0x0

    return v2
.end method

.method private updateTableDefaultValues(Ljava/lang/String;JJ)Z
    .registers 14

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v2

    :try_start_8
    const-string v4, "adminUid"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v4
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_17} :catch_32
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_19

    move v1, v4

    goto :goto_4a

    :catch_19
    move-exception v4

    const-string v5, "EnterpriseMigrationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not execute getCount() for tablename : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_4b

    :catch_32
    move-exception v4

    const-string v5, "EnterpriseMigrationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not execute getCount() for tablename : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_4a
    nop

    :goto_4b
    if-gtz v1, :cond_4e

    return v3

    :cond_4e
    const-string v4, "adminUid"

    invoke-direct {p0, p1, v4, p4, p5}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteTableRow(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-direct/range {p0 .. p5}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateTableAdminUid(Ljava/lang/String;JJ)Z

    move-result v4

    if-eqz v4, :cond_5d

    goto :goto_5e

    :cond_5d
    const/4 v2, 0x0

    :goto_5e
    return v2
.end method

.method private updateWhitelistInstallApp(Ljava/lang/String;JJ)Z
    .registers 7

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blockAdminToReceivePolicy(Z)Z
    .registers 9

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->enforceMigrationAgentSecurityCheck()V

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    if-eqz p1, :cond_31

    :try_start_a
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "migrationState"

    const-string/jumbo v5, "nok"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_18

    move v0, v3

    goto :goto_30

    :catch_18
    move-exception v3

    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occured during set migration STATE_NOK : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_30
    goto :goto_57

    :cond_31
    :try_start_31
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "migrationState"

    const-string/jumbo v5, "ok"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3d} :catch_3f

    move v0, v3

    goto :goto_57

    :catch_3f
    move-exception v3

    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occured during set migration STATE_OK : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_57
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0
.end method

.method public getEnterpriseMigrationResult()Z
    .registers 2

    sget-boolean v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    return v0
.end method

.method public migrateApplicationDisablePolicy(I)Z
    .registers 23

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->enforceMigrationAgentSecurityCheck()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getOldContainerID()J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    move/from16 v4, p1

    int-to-long v5, v4

    sput-wide v5, Lcom/android/server/enterprise/EnterpriseMigrationManager;->NEW_CONTAINER_USER_ID:J

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getOldConatinerAdminUID()J

    move-result-wide v5

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getNewConatinerAdminUID()J

    move-result-wide v7

    const-string v9, "APPLICATION"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    long-to-int v11, v7

    const/4 v12, 0x0

    invoke-direct {v0, v11, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    move-object v11, v0

    :try_start_2a
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v13, "adminUid"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v0, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v13, v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v14, "packageName"

    invoke-virtual {v13, v9, v14, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v13
    :try_end_41
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2a .. :try_end_41} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_41} :catch_43

    move-object v10, v13

    goto :goto_56

    :catch_43
    move-exception v0

    const-string v13, "EnterpriseMigrationManager"

    const-string v14, "could not execute getStringList() in Disable Application Policy"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_57

    :catch_4d
    move-exception v0

    const-string v13, "EnterpriseMigrationManager"

    const-string v14, "could not execute getStringList() in Disable Application Policy"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_56
    nop

    :goto_57
    move v0, v12

    :goto_58
    move v13, v0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_18f

    const-string v0, "EnterpriseMigrationManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "check application disabled : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v15, v0

    const-string v0, "adminUid"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v15, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v0, "packageName"

    invoke-virtual {v15, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_97
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "controlState"

    invoke-virtual {v0, v9, v12, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    move-object v12, v0

    if-eqz v12, :cond_130

    const-string v0, "controlState"

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_130

    const-string v0, "controlState"

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_b0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_97 .. :try_end_b0} :catch_15f
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_b0} :catch_13a

    move-object/from16 v16, v0

    move/from16 v17, v2

    move-object/from16 v2, v16

    :try_start_b6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_ba
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b6 .. :try_end_ba} :catch_12a
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_ba} :catch_126

    move-object/from16 v18, v2

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-ne v2, v0, :cond_123

    :try_start_c0
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-static {v14}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getNonContainerizedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c6} :catch_fd
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c0 .. :try_end_c6} :catch_12a

    move/from16 v19, v3

    const/4 v3, 0x0

    :try_start_c9
    invoke-interface {v0, v11, v2, v3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_cd} :catch_f9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c9 .. :try_end_cd} :catch_f4

    move v2, v0

    :try_start_ce
    const-string v0, "EnterpriseMigrationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setApplicationState(false) for Application Policy Update package name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " returned : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_ed} :catch_f1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ce .. :try_end_ed} :catch_ee

    goto :goto_136

    :catch_ee
    move-exception v0

    goto/16 :goto_166

    :catch_f1
    move-exception v0

    move v3, v2

    goto :goto_100

    :catch_f4
    move-exception v0

    move/from16 v2, v19

    goto/16 :goto_166

    :catch_f9
    move-exception v0

    move/from16 v3, v19

    goto :goto_100

    :catch_fd
    move-exception v0

    move/from16 v19, v3

    :goto_100
    :try_start_100
    const-string v2, "EnterpriseMigrationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v0

    const-string/jumbo v0, "setApplicationState(false) for Application Policy Update could not be executed for package name : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_119
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_100 .. :try_end_119} :catch_120
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_119} :catch_11e

    const/4 v2, 0x0

    move/from16 v17, v2

    move v2, v3

    goto :goto_136

    :catch_11e
    move-exception v0

    goto :goto_13f

    :catch_120
    move-exception v0

    move v2, v3

    goto :goto_166

    :cond_123
    move/from16 v19, v3

    goto :goto_134

    :catch_126
    move-exception v0

    move/from16 v19, v3

    goto :goto_13f

    :catch_12a
    move-exception v0

    move/from16 v19, v3

    move/from16 v2, v19

    goto :goto_166

    :cond_130
    move/from16 v17, v2

    move/from16 v19, v3

    :goto_134
    move/from16 v2, v19

    :goto_136
    move v3, v2

    move/from16 v2, v17

    goto :goto_188

    :catch_13a
    move-exception v0

    move/from16 v17, v2

    move/from16 v19, v3

    :goto_13f
    const-string v2, "EnterpriseMigrationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "could not execute getValue() for tablename : "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " package name : "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_187

    :catch_15f
    move-exception v0

    move/from16 v17, v2

    move/from16 v19, v3

    move/from16 v2, v19

    :goto_166
    const-string v3, "EnterpriseMigrationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "could not execute getValue() for tablename : "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " package name : "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    nop

    move v3, v2

    :goto_187
    move v2, v0

    :goto_188
    add-int/lit8 v0, v13, 0x1

    move/from16 v4, p1

    const/4 v12, 0x0

    goto/16 :goto_58

    :cond_18f
    move/from16 v17, v2

    move/from16 v19, v3

    const/4 v0, 0x0

    :goto_194
    sget-object v2, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1d6

    sget-object v2, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, "containerID"

    sget-wide v12, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    invoke-direct {v1, v2, v3, v12, v13}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteTableRow(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v2

    const-string v3, "EnterpriseMigrationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "deleteTableRow() for TableName : "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    aget-object v12, v12, v0

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " returned : "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v17, :cond_1ce

    if-eqz v2, :cond_1ce

    const/4 v12, 0x1

    goto :goto_1cf

    :cond_1ce
    const/4 v12, 0x0

    :goto_1cf
    move/from16 v17, v12

    add-int/lit8 v0, v0, 0x1

    move/from16 v19, v2

    goto :goto_194

    :cond_1d6
    return v17
.end method

.method public migrateEnterpriseDB(IZ)J
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    move-object/from16 v10, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->enforceMigrationAgentSecurityCheck()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getOldContainerID()J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    move/from16 v11, p1

    int-to-long v3, v11

    sput-wide v3, Lcom/android/server/enterprise/EnterpriseMigrationManager;->NEW_CONTAINER_USER_ID:J

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getOldConatinerAdminUID()J

    move-result-wide v12

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getNewConatinerAdminUID()J

    move-result-wide v8

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getAdminID()J

    move-result-wide v5

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    long-to-int v3, v8

    const/4 v14, 0x0

    invoke-direct {v0, v3, v14}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    move-object v3, v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    move-wide/from16 v17, v15

    :try_start_2d
    iget-object v0, v10, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2f} :catch_493
    .catchall {:try_start_2d .. :try_end_2f} :catchall_485

    if-eqz v0, :cond_3fd

    const-wide/16 v15, 0x0

    cmp-long v0, v12, v15

    if-lez v0, :cond_3fd

    cmp-long v0, v8, v15

    if-lez v0, :cond_3fd

    cmp-long v0, v5, v15

    if-lez v0, :cond_3fd

    :try_start_3f
    sget-wide v19, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    cmp-long v0, v19, v15

    if-lez v0, :cond_3fd

    const/4 v15, 0x1

    sput-boolean v15, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_48} :catch_3ef
    .catchall {:try_start_3f .. :try_end_48} :catchall_3e1

    if-eqz p2, :cond_33e

    const/4 v0, 0x0

    move v4, v0

    move/from16 v16, v2

    :goto_4e
    :try_start_4e
    sget-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateDefaultValuesTableNames:[Ljava/lang/String;

    array-length v0, v0
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_331
    .catchall {:try_start_4e .. :try_end_51} :catchall_324

    if-ge v4, v0, :cond_c9

    :try_start_53
    sget-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateDefaultValuesTableNames:[Ljava/lang/String;

    aget-object v2, v0, v4
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_57} :catch_bc
    .catchall {:try_start_53 .. :try_end_57} :catchall_af

    move-object v1, v10

    move-object v14, v3

    move/from16 v19, v4

    move-wide v3, v12

    move-wide/from16 v21, v5

    move-wide v5, v8

    :try_start_5f
    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateTableDefaultValues(Ljava/lang/String;JJ)Z

    move-result v0
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_63} :catch_a5
    .catchall {:try_start_5f .. :try_end_63} :catchall_d7

    move v1, v0

    :try_start_64
    const-string v0, "EnterpriseMigrationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTableDefaultValues() for TableName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateDefaultValuesTableNames:[Ljava/lang/String;

    aget-object v3, v3, v19

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " returned : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_8f

    sget-boolean v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    if-eqz v0, :cond_8f

    move v0, v15

    goto :goto_90

    :cond_8f
    const/4 v0, 0x0

    :goto_90
    sput-boolean v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_92} :catch_a0
    .catchall {:try_start_64 .. :try_end_92} :catchall_9b

    add-int/lit8 v4, v19, 0x1

    move/from16 v16, v1

    move-object v3, v14

    move-wide/from16 v5, v21

    const/4 v14, 0x0

    goto :goto_4e

    :catchall_9b
    move-exception v0

    move/from16 v25, v1

    move-wide v1, v8

    goto :goto_db

    :catch_a0
    move-exception v0

    move/from16 v25, v1

    move-wide v1, v8

    goto :goto_a9

    :catch_a5
    move-exception v0

    move-wide v1, v8

    move/from16 v25, v16

    :goto_a9
    move-wide/from16 v5, v17

    :goto_ab
    move-wide/from16 v27, v21

    goto/16 :goto_4a0

    :catchall_af
    move-exception v0

    move-object v14, v3

    move/from16 v19, v4

    move-wide/from16 v27, v5

    move-wide v1, v8

    move/from16 v25, v16

    move-wide/from16 v5, v17

    goto/16 :goto_4ef

    :catch_bc
    move-exception v0

    move-object v14, v3

    move/from16 v19, v4

    move-wide/from16 v27, v5

    move-wide v1, v8

    move/from16 v25, v16

    move-wide/from16 v5, v17

    goto/16 :goto_4a0

    :cond_c9
    move-object v14, v3

    move/from16 v19, v4

    move-wide/from16 v21, v5

    if-eqz v16, :cond_ff

    :try_start_d0
    iget-object v0, v10, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mRestrictionPolicyService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    const/4 v1, 0x0

    invoke-interface {v0, v14, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setScreenCapture(Lcom/samsung/android/knox/ContextInfo;Z)Z
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d6} :catch_e1
    .catchall {:try_start_d0 .. :try_end_d6} :catchall_d7

    :goto_d6
    goto :goto_fc

    :catchall_d7
    move-exception v0

    move-wide v1, v8

    move/from16 v25, v16

    :goto_db
    move-wide/from16 v5, v17

    :goto_dd
    move-wide/from16 v27, v21

    goto/16 :goto_4ef

    :catch_e1
    move-exception v0

    :try_start_e2
    const-string v1, "EnterpriseMigrationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Some unknown exception occured in Restriction Policy setScreenCapture() call!!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_fb} :catch_a5
    .catchall {:try_start_e2 .. :try_end_fb} :catchall_d7

    goto :goto_d6

    :goto_fc
    move/from16 v20, v7

    goto :goto_102

    :cond_ff
    const/4 v0, 0x0

    move/from16 v20, v0

    :goto_102
    const/4 v0, 0x0

    move v7, v0

    :goto_104
    :try_start_104
    sget-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateAdminUIDTableNames:[Ljava/lang/String;

    array-length v0, v0
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_107} :catch_316
    .catchall {:try_start_104 .. :try_end_107} :catchall_308

    if-ge v7, v0, :cond_16e

    :try_start_109
    sget-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateAdminUIDTableNames:[Ljava/lang/String;

    aget-object v2, v0, v7

    move-object v1, v10

    move-wide v3, v12

    move-wide v5, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateTableAdminUid(Ljava/lang/String;JJ)Z

    move-result v0
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_114} :catch_162
    .catchall {:try_start_109 .. :try_end_114} :catchall_156

    move v1, v0

    :try_start_115
    const-string v0, "EnterpriseMigrationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTableAdminUid() for TableName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateAdminUIDTableNames:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " returned : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_140

    sget-boolean v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    if-eqz v0, :cond_140

    move v0, v15

    goto :goto_141

    :cond_140
    const/4 v0, 0x0

    :goto_141
    sput-boolean v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_143} :catch_14f
    .catchall {:try_start_115 .. :try_end_143} :catchall_148

    add-int/lit8 v7, v7, 0x1

    move/from16 v16, v1

    goto :goto_104

    :catchall_148
    move-exception v0

    move/from16 v25, v1

    move/from16 v19, v7

    move-wide v1, v8

    goto :goto_15c

    :catch_14f
    move-exception v0

    move/from16 v25, v1

    move/from16 v19, v7

    move-wide v1, v8

    goto :goto_168

    :catchall_156
    move-exception v0

    move/from16 v19, v7

    move-wide v1, v8

    move/from16 v25, v16

    :goto_15c
    move-wide/from16 v5, v17

    move/from16 v7, v20

    goto/16 :goto_dd

    :catch_162
    move-exception v0

    move/from16 v19, v7

    move-wide v1, v8

    move/from16 v25, v16

    :goto_168
    move-wide/from16 v5, v17

    move/from16 v7, v20

    goto/16 :goto_ab

    :cond_16e
    const/4 v0, 0x0

    move v6, v0

    :goto_170
    :try_start_170
    sget-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updatePackageNameTableNames:[Ljava/lang/String;

    array-length v0, v0
    :try_end_173
    .catch Ljava/lang/Exception; {:try_start_170 .. :try_end_173} :catch_2fa
    .catchall {:try_start_170 .. :try_end_173} :catchall_2ec

    if-ge v6, v0, :cond_1ee

    :try_start_175
    sget-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updatePackageNameTableNames:[Ljava/lang/String;

    aget-object v2, v0, v6

    const-string/jumbo v3, "packageName"
    :try_end_17c
    .catch Ljava/lang/Exception; {:try_start_175 .. :try_end_17c} :catch_1e0
    .catchall {:try_start_175 .. :try_end_17c} :catchall_1d2

    move-object v1, v10

    move-wide v4, v12

    move/from16 v19, v6

    move-wide v6, v8

    move-wide/from16 v23, v8

    move-wide/from16 v8, v21

    :try_start_185
    invoke-direct/range {v1 .. v9}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updatePkgNameInApplicationTable(Ljava/lang/String;Ljava/lang/String;JJJ)Z

    move-result v0
    :try_end_189
    .catch Ljava/lang/Exception; {:try_start_185 .. :try_end_189} :catch_1c7
    .catchall {:try_start_185 .. :try_end_189} :catchall_1bc

    move v1, v0

    :try_start_18a
    const-string v0, "EnterpriseMigrationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePkgNameInApplicationTable() for TableName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updatePackageNameTableNames:[Ljava/lang/String;

    aget-object v3, v3, v19

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " returned : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ad
    .catch Ljava/lang/Exception; {:try_start_18a .. :try_end_1ad} :catch_1b8
    .catchall {:try_start_18a .. :try_end_1ad} :catchall_1b4

    add-int/lit8 v6, v19, 0x1

    move/from16 v16, v1

    move-wide/from16 v8, v23

    goto :goto_170

    :catchall_1b4
    move-exception v0

    move/from16 v25, v1

    goto :goto_1bf

    :catch_1b8
    move-exception v0

    move/from16 v25, v1

    goto :goto_1ca

    :catchall_1bc
    move-exception v0

    move/from16 v25, v16

    :goto_1bf
    move-wide/from16 v5, v17

    move/from16 v7, v20

    move-wide/from16 v27, v21

    goto/16 :goto_3a4

    :catch_1c7
    move-exception v0

    move/from16 v25, v16

    :goto_1ca
    move-wide/from16 v5, v17

    move/from16 v7, v20

    move-wide/from16 v27, v21

    goto/16 :goto_3b1

    :catchall_1d2
    move-exception v0

    move/from16 v19, v6

    move-wide v1, v8

    move/from16 v25, v16

    move-wide/from16 v5, v17

    move/from16 v7, v20

    move-wide/from16 v27, v21

    goto/16 :goto_4ef

    :catch_1e0
    move-exception v0

    move/from16 v19, v6

    move-wide v1, v8

    move/from16 v25, v16

    move-wide/from16 v5, v17

    move/from16 v7, v20

    move-wide/from16 v27, v21

    goto/16 :goto_4a0

    :cond_1ee
    move/from16 v19, v6

    move-wide/from16 v23, v8

    :try_start_1f2
    const-string v2, "WhiteListInstallApps"

    move-object v1, v10

    move-wide v3, v12

    move-wide/from16 v5, v23

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateWhitelistInstallApp(Ljava/lang/String;JJ)Z

    move-result v0
    :try_end_1fc
    .catch Ljava/lang/Exception; {:try_start_1f2 .. :try_end_1fc} :catch_2df
    .catchall {:try_start_1f2 .. :try_end_1fc} :catchall_2d2

    move v7, v0

    :try_start_1fd
    const-string v0, "EnterpriseMigrationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWhitelistInstallApp() for TableName : WhiteListInstallApps returned : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_214
    .catch Ljava/lang/Exception; {:try_start_1fd .. :try_end_214} :catch_2ce
    .catchall {:try_start_1fd .. :try_end_214} :catchall_2ca

    if-eqz v7, :cond_224

    :try_start_216
    sget-boolean v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z
    :try_end_218
    .catch Ljava/lang/Exception; {:try_start_216 .. :try_end_218} :catch_220
    .catchall {:try_start_216 .. :try_end_218} :catchall_21c

    if-eqz v0, :cond_224

    move v0, v15

    goto :goto_225

    :catchall_21c
    move-exception v0

    move/from16 v25, v7

    goto :goto_1bf

    :catch_220
    move-exception v0

    move/from16 v25, v7

    goto :goto_1ca

    :cond_224
    const/4 v0, 0x0

    :goto_225
    :try_start_225
    sput-boolean v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    const-string v2, "BROWSER_PROXY"

    move-object v1, v10

    move-wide v3, v12

    move-wide/from16 v5, v23

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateBrowserProxy(Ljava/lang/String;JJ)Z

    move-result v0

    move v7, v0

    const-string v0, "EnterpriseMigrationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBrowserProxy() for TableName : BROWSER_PROXY returned : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_249
    .catch Ljava/lang/Exception; {:try_start_225 .. :try_end_249} :catch_2ce
    .catchall {:try_start_225 .. :try_end_249} :catchall_2ca

    if-eqz v7, :cond_251

    :try_start_24b
    sget-boolean v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z
    :try_end_24d
    .catch Ljava/lang/Exception; {:try_start_24b .. :try_end_24d} :catch_220
    .catchall {:try_start_24b .. :try_end_24d} :catchall_21c

    if-eqz v0, :cond_251

    move v0, v15

    goto :goto_252

    :cond_251
    const/4 v0, 0x0

    :goto_252
    :try_start_252
    sput-boolean v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    const-string v2, "ContainerSettings"

    move-object v1, v10

    move-wide v3, v12

    move-wide/from16 v5, v23

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateContainerSettingsTable(Ljava/lang/String;JJ)Z

    move-result v0
    :try_end_25e
    .catch Ljava/lang/Exception; {:try_start_252 .. :try_end_25e} :catch_2ce
    .catchall {:try_start_252 .. :try_end_25e} :catchall_2ca

    move v2, v0

    :try_start_25f
    const-string v0, "EnterpriseMigrationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateContainerSettingsTable() for TableName : ContainerSettings returned : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_276
    .catch Ljava/lang/Exception; {:try_start_25f .. :try_end_276} :catch_2c6
    .catchall {:try_start_25f .. :try_end_276} :catchall_2c2

    if-eqz v2, :cond_287

    :try_start_278
    sget-boolean v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z
    :try_end_27a
    .catch Ljava/lang/Exception; {:try_start_278 .. :try_end_27a} :catch_282
    .catchall {:try_start_278 .. :try_end_27a} :catchall_27d

    if-eqz v0, :cond_287

    goto :goto_288

    :catchall_27d
    move-exception v0

    move/from16 v25, v2

    goto/16 :goto_1bf

    :catch_282
    move-exception v0

    move/from16 v25, v2

    goto/16 :goto_1ca

    :cond_287
    const/4 v15, 0x0

    :goto_288
    :try_start_288
    sput-boolean v15, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z
    :try_end_28a
    .catch Ljava/lang/Exception; {:try_start_288 .. :try_end_28a} :catch_2c6
    .catchall {:try_start_288 .. :try_end_28a} :catchall_2c2

    move-wide/from16 v3, v21

    :try_start_28c
    invoke-direct {v10, v3, v4}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateDefaultContainerApplications(J)Z

    move-result v0

    move v2, v0

    const-string v0, "EnterpriseMigrationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateDefaultContainerApplications() for TableName : packageName returned : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a8
    .catch Ljava/lang/Exception; {:try_start_28c .. :try_end_2a8} :catch_2b7
    .catchall {:try_start_28c .. :try_end_2a8} :catchall_2ac

    move/from16 v1, v19

    goto/16 :goto_3b7

    :catchall_2ac
    move-exception v0

    move/from16 v25, v2

    move-wide/from16 v27, v3

    move-wide/from16 v5, v17

    move/from16 v7, v20

    goto/16 :goto_3a4

    :catch_2b7
    move-exception v0

    move/from16 v25, v2

    move-wide/from16 v27, v3

    move-wide/from16 v5, v17

    move/from16 v7, v20

    goto/16 :goto_3b1

    :catchall_2c2
    move-exception v0

    move/from16 v25, v2

    goto :goto_2d5

    :catch_2c6
    move-exception v0

    move/from16 v25, v2

    goto :goto_2e2

    :catchall_2ca
    move-exception v0

    move/from16 v25, v7

    goto :goto_2d5

    :catch_2ce
    move-exception v0

    move/from16 v25, v7

    goto :goto_2e2

    :catchall_2d2
    move-exception v0

    move/from16 v25, v16

    :goto_2d5
    move-wide/from16 v5, v17

    move/from16 v7, v20

    move-wide/from16 v27, v21

    move-wide/from16 v1, v23

    goto/16 :goto_4ef

    :catch_2df
    move-exception v0

    move/from16 v25, v16

    :goto_2e2
    move-wide/from16 v5, v17

    move/from16 v7, v20

    move-wide/from16 v27, v21

    move-wide/from16 v1, v23

    goto/16 :goto_4a0

    :catchall_2ec
    move-exception v0

    move/from16 v19, v6

    move-wide v1, v8

    move/from16 v25, v16

    move-wide/from16 v5, v17

    move/from16 v7, v20

    move-wide/from16 v27, v21

    goto/16 :goto_4ef

    :catch_2fa
    move-exception v0

    move/from16 v19, v6

    move-wide v1, v8

    move/from16 v25, v16

    move-wide/from16 v5, v17

    move/from16 v7, v20

    move-wide/from16 v27, v21

    goto/16 :goto_4a0

    :catchall_308
    move-exception v0

    move/from16 v19, v7

    move-wide v1, v8

    move/from16 v25, v16

    move-wide/from16 v5, v17

    move/from16 v7, v20

    move-wide/from16 v27, v21

    goto/16 :goto_4ef

    :catch_316
    move-exception v0

    move/from16 v19, v7

    move-wide v1, v8

    move/from16 v25, v16

    move-wide/from16 v5, v17

    move/from16 v7, v20

    move-wide/from16 v27, v21

    goto/16 :goto_4a0

    :catchall_324
    move-exception v0

    move-object v14, v3

    move/from16 v19, v4

    move-wide/from16 v27, v5

    move-wide v1, v8

    move/from16 v25, v16

    move-wide/from16 v5, v17

    goto/16 :goto_4ef

    :catch_331
    move-exception v0

    move-object v14, v3

    move/from16 v19, v4

    move-wide/from16 v27, v5

    move-wide v1, v8

    move/from16 v25, v16

    move-wide/from16 v5, v17

    goto/16 :goto_4a0

    :cond_33e
    move-object v14, v3

    move-wide v3, v5

    move-wide/from16 v23, v8

    :try_start_342
    invoke-direct {v10, v3, v4}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateDefaultContainerApplications(J)Z

    move-result v0

    move v2, v0

    const-string v0, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateDefaultContainerApplications() for TableName : packageName returned : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_360
    sget-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    array-length v0, v0
    :try_end_363
    .catch Ljava/lang/Exception; {:try_start_342 .. :try_end_363} :catch_3d4
    .catchall {:try_start_342 .. :try_end_363} :catchall_3c7

    if-ge v1, v0, :cond_3b5

    :try_start_365
    sget-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string v5, "containerID"

    sget-wide v8, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    invoke-direct {v10, v0, v5, v8, v9}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteTableRow(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    const-string v0, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteTableRow() for TableName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " returned : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_398
    .catch Ljava/lang/Exception; {:try_start_365 .. :try_end_398} :catch_3a8
    .catchall {:try_start_365 .. :try_end_398} :catchall_39b

    add-int/lit8 v1, v1, 0x1

    goto :goto_360

    :catchall_39b
    move-exception v0

    move/from16 v19, v1

    move/from16 v25, v2

    move-wide/from16 v27, v3

    move-wide/from16 v5, v17

    :goto_3a4
    move-wide/from16 v1, v23

    goto/16 :goto_4ef

    :catch_3a8
    move-exception v0

    move/from16 v19, v1

    move/from16 v25, v2

    move-wide/from16 v27, v3

    move-wide/from16 v5, v17

    :goto_3b1
    move-wide/from16 v1, v23

    goto/16 :goto_4a0

    :cond_3b5
    move/from16 v20, v7

    :goto_3b7
    move-wide/from16 v5, v17

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    move/from16 v19, v1

    move/from16 v25, v2

    move-wide/from16 v27, v3

    move-wide/from16 v1, v23

    goto/16 :goto_4bf

    :catchall_3c7
    move-exception v0

    move-wide/from16 v5, v17

    move/from16 v19, v1

    move/from16 v25, v2

    move-wide/from16 v27, v3

    move-wide/from16 v1, v23

    goto/16 :goto_4ef

    :catch_3d4
    move-exception v0

    move-wide/from16 v5, v17

    move/from16 v19, v1

    move/from16 v25, v2

    move-wide/from16 v27, v3

    move-wide/from16 v1, v23

    goto/16 :goto_4a0

    :catchall_3e1
    move-exception v0

    move-object v14, v3

    move-wide v3, v5

    move-wide/from16 v5, v17

    move/from16 v19, v1

    move/from16 v25, v2

    move-wide/from16 v27, v3

    move-wide v1, v8

    goto/16 :goto_4ef

    :catch_3ef
    move-exception v0

    move-object v14, v3

    move-wide v3, v5

    move-wide/from16 v5, v17

    move/from16 v19, v1

    move/from16 v25, v2

    move-wide/from16 v27, v3

    move-wide v1, v8

    goto/16 :goto_4a0

    :cond_3fd
    move-object v14, v3

    move-wide v3, v5

    move-wide/from16 v23, v8

    move-wide/from16 v5, v17

    :try_start_403
    const-string v0, "EnterpriseMigrationManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error in Enterprise Container migration "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_429
    .catch Ljava/lang/Exception; {:try_start_403 .. :try_end_429} :catch_479
    .catchall {:try_start_403 .. :try_end_429} :catchall_46c

    move/from16 v26, v1

    move/from16 v25, v2

    move-wide/from16 v1, v23

    :try_start_42f
    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_437
    .catch Ljava/lang/Exception; {:try_start_42f .. :try_end_437} :catch_466
    .catchall {:try_start_42f .. :try_end_437} :catchall_45f

    move-wide/from16 v27, v3

    :try_start_439
    sget-wide v3, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z
    :try_end_450
    .catch Ljava/lang/Exception; {:try_start_439 .. :try_end_450} :catch_45b
    .catchall {:try_start_439 .. :try_end_450} :catchall_456

    const-wide/16 v3, -0x1

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v3

    :catchall_456
    move-exception v0

    move/from16 v19, v26

    goto/16 :goto_4ef

    :catch_45b
    move-exception v0

    move/from16 v19, v26

    goto :goto_4a0

    :catchall_45f
    move-exception v0

    move-wide/from16 v27, v3

    move/from16 v19, v26

    goto/16 :goto_4ef

    :catch_466
    move-exception v0

    move-wide/from16 v27, v3

    move/from16 v19, v26

    goto :goto_4a0

    :catchall_46c
    move-exception v0

    move/from16 v26, v1

    move/from16 v25, v2

    move-wide/from16 v27, v3

    move-wide/from16 v1, v23

    move/from16 v19, v26

    goto/16 :goto_4ef

    :catch_479
    move-exception v0

    move/from16 v26, v1

    move/from16 v25, v2

    move-wide/from16 v27, v3

    move-wide/from16 v1, v23

    move/from16 v19, v26

    goto :goto_4a0

    :catchall_485
    move-exception v0

    move/from16 v26, v1

    move/from16 v25, v2

    move-object v14, v3

    move-wide/from16 v27, v5

    move-wide v1, v8

    move-wide/from16 v5, v17

    move/from16 v19, v26

    goto :goto_4ef

    :catch_493
    move-exception v0

    move/from16 v26, v1

    move/from16 v25, v2

    move-object v14, v3

    move-wide/from16 v27, v5

    move-wide v1, v8

    move-wide/from16 v5, v17

    move/from16 v19, v26

    :goto_4a0
    :try_start_4a0
    const-string v3, "EnterpriseMigrationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Some unknown exception occured in enterprise DB migration!!! "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z
    :try_end_4b9
    .catchall {:try_start_4a0 .. :try_end_4b9} :catchall_4ee

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    move/from16 v20, v7

    :goto_4bf
    if-eqz p2, :cond_4ed

    if-eqz v20, :cond_4ed

    :try_start_4c3
    iget-object v0, v10, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mRestrictionPolicyService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    sget-wide v3, Lcom/android/server/enterprise/EnterpriseMigrationManager;->NEW_CONTAINER_USER_ID:J

    long-to-int v3, v3

    invoke-interface {v0, v3}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->onUserMigrated(I)V

    const-string v0, "EnterpriseMigrationManager"

    const-string v3, "Restriction Policy onUserMigrated() called for TableName : RESTRICTION"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d2
    .catch Ljava/lang/Exception; {:try_start_4c3 .. :try_end_4d2} :catch_4d3

    goto :goto_4ed

    :catch_4d3
    move-exception v0

    const-string v3, "EnterpriseMigrationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Some unknown exception occured in Restriction Policy onUserMigrated() call!!! "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    :cond_4ed
    :goto_4ed
    return-wide v1

    :catchall_4ee
    move-exception v0

    :goto_4ef
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method removePrefixPkgName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "sec_container_1."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
