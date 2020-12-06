.class public Lcom/android/server/enterprise/utils/ConstrainedState;
.super Ljava/lang/Object;
.source "ConstrainedState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;
    }
.end annotation


# static fields
.field private static final CONSTRAINED_DATA_PATH:Ljava/lang/String; = "/efs/constrained"

.field private static final CONSTRAINED_DEFAULT_COMMENT:Ljava/lang/String; = "DEFAULT"

.field private static final CONSTRAINED_DELIMITER:[B

.field private static final CONSTRAINED_MODE_CHANNEL_ID:Ljava/lang/String; = "CONSTRAINED_MODE"

.field private static final CONSTRAINED_MODE_NOTIFICATION_ID:I = 0x11ce

.field private static final CONSTRAINED_TYPE_NORMAL:Ljava/lang/String; = "normal"

.field private static final CONSTRAINED_TYPE_NORMALv2:Ljava/lang/String; = "normalv2"

.field private static final CONSTRAINED_TYPE_NORMALv3:Ljava/lang/String; = "normalv3"

.field private static final TAG:Ljava/lang/String; = "ConstrainedState"

.field private static mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;


# instance fields
.field private final DEBUG:Z

.field private cachedConstrainedData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/EnrollData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    sput-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    return-void

    :array_c
    .array-data 1
        0x8t
        0xet
        0x19t
        -0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->DEBUG:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/enterprise/utils/ConstrainedState$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/ConstrainedState$1;-><init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->DEBUG:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    new-instance v1, Lcom/android/server/enterprise/utils/ConstrainedState$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/utils/ConstrainedState$1;-><init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V

    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/PackageDownloader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/enterprise/utils/ConstrainedState$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/utils/ConstrainedState$2;-><init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/utils/ConstrainedState;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateNotification()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/utils/ConstrainedState;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V

    return-void
.end method

.method private disableConstrainedStateInternal(ILjava/lang/String;)Z
    .registers 22

    move-object/from16 v7, p0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v11, v0

    const/4 v13, 0x1

    :try_start_14
    iget-object v0, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    if-eqz v0, :cond_8d

    iget-object v0, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v14, v1

    iget-object v1, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/EnrollData;

    move-object v15, v1

    invoke-virtual {v15}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v6, p2

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    const-string v1, "ConstrainedState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/constrained"

    invoke-direct {v1, v2, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v1

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    iget-object v1, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "ConstrainedStateTable"

    const-string/jumbo v3, "status"

    move/from16 v4, p1

    invoke-virtual {v1, v4, v2, v3, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    const/4 v3, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v1, v7

    move-object v2, v6

    move-object/from16 v4, v16

    move-object/from16 v16, v5

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    nop

    move v8, v1

    move v9, v2

    goto :goto_8d

    :cond_8c
    goto :goto_22

    :cond_8d
    :goto_8d
    if-ne v9, v13, :cond_9a

    invoke-direct {v7, v13}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_92} :catch_95
    .catchall {:try_start_14 .. :try_end_92} :catchall_93

    goto :goto_9a

    :catchall_93
    move-exception v0

    goto :goto_fb

    :catch_95
    move-exception v0

    :try_start_96
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_93

    const/4 v8, 0x0

    :cond_9a
    :goto_9a
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v0, 0x0

    if-eqz v10, :cond_cc

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_cc

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    move-result v1

    if-eqz v1, :cond_cc

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->setScreenCapture(Z)Z

    const-string v1, "ConstrainedState"

    const-string/jumbo v2, "setScreenCapture enabled due to disableConstrainedState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cc
    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Lcom/android/server/enterprise/utils/ConstrainedState;->isRestrictedByConstrainedState(I)Z

    move-result v1

    xor-int/2addr v1, v13

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->isBluetoothAllowedOnDB()Z

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_db
    iget-object v5, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v5

    if-eqz v2, :cond_e6

    if-eqz v1, :cond_e6

    goto :goto_e7

    :cond_e6
    move v13, v0

    :goto_e7
    invoke-virtual {v5, v0, v13}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setBluetoothAllowedAsUser(IZ)V
    :try_end_ea
    .catchall {:try_start_db .. :try_end_ea} :catchall_f6

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const-string v0, "ConstrainedState"

    const-string v5, "No data"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :catchall_f6
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :goto_fb
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;
    .registers 11

    new-instance v0, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;

    invoke-direct {v0}, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;-><init>()V

    const/4 v1, 0x0

    if-eqz p2, :cond_50

    :try_start_8
    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v2, :cond_14

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->permissions:Ljava/util/List;

    :cond_14
    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v2, v2, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_4f

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v2, v2, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v2

    :goto_1f
    if-ge v1, v3, :cond_4f

    aget-object v4, v2, v1

    iget-object v5, v0, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2c} :catch_2f

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :catch_2f
    move-exception v1

    const-string v2, "ConstrainedState"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "ConstrainedState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    goto :goto_aa

    :cond_50
    if-nez p1, :cond_55

    const-string v2, ""

    goto :goto_59

    :cond_55
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_59
    move-object p1, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_aa

    :try_start_60
    iget-object v2, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x1040

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_8f

    iput-object p1, v0, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    if-eqz v3, :cond_78

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->permissions:Ljava/util/List;

    :cond_78
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_8f

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v3

    :goto_7f
    if-ge v1, v4, :cond_8f

    aget-object v5, v3, v1

    iget-object v6, v0, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_8c} :catch_90

    add-int/lit8 v1, v1, 0x1

    goto :goto_7f

    :cond_8f
    goto :goto_aa

    :catch_90
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "ConstrainedState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_aa
    :goto_aa
    return-object v0
