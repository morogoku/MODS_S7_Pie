.class public Lcom/android/server/enterprise/EcppMigrationManager;
.super Ljava/lang/Object;
.source "EcppMigrationManager.java"


# static fields
.field private static final CONTAINER_MIGRATION_AGENT_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.containeragent"

.field public static final NEW_CONTAINER_ID:I = 0x0

.field public static final OLD_CONTAINER_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EcppMigrationManager"

.field private static mInstance:Lcom/android/server/enterprise/EcppMigrationManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDPMService:Landroid/app/admin/IDevicePolicyManager;

.field private mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mPasswordPolicyService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/EcppMigrationManager;->mInstance:Lcom/android/server/enterprise/EcppMigrationManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    iput-object v0, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iput-object p1, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EcppStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    const-string/jumbo v0, "password_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mPasswordPolicyService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    return-void
.end method

.method private copyMaximumFailedPasswordsForDisable(ILcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mPasswordPolicyService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    if-eqz v3, :cond_27

    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mPasswordPolicyService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    invoke-interface {v3, p2, v0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;I)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_1a
    .catchall {:try_start_f .. :try_end_14} :catchall_18

    :goto_14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_27

    :catchall_18
    move-exception v3

    goto :goto_23

    :catch_1a
    move-exception v3

    :try_start_1b
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with enterprise password policy service"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_18

    goto :goto_14

    :goto_23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_27
    :goto_27
    return-void
.end method

.method private copyMaximumFailedPasswordsForWipe(IILandroid/content/ComponentName;)V
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_27

    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v3, p3, v0, p2}, Landroid/app/admin/IDevicePolicyManager;->setMaximumFailedPasswordsForWipeMDM(Landroid/content/ComponentName;II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_1a
    .catchall {:try_start_f .. :try_end_14} :catchall_18

    :goto_14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_27

    :catchall_18
    move-exception v3

    goto :goto_23

    :catch_1a
    move-exception v3

    :try_start_1b
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_18

    goto :goto_14

    :goto_23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_27
    :goto_27
    return-void
.end method

.method private copyMaximumTimeToLockPassword(IILandroid/content/ComponentName;)V
    .registers 11

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v2, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getMaximumTimeToLock(ILandroid/content/ComponentName;)J

    move-result-wide v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v4, :cond_28

    :try_start_10
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, p3, v0, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMaximumTimeToLockMDM(Landroid/content/ComponentName;JI)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_1b
    .catchall {:try_start_10 .. :try_end_15} :catchall_19

    :goto_15
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_28

    :catchall_19
    move-exception v4

    goto :goto_24

    :catch_1b
    move-exception v4

    :try_start_1c
    const-string v5, "EcppMigrationManager"

    const-string v6, "Failed talking with device policy service"

    invoke-static {v5, v6, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_19

    goto :goto_15

    :goto_24
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :cond_28
    :goto_28
    return-void
.end method

.method private copyPasswordExpirationTimeout(IILandroid/content/ComponentName;)V
    .registers 11

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v2, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J

    move-result-wide v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v4, :cond_28

    :try_start_10
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, p3, v0, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordExpirationTimeoutMDM(Landroid/content/ComponentName;JI)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_1b
    .catchall {:try_start_10 .. :try_end_15} :catchall_19

    :goto_15
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_28

    :catchall_19
    move-exception v4

    goto :goto_24

    :catch_1b
    move-exception v4

    :try_start_1c
    const-string v5, "EcppMigrationManager"

    const-string v6, "Failed talking with enterprise password policy service"

    invoke-static {v5, v6, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_19

    goto :goto_15

    :goto_24
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :cond_28
    :goto_28
    return-void
.end method

.method private copyPasswordHistoryLength(IILandroid/content/ComponentName;)V
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordHistory(ILandroid/content/ComponentName;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_27

    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v3, p3, v0, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordHistoryLengthMDM(Landroid/content/ComponentName;II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_1a
    .catchall {:try_start_f .. :try_end_14} :catchall_18

    :goto_14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_27

    :catchall_18
    move-exception v3

    goto :goto_23

    :catch_1a
    move-exception v3

    :try_start_1b
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_18

    goto :goto_14

    :goto_23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_27
    :goto_27
    return-void
.end method

.method private copyPasswordMinimumLength(IILandroid/content/ComponentName;)V
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordMinimumLength(ILandroid/content/ComponentName;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_27

    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v3, p3, v0, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLengthMDM(Landroid/content/ComponentName;II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_1a
    .catchall {:try_start_f .. :try_end_14} :catchall_18

    :goto_14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_27

    :catchall_18
    move-exception v3

    goto :goto_23

    :catch_1a
    move-exception v3

    :try_start_1b
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_18

    goto :goto_14

    :goto_23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_27
    :goto_27
    return-void
.end method

.method private copyPasswordMinimumLetters(IILandroid/content/ComponentName;)V
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordMinimumLetters(ILandroid/content/ComponentName;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_27

    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v3, p3, v0, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLettersMDM(Landroid/content/ComponentName;II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_1a
    .catchall {:try_start_f .. :try_end_14} :catchall_18

    :goto_14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_27

    :catchall_18
    move-exception v3

    goto :goto_23

    :catch_1a
    move-exception v3

    :try_start_1b
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_18

    goto :goto_14

    :goto_23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_27
    :goto_27
    return-void
.end method

.method private copyPasswordMinimumNonLetter(IILandroid/content/ComponentName;)V
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_27

    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v3, p3, v0, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNonLetterMDM(Landroid/content/ComponentName;II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_1a
    .catchall {:try_start_f .. :try_end_14} :catchall_18

    :goto_14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_27

    :catchall_18
    move-exception v3

    goto :goto_23

    :catch_1a
    move-exception v3

    :try_start_1b
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_18

    goto :goto_14

    :goto_23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_27
    :goto_27
    return-void
.end method

.method private copyPasswordMinimumNumeric(IILandroid/content/ComponentName;)V
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_27

    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v3, p3, v0, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNumericMDM(Landroid/content/ComponentName;II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_1a
    .catchall {:try_start_f .. :try_end_14} :catchall_18

    :goto_14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_27

    :catchall_18
    move-exception v3

    goto :goto_23

    :catch_1a
    move-exception v3

    :try_start_1b
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_18

    goto :goto_14

    :goto_23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_27
    :goto_27
    return-void
.end method

.method private copyPasswordMinimumSymbols(IILandroid/content/ComponentName;)V
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_27

    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v3, p3, v0, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumSymbolsMDM(Landroid/content/ComponentName;II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_1a
    .catchall {:try_start_f .. :try_end_14} :catchall_18

    :goto_14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_27

    :catchall_18
    move-exception v3

    goto :goto_23

    :catch_1a
    move-exception v3

    :try_start_1b
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_18

    goto :goto_14

    :goto_23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_27
    :goto_27
    return-void
.end method

.method private copyPasswordQuality(IILandroid/content/ComponentName;)V
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordQuality(ILandroid/content/ComponentName;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_27

    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v3, p3, v0, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordQualityMDM(Landroid/content/ComponentName;II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_1a
    .catchall {:try_start_f .. :try_end_14} :catchall_18

    :goto_14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_27

    :catchall_18
    move-exception v3

    goto :goto_23

    :catch_1a
    move-exception v3

    :try_start_1b
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_18

    goto :goto_14

    :goto_23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_27
    :goto_27
    return-void
.end method

.method private copyPasswordVisible(ILcom/samsung/android/knox/ContextInfo;)V
    .registers 11

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->isPasswordVisisbilityEnabled(I)Z

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mPasswordPolicyService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    if-eqz v3, :cond_7c

    :try_start_f
    iget v3, p2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mPasswordPolicyService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    invoke-interface {v4, v3}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isPasswordVisibilityEnabledAsUser(I)Z

    move-result v4

    move v0, v4

    if-nez v0, :cond_64

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "adminUid"

    iget v6, p2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "passwordVisibilityEnabled"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v5, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "PASSWORD"

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v5

    if-lez v5, :cond_64

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "passwordVisibilityEnabled"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v6, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "PASSWORD"

    invoke-virtual {v6, v7, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v6

    if-nez v6, :cond_64

    const-string v6, "EcppMigrationManager"

    const-string v7, "Failed to update PasswordVisible value in PASSWORD"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mPasswordPolicyService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    invoke-interface {v4, p2, v0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_69} :catch_6c
    .catchall {:try_start_f .. :try_end_69} :catchall_6a

    goto :goto_74

    :catchall_6a
    move-exception v3

    goto :goto_78

    :catch_6c
    move-exception v3

    :try_start_6d
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with enterprise password policy service"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_74
    .catchall {:try_start_6d .. :try_end_74} :catchall_6a

    :goto_74
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_7c

    :goto_78
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_7c
    :goto_7c
    return-void
.end method

.method private enforceMigrationAgentSecurityCheck()V
    .registers 8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const-string v2, ""

    const-string v3, "EcppMigrationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check permission for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e8

    if-ne v0, v4, :cond_39

    if-eqz v3, :cond_39

    const-string v4, "com.sec.knox.containeragent"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    return-void

    :cond_39
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

.method private findContainerData(ILandroid/content/ComponentName;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->findContainerAdmin(ILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EcppMigrationManager;
    .registers 3

    const-class v0, Lcom/android/server/enterprise/EcppMigrationManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/EcppMigrationManager;->mInstance:Lcom/android/server/enterprise/EcppMigrationManager;

    if-nez v1, :cond_e

    new-instance v1, Lcom/android/server/enterprise/EcppMigrationManager;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/EcppMigrationManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/EcppMigrationManager;->mInstance:Lcom/android/server/enterprise/EcppMigrationManager;

    :cond_e
    sget-object v1, Lcom/android/server/enterprise/EcppMigrationManager;->mInstance:Lcom/android/server/enterprise/EcppMigrationManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public migrateEcppDB(Landroid/content/ComponentName;IJ)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/EcppMigrationManager;->enforceMigrationAgentSecurityCheck()V

    const/4 v0, 0x1

    const/4 v1, 0x1

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    long-to-int v3, p3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    :try_start_c
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->findContainerData(ILandroid/content/ComponentName;)Z

    move-result v3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_e9

    move v1, v3

    if-nez v1, :cond_14

    return v4

    :cond_14
    nop

    :try_start_15
    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordMinimumLength(IILandroid/content/ComponentName;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_22

    :catch_19
    move-exception v3

    const-string v4, "EcppMigrationManager"

    const-string v5, "Exception in copyPasswordMinimumLength()"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_22
    :try_start_22
    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordMinimumLetters(IILandroid/content/ComponentName;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_2f

    :catch_26
    move-exception v3

    const-string v4, "EcppMigrationManager"

    const-string v5, "Exception in copyPasswordMinimumLetters()"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_2f
    :try_start_2f
    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordMinimumNonLetter(IILandroid/content/ComponentName;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_3c

    :catch_33
    move-exception v3

    const-string v4, "EcppMigrationManager"

    const-string v5, "Exception in copyPasswordMinimumNonLetter()"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_3c
    :try_start_3c
    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordMinimumNumeric(IILandroid/content/ComponentName;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_49

    :catch_40
    move-exception v3

    const-string v4, "EcppMigrationManager"

    const-string v5, "Exception in copyPasswordMinimumNumeric()"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_49
    :try_start_49
    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordMinimumSymbols(IILandroid/content/ComponentName;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_56

    :catch_4d
    move-exception v3

    const-string v4, "EcppMigrationManager"

    const-string v5, "Exception in copyPasswordMinimumSymbols()"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_56
    :try_start_56
    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordQuality(IILandroid/content/ComponentName;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_62

    :catch_5a
    move-exception v3

    const-string v4, "EcppMigrationManager"

    const-string v5, "Exception in copyPasswordQuality()"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_62
    :try_start_62
    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordVisible(ILcom/samsung/android/knox/ContextInfo;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_6f

    :catch_66
    move-exception v3

    const-string v4, "EcppMigrationManager"

    const-string v5, "Exception in copyPasswordVisible()"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_6f
    :try_start_6f
    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordHistoryLength(IILandroid/content/ComponentName;)V
    :try_end_72
    .catch Ljava/lang/NumberFormatException; {:try_start_6f .. :try_end_72} :catch_7d
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_73

    :goto_72
    goto :goto_87

    :catch_73
    move-exception v3

    const-string v4, "EcppMigrationManager"

    const-string v5, "Exception in copyPasswordHistoryLength()"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    goto :goto_87

    :catch_7d
    move-exception v3

    const-string v4, "EcppMigrationManager"

    const-string v5, "copyPasswordHistoryLength(): Policy not yet set"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_72

    :goto_87
    :try_start_87
    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyMaximumFailedPasswordsForWipe(IILandroid/content/ComponentName;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8a} :catch_8b

    goto :goto_94

    :catch_8b
    move-exception v3

    const-string v4, "EcppMigrationManager"

    const-string v5, "Exception in copyMaximumFailedPasswordsForWipe()"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_94
    :try_start_94
    invoke-direct {p0, v0, v2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyMaximumFailedPasswordsForDisable(ILcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_97} :catch_98

    goto :goto_a1

    :catch_98
    move-exception v3

    const-string v4, "EcppMigrationManager"

    const-string v5, "Exception in copyMaximumFailedPasswordsForDisable()"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_a1
    :try_start_a1
    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyMaximumTimeToLockPassword(IILandroid/content/ComponentName;)V
    :try_end_a4
    .catch Ljava/lang/NumberFormatException; {:try_start_a1 .. :try_end_a4} :catch_af
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a4} :catch_a5

    :goto_a4
    goto :goto_b9

    :catch_a5
    move-exception v3

    const-string v4, "EcppMigrationManager"

    const-string v5, "Exception in copyMaximumTimeToLockPassword()"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    goto :goto_b9

    :catch_af
    move-exception v3

    const-string v4, "EcppMigrationManager"

    const-string v5, "copyMaximumTimeToLockPassword(): Policy not yet set"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_a4

    :goto_b9
    :try_start_b9
    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordExpirationTimeout(IILandroid/content/ComponentName;)V
    :try_end_bc
    .catch Ljava/lang/NumberFormatException; {:try_start_b9 .. :try_end_bc} :catch_c7
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_bc} :catch_bd

    :goto_bc
    goto :goto_d1

    :catch_bd
    move-exception v3

    const-string v4, "EcppMigrationManager"

    const-string v5, "Exception in copyPasswordExpirationTimeout()"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    goto :goto_d1

    :catch_c7
    move-exception v3

    const-string v4, "EcppMigrationManager"

    const-string v5, "copyPasswordExpirationTimeout(): Policy not yet set"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_bc

    :goto_d1
    const-string v3, "EcppMigrationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "migrateEcppDB return : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catch_e9
    move-exception v3

    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in finding container data, Returning!!"

    invoke-static {v5, v6, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v4
.end method