.end method

.method private getConstrainedStateAll()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/EnrollData;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    if-eqz v2, :cond_3a

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/EnrollData;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2f
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_33} :catch_40
    .catchall {:try_start_4 .. :try_end_33} :catchall_3e

    if-nez v4, :cond_3a

    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_3a
    :goto_3a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_45

    :catchall_3e
    move-exception v2

    goto :goto_47

    :catch_40
    move-exception v2

    :try_start_41
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_3e

    goto :goto_3a

    :goto_45
    const/4 v2, 0x0

    return-object v2

    :goto_47
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_11
    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/ConstrainedState;
    .registers 2

    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/ConstrainedState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    :cond_b
    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    return-object v0
.end method

.method private isBluetoothAllowedOnDB()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "BLUETOOTH"

    const-string v2, "bluetoothEnabled"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_24

    const/4 v1, 0x0

    return v1

    :cond_24
    goto :goto_10

    :cond_25
    const/4 v1, 0x1

    return v1
.end method

.method private isMatch([B[BI)Z
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_17

    add-int v2, p3, v1

    array-length v3, p2

    if-lt v2, v3, :cond_b

    return v0

    :cond_b
    aget-byte v2, p1, v1

    add-int v3, p3, v1

    aget-byte v3, p2, v3

    if-eq v2, v3, :cond_14

    return v0

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method private showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_ConstrainedNoti"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-nez v1, :cond_26

    const-string v2, "ConstrainedState"

    const-string v3, "Failed to get NotificationManager"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_26
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "CONSTRAINED_MODE"

    const/4 v4, 0x4

    invoke-direct {v2, v3, p1, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    const/16 v2, 0x11ce

    if-eqz p5, :cond_d2

    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const-string v5, "CONSTRAINED_MODE"

    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    const v4, 0x108066f

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const v5, 0x1040248

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const-string v4, "DEFAULT"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7c

    iget-object v4, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const v5, 0x104029c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v6, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_8b

    :cond_7c
    invoke-virtual {v3, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v4, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :goto_8b
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    if-eqz p3, :cond_ca

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_ca

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.android.knox.intent.action.CHECK_REENROLLMENT_INTERNAL"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "pkg"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "url"

    invoke-virtual {v4, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_bc

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_bc

    const-string/jumbo v5, "targetPkgName"

    invoke-virtual {v4, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_bc
    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_ca
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_d5

    :cond_d2
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    :goto_d5
    return-void
.end method

.method private split([B[B)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    array-length v3, p2

    if-ge v2, v3, :cond_1e

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/utils/ConstrainedState;->isMatch([B[BI)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-static {p2, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length v3, p1

    add-int/2addr v3, v2

    move v2, v3

    move v1, v3

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1e
    array-length v2, p2

    invoke-static {p2, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private updateConstrainedStateData(Z)V
    .registers 52

    move-object/from16 v7, p0

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v8, v2

    const/4 v9, 0x2

    new-array v2, v9, [Ljava/lang/String;

    move-object v10, v2

    const-string v2, "adminUid"

    const/4 v11, 0x0

    aput-object v2, v10, v11

    const-string/jumbo v2, "status"

    const/4 v12, 0x1

    aput-object v2, v10, v12

    iget-object v2, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "ConstrainedStateTable"

    invoke-virtual {v2, v3, v10, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/constrained"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v13, v2

    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    move-object v14, v2

    if-eqz v14, :cond_3a4

    array-length v15, v14

    move v6, v11

    :goto_32
    if-ge v6, v15, :cond_3a4

    aget-object v2, v14, v6

    move-object v5, v2

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_38d

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v2, v2, [B

    move-object v4, v2

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4a} :catch_3d2
    .catchall {:try_start_4 .. :try_end_4a} :catchall_3ce

    move-object v3, v2

    :try_start_4b
    invoke-virtual {v3, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v1
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4f} :catch_389
    .catchall {:try_start_4b .. :try_end_4f} :catchall_384

    move/from16 v16, v1

    if-nez v16, :cond_6d

    :try_start_53
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_69
    .catchall {:try_start_53 .. :try_end_56} :catchall_64

    nop

    move-object/from16 v42, v0

    move-object v1, v3

    move/from16 v23, v6

    move/from16 v17, v9

    move-object/from16 v49, v10

    move/from16 v22, v11

    goto/16 :goto_397

    :catchall_64
    move-exception v0

    move-object v1, v0

    move-object v10, v3

    goto/16 :goto_3e6

    :catch_69
    move-exception v0

    move-object v1, v3

    goto/16 :goto_3d3

    :cond_6d
    :try_start_6d
    sget-object v1, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    invoke-direct {v7, v1, v4}, Lcom/android/server/enterprise/utils/ConstrainedState;->split([B[B)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    const/4 v1, 0x0

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_79} :catch_389
    .catchall {:try_start_6d .. :try_end_79} :catchall_384

    if-eqz v17, :cond_96

    :try_start_7b
    new-instance v9, Ljava/lang/String;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v12, v17

    check-cast v12, [B

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v11, v17

    check-cast v11, [B

    array-length v11, v11

    move-object/from16 v21, v1

    const/4 v1, 0x0

    invoke-direct {v9, v12, v1, v11}, Ljava/lang/String;-><init>([BII)V

    move-object v1, v9

    goto :goto_9a

    :cond_96
    move-object/from16 v21, v1

    move-object/from16 v9, v21

    :goto_9a
    if-nez v9, :cond_b8

    const-string v1, "ConstrainedState"

    const-string/jumbo v11, "something\'s wrong // type is null"

    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_a4} :catch_69
    .catchall {:try_start_7b .. :try_end_a4} :catchall_64

    :goto_a4
    move-object/from16 v42, v0

    move-object/from16 v19, v2

    move-object/from16 v21, v4

    move/from16 v23, v6

    move-object/from16 v48, v9

    move-object/from16 v49, v10

    const/16 v17, 0x2

    const/16 v22, 0x0

    move-object v10, v3

    move-object v9, v5

    goto/16 :goto_37a

    :cond_b8
    :try_start_b8
    const-string/jumbo v1, "normal"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_bf} :catch_389
    .catchall {:try_start_b8 .. :try_end_bf} :catchall_384

    if-nez v1, :cond_dd

    :try_start_c1
    const-string/jumbo v1, "normalv2"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_dd

    const-string/jumbo v1, "normalv3"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d4

    goto :goto_dd

    :cond_d4
    const-string v1, "ConstrainedState"

    const-string/jumbo v11, "type is not normal"

    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_dc} :catch_69
    .catchall {:try_start_c1 .. :try_end_dc} :catchall_64

    goto :goto_a4

    :cond_dd
    :goto_dd
    const/4 v1, 0x0

    const/4 v11, 0x1

    :try_start_df
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e3} :catch_389
    .catchall {:try_start_df .. :try_end_e3} :catchall_384

    if-eqz v12, :cond_127

    :try_start_e5
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    array-length v11, v12

    if-lez v11, :cond_127

    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x1

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v12, v17

    check-cast v12, [B

    move-object/from16 v23, v1

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v1, v17

    check-cast v1, [B

    array-length v1, v1
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_105} :catch_120
    .catchall {:try_start_e5 .. :try_end_105} :catchall_118

    move-object/from16 v24, v3

    const/4 v3, 0x0

    :try_start_108
    invoke-direct {v11, v12, v3, v1}, Ljava/lang/String;-><init>([BII)V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_10b} :catch_113
    .catchall {:try_start_108 .. :try_end_10b} :catchall_10d

    move-object v1, v11

    goto :goto_12d

    :catchall_10d
    move-exception v0

    move-object v1, v0

    move-object/from16 v10, v24

    goto/16 :goto_3e6

    :catch_113
    move-exception v0

    move-object/from16 v1, v24

    goto/16 :goto_3d3

    :catchall_118
    move-exception v0

    move-object/from16 v24, v3

    move-object v1, v0

    move-object/from16 v10, v24

    goto/16 :goto_3e6

    :catch_120
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 v1, v24

    goto/16 :goto_3d3

    :cond_127
    move-object/from16 v23, v1

    move-object/from16 v24, v3

    move-object/from16 v11, v23

    :goto_12d
    if-eqz v11, :cond_35e

    const/4 v1, 0x0

    const/4 v3, 0x2

    :try_start_131
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_335

    new-instance v12, Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v3, v17

    check-cast v3, [B

    move-object/from16 v33, v1

    const/4 v1, 0x2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v1, v17

    check-cast v1, [B

    array-length v1, v1

    move-object/from16 v34, v4

    const/4 v4, 0x0

    invoke-direct {v12, v3, v4, v1}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v27, v12

    const/4 v1, 0x3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B
    :try_end_15c
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_15c} :catch_358
    .catchall {:try_start_131 .. :try_end_15c} :catchall_352

    move-object v12, v3

    const/4 v3, 0x0

    if-eqz v12, :cond_183

    const/4 v4, 0x0

    :try_start_161
    aget-byte v1, v12, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    move/from16 v35, v3

    const/4 v4, 0x1

    aget-byte v3, v12, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    const/16 v17, 0x2

    aget-byte v3, v12, v17

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    const/4 v3, 0x3

    aget-byte v3, v12, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    move/from16 v35, v1

    goto :goto_187

    :cond_183
    move/from16 v35, v3

    const/16 v17, 0x2

    :goto_187
    if-gtz v35, :cond_1a4

    const-string v1, "ConstrainedState"

    const-string/jumbo v3, "something\'s wrong"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_191
    .catch Ljava/lang/Exception; {:try_start_161 .. :try_end_191} :catch_113
    .catchall {:try_start_161 .. :try_end_191} :catchall_10d

    move-object/from16 v42, v0

    move-object/from16 v19, v2

    move/from16 v23, v6

    move-object/from16 v48, v9

    move-object/from16 v49, v10

    move-object/from16 v10, v24

    move-object/from16 v21, v34

    const/16 v22, 0x0

    move-object v9, v5

    goto/16 :goto_334

    :cond_1a4
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v36, v1

    :try_start_1a9
    const-string/jumbo v1, "normalv2"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1b0
    .catch Ljava/lang/Exception; {:try_start_1a9 .. :try_end_1b0} :catch_358
    .catchall {:try_start_1a9 .. :try_end_1b0} :catchall_352

    if-nez v1, :cond_1c3

    :try_start_1b2
    const-string/jumbo v1, "normalv3"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1b9
    .catch Ljava/lang/Exception; {:try_start_1b2 .. :try_end_1b9} :catch_113
    .catchall {:try_start_1b2 .. :try_end_1b9} :catchall_10d

    if-eqz v1, :cond_1bc

    goto :goto_1c3

    :cond_1bc
    move-object/from16 v37, v3

    move-object/from16 v18, v4

    move-object/from16 v39, v5

    goto :goto_1fb

    :cond_1c3
    :goto_1c3
    const/4 v1, 0x4

    :try_start_1c4
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18
    :try_end_1c8
    .catch Ljava/lang/Exception; {:try_start_1c4 .. :try_end_1c8} :catch_358
    .catchall {:try_start_1c4 .. :try_end_1c8} :catchall_352

    if-eqz v18, :cond_1e8

    :try_start_1ca
    new-instance v1, Ljava/lang/String;

    move-object/from16 v37, v3

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v3, v18

    check-cast v3, [B

    move-object/from16 v38, v4

    const/4 v4, 0x4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v4, v4

    move-object/from16 v39, v5

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_1e7
    .catch Ljava/lang/Exception; {:try_start_1ca .. :try_end_1e7} :catch_113
    .catchall {:try_start_1ca .. :try_end_1e7} :catchall_10d

    goto :goto_1f0

    :cond_1e8
    move-object/from16 v37, v3

    move-object/from16 v38, v4

    move-object/from16 v39, v5

    move-object/from16 v1, v36

    :goto_1f0
    const/4 v3, 0x5

    :try_start_1f1
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object/from16 v36, v1

    move-object/from16 v18, v3

    :goto_1fb
    const-string/jumbo v1, "normalv3"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_202
    .catch Ljava/lang/Exception; {:try_start_1f1 .. :try_end_202} :catch_358
    .catchall {:try_start_1f1 .. :try_end_202} :catchall_352

    if-eqz v1, :cond_21b

    :try_start_204
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x6

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_218
    .catch Ljava/lang/Exception; {:try_start_204 .. :try_end_218} :catch_113
    .catchall {:try_start_204 .. :try_end_218} :catchall_10d

    move-object/from16 v37, v1

    goto :goto_21c

    :cond_21b
    const/4 v5, 0x0

    :goto_21c
    :try_start_21c
    new-instance v1, Lcom/samsung/android/knox/EnrollData;

    invoke-direct {v1}, Lcom/samsung/android/knox/EnrollData;-><init>()V

    move-object v4, v1

    iget-object v1, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;
    :try_end_22d
    .catch Ljava/lang/Exception; {:try_start_21c .. :try_end_22d} :catch_358
    .catchall {:try_start_21c .. :try_end_22d} :catchall_352

    move-object v3, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_2bd

    :try_start_231
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_2bd

    const/16 v20, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_23d
    move-object/from16 v40, v21

    move-object/from16 v5, v40

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2bd

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/ContentValues;

    move-object/from16 v41, v21

    move-object/from16 v42, v0

    const-string v0, "adminUid"

    move/from16 v43, v1

    move-object/from16 v1, v41

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object/from16 v44, v2

    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v45, v1

    iget-object v1, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v46, v5

    new-instance v5, Landroid/content/ComponentName;

    move/from16 v47, v6

    const-string v6, "com.sds.mobile.mdm.client.MDMService"

    move-object/from16 v48, v9

    const-string v9, "com.sds.mobile.mdm.client.MDMService.ui.receiver.DeviceAdminPolicyReceiver"

    invoke-direct {v5, v6, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x3e8

    if-ne v0, v6, :cond_29b

    if-eqz v3, :cond_29b

    invoke-virtual {v3, v5}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_29b

    const-string v6, "ConstrainedState"

    const-string v9, "Constrained mode is off - sds mdm was activated"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v2

    nop

    :goto_298
    move/from16 v43, v6

    goto :goto_2c7

    :cond_29b
    if-eqz v1, :cond_2ac

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2ac

    const-string v6, "ConstrainedState"

    const-string v9, "Constrained mode is off"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2aa
    .catch Ljava/lang/Exception; {:try_start_231 .. :try_end_2aa} :catch_113
    .catchall {:try_start_231 .. :try_end_2aa} :catchall_10d

    move v6, v2

    goto :goto_298

    :cond_2ac
    nop

    move-object/from16 v0, v42

    move/from16 v1, v43

    move-object/from16 v2, v44

    move-object/from16 v20, v45

    move-object/from16 v21, v46

    move/from16 v6, v47

    move-object/from16 v9, v48

    const/4 v5, 0x0

    goto :goto_23d

    :cond_2bd
    move-object/from16 v42, v0

    move/from16 v43, v1

    move-object/from16 v44, v2

    move/from16 v47, v6

    move-object/from16 v48, v9

    :goto_2c7
    move-object/from16 v25, v4

    move-object/from16 v26, v11

    move/from16 v28, v35

    move-object/from16 v29, v36

    move/from16 v30, v43

    move-object/from16 v31, v18

    move-object/from16 v32, v37

    :try_start_2d5
    invoke-virtual/range {v25 .. v32}, Lcom/samsung/android/knox/EnrollData;->setData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I[BLjava/lang/String;)V
    :try_end_2d8
    .catch Ljava/lang/Exception; {:try_start_2d5 .. :try_end_2d8} :catch_358
    .catchall {:try_start_2d5 .. :try_end_2d8} :catchall_352

    move/from16 v9, p1

    const/4 v0, 0x1

    if-ne v9, v0, :cond_31c

    if-nez v43, :cond_2fe

    const/4 v6, 0x1

    move-object v1, v7

    move-object/from16 v19, v44

    move-object v2, v11

    move-object/from16 v20, v3

    move-object/from16 v5, v24

    move-object/from16 v3, v27

    move-object v0, v4

    move-object/from16 v21, v34

    move-object/from16 v4, v36

    move-object/from16 v49, v10

    move-object/from16 v9, v39

    const/16 v22, 0x0

    move-object v10, v5

    move-object/from16 v5, v37

    move/from16 v23, v47

    :try_start_2fa
    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_32d

    :cond_2fe
    move-object/from16 v20, v3

    move-object v0, v4

    move-object/from16 v49, v10

    move-object/from16 v10, v24

    move-object/from16 v21, v34

    move-object/from16 v9, v39

    move-object/from16 v19, v44

    move/from16 v23, v47

    const/16 v22, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, v11

    move-object/from16 v3, v27

    move-object/from16 v4, v36

    move-object/from16 v5, v37

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_32d

    :cond_31c
    move-object/from16 v20, v3

    move-object v0, v4

    move-object/from16 v49, v10

    move-object/from16 v10, v24

    move-object/from16 v21, v34

    move-object/from16 v9, v39

    move-object/from16 v19, v44

    move/from16 v23, v47

    const/16 v22, 0x0

    :goto_32d
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_334
    goto :goto_351

    :cond_335
    move-object/from16 v42, v0

    move-object/from16 v33, v1

    move-object/from16 v19, v2

    move/from16 v17, v3

    move-object/from16 v21, v4

    move/from16 v23, v6

    move-object/from16 v48, v9

    move-object/from16 v49, v10

    move-object/from16 v10, v24

    const/16 v22, 0x0

    move-object v9, v5

    const-string v0, "ConstrainedState"

    const-string v1, "comment is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_351
    goto :goto_379

    :catchall_352
    move-exception v0

    move-object/from16 v10, v24

    move-object v1, v0

    goto/16 :goto_3e6

    :catch_358
    move-exception v0

    move-object/from16 v10, v24

    move-object v1, v10

    goto/16 :goto_3d3

    :cond_35e
    move-object/from16 v42, v0

    move-object/from16 v19, v2

    move-object/from16 v21, v4

    move/from16 v23, v6

    move-object/from16 v48, v9

    move-object/from16 v49, v10

    move-object/from16 v10, v24

    const/16 v17, 0x2

    const/16 v22, 0x0

    move-object v9, v5

    const-string v0, "ConstrainedState"

    const-string/jumbo v1, "package name is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_379
    nop

    :goto_37a
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_37d
    .catch Ljava/lang/Exception; {:try_start_2fa .. :try_end_37d} :catch_381
    .catchall {:try_start_2fa .. :try_end_37d} :catchall_37f

    const/4 v1, 0x0

    goto :goto_397

    :catchall_37f
    move-exception v0

    goto :goto_3d0

    :catch_381
    move-exception v0

    move-object v1, v10

    goto :goto_3d3

    :catchall_384
    move-exception v0

    move-object v10, v3

    move-object v1, v0

    goto/16 :goto_3e6

    :catch_389
    move-exception v0

    move-object v10, v3

    move-object v1, v10

    goto :goto_3d3

    :cond_38d
    move-object/from16 v42, v0

    move/from16 v23, v6

    move/from16 v17, v9

    move-object/from16 v49, v10

    move/from16 v22, v11

    :goto_397
    add-int/lit8 v6, v23, 0x1

    move/from16 v9, v17

    move/from16 v11, v22

    move-object/from16 v0, v42

    move-object/from16 v10, v49

    const/4 v12, 0x1

    goto/16 :goto_32

    :cond_3a4
    move-object/from16 v42, v0

    move-object/from16 v49, v10

    :try_start_3a8
    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3bb

    const-string v0, "ConstrainedState"

    const-string v2, "Data is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_3c5

    :cond_3bb
    iget-object v0, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_3c5
    .catch Ljava/lang/Exception; {:try_start_3a8 .. :try_end_3c5} :catch_3d2
    .catchall {:try_start_3a8 .. :try_end_3c5} :catchall_3ce

    :goto_3c5
    if-eqz v1, :cond_3cd

    :try_start_3c7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3ca
    .catch Ljava/lang/Exception; {:try_start_3c7 .. :try_end_3ca} :catch_3cb

    goto :goto_3cd

    :catch_3cb
    move-exception v0

    goto :goto_3e5

    :cond_3cd
    :goto_3cd
    goto :goto_3e5

    :catchall_3ce
    move-exception v0

    move-object v10, v1

    :goto_3d0
    move-object v1, v0

    goto :goto_3e6

    :catch_3d2
    move-exception v0

    :goto_3d3
    :try_start_3d3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v2, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    if-eqz v2, :cond_3df

    iget-object v2, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_3df
    .catchall {:try_start_3d3 .. :try_end_3df} :catchall_3ce

    :cond_3df
    if-eqz v1, :cond_3cd

    :try_start_3e1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3e4
    .catch Ljava/lang/Exception; {:try_start_3e1 .. :try_end_3e4} :catch_3cb

    goto :goto_3cd

    :goto_3e5
    return-void

    :goto_3e6
    nop

    if-eqz v10, :cond_3ef

    :try_start_3e9
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_3ec
    .catch Ljava/lang/Exception; {:try_start_3e9 .. :try_end_3ec} :catch_3ed

    goto :goto_3ef

    :catch_3ed
    move-exception v0

    nop

    :cond_3ef
    :goto_3ef
    throw v1
.end method

.method private updateNotification()V
    .registers 12

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3f

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_3e

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getComment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getDownloadUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getTargetPkgName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3e
    goto :goto_b

    :cond_3f
    return-void
.end method


# virtual methods
.method public checkConstrainedState()Z
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    goto :goto_b

    :cond_20
    :goto_20
    return v0
.end method

.method public checkSignature(Ljava/lang/String;Landroid/net/Uri;)Z
    .registers 19

    move-object/from16 v1, p1

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Landroid/content/pm/PackageParser;

    invoke-direct {v0}, Landroid/content/pm/PackageParser;-><init>()V

    move-object v3, v0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    const/4 v0, 0x0

    move-object v5, v0

    const/4 v6, 0x0

    :try_start_15
    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    move-object v5, v0

    if-eqz v5, :cond_1f

    invoke-static {v5, v6}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Z)V
    :try_end_1f
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_15 .. :try_end_1f} :catch_98

    :cond_1f
    nop

    if-eqz v1, :cond_8d

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_29

    goto :goto_8d

    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8a

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_33
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v8}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_87

    invoke-virtual {v8}, Lcom/samsung/android/knox/EnrollData;->getSignature()[B

    move-result-object v9

    if-nez v9, :cond_50

    return v6

    :cond_50
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v9}, Ljava/lang/String;-><init>([B)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v12, p0

    invoke-direct {v12, v1, v5}, Lcom/android/server/enterprise/utils/ConstrainedState;->getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;

    move-result-object v13

    if-eqz v13, :cond_89

    new-instance v7, Ljava/util/ArrayList;

    iget-object v14, v13, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-direct {v7, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v7, v11}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_7f

    const-string v6, "ConstrainedState"

    const-string/jumbo v14, "signature check success"

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    return v6

    :cond_7f
    const-string v14, "ConstrainedState"

    const-string v15, "Signature is different"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_87
    move-object/from16 v12, p0

    :cond_89
    goto :goto_33

    :cond_8a
    move-object/from16 v12, p0

    goto :goto_97

    :cond_8d
    :goto_8d
    move-object/from16 v12, p0

    const-string v0, "ConstrainedState"

    const-string/jumbo v7, "something\'s wrong"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_97
    return v6

    :catch_98
    move-exception v0

    move-object/from16 v12, p0

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/content/pm/PackageParser$PackageParserException;->printStackTrace()V

    return v6
.end method

.method public checkSignatureTarget(Ljava/lang/String;Landroid/net/Uri;)Z
    .registers 19

    move-object/from16 v1, p1

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Landroid/content/pm/PackageParser;

    invoke-direct {v0}, Landroid/content/pm/PackageParser;-><init>()V

    move-object v3, v0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    const/4 v0, 0x0

    move-object v5, v0

    const/4 v6, 0x0

    :try_start_15
    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    move-object v5, v0

    if-eqz v5, :cond_1f

    invoke-static {v5, v6}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Z)V
    :try_end_1f
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_15 .. :try_end_1f} :catch_9e

    :cond_1f
    nop

    if-eqz v1, :cond_93

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_29

    goto :goto_93

    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_90

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_33
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_90

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v8}, Lcom/samsung/android/knox/EnrollData;->getTargetPkgName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8d

    invoke-virtual {v8}, Lcom/samsung/android/knox/EnrollData;->getTargetPkgName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8d

    invoke-virtual {v8}, Lcom/samsung/android/knox/EnrollData;->getSignature()[B

    move-result-object v9

    if-nez v9, :cond_56

    return v6

    :cond_56
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v9}, Ljava/lang/String;-><init>([B)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v12, p0

    invoke-direct {v12, v1, v5}, Lcom/android/server/enterprise/utils/ConstrainedState;->getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;

    move-result-object v13

    if-eqz v13, :cond_8f

    new-instance v7, Ljava/util/ArrayList;

    iget-object v14, v13, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-direct {v7, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v7, v11}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_85

    const-string v6, "ConstrainedState"

    const-string/jumbo v14, "signature check success"

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    return v6

    :cond_85
    const-string v14, "ConstrainedState"

    const-string v15, "Signature is different"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_8d
    move-object/from16 v12, p0

    :cond_8f
    goto :goto_33

    :cond_90
    move-object/from16 v12, p0

    goto :goto_9d

    :cond_93
    :goto_93
    move-object/from16 v12, p0

    const-string v0, "ConstrainedState"

    const-string/jumbo v7, "something\'s wrong"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9d
    return v6

    :catch_9e
    move-exception v0

    move-object/from16 v12, p0

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/content/pm/PackageParser$PackageParserException;->printStackTrace()V

    return v6
.end method

.method public cleanUpConstrainedState(I)V
    .registers 8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p1, v0, :cond_f

    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BIND_DEVICE_ADMIN"

    const-string v3, "Only system or itself can remove an EDM admin"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "status"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "adminUid"

    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ConstrainedStateTable"

    invoke-virtual {v3, v4, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v3

    if-eqz v3, :cond_40

    iget-object v4, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3f

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/utils/ConstrainedState;->disableConstrainedStateInternal(ILjava/lang/String;)Z

    :cond_3f
    goto :goto_47

    :cond_40
    const-string v4, "ConstrainedState"

    const-string v5, "constrained state will go on"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_47
    return-void
.end method

.method public disableConstrainedState(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 6

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_RESTRICTION"

    const-string v3, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/utils/ConstrainedState;->disableConstrainedStateInternal(ILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public enableConstrainedState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 32

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v5, p6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v6, Ljava/util/ArrayList;

    const-string v7, "com.sec.enterprise.knox.permission.KNOX_RESTRICTION"

    const-string v8, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v7, p1

    invoke-virtual {v0, v7, v6}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v6

    const/4 v7, 0x0

    if-gtz v5, :cond_25

    return v7

    :cond_25
    iget-object v0, v1, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, v6, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    :try_start_31
    new-instance v0, Ljava/io/File;

    const-string v11, "/efs/constrained"

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_42

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    :cond_42
    iget-object v0, v1, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    if-eqz v0, :cond_81

    iget-object v0, v1, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_81

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iget-object v13, v1, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v13}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_80

    const-string v14, "ConstrainedState"

    const-string v15, "already existing values // update"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Ljava/io/File;

    const-string v15, "/efs/constrained"

    invoke-direct {v14, v15, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_7f} :catch_24a
    .catchall {:try_start_31 .. :try_end_7f} :catchall_248

    goto :goto_81

    :cond_80
    goto :goto_50

    :cond_81
    :goto_81
    const/4 v12, 0x0

    const/4 v0, 0x0

    move-object v13, v0

    :try_start_84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v15, 0x7fffffff

    and-int/2addr v0, v15

    new-instance v15, Ljava/io/File;

    const-string v7, "/efs/constrained"
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_a5} :catch_226
    .catchall {:try_start_84 .. :try_end_a5} :catchall_221

    move-object/from16 v16, v11

    :try_start_a7
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v15, v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v15

    move-object v13, v7

    move v7, v0

    :goto_b1
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c6

    add-int/lit8 v7, v7, 0x1

    new-instance v0, Ljava/io/File;

    const-string v11, "/efs/constrained"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v0, v11, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v0

    goto :goto_b1

    :cond_c6
    const/4 v0, 0x4

    new-array v0, v0, [B

    shr-int/lit8 v11, v5, 0x18

    int-to-byte v11, v11

    const/4 v15, 0x0

    aput-byte v11, v0, v15

    shr-int/lit8 v11, v5, 0x10

    int-to-byte v11, v11

    const/4 v15, 0x1

    aput-byte v11, v0, v15

    const/4 v11, 0x2

    shr-int/lit8 v15, v5, 0x8

    int-to-byte v15, v15

    aput-byte v15, v0, v11

    const/4 v11, 0x3

    int-to-byte v15, v5

    aput-byte v15, v0, v11

    move-object v11, v0

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v12, v0

    if-eqz p4, :cond_f9

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f9

    const-string/jumbo v0, "normalv3"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_116

    :cond_f9
    if-eqz p3, :cond_10c

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10c

    const-string/jumbo v0, "normalv2"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_116

    :cond_10c
    const-string/jumbo v0, "normal"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    :goto_116
    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    if-eqz v2, :cond_137

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_137

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_140

    :cond_137
    const-string v0, "DEFAULT"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    :goto_140
    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v12, v11}, Ljava/io/FileOutputStream;->write([B)V

    if-eqz p3, :cond_1d9

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1d9

    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    if-eqz p4, :cond_18a

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18a

    if-eqz p5, :cond_18a

    new-instance v0, Landroid/content/pm/Signature;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/pm/Signature;-><init>([B)V

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    move-object/from16 v17, v0

    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v12, v2}, Ljava/io/FileOutputStream;->write([B)V

    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_1d9

    :cond_18a
    const/4 v0, 0x0

    iget-object v2, v1, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v2

    move-object/from16 v18, v0

    const/16 v0, 0x40

    const/4 v3, 0x0

    invoke-virtual {v2, v8, v0, v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_1ba

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v19, v0

    array-length v0, v3

    move-object/from16 v20, v2

    const/4 v2, 0x0

    :goto_1a4
    if-ge v2, v0, :cond_1be

    aget-object v17, v3, v2

    move-object/from16 v21, v17

    move/from16 v22, v0

    move-object/from16 v0, v21

    if-eqz v0, :cond_1b5

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1c0

    :cond_1b5
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v22

    goto :goto_1a4

    :cond_1ba
    move-object/from16 v19, v0

    move-object/from16 v20, v2

    :cond_1be
    move-object/from16 v2, v18

    :goto_1c0
    if-eqz v2, :cond_1d9

    new-instance v0, Landroid/content/pm/Signature;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/pm/Signature;-><init>([B)V

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    move-object/from16 v23, v0

    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v12, v3}, Ljava/io/FileOutputStream;->write([B)V

    :cond_1d9
    :goto_1d9
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    const/4 v12, 0x0

    iget-object v0, v1, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, v6, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "ConstrainedStateTable"

    const-string/jumbo v4, "status"

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    move v2, v0

    if-nez v2, :cond_208

    nop

    invoke-virtual {v13}, Ljava/io/File;->delete()Z
    :try_end_1f5
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_1f5} :catch_21f
    .catchall {:try_start_a7 .. :try_end_1f5} :catchall_239

    nop

    if-eqz v12, :cond_202

    :try_start_1f8
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_1fb
    .catch Ljava/lang/Exception; {:try_start_1f8 .. :try_end_1fb} :catch_1fc
    .catchall {:try_start_1f8 .. :try_end_1fb} :catchall_248

    goto :goto_202

    :catch_1fc
    move-exception v0

    move-object v3, v0

    :try_start_1fe
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_201
    .catch Ljava/lang/Exception; {:try_start_1fe .. :try_end_201} :catch_24a
    .catchall {:try_start_1fe .. :try_end_201} :catchall_248

    goto :goto_203

    :cond_202
    :goto_202
    nop

    :goto_203
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v3, 0x0

    return v3

    :cond_208
    const/4 v3, 0x1

    :try_start_209
    invoke-direct {v1, v3}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V
    :try_end_20c
    .catch Ljava/lang/Exception; {:try_start_209 .. :try_end_20c} :catch_21f
    .catchall {:try_start_209 .. :try_end_20c} :catchall_239

    nop

    if-eqz v12, :cond_219

    :try_start_20f
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_212
    .catch Ljava/lang/Exception; {:try_start_20f .. :try_end_212} :catch_213
    .catchall {:try_start_20f .. :try_end_212} :catchall_248

    goto :goto_219

    :catch_213
    move-exception v0

    move-object v3, v0

    :try_start_215
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_218
    .catch Ljava/lang/Exception; {:try_start_215 .. :try_end_218} :catch_24a
    .catchall {:try_start_215 .. :try_end_218} :catchall_248

    goto :goto_21a

    :cond_219
    :goto_219
    nop

    :goto_21a
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v3, 0x1

    return v3

    :catch_21f
    move-exception v0

    goto :goto_229

    :catchall_221
    move-exception v0

    move-object/from16 v16, v11

    move-object v2, v0

    goto :goto_23b

    :catch_226
    move-exception v0

    move-object/from16 v16, v11

    :goto_229
    :try_start_229
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_22c
    .catchall {:try_start_229 .. :try_end_22c} :catchall_239

    if-eqz v12, :cond_238

    :try_start_22e
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_231
    .catch Ljava/lang/Exception; {:try_start_22e .. :try_end_231} :catch_232
    .catchall {:try_start_22e .. :try_end_231} :catchall_248

    goto :goto_238

    :catch_232
    move-exception v0

    move-object v2, v0

    :try_start_234
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_237
    .catch Ljava/lang/Exception; {:try_start_234 .. :try_end_237} :catch_24a
    .catchall {:try_start_234 .. :try_end_237} :catchall_248

    goto :goto_24e

    :cond_238
    :goto_238
    goto :goto_24e

    :catchall_239
    move-exception v0

    move-object v2, v0

    :goto_23b
    if-eqz v12, :cond_247

    :try_start_23d
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_240
    .catch Ljava/lang/Exception; {:try_start_23d .. :try_end_240} :catch_241
    .catchall {:try_start_23d .. :try_end_240} :catchall_248

    goto :goto_247

    :catch_241
    move-exception v0

    move-object v3, v0

    :try_start_243
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    nop

    :cond_247
    :goto_247
    throw v2
    :try_end_248
    .catch Ljava/lang/Exception; {:try_start_243 .. :try_end_248} :catch_24a
    .catchall {:try_start_243 .. :try_end_248} :catchall_248

    :catchall_248
    move-exception v0

    goto :goto_254

    :catch_24a
    move-exception v0

    :try_start_24b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_24e
    .catchall {:try_start_24b .. :try_end_24e} :catchall_248

    :goto_24e
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v2, 0x0

    return v2

    :goto_254
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getConstrainedState()I
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_21

    const/4 v0, 0x1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_20

    const/4 v0, 0x2

    goto :goto_21

    :cond_20
    goto :goto_c

    :cond_21
    :goto_21
    return v0
.end method

.method public isRestrictedByConstrainedState(I)Z
    .registers 7

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_27

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getPolicyBitMask()I

    move-result v1

    and-int v4, v1, p1

    if-lez v4, :cond_27

    const/4 v2, 0x1

    return v2

    :cond_27
    goto :goto_b

    :cond_28
    const/4 v2, 0x0

    return v2
.end method
