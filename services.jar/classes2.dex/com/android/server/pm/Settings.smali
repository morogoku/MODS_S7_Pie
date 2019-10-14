.class public final Lcom/android/server/pm/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Settings$RuntimePermissionPersistence;,
        Lcom/android/server/pm/Settings$VersionInfo;,
        Lcom/android/server/pm/Settings$RestoredPermissionGrant;,
        Lcom/android/server/pm/Settings$KernelPackageState;,
        Lcom/android/server/pm/Settings$DatabaseVersion;
    }
.end annotation


# static fields
.field private static final ATTR_APP_LINK_GENERATION:Ljava/lang/String; = "app-link-generation"

.field private static final ATTR_BLOCKED:Ljava/lang/String; = "blocked"

.field private static final ATTR_BLOCK_UNINSTALL:Ljava/lang/String; = "blockUninstall"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_CE_DATA_INODE:Ljava/lang/String; = "ceDataInode"

.field private static final ATTR_CODE:Ljava/lang/String; = "code"

.field private static final ATTR_DATABASE_VERSION:Ljava/lang/String; = "databaseVersion"

.field private static final ATTR_DOMAIN_VERIFICATON_STATE:Ljava/lang/String; = "domainVerificationStatus"

.field private static final ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field private static final ATTR_ENABLED_CALLER:Ljava/lang/String; = "enabledCaller"

.field private static final ATTR_ENFORCEMENT:Ljava/lang/String; = "enforcement"

.field private static final ATTR_FINGERPRINT:Ljava/lang/String; = "fingerprint"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_GRANTED:Ljava/lang/String; = "granted"

.field private static final ATTR_HARMFUL_APP_WARNING:Ljava/lang/String; = "harmful-app-warning"

.field private static final ATTR_HIDDEN:Ljava/lang/String; = "hidden"

.field private static final ATTR_INSTALLED:Ljava/lang/String; = "inst"

.field private static final ATTR_INSTALL_REASON:Ljava/lang/String; = "install-reason"

.field private static final ATTR_INSTANT_APP:Ljava/lang/String; = "instant-app"

.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_NOT_LAUNCHED:Ljava/lang/String; = "nl"

.field public static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final ATTR_REVOKE_ON_UPGRADE:Ljava/lang/String; = "rou"

.field private static final ATTR_SDK_VERSION:Ljava/lang/String; = "sdkVersion"

.field private static final ATTR_STOPPED:Ljava/lang/String; = "stopped"

.field private static final ATTR_SUSPENDED:Ljava/lang/String; = "suspended"

.field private static final ATTR_SUSPENDING_PACKAGE:Ljava/lang/String; = "suspending-package"

.field private static final ATTR_SUSPEND_DIALOG_MESSAGE:Ljava/lang/String; = "suspend_dialog_message"

.field private static final ATTR_USER:Ljava/lang/String; = "user"

.field private static final ATTR_USER_FIXED:Ljava/lang/String; = "fixed"

.field private static final ATTR_USER_SET:Ljava/lang/String; = "set"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_VIRTUAL_PRELOAD:Ljava/lang/String; = "virtual-preload"

.field private static final ATTR_VOLUME_UUID:Ljava/lang/String; = "volumeUuid"

.field public static final CURRENT_DATABASE_VERSION:I = 0x3

.field private static final DEBUG_KERNEL:Z = false

.field private static final DEBUG_MU:Z = false

.field private static final DEBUG_PARSER:Z = false

.field private static final DEBUG_STOPPED:Z = false

.field static final FLAG_DUMP_SPEC:[Ljava/lang/Object;

.field private static PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I = 0x0

.field private static PRE_M_APP_INFO_FLAG_FORWARD_LOCK:I = 0x0

.field private static PRE_M_APP_INFO_FLAG_HIDDEN:I = 0x0

.field private static PRE_M_APP_INFO_FLAG_PRIVILEGED:I = 0x0

.field private static final PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

.field private static final RUNTIME_PERMISSIONS_FILE_NAME:Ljava/lang/String; = "runtime-permissions.xml"

.field private static final TAG:Ljava/lang/String; = "PackageSettings"

.field private static final TAG_ALL_INTENT_FILTER_VERIFICATION:Ljava/lang/String; = "all-intent-filter-verifications"

.field private static final TAG_BLOCK_UNINSTALL:Ljava/lang/String; = "block-uninstall"

.field private static final TAG_BLOCK_UNINSTALL_PACKAGES:Ljava/lang/String; = "block-uninstall-packages"

.field private static final TAG_CHILD_PACKAGE:Ljava/lang/String; = "child-package"

.field static final TAG_CROSS_PROFILE_INTENT_FILTERS:Ljava/lang/String; = "crossProfile-intent-filters"

.field private static final TAG_DEFAULT_APPS:Ljava/lang/String; = "default-apps"

.field private static final TAG_DEFAULT_BROWSER:Ljava/lang/String; = "default-browser"

.field private static final TAG_DEFAULT_DIALER:Ljava/lang/String; = "default-dialer"

.field private static final TAG_DISABLED_COMPONENTS:Ljava/lang/String; = "disabled-components"

.field private static final TAG_DOMAIN_VERIFICATION:Ljava/lang/String; = "domain-verification"

.field private static final TAG_ENABLED_COMPONENTS:Ljava/lang/String; = "enabled-components"

.field public static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "pkg"

.field private static final TAG_PACKAGE_RESTRICTIONS:Ljava/lang/String; = "package-restrictions"

.field private static final TAG_PERMISSIONS:Ljava/lang/String; = "perms"

.field private static final TAG_PERMISSION_ENTRY:Ljava/lang/String; = "perm"

.field private static final TAG_PERSISTENT_PREFERRED_ACTIVITIES:Ljava/lang/String; = "persistent-preferred-activities"

.field private static final TAG_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "read-external-storage"

.field private static final TAG_RESTORED_RUNTIME_PERMISSIONS:Ljava/lang/String; = "restored-perms"

.field private static final TAG_RUNTIME_PERMISSIONS:Ljava/lang/String; = "runtime-permissions"

.field private static final TAG_SHARED_USER:Ljava/lang/String; = "shared-user"

.field private static final TAG_SUSPENDED_APP_EXTRAS:Ljava/lang/String; = "suspended-app-extras"

.field private static final TAG_SUSPENDED_LAUNCHER_EXTRAS:Ljava/lang/String; = "suspended-launcher-extras"

.field private static final TAG_USES_STATIC_LIB:Ljava/lang/String; = "uses-static-lib"

.field private static final TAG_VERSION:Ljava/lang/String; = "version"

.field private static final USER_RUNTIME_GRANT_MASK:I = 0xb

.field private static mFirstAvailableUid:I


# instance fields
.field private bSkipReadPermissionForSharedUser:Z

.field private final mBackupSettingsFilename:Ljava/io/File;

.field private final mBackupStoppedPackagesFilename:Ljava/io/File;

.field private final mBlockUninstallPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final mCrossProfileIntentResolvers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/CrossProfileIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field final mDefaultBrowserApp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mDefaultDialerApp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisabledSysPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field final mInstallerPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mKernelMapping:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/Settings$KernelPackageState;",
            ">;"
        }
    .end annotation
.end field

.field private final mKernelMappingFilename:Ljava/io/File;

.field public final mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

.field private final mKeySetRefs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field final mNextAppLinkGeneration:Landroid/util/SparseIntArray;

.field private final mOtherUserIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageListFilename:Ljava/io/File;

.field final mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field final mPackagesToBeCleaned:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageCleanItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mPastSignatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingPackagesForSharedUser:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

.field final mPersistentPreferredActivities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PersistentPreferredIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field final mPreferredActivities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PreferredIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field mReadExternalStorageEnforced:Ljava/lang/Boolean;

.field final mReadMessages:Ljava/lang/StringBuilder;

.field private mRemovedApp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRenamedPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestoredUserGrants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/pm/Settings$RestoredPermissionGrant;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

.field private final mSettingsFilename:Ljava/io/File;

.field final mSharedUsers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mStoppedPackagesFilename:Ljava/io/File;

.field private final mSystemDir:Ljava/io/File;

.field private final mUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

.field private mVersion:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/Settings$VersionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 18

    const/4 v0, 0x0

    sput v0, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    const/high16 v1, 0x8000000

    sput v1, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    const/high16 v1, 0x10000000

    sput v1, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    const/high16 v1, 0x20000000

    sput v1, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_FORWARD_LOCK:I

    const/high16 v1, 0x40000000    # 2.0f

    sput v1, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I

    const/16 v1, 0x20

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    const-string v4, "SYSTEM"

    aput-object v4, v2, v3

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v5, "DEBUGGABLE"

    const/4 v6, 0x3

    aput-object v5, v2, v6

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v5

    const-string v7, "HAS_CODE"

    const/4 v8, 0x5

    aput-object v7, v2, v8

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x6

    aput-object v9, v2, v10

    const-string v9, "PERSISTENT"

    const/4 v11, 0x7

    aput-object v9, v2, v11

    const/16 v9, 0x10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v7

    const-string v12, "FACTORY_TEST"

    const/16 v13, 0x9

    aput-object v12, v2, v13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v14, 0xa

    aput-object v12, v2, v14

    const-string v12, "ALLOW_TASK_REPARENTING"

    const/16 v15, 0xb

    aput-object v12, v2, v15

    const/16 v12, 0x40

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v16, 0xc

    aput-object v12, v2, v16

    const-string v12, "ALLOW_CLEAR_USER_DATA"

    const/16 v17, 0xd

    aput-object v12, v2, v17

    const/16 v12, 0x80

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v17, 0xe

    aput-object v12, v2, v17

    const-string v12, "UPDATED_SYSTEM_APP"

    const/16 v17, 0xf

    aput-object v12, v2, v17

    const/16 v12, 0x100

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v9

    const-string v12, "TEST_ONLY"

    const/16 v17, 0x11

    aput-object v12, v2, v17

    const/16 v12, 0x4000

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v17, 0x12

    aput-object v12, v2, v17

    const-string v12, "VM_SAFE_MODE"

    const/16 v17, 0x13

    aput-object v12, v2, v17

    const v12, 0x8000

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v17, 0x14

    aput-object v12, v2, v17

    const-string v12, "ALLOW_BACKUP"

    const/16 v17, 0x15

    aput-object v12, v2, v17

    const/high16 v12, 0x10000

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v17, 0x16

    aput-object v12, v2, v17

    const-string v12, "KILL_AFTER_RESTORE"

    const/16 v17, 0x17

    aput-object v12, v2, v17

    const/high16 v12, 0x20000

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v17, 0x18

    aput-object v12, v2, v17

    const-string v12, "RESTORE_ANY_VERSION"

    const/16 v17, 0x19

    aput-object v12, v2, v17

    const/high16 v12, 0x40000

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v17, 0x1a

    aput-object v12, v2, v17

    const-string v12, "EXTERNAL_STORAGE"

    const/16 v17, 0x1b

    aput-object v12, v2, v17

    const/high16 v12, 0x100000

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v17, 0x1c

    aput-object v12, v2, v17

    const-string v12, "LARGE_HEAP"

    const/16 v17, 0x1d

    aput-object v12, v2, v17

    const/high16 v12, 0x2000000

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v17, 0x1e

    aput-object v12, v2, v17

    const-string v12, "IS_GAME"

    const/16 v17, 0x1f

    aput-object v12, v2, v17

    sput-object v2, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    const/16 v2, 0x28

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v12, 0x400

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v0

    const-string v0, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE"

    aput-object v0, v2, v3

    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    const-string v0, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE_VIA_SDK_VERSION"

    aput-object v0, v2, v6

    const/16 v0, 0x800

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    const-string v0, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_UNRESIZEABLE"

    aput-object v0, v2, v8

    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v10

    const-string v0, "BACKUP_IN_FOREGROUND"

    aput-object v0, v2, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v7

    const-string v0, "CANT_SAVE_STATE"

    aput-object v0, v2, v13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v14

    const-string v0, "DEFAULT_TO_DEVICE_PROTECTED_STORAGE"

    aput-object v0, v2, v15

    const/16 v0, 0x40

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v16

    const-string v0, "DIRECT_BOOT_AWARE"

    const/16 v4, 0xd

    aput-object v0, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v4, 0xe

    aput-object v0, v2, v4

    const-string v0, "FORWARD_LOCK"

    const/16 v4, 0xf

    aput-object v0, v2, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v9

    const-string v0, "HAS_DOMAIN_URLS"

    const/16 v4, 0x11

    aput-object v0, v2, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x12

    aput-object v0, v2, v3

    const-string v0, "HIDDEN"

    const/16 v3, 0x13

    aput-object v0, v2, v3

    const/16 v0, 0x80

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x14

    aput-object v0, v2, v3

    const-string v0, "EPHEMERAL"

    const/16 v3, 0x15

    aput-object v0, v2, v3

    const v0, 0x8000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x16

    aput-object v0, v2, v3

    const-string v0, "ISOLATED_SPLIT_LOADING"

    const/16 v3, 0x17

    aput-object v0, v2, v3

    const/high16 v0, 0x20000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x18

    aput-object v0, v2, v3

    const-string v0, "OEM"

    const/16 v3, 0x19

    aput-object v0, v2, v3

    const/16 v0, 0x100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x1a

    aput-object v0, v2, v3

    const-string v0, "PARTIALLY_DIRECT_BOOT_AWARE"

    const/16 v3, 0x1b

    aput-object v0, v2, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x1c

    aput-object v0, v2, v3

    const-string v0, "PRIVILEGED"

    const/16 v3, 0x1d

    aput-object v0, v2, v3

    const/16 v0, 0x200

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x1e

    aput-object v0, v2, v3

    const-string v0, "REQUIRED_FOR_SYSTEM_USER"

    const/16 v3, 0x1f

    aput-object v0, v2, v3

    const/16 v0, 0x4000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "STATIC_SHARED_LIBRARY"

    const/16 v1, 0x21

    aput-object v0, v2, v1

    const/high16 v0, 0x40000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x22

    aput-object v0, v2, v1

    const-string v0, "VENDOR"

    const/16 v1, 0x23

    aput-object v0, v2, v1

    const/high16 v0, 0x80000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x24

    aput-object v0, v2, v1

    const-string v0, "PRODUCT"

    const/16 v1, 0x25

    aput-object v0, v2, v1

    const/high16 v0, 0x10000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x26

    aput-object v0, v2, v1

    const-string v0, "VIRTUAL_PRELOAD"

    const/16 v1, 0x27

    aput-object v0, v2, v1

    sput-object v2, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/permission/PermissionSettings;Ljava/lang/Object;)V
    .registers 4

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/pm/Settings;-><init>(Ljava/io/File;Lcom/android/server/pm/permission/PermissionSettings;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/android/server/pm/permission/PermissionSettings;Ljava/lang/Object;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultDialerApp:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingPackagesForSharedUser:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/pm/KeySetManagerService;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Lcom/android/server/pm/KeySetManagerService;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRemovedApp:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    new-instance v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;-><init>(Lcom/android/server/pm/Settings;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "system"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/16 v2, 0x1fd

    invoke-static {v0, v2, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "packages.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "packages-backup.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "packages.list"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    const/16 v1, 0x1a0

    const/16 v2, 0x3e8

    const/16 v3, 0x408

    invoke-static {v0, v1, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    new-instance v0, Ljava/io/File;

    const-string v1, "/config/sdcardfs"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_121

    move-object v1, v0

    goto :goto_122

    :cond_121
    const/4 v1, 0x0

    :goto_122
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "packages-stopped.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "packages-stopped-backup.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->readRemovedAppFile()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/Settings;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;
    .registers 2

    invoke-static {p0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/Settings;I)Ljava/io/File;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserRuntimePermissionsFile(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/pm/Settings;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    return-object v0
.end method

.method private addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_8b

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    const/4 v1, 0x6

    if-eqz v0, :cond_45

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eq v0, p2, :cond_45

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but is now "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; I am not changing its files so it will probably fail!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    goto :goto_82

    :cond_45
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v2, p2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-eq v0, v2, :cond_82

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was user id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but is now user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; I am not changing its files so it will probably fail!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :cond_82
    :goto_82
    invoke-virtual {p2, p1}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    iput-object p2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v0, p2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    :cond_8b
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    move-result-object v0

    if-nez p2, :cond_9d

    if-eqz v0, :cond_a6

    if-eq v0, p1, :cond_a6

    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/Settings;->replaceUserIdLPw(ILjava/lang/Object;)V

    goto :goto_a6

    :cond_9d
    if-eqz v0, :cond_a6

    if-eq v0, p2, :cond_a6

    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1, p2}, Lcom/android/server/pm/Settings;->replaceUserIdLPw(ILjava/lang/Object;)V

    :cond_a6
    :goto_a6
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/IntentFilterVerificationInfo;

    if-eqz v1, :cond_bc

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    :cond_bc
    return-void
.end method

.method private addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x0

    const/16 v1, 0x4e1f

    if-le p1, v1, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x6

    const/16 v2, 0x2710

    if-lt p1, v2, :cond_49

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit16 v3, p1, -0x2710

    :goto_13
    if-lt v3, v2, :cond_1e

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_1e
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_43

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding duplicate user id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return v0

    :cond_43
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_73

    :cond_49
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate shared id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return v0

    :cond_6e
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_73
    const/4 v0, 0x1

    return v0
.end method

.method private applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V
    .registers 35

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p9

    move-object v4, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->updateFlagsForResolve(IILandroid/content/Intent;IZ)I

    move-result v1

    move-object/from16 v2, p1

    iget-object v0, v2, Lcom/android/server/pm/PackageManagerService;->mActivities:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v7, v3, v1, v4}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_1be

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v11, 0x1

    if-le v6, v11, :cond_1be

    const/4 v6, 0x0

    const/4 v12, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Landroid/content/ComponentName;

    move/from16 v20, v6

    move v6, v0

    move v0, v4

    :goto_3c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-ge v0, v14, :cond_93

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v15, Landroid/content/ComponentName;

    iget-object v4, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v15, v4, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v15, v13, v0

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v11, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7a

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iget-object v11, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7a

    const/4 v4, 0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    iget v6, v11, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v20, v4

    const/4 v11, 0x1

    goto :goto_8f

    :cond_7a
    iget-object v4, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v11, 0x1

    and-int/2addr v4, v11

    if-nez v4, :cond_8f

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget v4, v4, Landroid/content/pm/ResolveInfo;->match:I

    if-lt v4, v5, :cond_8f

    aget-object v4, v13, v0

    move-object v12, v4

    :cond_8f
    :goto_8f
    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x0

    goto :goto_3c

    :cond_93
    if-eqz v12, :cond_98

    if-ge v5, v6, :cond_98

    const/4 v12, 0x0

    :cond_98
    if-eqz v20, :cond_14f

    if-nez v12, :cond_14f

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v4, v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_af

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_af
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_cd

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_bd
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_cd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v4, v11}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_bd

    :cond_cd
    const/high16 v0, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_d7

    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    :cond_d7
    if-eqz v8, :cond_dc

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    :cond_dc
    if-eqz p6, :cond_e9

    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getType()I

    move-result v14

    invoke-virtual {v4, v0, v14}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_e9
    if-eqz v9, :cond_ee

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V

    :cond_ee
    if-eqz v10, :cond_f3

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addDataPath(Landroid/os/PatternMatcher;)V

    :cond_f3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_130

    :try_start_f9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_100
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_f9 .. :try_end_100} :catch_106

    nop

    move/from16 v23, v1

    move-object/from16 v1, p4

    goto :goto_134

    :catch_106
    move-exception v0

    const-string v14, "PackageSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v0

    const-string v0, "Malformed mimetype "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v23, v1

    move-object/from16 v1, p4

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_134

    :cond_130
    move/from16 v23, v1

    move-object/from16 v1, p4

    :goto_134
    new-instance v0, Lcom/android/server/pm/PreferredActivity;

    const/16 v19, 0x1

    move-object v14, v0

    move-object v15, v4

    move/from16 v16, v6

    move-object/from16 v17, v13

    move-object/from16 v18, v1

    invoke-direct/range {v14 .. v19}, Lcom/android/server/pm/PreferredActivity;-><init>(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    move-object/from16 v14, p0

    move/from16 v15, p9

    invoke-virtual {v14, v15}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    goto :goto_1bd

    :cond_14f
    move-object/from16 v14, p0

    move/from16 v15, p9

    move/from16 v23, v1

    move-object/from16 v1, p4

    if-nez v12, :cond_19b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No component "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " found setting preferred "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; possible matches are "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v21, 0x0

    :goto_179
    move/from16 v2, v21

    array-length v4, v13

    if-ge v2, v4, :cond_191

    if-lez v2, :cond_185

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_185
    aget-object v4, v13, v2

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v21, v2, 0x1

    goto :goto_179

    :cond_191
    const-string v2, "PackageSettings"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1bd

    :cond_19b
    const-string v0, "PackageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not setting preferred "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; found third party match "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1bd
    goto :goto_1e9

    :cond_1be
    move-object/from16 v14, p0

    move/from16 v15, p9

    move/from16 v23, v1

    move-object/from16 v1, p4

    const-string v2, "PackageSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No potential matches found for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " while setting preferred "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v0

    :goto_1e9
    return-void
.end method

.method private applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V
    .registers 31

    move-object/from16 v0, p2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0xc0000

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move v14, v2

    move v2, v3

    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countCategories()I

    move-result v4

    if-ge v2, v4, :cond_2f

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    const/high16 v5, 0x10000

    or-int/2addr v14, v5

    goto :goto_2c

    :cond_29
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_2f
    const/4 v2, 0x1

    const/4 v4, 0x0

    move/from16 v16, v2

    move v2, v3

    move v15, v4

    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v4

    if-ge v2, v4, :cond_19c

    const/4 v4, 0x1

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4a

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4a

    const/4 v5, 0x1

    move v15, v5

    :cond_4a
    move/from16 v17, v4

    move v4, v3

    :goto_4d
    move v12, v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v4

    if-ge v12, v4, :cond_9b

    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    move-object v11, v4

    invoke-virtual {v11, v13}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0, v12}, Landroid/content/IntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/net/Uri$Builder;->opaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v9, v4

    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v9

    move v7, v14

    move-object/from16 v8, p3

    move-object/from16 v20, v9

    move-object v9, v13

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    move-object/from16 v11, v18

    move/from16 v18, v12

    move-object/from16 v12, v19

    move-object v3, v13

    move/from16 v13, p4

    invoke-direct/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    const/16 v17, 0x0

    add-int/lit8 v4, v18, 0x1

    move-object v13, v3

    const/4 v3, 0x0

    goto :goto_4d

    :cond_9b
    move-object v3, v13

    const/4 v4, 0x0

    :goto_9d
    move v13, v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v4

    if-ge v13, v4, :cond_162

    const/4 v4, 0x1

    invoke-virtual {v0, v13}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v12

    move/from16 v18, v17

    move/from16 v17, v4

    const/4 v4, 0x0

    :goto_ae
    move v11, v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v4

    if-ge v11, v4, :cond_111

    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    move-object v10, v4

    invoke-virtual {v10, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v12}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_cb

    invoke-virtual {v12}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_cb
    invoke-virtual {v0, v11}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v8, v4

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v19, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v8

    move v7, v14

    move-object/from16 v20, v8

    move-object/from16 v8, p3

    move-object/from16 v21, v9

    move-object v9, v3

    move-object/from16 v22, v10

    move-object/from16 v10, v19

    move/from16 v19, v11

    move-object v11, v12

    move-object/from16 v24, v12

    move-object/from16 v12, v21

    move/from16 v25, v13

    move/from16 v13, p4

    invoke-direct/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    const/16 v23, 0x0

    move/from16 v18, v23

    move/from16 v17, v23

    add-int/lit8 v4, v19, 0x1

    move-object/from16 v12, v24

    move/from16 v13, v25

    goto :goto_ae

    :cond_111
    move-object/from16 v24, v12

    move/from16 v25, v13

    const/16 v23, 0x0

    if-eqz v17, :cond_15c

    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    move-object v13, v4

    invoke-virtual {v13, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-object/from16 v12, v24

    invoke-virtual {v12}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_131

    invoke-virtual {v12}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_131
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v11, v4

    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v10, 0x0

    const/16 v19, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v11

    move v7, v14

    move-object/from16 v8, p3

    move-object v9, v3

    move-object/from16 v20, v11

    move-object v11, v12

    move-object/from16 v21, v12

    move-object/from16 v12, v19

    move-object/from16 v19, v13

    move/from16 v13, p4

    invoke-direct/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    const/4 v4, 0x0

    move/from16 v17, v4

    goto :goto_15e

    :cond_15c
    move/from16 v17, v18

    :goto_15e
    add-int/lit8 v4, v25, 0x1

    goto/16 :goto_9d

    :cond_162
    const/16 v23, 0x0

    if-eqz v17, :cond_194

    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    move-object v13, v4

    invoke-virtual {v13, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v12, v4

    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v18, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v12

    move v7, v14

    move-object/from16 v8, p3

    move-object v9, v3

    move-object/from16 v19, v12

    move-object/from16 v12, v18

    move-object/from16 v18, v13

    move/from16 v13, p4

    invoke-direct/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    :cond_194
    const/16 v16, 0x0

    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v23

    goto/16 :goto_35

    :cond_19c
    move/from16 v23, v3

    move/from16 v2, v23

    :goto_1a0
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v3

    if-ge v2, v3, :cond_226

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v15, :cond_204

    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    move-object v13, v4

    move/from16 v4, v23

    :goto_1b4
    move v12, v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v4

    if-ge v12, v4, :cond_203

    invoke-virtual {v0, v12}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1fa

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1fa

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v10, v4

    invoke-virtual {v13, v11}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v10, v4, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v10

    move v7, v14

    move-object/from16 v8, p3

    move-object v9, v11

    move-object/from16 v20, v10

    move-object/from16 v10, v17

    move-object/from16 v17, v11

    move-object/from16 v11, v18

    move/from16 v18, v12

    move-object/from16 v12, v19

    move-object/from16 v19, v13

    move/from16 v13, p4

    invoke-direct/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    goto :goto_1fe

    :cond_1fa
    move/from16 v18, v12

    move-object/from16 v19, v13

    :goto_1fe
    add-int/lit8 v4, v18, 0x1

    move-object/from16 v13, v19

    goto :goto_1b4

    :cond_203
    goto :goto_220

    :cond_204
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v13, v4

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v13

    move v7, v14

    move-object/from16 v8, p3

    move-object/from16 v17, v13

    move/from16 v13, p4

    invoke-direct/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    :goto_220
    const/16 v16, 0x0

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1a0

    :cond_226
    if-eqz v16, :cond_239

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v1

    move v5, v14

    move-object/from16 v6, p3

    move/from16 v11, p4

    invoke-direct/range {v2 .. v11}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    :cond_239
    return-void
.end method

.method private applyManualDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Landroid/content/IntentFilter;I)V
    .registers 25

    move-object/from16 v6, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p6

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->updateFlagsForResolve(IILandroid/content/Intent;IZ)I

    move-result v0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mActivities:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v6, v3, v0, v4}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_114

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_114

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Landroid/content/ComponentName;

    move/from16 v17, v7

    move v7, v3

    move v3, v4

    :goto_36
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_89

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v12, Landroid/content/ComponentName;

    iget-object v13, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v14, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v12, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v12, v10, v3

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_73

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_73

    const/4 v12, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    iget v7, v13, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v17, v12

    goto :goto_86

    :cond_73
    iget-object v12, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v12, v8

    if-nez v12, :cond_86

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    iget v12, v12, Landroid/content/pm/ResolveInfo;->match:I

    if-lt v12, v5, :cond_86

    aget-object v9, v10, v3

    :cond_86
    :goto_86
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_89
    if-eqz v9, :cond_8e

    if-ge v5, v7, :cond_8e

    const/4 v9, 0x0

    :cond_8e
    if-eqz v17, :cond_ac

    if-nez v9, :cond_ac

    new-instance v3, Lcom/android/server/pm/PreferredActivity;

    const/16 v16, 0x1

    move-object v11, v3

    move-object/from16 v12, p5

    move v13, v7

    move-object v14, v10

    move-object/from16 v15, p4

    invoke-direct/range {v11 .. v16}, Lcom/android/server/pm/PreferredActivity;-><init>(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    move-object/from16 v8, p0

    move/from16 v11, p6

    invoke-virtual {v8, v11}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    goto :goto_113

    :cond_ac
    move-object/from16 v8, p0

    move/from16 v11, p6

    if-nez v9, :cond_f1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No component "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " found setting preferred "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, "; possible matches are "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_d1
    array-length v12, v10

    if-ge v4, v12, :cond_e7

    if-lez v4, :cond_db

    const-string v12, ", "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_db
    aget-object v12, v10, v4

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_d1

    :cond_e7
    const-string v4, "PackageSettings"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113

    :cond_f1
    const-string v3, "PackageSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Not setting preferred "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, "; found third party match "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_113
    goto :goto_13b

    :cond_114
    move-object/from16 v8, p0

    move/from16 v11, p6

    const-string v4, "PackageSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No potential matches found for "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " while setting preferred "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v3

    :goto_13b
    return-void
.end method

.method static createNewSetting(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILandroid/os/UserHandle;ZZZLjava/lang/String;Ljava/util/List;Lcom/android/server/pm/UserManagerService;[Ljava/lang/String;[J)Lcom/android/server/pm/PackageSetting;
    .registers 69
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JII",
            "Landroid/os/UserHandle;",
            "ZZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/UserManagerService;",
            "[",
            "Ljava/lang/String;",
            "[J)",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v15, p12

    move-object/from16 v14, p19

    if-eqz v0, :cond_5f

    new-instance v3, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v12, p0

    invoke-direct {v3, v0, v12}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)V

    nop

    if-eqz v14, :cond_1c

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1d

    :cond_1c
    const/4 v4, 0x0

    :goto_1d
    iput-object v4, v3, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    move-object/from16 v13, p5

    iput-object v13, v3, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    move-object/from16 v11, p7

    iput-object v11, v3, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    move-object/from16 v10, p18

    iput-object v10, v3, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    iput v15, v3, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    move/from16 v9, p13

    iput v9, v3, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    move-object/from16 v8, p8

    iput-object v8, v3, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    move-object/from16 v7, p6

    iput-object v7, v3, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    move-object/from16 v6, p9

    iput-object v6, v3, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    new-instance v4, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v4}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v4, v3, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    move-wide/from16 v4, p10

    iput-wide v4, v3, Lcom/android/server/pm/PackageSetting;->versionCode:J

    move-object/from16 v0, p21

    iput-object v0, v3, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    move-object/from16 v1, p22

    iput-object v1, v3, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    move-object/from16 v11, p20

    move/from16 v21, v15

    :goto_5b
    move-object/from16 v1, p2

    goto/16 :goto_164

    :cond_5f
    move-object/from16 v12, p0

    move-object/from16 v13, p5

    move-object/from16 v7, p6

    move-object/from16 v11, p7

    move-object/from16 v8, p8

    move-object/from16 v6, p9

    move/from16 v9, p13

    move-object/from16 v10, p18

    move-object/from16 v0, p21

    move-object/from16 v1, p22

    new-instance v22, Lcom/android/server/pm/PackageSetting;

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v3, v22

    move-object v4, v12

    move-object/from16 v5, p3

    move-object v6, v13

    move-object v8, v11

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, v16

    move-wide/from16 v12, p10

    move v14, v15

    move/from16 v21, v15

    move/from16 v15, p13

    move-object/from16 v16, p18

    move-object/from16 v17, p19

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    invoke-direct/range {v3 .. v20}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;I[Ljava/lang/String;[J)V

    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    iput-object v2, v3, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    and-int/lit8 v4, v21, 0x1

    if-nez v4, :cond_115

    invoke-static/range {p20 .. p20}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz p14, :cond_b1

    invoke-virtual/range {p14 .. p14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    goto :goto_b2

    :cond_b1
    move v6, v5

    :goto_b2
    if-eqz v4, :cond_115

    if-eqz p15, :cond_115

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_ba
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_115

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    if-eqz p14, :cond_e0

    const/4 v10, -0x1

    if-ne v6, v10, :cond_d6

    iget v10, v9, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v11, p20

    invoke-static {v11, v10}, Lcom/android/server/pm/Settings;->isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z

    move-result v10

    if-eqz v10, :cond_e2

    goto :goto_d8

    :cond_d6
    move-object/from16 v11, p20

    :goto_d8
    iget v10, v9, Landroid/content/pm/UserInfo;->id:I

    if-ne v6, v10, :cond_dd

    goto :goto_e2

    :cond_dd
    move/from16 v28, v5

    goto :goto_e5

    :cond_e0
    move-object/from16 v11, p20

    :cond_e2
    :goto_e2
    const/4 v10, 0x1

    move/from16 v28, v10

    :goto_e5
    iget v10, v9, Landroid/content/pm/UserInfo;->id:I

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x1

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v23, v3

    move/from16 v24, v10

    move/from16 v37, p16

    move/from16 v38, p17

    invoke-virtual/range {v23 .. v45}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZZLjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IIILjava/lang/String;)V

    goto :goto_ba

    :cond_115
    move-object/from16 v11, p20

    if-eqz v2, :cond_11f

    iget v4, v2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    goto/16 :goto_5b

    :cond_11f
    move-object/from16 v1, p2

    if-eqz v1, :cond_164

    new-instance v4, Lcom/android/server/pm/PackageSignatures;

    iget-object v5, v1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v4, v5}, Lcom/android/server/pm/PackageSignatures;-><init>(Lcom/android/server/pm/PackageSignatures;)V

    iput-object v4, v3, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget v4, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    iput v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/permission/PermissionsState;->copyFrom(Lcom/android/server/pm/permission/PermissionsState;)V

    invoke-static/range {p20 .. p20}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_164

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_145
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_164

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    nop

    invoke-virtual {v1, v8}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Landroid/util/ArraySet;

    move-result-object v9

    invoke-virtual {v3, v9, v8}, Lcom/android/server/pm/PackageSetting;->setDisabledComponentsCopy(Landroid/util/ArraySet;I)V

    nop

    invoke-virtual {v1, v8}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Landroid/util/ArraySet;

    move-result-object v9

    invoke-virtual {v3, v9, v8}, Lcom/android/server/pm/PackageSetting;->setEnabledComponentsCopy(Landroid/util/ArraySet;I)V

    goto :goto_145

    :cond_164
    :goto_164
    return-object v3
.end method

.method private static dumpSplitNames(Ljava/io/PrintWriter;Landroid/content/pm/PackageParser$Package;)V
    .registers 4

    if-nez p1, :cond_9

    const-string/jumbo v0, "unknown"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_51

    :cond_9
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "base"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    if-eqz v0, :cond_21

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    :cond_21
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    if-eqz v0, :cond_4c

    const/4 v0, 0x0

    :goto_26
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_4c

    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    aget v1, v1, v0

    if-eqz v1, :cond_49

    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_4c
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_51
    return-void
.end method

.method private static getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/UserManagerService;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v2
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_9} :catch_12
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catch_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v2, 0x0

    return-object v2
.end method

.method private getUserPackagesStateBackupFile(I)Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "package-restrictions-backup.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserPackagesStateFile(I)Ljava/io/File;
    .registers 6

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "package-restrictions.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getUserRuntimePermissionsFile(I)Ljava/io/File;
    .registers 6

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "runtime-permissions.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private hasPackageDisableForGuest(Lcom/android/server/pm/PackageSetting;I)Z
    .registers 12

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    goto :goto_10

    :cond_f
    const/4 v2, 0x1

    :goto_10
    const/4 v3, 0x0

    if-eqz v2, :cond_1c

    const-string v4, "PackageSettings"

    const-string/jumbo v5, "um.isGuest return false"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1c
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v5, :cond_2d

    const-string v6, "PackageSettings"

    const-string/jumbo v7, "no pkg in packageSettings"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2d
    const/16 v6, 0x80

    invoke-static {v5, v6, v4, p2}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-nez v6, :cond_3e

    const-string v7, "PackageSettings"

    const-string/jumbo v8, "no applicationInfo"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3e
    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_49

    const-string v8, "com.samsung.android.multiuser.disable_for_guest"

    invoke-virtual {v7, v8, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    return v3

    :cond_49
    return v3
.end method

.method static isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z
    .registers 3

    const-string/jumbo v0, "no_debugging_features"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private newUserIdLPw(Ljava/lang/Object;)I
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    :goto_8
    const/16 v2, 0x2710

    if-ge v1, v0, :cond_1e

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1b

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v2, v1

    return v2

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1e
    const/16 v1, 0x270f

    if-le v0, v1, :cond_39

    const/4 v1, 0x0

    :goto_23
    if-ge v1, v0, :cond_37

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_34

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v2, v1

    return v2

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_37
    const/4 v1, -0x1

    return v1

    :cond_39
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v0

    return v2
.end method

.method private static permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    if-eqz p1, :cond_28

    if-nez v0, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    shl-int/2addr v1, v2

    not-int v2, v1

    and-int/2addr p1, v2

    invoke-static {v1}, Landroid/content/pm/PackageManager;->permissionFlagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_28
    if-eqz v0, :cond_34

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_34
    const-string v1, ""

    return-object v1
.end method

.method static printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V
    .registers 6

    const-string v0, "[ "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_6
    array-length v1, p2

    if-ge v0, v1, :cond_24

    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int v2, p1, v1

    if-eqz v2, :cond_21

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p2, v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_21
    add-int/lit8 v0, v0, 0x2

    goto :goto_6

    :cond_24
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    :cond_5
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3e

    const/4 v2, 0x3

    if-ne v3, v2, :cond_16

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_3e

    :cond_16
    if-eq v3, v2, :cond_5

    const/4 v2, 0x4

    if-ne v3, v2, :cond_1c

    goto :goto_5

    :cond_1c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    const-string/jumbo v5, "name"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3d

    if-nez v0, :cond_3a

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v5

    :cond_3a
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_3d
    goto :goto_5

    :cond_3e
    return-object v0
.end method

.method private readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4d

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4d

    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    goto :goto_4

    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    new-instance v3, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-direct {v3, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/CrossProfileIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    goto :goto_4c

    :cond_34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under crossProfile-intent-filters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_4c
    goto :goto_4

    :cond_4d
    return-void
.end method

.method private readDefaultPreferredActivitiesLPw(Lcom/android/server/pm/PackageManagerService;Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_4
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_8e

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_8e

    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    goto :goto_4

    :cond_1b
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_64

    new-instance v3, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v3, p2}, Lcom/android/server/pm/PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v5, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v5}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3d

    iget-object v4, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v4, v4, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-direct {p0, p1, v3, v4, p3}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    goto :goto_63

    :cond_3d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v6}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_63
    goto :goto_8c

    :cond_64
    const-string/jumbo v3, "manual-item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/Settings;->readManualDefaultPreferredActivitiesInternal(Lcom/android/server/pm/PackageManagerService;Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_8c

    :cond_71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <preferred-activities>: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_8c
    goto/16 :goto_4

    :cond_8e
    return-void
.end method

.method private readDisabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_4
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_6f

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_6f

    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    goto :goto_4

    :cond_1b
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_53

    const/4 v3, 0x0

    const-string/jumbo v5, "name"

    invoke-interface {p2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3a

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p3}, Lcom/android/server/pm/PackageSettingBase;->addDisabledComponent(Ljava/lang/String;I)V

    goto :goto_52

    :cond_3a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <disabled-components> has no name at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_52
    goto :goto_6b

    :cond_53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <disabled-components>: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_6b
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    :cond_6f
    return-void
.end method

.method private readDisabledSysPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v0, "name"

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v0, "realName"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v0, "codePath"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v0, "resourcePath"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "requiredCpuAbi"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v4, "nativeLibraryPath"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v4, "parentPackageName"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v4, "primaryCpuAbi"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "secondaryCpuAbi"

    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v5, "cpuAbiOverride"

    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    if-nez v4, :cond_4f

    if-eqz v23, :cond_4f

    move-object/from16 v4, v23

    :cond_4f
    move-object/from16 v28, v4

    if-nez v0, :cond_54

    move-object v0, v13

    :cond_54
    move-object v14, v0

    const-string/jumbo v0, "version"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-wide/16 v4, 0x0

    if-eqz v12, :cond_67

    :try_start_60
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_64
    .catch Ljava/lang/NumberFormatException; {:try_start_60 .. :try_end_64} :catch_66

    move-wide v4, v6

    goto :goto_67

    :catch_66
    move-exception v0

    :cond_67
    :goto_67
    move-wide/from16 v29, v4

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x1

    or-int/lit8 v31, v0, 0x1

    invoke-static {v13}, Lcom/android/server/pm/PackageManagerService;->locationIsPrivileged(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    or-int/lit8 v0, v4, 0x8

    move/from16 v32, v0

    goto :goto_7b

    :cond_79
    move/from16 v32, v4

    :goto_7b
    new-instance v0, Lcom/android/server/pm/PackageSetting;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v4, v0

    move-object v5, v15

    move-object/from16 v6, v22

    move-object/from16 v9, v24

    move-object/from16 v10, v28

    move-object/from16 v11, v26

    move-object/from16 v33, v12

    move-object/from16 v12, v27

    move-object/from16 v34, v13

    move-object/from16 v35, v14

    move-wide/from16 v13, v29

    move-object/from16 v36, v15

    move/from16 v15, v31

    move/from16 v16, v32

    move-object/from16 v17, v25

    invoke-direct/range {v4 .. v21}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;I[Ljava/lang/String;[J)V

    const-string v0, "ft"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    if-eqz v5, :cond_c2

    :try_start_b8
    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_bf
    .catch Ljava/lang/NumberFormatException; {:try_start_b8 .. :try_end_bf} :catch_c0

    goto :goto_c1

    :catch_c0
    move-exception v0

    :goto_c1
    goto :goto_d4

    :cond_c2
    const-string/jumbo v0, "ts"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d4

    :try_start_cb
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_d2
    .catch Ljava/lang/NumberFormatException; {:try_start_cb .. :try_end_d2} :catch_d3

    goto :goto_d4

    :catch_d3
    move-exception v0

    :cond_d4
    :goto_d4
    const-string v0, "it"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e4

    :try_start_dc
    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J
    :try_end_e2
    .catch Ljava/lang/NumberFormatException; {:try_start_dc .. :try_end_e2} :catch_e3

    goto :goto_e4

    :catch_e3
    move-exception v0

    :cond_e4
    :goto_e4
    const-string/jumbo v0, "ut"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f5

    :try_start_ed
    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J
    :try_end_f3
    .catch Ljava/lang/NumberFormatException; {:try_start_ed .. :try_end_f3} :catch_f4

    goto :goto_f5

    :catch_f4
    move-exception v0

    :cond_f5
    :goto_f5
    const-string/jumbo v0, "userId"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    if-eqz v0, :cond_104

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_105

    :cond_104
    move v7, v6

    :goto_105
    iput v7, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v7, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    if-gtz v7, :cond_11b

    const-string/jumbo v7, "sharedUserId"

    invoke-interface {v2, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_119

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    nop

    :cond_119
    iput v6, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    :cond_11b
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    :cond_11f
    :goto_11f
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v8, v7

    const/4 v9, 0x1

    if-eq v7, v9, :cond_19d

    const/4 v7, 0x3

    if-ne v8, v7, :cond_130

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v6, :cond_19d

    :cond_130
    if-eq v8, v7, :cond_11f

    const/4 v7, 0x4

    if-ne v8, v7, :cond_136

    goto :goto_11f

    :cond_136
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "perms"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14b

    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V

    goto :goto_11f

    :cond_14b
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v10, "child-package"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16f

    const-string/jumbo v7, "name"

    invoke-interface {v2, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v10, v4, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    if-nez v10, :cond_169

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v4, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    :cond_169
    iget-object v10, v4, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11f

    :cond_16f
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "uses-static-lib"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_180

    invoke-virtual {v1, v2, v4}, Lcom/android/server/pm/Settings;->readUsesStaticLibLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_11f

    :cond_180
    const/4 v7, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element under <updated-package>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_11f

    :cond_19d
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    move-object/from16 v7, v36

    invoke-virtual {v3, v7, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private readDomainVerificationLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSettingBase;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {p2, v0}, Lcom/android/server/pm/PackageSettingBase;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    return-void
.end method

.method private readEnabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_4
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_6f

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_6f

    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    goto :goto_4

    :cond_1b
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_53

    const/4 v3, 0x0

    const-string/jumbo v5, "name"

    invoke-interface {p2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3a

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p3}, Lcom/android/server/pm/PackageSettingBase;->addEnabledComponent(Ljava/lang/String;I)V

    goto :goto_52

    :cond_3a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <enabled-components> has no name at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_52
    goto :goto_6b

    :cond_53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <enabled-components>: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_6b
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    :cond_6f
    return-void
.end method

.method private readFilterFromParser(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/IntentFilter;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    :cond_9
    :goto_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_11e

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1a

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_11e

    :cond_1a
    if-eq v3, v2, :cond_9

    const/4 v2, 0x4

    if-ne v3, v2, :cond_20

    goto :goto_9

    :cond_20
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "name"

    const-string v6, "action"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_3e

    const-string/jumbo v4, "name"

    invoke-interface {p1, v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3c

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_3c
    goto/16 :goto_119

    :cond_3e
    const-string v6, "cat"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    const-string/jumbo v4, "name"

    invoke-interface {p1, v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_52

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    :cond_52
    goto/16 :goto_119

    :cond_54
    const-string/jumbo v6, "type"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6d

    const-string/jumbo v4, "name"

    invoke-interface {p1, v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6b

    :try_start_66
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_69
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_6b

    :catch_6a
    move-exception v6

    :cond_6b
    :goto_6b
    goto/16 :goto_119

    :cond_6d
    const-string/jumbo v6, "scheme"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_84

    const-string/jumbo v4, "name"

    invoke-interface {p1, v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_82

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    :cond_82
    goto/16 :goto_119

    :cond_84
    const-string/jumbo v6, "ssp"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eqz v6, :cond_b7

    const-string v6, "literal"

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9b

    invoke-virtual {v0, v6, v9}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_b6

    :cond_9b
    const-string/jumbo v9, "prefix"

    invoke-interface {p1, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    if-eqz v9, :cond_a9

    invoke-virtual {v0, v6, v4}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_b6

    :cond_a9
    const-string/jumbo v4, "sglob"

    invoke-interface {p1, v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    if-eqz v4, :cond_b6

    invoke-virtual {v0, v6, v8}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_b6
    :goto_b6
    goto :goto_119

    :cond_b7
    const-string v6, "auth"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d2

    const-string v4, "host"

    invoke-interface {p1, v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "port"

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v4, :cond_d1

    invoke-virtual {v0, v4, v6}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d1
    goto :goto_119

    :cond_d2
    const-string/jumbo v6, "path"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_103

    const-string v6, "literal"

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_e7

    invoke-virtual {v0, v6, v9}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    goto :goto_102

    :cond_e7
    const-string/jumbo v9, "prefix"

    invoke-interface {p1, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    if-eqz v9, :cond_f5

    invoke-virtual {v0, v6, v4}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    goto :goto_102

    :cond_f5
    const-string/jumbo v4, "sglob"

    invoke-interface {p1, v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    if-eqz v4, :cond_102

    invoke-virtual {v0, v6, v8}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    :cond_102
    :goto_102
    goto :goto_119

    :cond_103
    const-string v4, "PackageSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown tag parsing IntentFilter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_119
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_9

    :cond_11e
    return-object v0
.end method

.method private readIntentFromParser(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move-object v2, v3

    :cond_d
    :goto_d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v6, v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_98

    const/4 v5, 0x3

    if-ne v6, v5, :cond_1e

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v1, :cond_98

    :cond_1e
    if-eq v6, v5, :cond_d

    const/4 v5, 0x4

    if-ne v6, v5, :cond_24

    goto :goto_d

    :cond_24
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "name"

    const-string v8, "action"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_40

    const-string/jumbo v8, "name"

    invoke-interface {p1, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3f

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3f
    goto :goto_93

    :cond_40
    const-string v8, "cat"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_55

    const-string/jumbo v8, "name"

    invoke-interface {p1, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_54

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_54
    goto :goto_93

    :cond_55
    const-string/jumbo v8, "type"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_69

    const-string/jumbo v8, "name"

    invoke-interface {p1, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_68

    move-object v4, v8

    :cond_68
    goto :goto_93

    :cond_69
    const-string/jumbo v8, "uri"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7d

    const-string/jumbo v8, "name"

    invoke-interface {p1, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7c

    move-object v2, v8

    :cond_7c
    goto :goto_93

    :cond_7d
    const-string v8, "PackageSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown tag parsing Intent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_93
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_d

    :cond_98
    if-eqz v4, :cond_a4

    if-eqz v2, :cond_a4

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_b3

    :cond_a4
    if-eqz v4, :cond_aa

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_b3

    :cond_aa
    if-eqz v2, :cond_b3

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_b3
    :goto_b3
    return-object v0
.end method

.method private readManualDefaultPreferredActivitiesInternal(Lcom/android/server/pm/PackageManagerService;Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    const-string/jumbo v0, "name"

    const/4 v1, 0x0

    invoke-interface {v8, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    const-string v0, ""

    if-nez v10, :cond_3c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad activity name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PackageSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parseError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    move-object v11, v0

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    const/4 v0, 0x0

    move-object v13, v0

    :goto_43
    move-object v14, v1

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v15, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9b

    const/4 v0, 0x3

    if-ne v15, v0, :cond_55

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v12, :cond_9b

    :cond_55
    if-eq v15, v0, :cond_99

    const/4 v0, 0x4

    if-ne v15, v0, :cond_5b

    goto :goto_99

    :cond_5b
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-direct {v7, v8}, Lcom/android/server/pm/Settings;->readIntentFromParser(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v13

    :goto_6b
    move-object v1, v14

    goto :goto_98

    :cond_6d
    const-string v1, "filter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-direct {v7, v8}, Lcom/android/server/pm/Settings;->readFilterFromParser(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/IntentFilter;

    move-result-object v1

    goto :goto_98

    :cond_7a
    const-string v1, "PackageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6b

    :goto_98
    goto :goto_43

    :cond_99
    :goto_99
    move-object v1, v14

    goto :goto_43

    :cond_9b
    if-eqz v13, :cond_bb

    if-eqz v14, :cond_bb

    const/high16 v0, 0xc0000

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ac

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    :cond_ac
    move/from16 v16, v0

    move-object v0, v7

    move-object/from16 v1, p1

    move-object v2, v13

    move/from16 v3, v16

    move-object v4, v10

    move-object v5, v14

    move/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/Settings;->applyManualDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Landroid/content/IntentFilter;I)V

    :cond_bb
    return-void
.end method

.method private readPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 93
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v13, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/4 v15, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    move-object/from16 v34, v11

    const/4 v11, 0x0

    move/from16 v35, v11

    const/4 v11, 0x0

    :try_start_33
    const-string/jumbo v0, "name"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_3a} :catch_83d

    move-object v1, v0

    :try_start_3b
    const-string/jumbo v0, "realName"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    const-string/jumbo v0, "userId"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4a
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_4a} :catch_815

    move-object v3, v0

    :try_start_4b
    const-string/jumbo v0, "uidError"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_52
    .catch Ljava/lang/NumberFormatException; {:try_start_4b .. :try_end_52} :catch_7ea

    move-object/from16 v37, v0

    :try_start_54
    const-string/jumbo v0, "sharedUserId"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5b
    .catch Ljava/lang/NumberFormatException; {:try_start_54 .. :try_end_5b} :catch_7e1

    move-object v4, v0

    :try_start_5c
    const-string v0, "codePath"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_62
    .catch Ljava/lang/NumberFormatException; {:try_start_5c .. :try_end_62} :catch_7b6

    move-object v5, v0

    :try_start_63
    const-string/jumbo v0, "resourcePath"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6a
    .catch Ljava/lang/NumberFormatException; {:try_start_63 .. :try_end_6a} :catch_784

    move-object/from16 v38, v0

    :try_start_6c
    const-string/jumbo v0, "requiredCpuAbi"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_73
    .catch Ljava/lang/NumberFormatException; {:try_start_6c .. :try_end_73} :catch_758

    move-object/from16 v39, v0

    :try_start_75
    const-string/jumbo v0, "parentPackageName"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v0, "nativeLibraryPath"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_83
    .catch Ljava/lang/NumberFormatException; {:try_start_75 .. :try_end_83} :catch_74b

    :try_start_83
    const-string/jumbo v0, "primaryCpuAbi"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8a
    .catch Ljava/lang/NumberFormatException; {:try_start_83 .. :try_end_8a} :catch_73e

    move-object v7, v0

    :try_start_8b
    const-string/jumbo v0, "secondaryCpuAbi"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_92
    .catch Ljava/lang/NumberFormatException; {:try_start_8b .. :try_end_92} :catch_710

    :try_start_92
    const-string v0, "cpuAbiOverride"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_98
    .catch Ljava/lang/NumberFormatException; {:try_start_92 .. :try_end_98} :catch_703

    :try_start_98
    const-string/jumbo v0, "updateAvailable"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_9f
    .catch Ljava/lang/NumberFormatException; {:try_start_98 .. :try_end_9f} :catch_6d8

    move-object/from16 v20, v0

    if-nez v7, :cond_aa

    if-eqz v39, :cond_aa

    move-object/from16 v0, v39

    move-object/from16 v34, v0

    goto :goto_ac

    :cond_aa
    move-object/from16 v34, v7

    :goto_ac
    :try_start_ac
    const-string/jumbo v0, "version"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_b3
    .catch Ljava/lang/NumberFormatException; {:try_start_ac .. :try_end_b3} :catch_6b1

    move-object v10, v0

    if-eqz v10, :cond_be

    :try_start_b6
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v40
    :try_end_ba
    .catch Ljava/lang/NumberFormatException; {:try_start_b6 .. :try_end_ba} :catch_bd

    move-wide/from16 v31, v40

    goto :goto_c0

    :catch_bd
    move-exception v0

    :cond_be
    move-wide/from16 v31, v32

    :goto_c0
    :try_start_c0
    const-string v0, "installer"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c6
    .catch Ljava/lang/NumberFormatException; {:try_start_c0 .. :try_end_c6} :catch_68c

    move-object/from16 v33, v0

    :try_start_c8
    const-string v0, "isOrphaned"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_ce
    .catch Ljava/lang/NumberFormatException; {:try_start_c8 .. :try_end_ce} :catch_67e

    move-object/from16 v58, v0

    :try_start_d0
    const-string/jumbo v0, "volumeUuid"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_d7
    .catch Ljava/lang/NumberFormatException; {:try_start_d0 .. :try_end_d7} :catch_670

    move-object/from16 v59, v0

    :try_start_d9
    const-string v0, "categoryHint"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_df
    .catch Ljava/lang/NumberFormatException; {:try_start_d9 .. :try_end_df} :catch_662

    move-object v7, v0

    if-eqz v7, :cond_eb

    :try_start_e2
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_e6
    .catch Ljava/lang/NumberFormatException; {:try_start_e2 .. :try_end_e6} :catch_ea

    nop

    move/from16 v21, v0

    goto :goto_eb

    :catch_ea
    move-exception v0

    :cond_eb
    :goto_eb
    :try_start_eb
    const-string/jumbo v0, "publicFlags"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_f2
    .catch Ljava/lang/NumberFormatException; {:try_start_eb .. :try_end_f2} :catch_643

    move-object v12, v0

    if-eqz v12, :cond_126

    :try_start_f5
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_f9
    .catch Ljava/lang/NumberFormatException; {:try_start_f5 .. :try_end_f9} :catch_fc

    move/from16 v22, v0

    goto :goto_fd

    :catch_fc
    move-exception v0

    :goto_fd
    :try_start_fd
    const-string/jumbo v0, "privateFlags"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_104
    .catch Ljava/lang/NumberFormatException; {:try_start_fd .. :try_end_104} :catch_115

    move-object v12, v0

    if-eqz v12, :cond_111

    :try_start_107
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_10b
    .catch Ljava/lang/NumberFormatException; {:try_start_107 .. :try_end_10b} :catch_10f

    nop

    move/from16 v23, v0

    goto :goto_111

    :catch_10f
    move-exception v0

    nop

    :cond_111
    :goto_111
    move-object/from16 v19, v12

    goto/16 :goto_18d

    :catch_115
    move-exception v0

    move-object/from16 v19, v12

    move-object v11, v14

    move-wide/from16 v61, v24

    move-wide/from16 v63, v26

    move-wide/from16 v65, v28

    move-object/from16 v12, v38

    const/4 v13, 0x5

    move-object/from16 v25, v2

    goto/16 :goto_863

    :cond_126
    :try_start_126
    const-string v0, "flags"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_12c
    .catch Ljava/lang/NumberFormatException; {:try_start_126 .. :try_end_12c} :catch_643

    move-object v12, v0

    if-eqz v12, :cond_16f

    :try_start_12f
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_133
    .catch Ljava/lang/NumberFormatException; {:try_start_12f .. :try_end_133} :catch_136

    move/from16 v22, v0

    goto :goto_137

    :catch_136
    move-exception v0

    :goto_137
    :try_start_137
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    and-int v0, v22, v0

    if-eqz v0, :cond_13f

    or-int/lit8 v23, v23, 0x1

    :cond_13f
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    and-int v0, v22, v0

    if-eqz v0, :cond_149

    or-int/lit8 v0, v23, 0x2

    move/from16 v23, v0

    :cond_149
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_FORWARD_LOCK:I

    and-int v0, v22, v0

    if-eqz v0, :cond_153

    or-int/lit8 v0, v23, 0x4

    move/from16 v23, v0

    :cond_153
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I

    and-int v0, v22, v0

    if-eqz v0, :cond_15d

    or-int/lit8 v0, v23, 0x8

    move/from16 v23, v0

    :cond_15d
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    sget v16, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    or-int v0, v0, v16

    sget v16, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_FORWARD_LOCK:I

    or-int v0, v0, v16

    sget v16, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I
    :try_end_169
    .catch Ljava/lang/NumberFormatException; {:try_start_137 .. :try_end_169} :catch_115

    or-int v0, v0, v16

    not-int v0, v0

    and-int v0, v22, v0

    goto :goto_18a

    :cond_16f
    :try_start_16f
    const-string/jumbo v0, "system"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_176
    .catch Ljava/lang/NumberFormatException; {:try_start_16f .. :try_end_176} :catch_643

    move-object v12, v0

    if-eqz v12, :cond_188

    :try_start_179
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_180
    .catch Ljava/lang/NumberFormatException; {:try_start_179 .. :try_end_180} :catch_115

    if-eqz v0, :cond_184

    const/4 v0, 0x1

    goto :goto_185

    :cond_184
    const/4 v0, 0x0

    :goto_185
    or-int v0, v22, v0

    goto :goto_18a

    :cond_188
    or-int/lit8 v0, v22, 0x1

    :goto_18a
    move/from16 v22, v0

    goto :goto_111

    :goto_18d
    :try_start_18d
    const-string v0, "ft"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_193
    .catch Ljava/lang/NumberFormatException; {:try_start_18d .. :try_end_193} :catch_634

    move-object v12, v0

    const/16 v11, 0x10

    if-eqz v12, :cond_1a4

    :try_start_198
    invoke-static {v12, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v16
    :try_end_19c
    .catch Ljava/lang/NumberFormatException; {:try_start_198 .. :try_end_19c} :catch_1a2

    move-wide/from16 v24, v16

    :goto_19e
    nop

    :cond_19f
    :goto_19f
    move-wide/from16 v61, v24

    goto :goto_1b8

    :catch_1a2
    move-exception v0

    goto :goto_19e

    :cond_1a4
    :try_start_1a4
    const-string/jumbo v0, "ts"

    const/4 v11, 0x0

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1ac
    .catch Ljava/lang/NumberFormatException; {:try_start_1a4 .. :try_end_1ac} :catch_634

    move-object v12, v0

    if-eqz v12, :cond_19f

    :try_start_1af
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16
    :try_end_1b3
    .catch Ljava/lang/NumberFormatException; {:try_start_1af .. :try_end_1b3} :catch_1b6

    move-wide/from16 v24, v16

    goto :goto_19f

    :catch_1b6
    move-exception v0

    goto :goto_19f

    :goto_1b8
    :try_start_1b8
    const-string v0, "it"

    const/4 v11, 0x0

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1bf
    .catch Ljava/lang/NumberFormatException; {:try_start_1b8 .. :try_end_1bf} :catch_614

    move-object v11, v0

    if-eqz v11, :cond_1cc

    const/16 v12, 0x10

    :try_start_1c4
    invoke-static {v11, v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v16
    :try_end_1c8
    .catch Ljava/lang/NumberFormatException; {:try_start_1c4 .. :try_end_1c8} :catch_1cb

    move-wide/from16 v26, v16

    goto :goto_1cc

    :catch_1cb
    move-exception v0

    :cond_1cc
    :goto_1cc
    move-wide/from16 v63, v26

    :try_start_1ce
    const-string/jumbo v0, "ut"

    const/4 v12, 0x0

    invoke-interface {v13, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1d6
    .catch Ljava/lang/NumberFormatException; {:try_start_1ce .. :try_end_1d6} :catch_5f2

    move-object v11, v0

    if-eqz v11, :cond_1e3

    const/16 v12, 0x10

    :try_start_1db
    invoke-static {v11, v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v16
    :try_end_1df
    .catch Ljava/lang/NumberFormatException; {:try_start_1db .. :try_end_1df} :catch_1e2

    move-wide/from16 v28, v16

    goto :goto_1e3

    :catch_1e2
    move-exception v0

    :cond_1e3
    :goto_1e3
    move-wide/from16 v65, v28

    if-eqz v3, :cond_1f5

    :try_start_1e7
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1f6

    :catch_1ec
    move-exception v0

    move-object/from16 v25, v2

    move-object v11, v14

    move-object/from16 v12, v38

    :goto_1f2
    const/4 v13, 0x5

    goto/16 :goto_863

    :cond_1f5
    const/4 v0, 0x0

    :goto_1f6
    if-eqz v4, :cond_1fd

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12
    :try_end_1fc
    .catch Ljava/lang/NumberFormatException; {:try_start_1e7 .. :try_end_1fc} :catch_1ec

    goto :goto_1fe

    :cond_1fd
    const/4 v12, 0x0

    :goto_1fe
    move/from16 v24, v12

    if-nez v38, :cond_204

    move-object v12, v5

    goto :goto_206

    :cond_204
    move-object/from16 v12, v38

    :goto_206
    if-eqz v2, :cond_214

    :try_start_208
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v16
    :try_end_20c
    .catch Ljava/lang/NumberFormatException; {:try_start_208 .. :try_end_20c} :catch_20f

    move-object/from16 v2, v16

    goto :goto_214

    :catch_20f
    move-exception v0

    move-object/from16 v25, v2

    move-object v11, v14

    goto :goto_1f2

    :cond_214
    :goto_214
    move-object/from16 v25, v2

    if-nez v1, :cond_256

    :try_start_218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_21d
    .catch Ljava/lang/NumberFormatException; {:try_start_218 .. :try_end_21d} :catch_24f

    move-object/from16 v67, v3

    :try_start_21f
    const-string v3, "Error in package manager settings: <package> has no name at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_22f
    .catch Ljava/lang/NumberFormatException; {:try_start_21f .. :try_end_22f} :catch_289

    const/4 v3, 0x5

    :try_start_230
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_233
    .catch Ljava/lang/NumberFormatException; {:try_start_230 .. :try_end_233} :catch_248

    move-object/from16 v77, v4

    move-object/from16 v76, v5

    move-object/from16 v36, v7

    move-object/from16 v60, v10

    move-object v7, v12

    move-object v5, v14

    move-wide/from16 v3, v61

    move-wide/from16 v10, v63

    move-wide/from16 v12, v65

    move-object/from16 v2, v67

    move-object v14, v1

    goto/16 :goto_45a

    :catch_248
    move-exception v0

    move v13, v3

    move-object v11, v14

    move-object/from16 v3, v67

    goto/16 :goto_863

    :catch_24f
    move-exception v0

    move-object/from16 v67, v3

    move-object v11, v14

    const/4 v13, 0x5

    goto/16 :goto_863

    :cond_256
    move-object/from16 v67, v3

    if-nez v5, :cond_28f

    :try_start_25a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in package manager settings: <package> has no codePath at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_26f
    .catch Ljava/lang/NumberFormatException; {:try_start_25a .. :try_end_26f} :catch_289

    const/4 v3, 0x5

    :try_start_270
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_273
    .catch Ljava/lang/NumberFormatException; {:try_start_270 .. :try_end_273} :catch_248

    move-object/from16 v77, v4

    move-object/from16 v76, v5

    move-object/from16 v36, v7

    move-object/from16 v60, v10

    move-object v7, v12

    move-object v5, v14

    move-wide/from16 v10, v63

    move-wide/from16 v12, v65

    move-object/from16 v2, v67

    move-object v14, v1

    move v1, v3

    move-wide/from16 v3, v61

    goto/16 :goto_566

    :catch_289
    move-exception v0

    move-object v11, v14

    move-object/from16 v3, v67

    goto/16 :goto_1f2

    :cond_28f
    const/4 v3, 0x5

    if-lez v0, :cond_3ea

    :try_start_292
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2
    :try_end_296
    .catch Ljava/lang/NumberFormatException; {:try_start_292 .. :try_end_296} :catch_3c9

    move-object/from16 v68, v4

    :try_start_298
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_29d
    .catch Ljava/lang/NumberFormatException; {:try_start_298 .. :try_end_29d} :catch_3a8

    move-object/from16 v69, v5

    :try_start_29f
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2a4
    .catch Ljava/lang/NumberFormatException; {:try_start_29f .. :try_end_2a4} :catch_385

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v70, v1

    move-object v1, v14

    move/from16 v26, v3

    move-object/from16 v71, v67

    move-object/from16 v3, v25

    move-object/from16 v72, v68

    move-object/from16 v73, v69

    move-object/from16 v36, v7

    move-object/from16 v7, v34

    move-object/from16 v60, v10

    move v10, v0

    move-object/from16 v26, v11

    move-object/from16 v74, v12

    move-wide/from16 v11, v31

    move/from16 v13, v22

    move/from16 v14, v23

    :try_start_2c8
    invoke-virtual/range {v1 .. v18}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJIILjava/lang/String;Ljava/util/List;[Ljava/lang/String;[J)Lcom/android/server/pm/PackageSetting;

    move-result-object v1
    :try_end_2cc
    .catch Ljava/lang/NumberFormatException; {:try_start_2c8 .. :try_end_2cc} :catch_36b

    if-nez v1, :cond_30b

    const/4 v2, 0x6

    :try_start_2cf
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure adding uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " while parsing settings at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_2ef
    .catch Ljava/lang/NumberFormatException; {:try_start_2cf .. :try_end_2ef} :catch_2f6

    move-wide/from16 v3, v61

    move-wide/from16 v10, v63

    move-wide/from16 v12, v65

    goto :goto_318

    :catch_2f6
    move-exception v0

    move-object/from16 v30, v1

    :goto_2f9
    move-object/from16 v7, v36

    move-object/from16 v10, v60

    move-object/from16 v1, v70

    move-object/from16 v3, v71

    move-object/from16 v4, v72

    move-object/from16 v5, v73

    move-object/from16 v12, v74

    move-object/from16 v11, p0

    goto/16 :goto_1f2

    :cond_30b
    move-wide/from16 v3, v61

    :try_start_30d
    invoke-virtual {v1, v3, v4}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_310
    .catch Ljava/lang/NumberFormatException; {:try_start_30d .. :try_end_310} :catch_34f

    move-wide/from16 v10, v63

    :try_start_312
    iput-wide v10, v1, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J
    :try_end_314
    .catch Ljava/lang/NumberFormatException; {:try_start_312 .. :try_end_314} :catch_333

    move-wide/from16 v12, v65

    :try_start_316
    iput-wide v12, v1, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J
    :try_end_318
    .catch Ljava/lang/NumberFormatException; {:try_start_316 .. :try_end_318} :catch_329

    :goto_318
    move-object/from16 v30, v1

    move-object/from16 v14, v70

    move-object/from16 v2, v71

    move-object/from16 v77, v72

    move-object/from16 v76, v73

    move-object/from16 v7, v74

    const/4 v1, 0x5

    move-object/from16 v5, p0

    goto/16 :goto_566

    :catch_329
    move-exception v0

    move-object/from16 v30, v1

    move-wide/from16 v61, v3

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    goto :goto_2f9

    :catch_333
    move-exception v0

    move-wide/from16 v12, v65

    move-object/from16 v30, v1

    move-wide/from16 v61, v3

    move-wide/from16 v63, v10

    move-object/from16 v7, v36

    move-object/from16 v10, v60

    move-object/from16 v1, v70

    move-object/from16 v3, v71

    move-object/from16 v4, v72

    move-object/from16 v5, v73

    move-object/from16 v12, v74

    move-object/from16 v11, p0

    const/4 v13, 0x5

    goto/16 :goto_863

    :catch_34f
    move-exception v0

    move-wide/from16 v10, v63

    move-wide/from16 v12, v65

    move-object/from16 v30, v1

    move-wide/from16 v61, v3

    move-object/from16 v7, v36

    move-object/from16 v10, v60

    move-object/from16 v1, v70

    move-object/from16 v3, v71

    move-object/from16 v4, v72

    move-object/from16 v5, v73

    move-object/from16 v12, v74

    move-object/from16 v11, p0

    const/4 v13, 0x5

    goto/16 :goto_863

    :catch_36b
    move-exception v0

    move-wide/from16 v3, v61

    move-wide/from16 v10, v63

    move-wide/from16 v12, v65

    move-object/from16 v7, v36

    move-object/from16 v10, v60

    move-object/from16 v1, v70

    move-object/from16 v3, v71

    move-object/from16 v4, v72

    move-object/from16 v5, v73

    move-object/from16 v12, v74

    move-object/from16 v11, p0

    const/4 v13, 0x5

    goto/16 :goto_863

    :catch_385
    move-exception v0

    move-object/from16 v70, v1

    move-object/from16 v36, v7

    move-object/from16 v60, v10

    move-object/from16 v74, v12

    move-wide/from16 v3, v61

    move-wide/from16 v10, v63

    move-wide/from16 v12, v65

    move-object/from16 v71, v67

    move-object/from16 v72, v68

    move-object/from16 v73, v69

    move-object v11, v14

    move-object/from16 v10, v60

    move-object/from16 v3, v71

    move-object/from16 v4, v72

    move-object/from16 v5, v73

    move-object/from16 v12, v74

    const/4 v13, 0x5

    goto/16 :goto_863

    :catch_3a8
    move-exception v0

    move-object/from16 v70, v1

    move-object/from16 v73, v5

    move-object/from16 v36, v7

    move-object/from16 v60, v10

    move-object/from16 v74, v12

    move-wide/from16 v3, v61

    move-wide/from16 v10, v63

    move-wide/from16 v12, v65

    move-object/from16 v71, v67

    move-object/from16 v72, v68

    move-object v11, v14

    move-object/from16 v10, v60

    move-object/from16 v3, v71

    move-object/from16 v4, v72

    move-object/from16 v12, v74

    const/4 v13, 0x5

    goto/16 :goto_863

    :catch_3c9
    move-exception v0

    move-object/from16 v70, v1

    move-object/from16 v72, v4

    move-object/from16 v73, v5

    move-object/from16 v36, v7

    move-object/from16 v60, v10

    move-object/from16 v74, v12

    move-wide/from16 v3, v61

    move-wide/from16 v10, v63

    move-wide/from16 v12, v65

    move-object/from16 v71, v67

    move-object v11, v14

    move-object/from16 v10, v60

    move-object/from16 v3, v71

    move-object/from16 v4, v72

    move-object/from16 v12, v74

    const/4 v13, 0x5

    goto/16 :goto_863

    :cond_3ea
    move-object/from16 v70, v1

    move-object/from16 v72, v4

    move-object/from16 v73, v5

    move-object/from16 v36, v7

    move-object/from16 v60, v10

    move-object/from16 v26, v11

    move-object/from16 v74, v12

    move-wide/from16 v3, v61

    move-wide/from16 v10, v63

    move-wide/from16 v12, v65

    move-object/from16 v71, v67

    move-object/from16 v1, v72

    if-eqz v1, :cond_52e

    if-lez v24, :cond_4d0

    :try_start_406
    new-instance v2, Lcom/android/server/pm/PackageSetting;
    :try_end_408
    .catch Ljava/lang/NumberFormatException; {:try_start_406 .. :try_end_408} :catch_4b3

    move-object/from16 v14, v70

    :try_start_40a
    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v41

    new-instance v5, Ljava/io/File;
    :try_end_410
    .catch Ljava/lang/NumberFormatException; {:try_start_40a .. :try_end_410} :catch_498

    move-object/from16 v7, v73

    :try_start_412
    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move/from16 v75, v0

    new-instance v0, Ljava/io/File;
    :try_end_419
    .catch Ljava/lang/NumberFormatException; {:try_start_412 .. :try_end_419} :catch_47d

    move-object/from16 v76, v7

    move-object/from16 v7, v74

    :try_start_41d
    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v54, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    move-object/from16 v40, v2

    move-object/from16 v42, v25

    move-object/from16 v43, v5

    move-object/from16 v44, v0

    move-object/from16 v45, v6

    move-object/from16 v46, v34

    move-object/from16 v47, v8

    move-object/from16 v48, v9

    move-wide/from16 v49, v31

    move/from16 v51, v22

    move/from16 v52, v23

    move-object/from16 v53, v15

    move/from16 v55, v24

    invoke-direct/range {v40 .. v57}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;I[Ljava/lang/String;[J)V
    :try_end_443
    .catch Ljava/lang/NumberFormatException; {:try_start_41d .. :try_end_443} :catch_466

    :try_start_443
    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    iput-wide v10, v2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    iput-wide v12, v2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J
    :try_end_44a
    .catch Ljava/lang/NumberFormatException; {:try_start_443 .. :try_end_44a} :catch_462

    move-object/from16 v5, p0

    :try_start_44c
    iget-object v0, v5, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_451
    .catch Ljava/lang/NumberFormatException; {:try_start_44c .. :try_end_451} :catch_45d

    const/4 v0, 0x1

    move/from16 v35, v0

    move-object/from16 v77, v1

    move-object/from16 v30, v2

    move-object/from16 v2, v71

    :goto_45a
    const/4 v1, 0x5

    goto/16 :goto_566

    :catch_45d
    move-exception v0

    move-object/from16 v30, v2

    goto/16 :goto_519

    :catch_462
    move-exception v0

    move-object/from16 v30, v2

    goto :goto_467

    :catch_466
    move-exception v0

    :goto_467
    move-wide/from16 v61, v3

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-object/from16 v10, v60

    move-object/from16 v3, v71

    move-object/from16 v5, v76

    move-object/from16 v11, p0

    const/4 v13, 0x5

    move-object v4, v1

    move-object v12, v7

    move-object v1, v14

    move-object/from16 v7, v36

    goto/16 :goto_863

    :catch_47d
    move-exception v0

    move-object/from16 v76, v7

    move-object/from16 v7, v74

    move-wide/from16 v61, v3

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-object/from16 v10, v60

    move-object/from16 v3, v71

    move-object/from16 v5, v76

    move-object/from16 v11, p0

    const/4 v13, 0x5

    move-object v4, v1

    move-object v12, v7

    move-object v1, v14

    move-object/from16 v7, v36

    goto/16 :goto_863

    :catch_498
    move-exception v0

    move-object/from16 v76, v73

    move-object/from16 v7, v74

    move-wide/from16 v61, v3

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-object/from16 v10, v60

    move-object/from16 v3, v71

    move-object/from16 v5, v76

    move-object/from16 v11, p0

    const/4 v13, 0x5

    move-object v4, v1

    move-object v12, v7

    move-object v1, v14

    move-object/from16 v7, v36

    goto/16 :goto_863

    :catch_4b3
    move-exception v0

    move-object/from16 v14, v70

    move-object/from16 v76, v73

    move-object/from16 v7, v74

    move-wide/from16 v61, v3

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-object/from16 v10, v60

    move-object/from16 v3, v71

    move-object/from16 v5, v76

    move-object/from16 v11, p0

    const/4 v13, 0x5

    move-object v4, v1

    move-object v12, v7

    move-object v1, v14

    move-object/from16 v7, v36

    goto/16 :goto_863

    :cond_4d0
    move/from16 v75, v0

    move-object/from16 v14, v70

    move-object/from16 v76, v73

    move-object/from16 v7, v74

    move-object/from16 v5, p0

    :try_start_4da
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in package manager settings: package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has bad sharedId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4ff
    .catch Ljava/lang/NumberFormatException; {:try_start_4da .. :try_end_4ff} :catch_518

    const/4 v2, 0x5

    :try_start_500
    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_503
    .catch Ljava/lang/NumberFormatException; {:try_start_500 .. :try_end_503} :catch_50a

    move-object/from16 v77, v1

    move v1, v2

    move-object/from16 v2, v71

    goto/16 :goto_566

    :catch_50a
    move-exception v0

    move-wide/from16 v61, v3

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-object/from16 v10, v60

    move-object/from16 v3, v71

    move-object v4, v1

    move v13, v2

    goto :goto_525

    :catch_518
    move-exception v0

    :goto_519
    move-wide/from16 v61, v3

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-object/from16 v10, v60

    move-object/from16 v3, v71

    const/4 v13, 0x5

    move-object v4, v1

    :goto_525
    move-object v11, v5

    move-object v12, v7

    move-object v1, v14

    :goto_528
    move-object/from16 v7, v36

    move-object/from16 v5, v76

    goto/16 :goto_863

    :cond_52e
    move/from16 v75, v0

    move-object/from16 v14, v70

    move-object/from16 v76, v73

    move-object/from16 v7, v74

    const/4 v2, 0x5

    move-object/from16 v5, p0

    :try_start_539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_53e
    .catch Ljava/lang/NumberFormatException; {:try_start_539 .. :try_end_53e} :catch_5d7

    :try_start_53e
    const-string v2, "Error in package manager settings: package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has bad userId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_54b
    .catch Ljava/lang/NumberFormatException; {:try_start_53e .. :try_end_54b} :catch_5c2

    move-object/from16 v2, v71

    :try_start_54d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_550
    .catch Ljava/lang/NumberFormatException; {:try_start_54d .. :try_end_550} :catch_5aa

    move-object/from16 v77, v1

    :try_start_552
    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_562
    .catch Ljava/lang/NumberFormatException; {:try_start_552 .. :try_end_562} :catch_598

    const/4 v1, 0x5

    :try_start_563
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_566
    .catch Ljava/lang/NumberFormatException; {:try_start_563 .. :try_end_566} :catch_58a

    :goto_566
    nop

    move-wide/from16 v61, v3

    move-object/from16 v16, v7

    move-object/from16 v17, v9

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-object/from16 v10, v20

    move-object/from16 v3, v33

    move-object/from16 v4, v58

    move-object/from16 v15, v77

    move v13, v1

    move-object v12, v2

    move-object v11, v5

    move-object v7, v6

    move-object v9, v8

    move/from16 v6, v21

    move-object/from16 v1, v30

    move-object/from16 v8, v34

    move-object/from16 v2, v37

    move-object/from16 v5, v59

    goto/16 :goto_8aa

    :catch_58a
    move-exception v0

    move-wide/from16 v61, v3

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-object/from16 v10, v60

    move-object/from16 v4, v77

    move v13, v1

    move-object v3, v2

    goto :goto_525

    :catch_598
    move-exception v0

    move-wide/from16 v61, v3

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-object v1, v14

    move-object/from16 v10, v60

    move-object/from16 v4, v77

    const/4 v13, 0x5

    move-object v3, v2

    move-object v11, v5

    move-object v12, v7

    goto/16 :goto_528

    :catch_5aa
    move-exception v0

    move-object/from16 v77, v1

    move-wide/from16 v61, v3

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-object v1, v14

    move-object/from16 v10, v60

    move-object/from16 v4, v77

    const/4 v13, 0x5

    move-object v3, v2

    move-object v11, v5

    move-object v12, v7

    move-object/from16 v7, v36

    move-object/from16 v5, v76

    goto/16 :goto_863

    :catch_5c2
    move-exception v0

    move-object/from16 v77, v1

    move-object/from16 v2, v71

    move-wide/from16 v61, v3

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-object v1, v14

    move-object/from16 v10, v60

    move-object/from16 v4, v77

    const/4 v13, 0x5

    move-object v3, v2

    move-object v11, v5

    move-object v12, v7

    goto :goto_5ec

    :catch_5d7
    move-exception v0

    move-object/from16 v77, v1

    move v1, v2

    move-object/from16 v2, v71

    move-wide/from16 v61, v3

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-object/from16 v10, v60

    move-object/from16 v4, v77

    move v13, v1

    move-object v3, v2

    move-object v11, v5

    move-object v12, v7

    move-object v1, v14

    :goto_5ec
    move-object/from16 v7, v36

    move-object/from16 v5, v76

    goto/16 :goto_863

    :catch_5f2
    move-exception v0

    move-object/from16 v77, v4

    move-object/from16 v76, v5

    move-object/from16 v36, v7

    move-object/from16 v60, v10

    move-object v5, v14

    move-wide/from16 v10, v63

    const/4 v13, 0x5

    move-object v14, v1

    move-object v1, v3

    move-wide/from16 v3, v61

    move-object/from16 v25, v2

    move-wide/from16 v65, v28

    move-object/from16 v12, v38

    move-object/from16 v10, v60

    move-object/from16 v4, v77

    move-object v3, v1

    move-object v11, v5

    move-object v1, v14

    move-object/from16 v5, v76

    goto/16 :goto_863

    :catch_614
    move-exception v0

    move-object/from16 v77, v4

    move-object/from16 v76, v5

    move-object/from16 v36, v7

    move-object/from16 v60, v10

    move-object v5, v14

    const/4 v13, 0x5

    move-object v14, v1

    move-object v1, v3

    move-wide/from16 v3, v61

    move-object/from16 v25, v2

    move-object v11, v5

    move-wide/from16 v63, v26

    move-wide/from16 v65, v28

    move-object/from16 v12, v38

    move-object/from16 v5, v76

    move-object/from16 v4, v77

    move-object v3, v1

    move-object v1, v14

    goto/16 :goto_863

    :catch_634
    move-exception v0

    move-object/from16 v77, v4

    move-object/from16 v76, v5

    move-object/from16 v36, v7

    move-object/from16 v60, v10

    move-object v5, v14

    const/4 v13, 0x5

    move-object v14, v1

    move-object v1, v3

    move-object v11, v5

    goto :goto_653

    :catch_643
    move-exception v0

    move-object/from16 v77, v4

    move-object/from16 v76, v5

    move-object/from16 v36, v7

    move-object/from16 v60, v10

    move-object v5, v14

    const/4 v13, 0x5

    move-object v14, v1

    move-object v1, v3

    move-object v11, v5

    move-object/from16 v19, v12

    :goto_653
    move-object v1, v14

    move-wide/from16 v61, v24

    move-wide/from16 v63, v26

    move-wide/from16 v65, v28

    move-object/from16 v12, v38

    move-object/from16 v5, v76

    move-object/from16 v25, v2

    goto/16 :goto_863

    :catch_662
    move-exception v0

    move-object/from16 v77, v4

    move-object/from16 v76, v5

    move-object/from16 v60, v10

    move-object v5, v14

    const/4 v13, 0x5

    move-object v14, v1

    move-object v1, v3

    move-object v11, v5

    move-object v1, v14

    goto :goto_69f

    :catch_670
    move-exception v0

    move-object/from16 v77, v4

    move-object/from16 v76, v5

    move-object/from16 v60, v10

    move-object v5, v14

    const/4 v13, 0x5

    move-object v14, v1

    move-object v1, v3

    move-object v11, v5

    move-object v1, v14

    goto :goto_69d

    :catch_67e
    move-exception v0

    move-object/from16 v77, v4

    move-object/from16 v76, v5

    move-object/from16 v60, v10

    move-object v5, v14

    const/4 v13, 0x5

    move-object v14, v1

    move-object v1, v3

    move-object v11, v5

    move-object v1, v14

    goto :goto_69b

    :catch_68c
    move-exception v0

    move-object/from16 v77, v4

    move-object/from16 v76, v5

    move-object/from16 v60, v10

    move-object v5, v14

    const/4 v13, 0x5

    move-object v14, v1

    move-object v1, v3

    move-object v11, v5

    move-object v1, v14

    move-object/from16 v33, v16

    :goto_69b
    move-object/from16 v58, v17

    :goto_69d
    move-object/from16 v59, v18

    :goto_69f
    move-object/from16 v7, v19

    move-wide/from16 v61, v24

    move-wide/from16 v63, v26

    move-wide/from16 v65, v28

    move-object/from16 v5, v76

    move-object/from16 v25, v2

    move-object/from16 v19, v12

    move-object/from16 v12, v38

    goto/16 :goto_863

    :catch_6b1
    move-exception v0

    move-object/from16 v77, v4

    move-object/from16 v76, v5

    move-object v5, v14

    const/4 v13, 0x5

    move-object v14, v1

    move-object v1, v3

    move-object v11, v5

    move-object v1, v14

    move-object/from16 v58, v17

    move-object/from16 v59, v18

    move-object/from16 v7, v19

    move-wide/from16 v61, v24

    move-wide/from16 v63, v26

    move-wide/from16 v65, v28

    move-object/from16 v10, v31

    move-wide/from16 v31, v32

    move-object/from16 v5, v76

    move-object/from16 v25, v2

    move-object/from16 v19, v12

    move-object/from16 v33, v16

    move-object/from16 v12, v38

    goto/16 :goto_863

    :catch_6d8
    move-exception v0

    move-object/from16 v77, v4

    const/4 v13, 0x5

    move-object/from16 v90, v14

    move-object v14, v1

    move-object v1, v3

    move-object v3, v5

    move-object/from16 v5, v90

    move-object v11, v5

    move-object/from16 v34, v7

    move-object/from16 v58, v17

    move-object/from16 v59, v18

    move-object/from16 v7, v19

    move-wide/from16 v61, v24

    move-wide/from16 v63, v26

    move-wide/from16 v65, v28

    move-object/from16 v10, v31

    move-wide/from16 v31, v32

    move-object/from16 v25, v2

    move-object v5, v3

    move-object/from16 v19, v12

    move-object/from16 v33, v16

    move-object/from16 v12, v38

    move-object v3, v1

    move-object v1, v14

    goto/16 :goto_7b4

    :catch_703
    move-exception v0

    move-object/from16 v77, v4

    const/4 v13, 0x5

    move-object/from16 v90, v14

    move-object v14, v1

    move-object v1, v3

    move-object v3, v5

    move-object/from16 v5, v90

    move-object v11, v5

    goto :goto_71d

    :catch_710
    move-exception v0

    move-object/from16 v77, v4

    const/4 v13, 0x5

    move-object/from16 v90, v14

    move-object v14, v1

    move-object v1, v3

    move-object v3, v5

    move-object/from16 v5, v90

    move-object v11, v5

    move-object v8, v10

    :goto_71d
    move-object/from16 v58, v17

    move-object/from16 v59, v18

    move-wide/from16 v61, v24

    move-wide/from16 v63, v26

    move-wide/from16 v65, v28

    move-object/from16 v10, v31

    move-wide/from16 v31, v32

    move-object/from16 v9, v34

    move-object/from16 v25, v2

    move-object v5, v3

    move-object/from16 v34, v7

    move-object/from16 v33, v16

    move-object/from16 v7, v19

    move-object v3, v1

    move-object/from16 v19, v12

    move-object v1, v14

    move-object/from16 v12, v38

    goto/16 :goto_7b4

    :catch_73e
    move-exception v0

    move-object/from16 v77, v4

    const/4 v13, 0x5

    move-object/from16 v90, v14

    move-object v14, v1

    move-object v1, v3

    move-object v3, v5

    move-object/from16 v5, v90

    move-object v11, v5

    goto :goto_767

    :catch_74b
    move-exception v0

    move-object/from16 v77, v4

    const/4 v13, 0x5

    move-object/from16 v90, v14

    move-object v14, v1

    move-object v1, v3

    move-object v3, v5

    move-object/from16 v5, v90

    move-object v11, v5

    goto :goto_766

    :catch_758
    move-exception v0

    move-object/from16 v77, v4

    const/4 v13, 0x5

    move-object/from16 v90, v14

    move-object v14, v1

    move-object v1, v3

    move-object v3, v5

    move-object/from16 v5, v90

    move-object v11, v5

    move-object/from16 v39, v7

    :goto_766
    move-object v6, v8

    :goto_767
    move-object v8, v10

    move-object/from16 v58, v17

    move-object/from16 v59, v18

    move-object/from16 v7, v19

    move-wide/from16 v61, v24

    move-wide/from16 v63, v26

    move-wide/from16 v65, v28

    move-object/from16 v10, v31

    move-wide/from16 v31, v32

    move-object/from16 v25, v2

    move-object v5, v3

    move-object/from16 v19, v12

    move-object/from16 v33, v16

    move-object/from16 v12, v38

    move-object v3, v1

    move-object v1, v14

    goto :goto_7ae

    :catch_784
    move-exception v0

    move-object/from16 v77, v4

    const/4 v13, 0x5

    move-object/from16 v90, v14

    move-object v14, v1

    move-object v1, v3

    move-object v3, v5

    move-object/from16 v5, v90

    move-object v11, v5

    move-object/from16 v39, v7

    move-object/from16 v58, v17

    move-object/from16 v59, v18

    move-object/from16 v7, v19

    move-wide/from16 v61, v24

    move-wide/from16 v63, v26

    move-wide/from16 v65, v28

    move-object/from16 v25, v2

    move-object v5, v3

    move-object/from16 v19, v12

    move-object v3, v1

    move-object v12, v6

    move-object v6, v8

    move-object v8, v10

    move-object v1, v14

    move-object/from16 v10, v31

    move-wide/from16 v31, v32

    move-object/from16 v33, v16

    :goto_7ae
    move-object/from16 v90, v34

    move-object/from16 v34, v9

    move-object/from16 v9, v90

    :goto_7b4
    goto/16 :goto_863

    :catch_7b6
    move-exception v0

    move-object/from16 v77, v4

    move-object v11, v14

    const/4 v13, 0x5

    move-object v14, v1

    move-object v1, v3

    move-object/from16 v39, v7

    move-object v1, v14

    move-object/from16 v58, v17

    move-object/from16 v59, v18

    move-object/from16 v7, v19

    move-wide/from16 v61, v24

    move-wide/from16 v63, v26

    move-wide/from16 v65, v28

    move-object/from16 v25, v2

    move-object/from16 v19, v12

    move-object v12, v6

    move-object v6, v8

    move-object v8, v10

    move-object/from16 v10, v31

    move-wide/from16 v31, v32

    move-object/from16 v33, v16

    move-object/from16 v90, v34

    move-object/from16 v34, v9

    move-object/from16 v9, v90

    goto/16 :goto_863

    :catch_7e1
    move-exception v0

    move-object v11, v14

    const/4 v13, 0x5

    move-object v14, v1

    move-object v1, v3

    move-object/from16 v39, v7

    move-object v1, v14

    goto :goto_7f4

    :catch_7ea
    move-exception v0

    move-object v11, v14

    const/4 v13, 0x5

    move-object v14, v1

    move-object v1, v3

    move-object/from16 v39, v7

    move-object v1, v14

    move-object/from16 v37, v15

    :goto_7f4
    move-object/from16 v58, v17

    move-object/from16 v59, v18

    move-object/from16 v7, v19

    move-wide/from16 v61, v24

    move-wide/from16 v63, v26

    move-wide/from16 v65, v28

    move-object/from16 v25, v2

    move-object/from16 v19, v12

    move-object v12, v6

    move-object v6, v8

    move-object v8, v10

    move-object/from16 v10, v31

    move-wide/from16 v31, v32

    move-object/from16 v33, v16

    move-object/from16 v90, v34

    move-object/from16 v34, v9

    move-object/from16 v9, v90

    goto/16 :goto_863

    :catch_815
    move-exception v0

    move-object v11, v14

    const/4 v13, 0x5

    move-object v14, v1

    move-object/from16 v39, v7

    move-object/from16 v37, v15

    move-object/from16 v58, v17

    move-object/from16 v59, v18

    move-object/from16 v7, v19

    move-wide/from16 v61, v24

    move-wide/from16 v63, v26

    move-wide/from16 v65, v28

    move-object/from16 v25, v2

    move-object/from16 v19, v12

    move-object v12, v6

    move-object v6, v8

    move-object v8, v10

    move-object/from16 v10, v31

    move-wide/from16 v31, v32

    move-object/from16 v33, v16

    move-object/from16 v90, v34

    move-object/from16 v34, v9

    move-object/from16 v9, v90

    goto :goto_863

    :catch_83d
    move-exception v0

    move-object v11, v14

    const/4 v13, 0x5

    move-object/from16 v39, v7

    move-object/from16 v37, v15

    move-object/from16 v58, v17

    move-object/from16 v59, v18

    move-object/from16 v7, v19

    move-wide/from16 v61, v24

    move-wide/from16 v63, v26

    move-wide/from16 v65, v28

    move-object/from16 v25, v2

    move-object/from16 v19, v12

    move-object v12, v6

    move-object v6, v8

    move-object v8, v10

    move-object/from16 v10, v31

    move-wide/from16 v31, v32

    move-object/from16 v33, v16

    move-object/from16 v90, v34

    move-object/from16 v34, v9

    move-object/from16 v9, v90

    :goto_863
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error in package manager settings: package "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " has bad userId "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " at "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    move-object v14, v1

    move-object v15, v4

    move-object/from16 v76, v5

    move-object/from16 v36, v7

    move-object/from16 v17, v9

    move-object/from16 v60, v10

    move-object/from16 v16, v12

    move-object/from16 v10, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v37

    move-object/from16 v4, v58

    move-object/from16 v5, v59

    move-object v12, v3

    move-object v7, v6

    move-object v9, v8

    move/from16 v6, v21

    move-object/from16 v3, v33

    move-object/from16 v8, v34

    :goto_8aa
    if-eqz v1, :cond_b85

    const-string/jumbo v0, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/pm/PackageSetting;->uidError:Z

    iput-object v3, v1, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    const-string/jumbo v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/pm/PackageSetting;->isOrphaned:Z

    iput-object v5, v1, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    iput v6, v1, Lcom/android/server/pm/PackageSetting;->categoryHint:I

    iput-object v7, v1, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    iput-object v8, v1, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    iput-object v9, v1, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    const-string/jumbo v0, "true"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/pm/PackageSetting;->updateAvailable:Z

    const-string v0, "enabled"

    move-object/from16 v13, p1

    move-object/from16 v78, v2

    move-object/from16 v79, v4

    const/4 v2, 0x0

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_94e

    :try_start_8e2
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_8e6
    .catch Ljava/lang/NumberFormatException; {:try_start_8e2 .. :try_end_8e6} :catch_8f2

    move-object/from16 v80, v5

    const/4 v5, 0x0

    :try_start_8e9
    invoke-virtual {v1, v0, v5, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V
    :try_end_8ec
    .catch Ljava/lang/NumberFormatException; {:try_start_8e9 .. :try_end_8ec} :catch_8f0

    nop

    move/from16 v81, v6

    goto :goto_957

    :catch_8f0
    move-exception v0

    goto :goto_8f6

    :catch_8f2
    move-exception v0

    move-object/from16 v80, v5

    const/4 v5, 0x0

    :goto_8f6
    const-string/jumbo v2, "true"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_907

    move/from16 v81, v6

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-virtual {v1, v6, v5, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_94d

    :cond_907
    move/from16 v81, v6

    const/4 v2, 0x0

    const/4 v6, 0x1

    const-string v6, "false"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_918

    const/4 v6, 0x2

    invoke-virtual {v1, v6, v5, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_94d

    :cond_918
    const-string v6, "default"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_924

    invoke-virtual {v1, v5, v5, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_94d

    :cond_924
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: package "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has bad enabled value: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " at "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x5

    invoke-static {v6, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_94d
    goto :goto_957

    :cond_94e
    move-object/from16 v80, v5

    move/from16 v81, v6

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, v5, v5, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    :goto_957
    if-eqz v3, :cond_95e

    iget-object v0, v11, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_95e
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :goto_962
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v6, v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_b4b

    const/4 v2, 0x3

    if-ne v6, v2, :cond_982

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_974

    goto :goto_982

    :cond_974
    move/from16 v82, v0

    move-object/from16 v83, v3

    move-object/from16 v84, v4

    move/from16 v85, v6

    move-object/from16 v86, v7

    move-object/from16 v89, v8

    goto/16 :goto_b57

    :cond_982
    :goto_982
    if-eq v6, v2, :cond_b31

    const/4 v2, 0x4

    if-ne v6, v2, :cond_997

    nop

    move/from16 v82, v0

    move-object/from16 v83, v3

    move-object/from16 v84, v4

    move-object/from16 v86, v7

    move-object/from16 v89, v8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    goto/16 :goto_b3e

    :cond_997
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "disabled-components"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9b5

    const/4 v5, 0x0

    invoke-direct {v11, v1, v13, v5}, Lcom/android/server/pm/Settings;->readDisabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V

    :goto_9a7
    move/from16 v82, v0

    :goto_9a9
    move-object/from16 v83, v3

    move-object/from16 v84, v4

    move/from16 v85, v6

    move-object/from16 v86, v7

    :goto_9b1
    move-object/from16 v89, v8

    const/4 v3, 0x1

    goto :goto_9fa

    :cond_9b5
    const/4 v5, 0x0

    const-string v5, "enabled-components"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9c3

    const/4 v5, 0x0

    invoke-direct {v11, v1, v13, v5}, Lcom/android/server/pm/Settings;->readEnabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_9a7

    :cond_9c3
    const/4 v5, 0x0

    const-string/jumbo v5, "sigs"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9d7

    iget-object v5, v1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    move/from16 v82, v0

    iget-object v0, v11, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v5, v13, v0}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto :goto_9a9

    :cond_9d7
    move/from16 v82, v0

    const-string/jumbo v0, "perms"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9fe

    const/16 v35, 0x0

    nop

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    invoke-virtual {v11, v13, v0}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    move-object/from16 v83, v3

    move-object/from16 v84, v4

    move v3, v5

    move/from16 v85, v6

    move-object/from16 v86, v7

    move-object/from16 v89, v8

    :goto_9fa
    const/4 v4, 0x0

    :goto_9fb
    const/4 v5, 0x5

    goto/16 :goto_b30

    :cond_9fe
    const-string/jumbo v0, "proper-signing-keyset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5a

    const-string v0, "identifier"

    const/4 v5, 0x0

    invoke-interface {v13, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v83, v3

    move-object/from16 v84, v4

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v0, v11, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_a3f

    iget-object v5, v11, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    move/from16 v85, v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v87, v0

    move-object/from16 v86, v7

    const/4 v7, 0x1

    add-int/lit8 v0, v18, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a53

    :cond_a3f
    move-object/from16 v87, v0

    move/from16 v85, v6

    move-object/from16 v86, v7

    const/4 v7, 0x1

    iget-object v0, v11, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a53
    iget-object v0, v1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/PackageKeySetData;->setProperSigningKeySet(J)V

    goto/16 :goto_9b1

    :cond_a5a
    move-object/from16 v83, v3

    move-object/from16 v84, v4

    move/from16 v85, v6

    move-object/from16 v86, v7

    const-string/jumbo v0, "signing-keyset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6d

    goto/16 :goto_9b1

    :cond_a6d
    const-string/jumbo v0, "upgrade-keyset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a88

    const-string v0, "identifier"

    const/4 v3, 0x0

    invoke-interface {v13, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v0, v1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/PackageKeySetData;->addUpgradeKeySetById(J)V

    goto/16 :goto_9b1

    :cond_a88
    const-string v0, "defined-keyset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae1

    const-string v0, "identifier"

    const/4 v3, 0x0

    invoke-interface {v13, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "alias"

    invoke-interface {v13, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v11, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_ac8

    iget-object v6, v11, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v88, v3

    move-object/from16 v89, v8

    const/4 v3, 0x1

    add-int/lit8 v8, v18, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ada

    :cond_ac8
    move-object/from16 v88, v3

    move-object/from16 v89, v8

    const/4 v3, 0x1

    iget-object v6, v11, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_ada
    iget-object v6, v1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v6, v4, v5, v0}, Lcom/android/server/pm/PackageKeySetData;->addDefinedKeySet(JLjava/lang/String;)V

    goto/16 :goto_9fa

    :cond_ae1
    move-object/from16 v89, v8

    const/4 v3, 0x1

    const-string v0, "domain-verification"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af1

    invoke-direct {v11, v13, v1}, Lcom/android/server/pm/Settings;->readDomainVerificationLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSettingBase;)V

    goto/16 :goto_9fa

    :cond_af1
    const-string v0, "child-package"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b13

    const-string/jumbo v0, "name"

    const/4 v4, 0x0

    invoke-interface {v13, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    if-nez v5, :cond_b0c

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    :cond_b0c
    iget-object v5, v1, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9fb

    :cond_b13
    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <package>: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x5

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_b30
    goto :goto_b3e

    :cond_b31
    move/from16 v82, v0

    move-object/from16 v83, v3

    move-object/from16 v84, v4

    move-object/from16 v86, v7

    move-object/from16 v89, v8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    :goto_b3e
    move/from16 v0, v82

    move-object/from16 v3, v83

    move-object/from16 v4, v84

    move-object/from16 v7, v86

    move-object/from16 v8, v89

    const/4 v5, 0x0

    goto/16 :goto_962

    :cond_b4b
    move/from16 v82, v0

    move-object/from16 v83, v3

    move-object/from16 v84, v4

    move/from16 v85, v6

    move-object/from16 v86, v7

    move-object/from16 v89, v8

    :goto_b57
    if-eqz v35, :cond_b84

    iget-object v0, v11, Lcom/android/server/pm/Settings;->mPendingPackagesForSharedUser:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending package for SharedUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": sharedUserId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b84
    goto :goto_b98

    :cond_b85
    move-object/from16 v13, p1

    move-object/from16 v78, v2

    move-object/from16 v83, v3

    move-object/from16 v79, v4

    move-object/from16 v80, v5

    move/from16 v81, v6

    move-object/from16 v86, v7

    move-object/from16 v89, v8

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_b98
    return-void
.end method

.method private readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_51

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_51

    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    goto :goto_4

    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    new-instance v3, Lcom/android/server/pm/PersistentPreferredActivity;

    invoke-direct {v3, p1}, Lcom/android/server/pm/PersistentPreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    goto :goto_50

    :cond_34
    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <persistent-preferred-activities>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_50
    goto :goto_4

    :cond_51
    return-void
.end method

.method private readRestoredIntentFilterVerifications(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_50

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_50

    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    goto :goto_4

    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "domain-verification"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    new-instance v3, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v3, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4f

    :cond_36
    const-string v3, "PackageSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_4f
    goto :goto_4

    :cond_50
    return-void
.end method

.method private readSharedUserLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    const/4 v6, 0x5

    :try_start_7
    const-string/jumbo v7, "name"

    invoke-interface {p1, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    const-string/jumbo v7, "userId"

    invoke-interface {p1, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    if-eqz v1, :cond_1e

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_1f

    :cond_1e
    const/4 v7, 0x0

    :goto_1f
    const-string/jumbo v8, "true"

    const-string/jumbo v9, "system"

    invoke-interface {p1, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    or-int/lit8 v2, v2, 0x1

    :cond_31
    if-nez v0, :cond_4c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in package manager settings: <shared-user> has no name at "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_9b

    :cond_4c
    if-nez v7, :cond_77

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in package manager settings: shared-user "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " has bad userId "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " at "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_9b

    :cond_77
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v7, v2, v3}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v4

    move-object v5, v4

    if-nez v4, :cond_9b

    const/4 v4, 0x6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Occurred while parsing settings at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_9b
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_9b} :catch_9c

    :cond_9b
    :goto_9b
    goto :goto_c5

    :catch_9c
    move-exception v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in package manager settings: package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " has bad userId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_c5
    if-eqz v5, :cond_125

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    :cond_cb
    :goto_cb
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v8, v7

    const/4 v9, 0x1

    if-eq v7, v9, :cond_124

    const/4 v7, 0x3

    if-ne v8, v7, :cond_dc

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v4, :cond_124

    :cond_dc
    if-eq v8, v7, :cond_cb

    const/4 v7, 0x4

    if-ne v8, v7, :cond_e2

    goto :goto_cb

    :cond_e2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "sigs"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f7

    iget-object v9, v5, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v10, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v9, p1, v10}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto :goto_123

    :cond_f7
    const-string/jumbo v9, "perms"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_108

    invoke-virtual {v5}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v9

    invoke-virtual {p0, p1, v9}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V

    goto :goto_123

    :cond_108
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <shared-user>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_123
    goto :goto_cb

    :cond_124
    goto :goto_128

    :cond_125
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_128
    return-void
.end method

.method private removeInstallerPackageStatus(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_30

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageSetting;->setInstallerPackageName(Ljava/lang/String;)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/pm/PackageSetting;->isOrphaned:Z

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_30
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private removeUserIdLPw(I)V
    .registers 6

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_15

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit16 v1, p1, -0x2710

    if-ge v1, v0, :cond_14

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_14
    goto :goto_1a

    :cond_15
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_1a
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/Settings;->setFirstAvailableUid(I)V

    return-void
.end method

.method private replacePackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_1e

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_19

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    goto :goto_1e

    :cond_19
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1, p2}, Lcom/android/server/pm/Settings;->replaceUserIdLPw(ILjava/lang/Object;)V

    :cond_1e
    :goto_1e
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private replaceUserIdLPw(ILjava/lang/Object;)V
    .registers 6

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_14

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit16 v1, p1, -0x2710

    if-ge v1, v0, :cond_13

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_13
    goto :goto_19

    :cond_14
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_19
    return-void
.end method

.method private setFirstAvailableUid(I)V
    .registers 3

    sget v0, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    if-le p1, v0, :cond_6

    sput p1, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    :cond_6
    return-void
.end method

.method static updatePackageSetting(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Lcom/android/server/pm/UserManagerService;[Ljava/lang/String;[J)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/SharedUserSetting;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/UserManagerService;",
            "[",
            "Ljava/lang/String;",
            "[J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p10

    move-object/from16 v5, p12

    move-object/from16 v6, p13

    iget-object v7, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eq v8, v1, :cond_67

    const/4 v8, 0x5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " shared user changed from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v10, :cond_2f

    iget-object v10, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v10, v10, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    goto :goto_31

    :cond_2f
    const-string v10, "<nothing>"

    :goto_31
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3e

    iget-object v10, v1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    goto :goto_40

    :cond_3e
    const-string v10, "<nothing>"

    :goto_40
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    new-instance v8, Lcom/android/server/pm/PackageManagerException;

    const/4 v9, -0x8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Updating application package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v8

    :cond_67
    iget-object v8, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v8, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12b

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v8

    const-string v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Update"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_84

    const-string v11, " system"

    goto :goto_86

    :cond_84
    const-string v11, ""

    :goto_86
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " code path from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "; Retain data and using new"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v8, :cond_11f

    and-int/lit8 v9, p8, 0x1

    if-eqz v9, :cond_119

    if-nez p1, :cond_119

    invoke-static/range {p11 .. p11}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_119

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_c5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_119

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserInfo;

    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v13

    if-nez v13, :cond_e5

    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v13

    if-eqz v13, :cond_de

    goto :goto_e5

    :cond_de
    iget v13, v12, Landroid/content/pm/UserInfo;->id:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v13}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto :goto_116

    :cond_e5
    :goto_e5
    const-string v1, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move v14, v8

    const-string v8, "User "

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is Premium container. do not set install flag. / "

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " / installed = "

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v8}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move v8, v14

    :goto_116
    move-object/from16 v1, p2

    goto :goto_c5

    :cond_119
    move v14, v8

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    goto :goto_122

    :cond_11f
    move-object/from16 v1, p5

    move v14, v8

    :goto_122
    iput-object v2, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    goto :goto_12d

    :cond_12b
    move-object/from16 v1, p5

    :goto_12d
    iget-object v8, v0, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    invoke-virtual {v8, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_181

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v8

    const-string v10, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Update"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_14a

    const-string v12, " system"

    goto :goto_14c

    :cond_14a
    const-string v12, ""

    :goto_14c
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " resource path from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "; Retain data and using new"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, v0, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    :cond_181
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v8, v8, -0x2

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const v10, -0xe0009

    and-int/2addr v8, v10

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v10, p8, 0x1

    or-int/2addr v8, v10

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    and-int/lit8 v10, p9, 0x8

    or-int/2addr v8, v10

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v10, 0x20000

    and-int v10, p9, v10

    or-int/2addr v8, v10

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v10, 0x40000

    and-int v10, p9, v10

    or-int/2addr v8, v10

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v10, 0x80000

    and-int v10, p9, v10

    or-int/2addr v8, v10

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    move-object/from16 v8, p6

    iput-object v8, v0, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    move-object/from16 v10, p7

    iput-object v10, v0, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    if-eqz v4, :cond_1c9

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v11, v0, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    :cond_1c9
    if-eqz v5, :cond_1d6

    if-eqz v6, :cond_1d6

    array-length v11, v5

    array-length v12, v6

    if-ne v11, v12, :cond_1d6

    iput-object v5, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    iput-object v6, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    goto :goto_1db

    :cond_1d6
    const/4 v11, 0x0

    iput-object v11, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    iput-object v11, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    :goto_1db
    return-void
.end method

.method private writeIntToFile(Ljava/io/File;I)V
    .registers 7

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/FileUtils;->bytesToFile(Ljava/lang/String;[B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_35

    :catch_12
    move-exception v0

    const-string v1, "PackageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_35
    return-void
.end method

.method private writeKernelRemoveUserLPr(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    const-string/jumbo v2, "remove_userid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    return-void
.end method


# virtual methods
.method addAppOpPackage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionSettings;->addAppOpPackage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJIILjava/lang/String;Ljava/util/List;[Ljava/lang/String;[J)Lcom/android/server/pm/PackageSetting;
    .registers 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[J)",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move/from16 v14, p9

    iget-object v1, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    const/16 v19, 0x0

    if-eqz v13, :cond_2e

    iget v1, v13, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ne v1, v14, :cond_18

    return-object v13

    :cond_18
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate package, keeping first: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return-object v19

    :cond_2e
    new-instance v20, Lcom/android/server/pm/PackageSetting;

    const/16 v16, 0x0

    move-object/from16 v1, v20

    move-object v2, v15

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p10

    move/from16 v12, p12

    move-object/from16 v21, v13

    move/from16 v13, p13

    move v0, v14

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    invoke-direct/range {v1 .. v18}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;I[Ljava/lang/String;[J)V

    iput v0, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    move v3, v0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/pm/Settings;->addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    iget-object v4, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_6a
    return-object v19
.end method

.method addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method protected addRemovedApp(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mRemovedApp:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_7
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRemovedApp:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRemovedApp:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_17
    monitor-exit v1

    return v0

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method addRenamedPackageLPw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;
    .registers 10

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    iget v2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-ne v2, p2, :cond_10

    return-object v0

    :cond_10
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding duplicate shared user, keeping first: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return-object v1

    :cond_26
    new-instance v2, Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {v2, p1, p3, p4}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;II)V

    move-object v0, v2

    iput p2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-direct {p0, p2, v0, p1}, Lcom/android/server/pm/Settings;->addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_3a
    return-object v1
.end method

.method addUserToSettingLPw(Lcom/android/server/pm/PackageSetting;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->newUserIdLPw(Ljava/lang/Object;)I

    move-result v0

    iput v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    goto :goto_12

    :cond_b
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/pm/Settings;->addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    :goto_12
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ltz v0, :cond_17

    return-void

    :cond_17
    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " could not be assigned a valid UID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/4 v1, -0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " could not be assigned a valid UID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method applyDefaultPreferredAppsLPw(Lcom/android/server/pm/PackageManagerService;I)V
    .registers 15

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    iget v4, v1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_49

    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v3, :cond_49

    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    if-eqz v3, :cond_49

    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    nop

    :goto_2c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_49

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v4, v5, p2}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_49
    goto :goto_a

    :cond_4a
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string v4, "etc/preferred-apps"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1a3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_63

    goto/16 :goto_1a3

    :cond_63
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_85

    const-string v1, "PackageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " cannot be read"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_85
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v4, v1

    :goto_8a
    if-ge v2, v4, :cond_1a2

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_bf

    const-string v6, "PackageSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Non-xml file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " directory, ignoring"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_196

    :cond_bf
    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v6

    if-nez v6, :cond_e2

    const-string v6, "PackageSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Preferred apps file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " cannot be read"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_196

    :cond_e2
    const/4 v6, 0x0

    move-object v7, v6

    :try_start_e4
    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v7, v8

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    invoke-interface {v8, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_f6
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v9, v6

    const/4 v10, 0x2

    if-eq v6, v10, :cond_101

    if-eq v9, v3, :cond_101

    goto :goto_f6

    :cond_101
    if-eq v9, v10, :cond_123

    const-string v6, "PackageSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Preferred apps file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " does not have start tag"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e4 .. :try_end_11e} :catch_177
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_11e} :catch_15a
    .catchall {:try_start_e4 .. :try_end_11e} :catchall_158

    nop

    :try_start_11f
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_122
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_122} :catch_194

    goto :goto_193

    :cond_123
    :try_start_123
    const-string/jumbo v6, "preferred-activities"

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_150

    const-string v6, "PackageSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Preferred apps file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " does not start with \'preferred-activities\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_123 .. :try_end_14b} :catch_177
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_14b} :catch_15a
    .catchall {:try_start_123 .. :try_end_14b} :catchall_158

    nop

    :try_start_14c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_14f
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_14f} :catch_194

    goto :goto_193

    :cond_150
    :try_start_150
    invoke-direct {p0, p1, v8, p2}, Lcom/android/server/pm/Settings;->readDefaultPreferredActivitiesLPw(Lcom/android/server/pm/PackageManagerService;Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_153
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_150 .. :try_end_153} :catch_177
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_153} :catch_15a
    .catchall {:try_start_150 .. :try_end_153} :catchall_158

    nop

    :try_start_154
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_157
    .catch Ljava/io/IOException; {:try_start_154 .. :try_end_157} :catch_194

    goto :goto_193

    :catchall_158
    move-exception v1

    goto :goto_19a

    :catch_15a
    move-exception v6

    :try_start_15b
    const-string v8, "PackageSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error reading apps file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_171
    .catchall {:try_start_15b .. :try_end_171} :catchall_158

    if-eqz v7, :cond_196

    :try_start_173
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_176
    .catch Ljava/io/IOException; {:try_start_173 .. :try_end_176} :catch_194

    goto :goto_193

    :catch_177
    move-exception v6

    :try_start_178
    const-string v8, "PackageSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error reading apps file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18e
    .catchall {:try_start_178 .. :try_end_18e} :catchall_158

    if-eqz v7, :cond_196

    :try_start_190
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_193
    .catch Ljava/io/IOException; {:try_start_190 .. :try_end_193} :catch_194

    :goto_193
    goto :goto_196

    :catch_194
    move-exception v6

    goto :goto_193

    :cond_196
    :goto_196
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8a

    :goto_19a
    if-eqz v7, :cond_1a1

    :try_start_19c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_19f
    .catch Ljava/io/IOException; {:try_start_19c .. :try_end_19f} :catch_1a0

    goto :goto_1a1

    :catch_1a0
    move-exception v2

    :cond_1a1
    :goto_1a1
    throw v1

    :cond_1a2
    return-void

    :cond_1a3
    :goto_1a3
    return-void
.end method

.method applyPendingPermissionGrantsLPw(Ljava/lang/String;I)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-eqz v0, :cond_84

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_84

    :cond_12
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-eqz v1, :cond_83

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-nez v2, :cond_21

    goto :goto_83

    :cond_21
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    if-nez v2, :cond_42

    const-string v3, "PackageSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find supposedly installed package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_42
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v3

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/Settings$RestoredPermissionGrant;

    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v7, v5, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->permissionName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v6

    if-eqz v6, :cond_6e

    iget-boolean v7, v5, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->granted:Z

    if-eqz v7, :cond_67

    invoke-virtual {v3, v6, p2}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    :cond_67
    const/16 v7, 0xb

    iget v8, v5, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->grantBits:I

    invoke-virtual {v3, v6, p2, v7, v8}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    :cond_6e
    goto :goto_4a

    :cond_6f
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_7e

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_7e
    const/4 v4, 0x0

    invoke-virtual {p0, p2, v4}, Lcom/android/server/pm/Settings;->writeRuntimePermissionsForUserLPr(IZ)V

    return-void

    :cond_83
    :goto_83
    return-void

    :cond_84
    :goto_84
    return-void
.end method

.method areDefaultRuntimePermissionsGrantedLPr(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->areDefaultRuntimPermissionsGrantedLPr(I)Z

    move-result v0

    return v0
.end method

.method public canPropagatePermissionToInstantApp(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionSettings;->canPropagatePermissionToInstantApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method createIntentFilterVerificationIfNeededLPw(Ljava/lang/String;Landroid/util/ArraySet;)Landroid/content/pm/IntentFilterVerificationInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/IntentFilterVerificationInfo;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-nez v0, :cond_c

    const/4 v1, 0x0

    return-object v1

    :cond_c
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v1

    if-nez v1, :cond_1c

    new-instance v2, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v2, p1, p2}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Ljava/lang/String;Landroid/util/ArraySet;)V

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    goto :goto_1f

    :cond_1c
    invoke-virtual {v1, p2}, Landroid/content/pm/IntentFilterVerificationInfo;->setDomains(Landroid/util/ArraySet;)V

    :goto_1f
    return-object v1
.end method

.method createNewPersonaLI(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;ILjava/io/File;Ljava/util/List;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/Installer;",
            "I",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v10, p3

    move-object/from16 v11, p5

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->mkdir()Z

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    const/16 v3, 0x1f9

    invoke-static {v0, v3, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    const/4 v12, 0x3

    const/4 v0, 0x0

    if-eqz v11, :cond_b6

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1a
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v5, v4, [Ljava/lang/String;

    new-array v6, v4, [I

    new-array v7, v4, [Ljava/lang/String;

    new-array v8, v4, [I

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v13, v0

    :goto_31
    if-ge v13, v4, :cond_71

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/PackageSetting;

    iget-object v15, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v15, :cond_50

    iget-object v15, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v11, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_50

    const/4 v15, 0x1

    invoke-virtual {v14, v15, v10}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    iget-object v15, v14, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    aput-object v15, v5, v13

    goto :goto_56

    :cond_50
    invoke-virtual {v14, v0, v10}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    const/4 v15, 0x0

    aput-object v15, v5, v13

    :goto_56
    iget v15, v14, Lcom/android/server/pm/PackageSetting;->appId:I

    aput v15, v6, v13

    iget-object v15, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v15, :cond_6e

    iget-object v15, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    aput-object v15, v7, v13

    iget-object v15, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    aput v15, v8, v13

    :cond_6e
    add-int/lit8 v13, v13, 0x1

    goto :goto_31

    :cond_71
    monitor-exit v2
    :try_end_72
    .catchall {:try_start_1a .. :try_end_72} :catchall_b3

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move v9, v4

    nop

    :goto_79
    move v8, v0

    if-ge v8, v9, :cond_13c

    aget-object v0, v13, v8

    if-nez v0, :cond_86

    nop

    move/from16 v19, v8

    move/from16 v20, v9

    goto :goto_ae

    :cond_86
    move/from16 v17, v12

    const/4 v3, 0x0

    :try_start_89
    aget-object v4, v13, v8

    const/4 v6, 0x3

    aget v7, v14, v8

    aget-object v0, v15, v8

    aget v18, v16, v8
    :try_end_92
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_89 .. :try_end_92} :catch_a2

    move-object/from16 v2, p2

    move v5, v10

    move/from16 v19, v8

    move-object v8, v0

    move/from16 v20, v9

    move/from16 v9, v18

    :try_start_9c
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/Installer;->createAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)J
    :try_end_9f
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_9c .. :try_end_9f} :catch_a0

    goto :goto_ae

    :catch_a0
    move-exception v0

    goto :goto_a7

    :catch_a2
    move-exception v0

    move/from16 v19, v8

    move/from16 v20, v9

    :goto_a7
    const-string v2, "PackageSettings"

    const-string v3, "Failed to prepare app data"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_ae
    add-int/lit8 v0, v19, 0x1

    move/from16 v9, v20

    goto :goto_79

    :catchall_b3
    move-exception v0

    :try_start_b4
    monitor-exit v2
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b3

    throw v0

    :cond_b6
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_b9
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v5, v4, [Ljava/lang/String;

    new-array v6, v4, [I

    new-array v7, v4, [Ljava/lang/String;

    new-array v8, v4, [I

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v13, v0

    :goto_d0
    if-ge v13, v4, :cond_fa

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v14, v0, v10}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    iget-object v15, v14, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    aput-object v15, v5, v13

    iget v15, v14, Lcom/android/server/pm/PackageSetting;->appId:I

    aput v15, v6, v13

    iget-object v15, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v15, :cond_f7

    iget-object v15, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    aput-object v15, v7, v13

    iget-object v15, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    aput v15, v8, v13

    :cond_f7
    add-int/lit8 v13, v13, 0x1

    goto :goto_d0

    :cond_fa
    monitor-exit v2
    :try_end_fb
    .catchall {:try_start_b9 .. :try_end_fb} :catchall_14e

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move v9, v4

    nop

    :goto_102
    move v8, v0

    if-ge v8, v9, :cond_13c

    aget-object v0, v13, v8

    if-nez v0, :cond_10f

    nop

    move/from16 v19, v8

    move/from16 v20, v9

    goto :goto_137

    :cond_10f
    move/from16 v17, v12

    const/4 v3, 0x0

    :try_start_112
    aget-object v4, v13, v8

    const/4 v6, 0x3

    aget v7, v14, v8

    aget-object v0, v15, v8

    aget v18, v16, v8
    :try_end_11b
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_112 .. :try_end_11b} :catch_12b

    move-object/from16 v2, p2

    move v5, v10

    move/from16 v19, v8

    move-object v8, v0

    move/from16 v20, v9

    move/from16 v9, v18

    :try_start_125
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/Installer;->createAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)J
    :try_end_128
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_125 .. :try_end_128} :catch_129

    goto :goto_137

    :catch_129
    move-exception v0

    goto :goto_130

    :catch_12b
    move-exception v0

    move/from16 v19, v8

    move/from16 v20, v9

    :goto_130
    const-string v2, "PackageSettings"

    const-string v3, "Failed to prepare app data"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_137
    add-int/lit8 v0, v19, 0x1

    move/from16 v9, v20

    goto :goto_102

    :cond_13c
    move/from16 v20, v9

    iget-object v3, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    move-object/from16 v4, p1

    :try_start_143
    invoke-virtual {v1, v4, v10}, Lcom/android/server/pm/Settings;->applyDefaultPreferredAppsLPw(Lcom/android/server/pm/PackageManagerService;I)V

    invoke-virtual {v1, v10}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    monitor-exit v3

    return-void

    :catchall_14b
    move-exception v0

    monitor-exit v3
    :try_end_14d
    .catchall {:try_start_143 .. :try_end_14d} :catchall_14b

    throw v0

    :catchall_14e
    move-exception v0

    move-object/from16 v4, p1

    :goto_151
    :try_start_151
    monitor-exit v2
    :try_end_152
    .catchall {:try_start_151 .. :try_end_152} :catchall_153

    throw v0

    :catchall_153
    move-exception v0

    goto :goto_151
.end method

.method createNewUserLI(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;I[Ljava/lang/String;)V
    .registers 26

    move-object/from16 v1, p0

    move/from16 v10, p3

    move-object/from16 v11, p4

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_9
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v4, v3, [Ljava/lang/String;

    new-array v5, v3, [Ljava/lang/String;

    new-array v6, v3, [I

    new-array v7, v3, [Ljava/lang/String;

    new-array v8, v3, [I

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v13, 0x0

    :goto_22
    if-ge v13, v3, :cond_ba

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/PackageSetting;

    iget-object v15, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v15, :cond_ad

    iget-object v15, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v15, :cond_3c

    nop

    move-object/from16 v19, v0

    move-object/from16 v20, v9

    const/4 v12, 0x0

    goto/16 :goto_b2

    :cond_3c
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v15

    if-eqz v15, :cond_4c

    iget-object v15, v14, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-static {v11, v15}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4c

    const/4 v15, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v15, 0x0

    :goto_4d
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v17

    if-nez v17, :cond_79

    if-eqz v11, :cond_73

    array-length v12, v11

    move-object/from16 v19, v0

    const/4 v0, 0x1

    if-lt v12, v0, :cond_6f

    const-string v0, "com.samsung.android.knox.securefolder.skip.shouldinstall"

    move-object/from16 v20, v9

    const/4 v12, 0x0

    aget-object v9, v11, v12

    invoke-virtual {v0, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7f

    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_7f

    goto :goto_7e

    :cond_6f
    move-object/from16 v20, v9

    const/4 v12, 0x0

    goto :goto_7f

    :cond_73
    move-object/from16 v19, v0

    move-object/from16 v20, v9

    const/4 v12, 0x0

    goto :goto_7f

    :cond_79
    move-object/from16 v19, v0

    move-object/from16 v20, v9

    const/4 v12, 0x0

    :goto_7e
    const/4 v15, 0x0

    :cond_7f
    :goto_7f
    if-eqz v15, :cond_88

    invoke-direct {v1, v14, v10}, Lcom/android/server/pm/Settings;->hasPackageDisableForGuest(Lcom/android/server/pm/PackageSetting;I)Z

    move-result v0

    if-eqz v0, :cond_88

    const/4 v15, 0x0

    :cond_88
    invoke-virtual {v14, v15, v10}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    if-nez v15, :cond_90

    invoke-virtual {v1, v14}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    :cond_90
    iget-object v0, v14, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    aput-object v0, v4, v13

    iget-object v0, v14, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    aput-object v0, v5, v13

    iget v0, v14, Lcom/android/server/pm/PackageSetting;->appId:I

    aput v0, v6, v13

    iget-object v0, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    aput-object v0, v7, v13

    iget-object v0, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    aput v0, v8, v13

    goto :goto_b2

    :cond_ad
    move-object/from16 v19, v0

    move-object/from16 v20, v9

    const/4 v12, 0x0

    :goto_b2
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v19

    move-object/from16 v9, v20

    goto/16 :goto_22

    :cond_ba
    const/4 v12, 0x0

    monitor-exit v2
    :try_end_bc
    .catchall {:try_start_9 .. :try_end_bc} :catchall_107

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move v9, v3

    nop

    :goto_c5
    if-ge v12, v9, :cond_f8

    aget-object v0, v14, v12

    if-nez v0, :cond_cf

    nop

    move/from16 v19, v9

    goto :goto_f3

    :cond_cf
    const/4 v0, 0x3

    move/from16 v18, v0

    :try_start_d2
    aget-object v3, v13, v12

    aget-object v4, v14, v12

    const/4 v6, 0x3

    aget v7, v15, v12

    aget-object v8, v16, v12

    aget v0, v17, v12
    :try_end_dd
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_d2 .. :try_end_dd} :catch_e9

    move-object/from16 v2, p2

    move v5, v10

    move/from16 v19, v9

    move v9, v0

    :try_start_e3
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/Installer;->createAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)J
    :try_end_e6
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_e3 .. :try_end_e6} :catch_e7

    goto :goto_f3

    :catch_e7
    move-exception v0

    goto :goto_ec

    :catch_e9
    move-exception v0

    move/from16 v19, v9

    :goto_ec
    const-string v2, "PackageSettings"

    const-string v3, "Failed to prepare app data"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f3
    add-int/lit8 v12, v12, 0x1

    move/from16 v9, v19

    goto :goto_c5

    :cond_f8
    move/from16 v19, v9

    iget-object v3, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    move-object/from16 v4, p1

    :try_start_ff
    invoke-virtual {v1, v4, v10}, Lcom/android/server/pm/Settings;->applyDefaultPreferredAppsLPw(Lcom/android/server/pm/PackageManagerService;I)V

    monitor-exit v3

    return-void

    :catchall_104
    move-exception v0

    monitor-exit v3
    :try_end_106
    .catchall {:try_start_ff .. :try_end_106} :catchall_104

    throw v0

    :catchall_107
    move-exception v0

    move-object/from16 v4, p1

    :goto_10a
    :try_start_10a
    monitor-exit v2
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_10c

    throw v0

    :catchall_10c
    move-exception v0

    goto :goto_10a
.end method

.method disableSystemPackageLPw(Ljava/lang/String;Z)Z
    .registers 8

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    const/4 v1, 0x0

    if-nez v0, :cond_27

    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not an installed package"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_27
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    if-nez v2, :cond_6a

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v3, :cond_6a

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v3}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_6a

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v3}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v3

    if-nez v3, :cond_6a

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v1, :cond_59

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_59

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_59
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_68

    new-instance v1, Lcom/android/server/pm/PackageSetting;

    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/Settings;->replacePackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V

    :cond_68
    const/4 v1, 0x1

    return v1

    :cond_6a
    return v1
.end method

.method dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V
    .registers 5

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "gids="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/server/pm/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/PermissionsState;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionsState;",
            ")V"
        }
    .end annotation

    invoke-virtual {p4}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_58

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "install permissions:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    if-eqz p3, :cond_2f

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    goto :goto_16

    :cond_2f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ": granted="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, ", flags="

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/pm/Settings;->permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_16

    :cond_58
    return-void
.end method

.method dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;Z)V
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/text/SimpleDateFormat;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p7

    if-eqz v9, :cond_192

    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_21

    :cond_1f
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_21
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v11, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v7, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-virtual {v7, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-virtual {v7, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_58

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    goto :goto_5a

    :cond_58
    const-string v0, "?"

    :goto_5a
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_b5

    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "-"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "splt,"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "base,"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget v0, v0, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    if-eqz v0, :cond_b5

    const/4 v13, 0x0

    :goto_85
    move v0, v13

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_b5

    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "splt,"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    aget v1, v1, v0

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v13, v0, 0x1

    goto :goto_85

    :cond_b5
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_191

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "usr"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ","

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v2

    if-eqz v2, :cond_ed

    const-string v2, "I"

    goto :goto_ef

    :cond_ed
    const-string v2, "i"

    :goto_ef
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getHidden(I)Z

    move-result v2

    if-eqz v2, :cond_fd

    const-string v2, "B"

    goto :goto_ff

    :cond_fd
    const-string v2, "b"

    :goto_ff
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getSuspended(I)Z

    move-result v2

    if-eqz v2, :cond_10d

    const-string v2, "SU"

    goto :goto_110

    :cond_10d
    const-string/jumbo v2, "su"

    :goto_110
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v2

    if-eqz v2, :cond_11e

    const-string v2, "S"

    goto :goto_121

    :cond_11e
    const-string/jumbo v2, "s"

    :goto_121
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v2

    if-eqz v2, :cond_12f

    const-string v2, "l"

    goto :goto_131

    :cond_12f
    const-string v2, "L"

    :goto_131
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v2

    if-eqz v2, :cond_13f

    const-string v2, "IA"

    goto :goto_141

    :cond_13f
    const-string v2, "ia"

    :goto_141
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getVirtulalPreload(I)Z

    move-result v2

    if-eqz v2, :cond_14f

    const-string v2, "VPI"

    goto :goto_152

    :cond_14f
    const-string/jumbo v2, "vpi"

    :goto_152
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getHarmfulAppWarning(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_160

    const-string v3, "HA"

    goto :goto_162

    :cond_160
    const-string v3, "ha"

    :goto_162
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v3}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(I)V

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v3}, Lcom/android/server/pm/PackageSetting;->getLastDisabledAppCaller(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v3, :cond_182

    move-object v4, v3

    goto :goto_184

    :cond_182
    const-string v4, "?"

    :goto_184
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_b9

    :cond_191
    return-void

    :cond_192
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Package ["

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_1a1

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_1a3

    :cond_1a1
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_1a3
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "] ("

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static/range {p5 .. p5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "):"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_1cc

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  compat name="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1cc
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  userId="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v11, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_1ea

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  sharedUser="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1ea
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  pkg="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  codePath="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez v10, :cond_23a

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  resourcePath="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  legacyNativeLibraryDir="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  primaryCpuAbi="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  secondaryCpuAbi="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_23a
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  versionCode="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v7, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_267

    const-string v0, " minSdk="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " targetSdk="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    :cond_267
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_5aa

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_2b0

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v6, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    if-eqz v1, :cond_28e

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_299

    :cond_28e
    iget-object v2, v6, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    :cond_299
    if-eqz v1, :cond_2af

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  parentPackage="

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v2, :cond_2aa

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_2ac

    :cond_2aa
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_2ac
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2af
    goto :goto_311

    :cond_2b0
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_311

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  childPackages=["

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_2c7
    if-ge v1, v0, :cond_30c

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iget-object v3, v6, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    if-eqz v3, :cond_2e9

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f4

    :cond_2e9
    iget-object v4, v6, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    :cond_2f4
    if-eqz v3, :cond_309

    if-lez v1, :cond_2fd

    const-string v4, ", "

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2fd
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v4, :cond_304

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_306

    :cond_304
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_306
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_309
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c7

    :cond_30c
    const-string v1, "]"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_311
    :goto_311
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  versionName="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  splits="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-static {v7, v0}, Lcom/android/server/pm/Settings;->dumpSplitNames(Ljava/io/PrintWriter;Landroid/content/pm/PackageParser$Package;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  apkSigningVersion="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  applicationInfo="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  flags="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    sget-object v2, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    if-eqz v1, :cond_388

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  privateFlags="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    sget-object v2, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_388
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3a2

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  appCategory="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(I)V

    :cond_3a2
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  dataDir="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  supportsScreens=["

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x1

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_3d4

    if-nez v1, :cond_3cd

    const-string v2, ", "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3cd
    const/4 v1, 0x0

    const-string/jumbo v2, "small"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3d4
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_3ec

    if-nez v1, :cond_3e5

    const-string v2, ", "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3e5
    const/4 v1, 0x0

    const-string/jumbo v2, "medium"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3ec
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_403

    if-nez v1, :cond_3fd

    const-string v2, ", "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3fd
    const/4 v1, 0x0

    const-string v2, "large"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_403
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_41c

    if-nez v1, :cond_415

    const-string v2, ", "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_415
    const/4 v1, 0x0

    const-string/jumbo v2, "xlarge"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_41c
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_434

    if-nez v1, :cond_42d

    const-string v2, ", "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_42d
    const/4 v1, 0x0

    const-string/jumbo v2, "resizeable"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_434
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_44b

    if-nez v1, :cond_445

    const-string v2, ", "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_445
    const/4 v1, 0x0

    const-string v2, "anyDensity"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_44b
    const-string v2, "]"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_48b

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_48b

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  dynamic libraries:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_469
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_48b

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_469

    :cond_48b
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    if-eqz v2, :cond_4ba

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  static library:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "name:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " version:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-wide v2, v2, Landroid/content/pm/PackageParser$Package;->staticSharedLibVersion:J

    invoke-virtual {v7, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    :cond_4ba
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    if-eqz v2, :cond_4f5

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4f5

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  usesLibraries:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_4d3
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4f5

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4d3

    :cond_4f5
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    if-eqz v2, :cond_53e

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_53e

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  usesStaticLibraries:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_50e
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_53e

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " version:"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesVersions:[J

    aget-wide v3, v3, v2

    invoke-virtual {v7, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_50e

    :cond_53e
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    if-eqz v2, :cond_579

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_579

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  usesOptionalLibraries:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_557
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_579

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_557

    :cond_579
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    if-eqz v2, :cond_5aa

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_5aa

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  usesLibraryFiles:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_58f
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_5aa

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_58f

    :cond_5aa
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  timeStamp="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-virtual {v12, v0, v1}, Ljava/util/Date;->setTime(J)V

    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  firstInstallTime="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-virtual {v12, v0, v1}, Ljava/util/Date;->setTime(J)V

    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  lastUpdateTime="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-virtual {v12, v0, v1}, Ljava/util/Date;->setTime(J)V

    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_5f7

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  installerPackageName="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5f7
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    if-eqz v0, :cond_608

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  volumeUuid="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_608
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  signatures="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  installPermissionsFixed="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v11, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  pkgFlags="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v11, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    sget-object v1, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_65f

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    if-eqz v0, :cond_65f

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  overlayTarget="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  overlayCategory="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOverlayCategory:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_65f
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_6e6

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    if-eqz v0, :cond_6e6

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6e6

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  declared permissions:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_680
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6e6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Permission;

    if-eqz v10, :cond_699

    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_699

    goto :goto_6e3

    :cond_699
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ": prot="

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v3}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_6c5

    const-string v3, ", COSTS_MONEY"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_6c5
    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6d2

    const-string v3, ", HIDDEN"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_6d2
    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v3, v4

    if-eqz v3, :cond_6e0

    const-string v3, ", INSTALLED"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_6e0
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :goto_6e3
    add-int/lit8 v1, v1, 0x1

    goto :goto_680

    :cond_6e6
    if-nez v10, :cond_6ea

    if-eqz p9, :cond_72e

    :cond_6ea
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_72e

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v0, :cond_72e

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_72e

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  requested permissions:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_70b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_72e

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v10, :cond_720

    invoke-virtual {v10, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_720

    goto :goto_72b

    :cond_720
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_72b
    add-int/lit8 v1, v1, 0x1

    goto :goto_70b

    :cond_72e
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_736

    if-nez v10, :cond_736

    if-eqz p9, :cond_74e

    :cond_736
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v7, v1, v10, v0}, Lcom/android/server/pm/Settings;->dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/PermissionsState;)V

    :cond_74e
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_752
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_915

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  User "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "ceDataInode="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getCeDataInode(I)J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " installed="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " hidden="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getHidden(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " suspended="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getSuspended(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getSuspended(I)Z

    move-result v0

    if-eqz v0, :cond_7cb

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    const-string v1, " suspendingPackage="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " dialogMessage="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/content/pm/PackageUserState;->dialogMessage:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_7cb
    const-string v0, " stopped="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " notLaunched="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " enabled="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " instant="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " virtual="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getVirtulalPreload(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getOverlayPaths(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_838

    array-length v0, v4

    if-lez v0, :cond_838

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  overlay paths:"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    array-length v0, v4

    const/4 v1, 0x0

    :goto_826
    if-ge v1, v0, :cond_838

    aget-object v2, v4, v1

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_826

    :cond_838
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getLastDisabledAppCaller(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_84b

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    lastDisabledCaller: "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_84b
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v0, :cond_896

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v1}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v1

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/pm/Settings;->dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v0}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v16

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v17, v2

    move-object v2, v15

    move-object v15, v3

    move-object v3, v10

    move-object/from16 v18, v4

    move-object/from16 v4, v16

    move-object v13, v5

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Z)V

    goto :goto_89a

    :cond_896
    move-object v15, v3

    move-object/from16 v18, v4

    move-object v13, v5

    :goto_89a
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getHarmfulAppWarning(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8ad

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "      harmfulAppWarning: "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_8ad
    if-nez v10, :cond_913

    iget v1, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v1}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Landroid/util/ArraySet;

    move-result-object v1

    if-eqz v1, :cond_8e1

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_8e1

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    disabledComponents:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8c9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8e1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "      "

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8c9

    :cond_8e1
    iget v2, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Landroid/util/ArraySet;

    move-result-object v1

    if-eqz v1, :cond_913

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_913

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    enabledComponents:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8fb
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_913

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "      "

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8fb

    :cond_913
    goto/16 :goto_752

    :cond_915
    return-void
.end method

.method dumpPackagesLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v6, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v18

    iget-object v1, v15, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_28
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_9c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/server/pm/PackageSetting;

    if-eqz v13, :cond_4b

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    goto :goto_28

    :cond_4b
    if-eqz v12, :cond_58

    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Landroid/util/ArraySet;)Z

    move-result v1

    if-nez v1, :cond_58

    goto :goto_28

    :cond_58
    if-nez p5, :cond_64

    if-eqz v13, :cond_64

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    move-object/from16 v9, p4

    invoke-virtual {v9, v1}, Lcom/android/server/pm/DumpState;->setSharedUser(Lcom/android/server/pm/SharedUserSetting;)V

    goto :goto_66

    :cond_64
    move-object/from16 v9, p4

    :goto_66
    if-nez p5, :cond_79

    if-nez v0, :cond_79

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_73
    const-string v1, "Packages:"

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_79
    move/from16 v16, v0

    const-string v5, "  "

    if-eqz p5, :cond_84

    const-string/jumbo v0, "pkg"

    move-object v4, v0

    nop

    :cond_84
    if-eqz v13, :cond_89

    move/from16 v17, v3

    goto :goto_8b

    :cond_89
    move/from16 v17, v2

    :goto_8b
    move-object v0, v15

    move-object v1, v14

    move-object v2, v5

    move-object v3, v4

    move-object v4, v12

    move-object v5, v11

    move-object/from16 v8, v18

    move/from16 v9, v17

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;Z)V

    nop

    move/from16 v0, v16

    goto :goto_28

    :cond_9c
    const/4 v0, 0x0

    iget-object v1, v15, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_110

    if-nez v12, :cond_110

    iget-object v1, v15, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_110

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    if-eqz v13, :cond_d4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d4

    goto :goto_b1

    :cond_d4
    if-nez p5, :cond_ed

    if-nez v0, :cond_e7

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v8

    if-eqz v8, :cond_e1

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_e1
    const-string v8, "Renamed packages:"

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_e7
    const-string v8, "  "

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_f3

    :cond_ed
    const-string/jumbo v8, "ren,"

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_f3
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p5, :cond_101

    const-string v8, " -> "

    goto :goto_103

    :cond_101
    const-string v8, ","

    :goto_103
    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b1

    :cond_110
    const/4 v0, 0x0

    iget-object v1, v15, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_17b

    if-nez v12, :cond_17b

    iget-object v1, v15, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_125
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    if-eqz v13, :cond_144

    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_144

    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_144

    goto :goto_125

    :cond_144
    if-nez p5, :cond_157

    if-nez v0, :cond_157

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v8

    if-eqz v8, :cond_151

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_151
    const-string v8, "Hidden system packages:"

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_157
    const-string v10, "  "

    if-eqz p5, :cond_15f

    const-string v8, "dis"

    move-object v11, v8

    goto :goto_160

    :cond_15f
    move-object v11, v4

    :goto_160
    if-eqz v13, :cond_165

    move/from16 v17, v3

    goto :goto_167

    :cond_165
    move/from16 v17, v2

    :goto_167
    move-object v8, v15

    move-object v9, v14

    move-object/from16 v12, p3

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v18

    invoke-virtual/range {v8 .. v17}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;Z)V

    nop

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    goto :goto_125

    :cond_17b
    return-void
.end method

.method dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 8

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_24

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    const-wide v4, 0x20b00000005L

    invoke-virtual {v3, p1, v4, v5, v0}, Lcom/android/server/pm/PackageSetting;->writeToProto(Landroid/util/proto/ProtoOutputStream;JLjava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_24
    return-void
.end method

.method dumpPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    :goto_9
    move v4, v1

    goto :goto_d

    :cond_b
    const/4 v1, 0x0

    goto :goto_9

    :goto_d
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionSettings;->dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;ZLcom/android/server/pm/DumpState;)V

    return-void
.end method

.method dumpReadMessagesLPr(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .registers 4

    const-string v0, "Settings parse messages:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method dumpRestoredPermissionGrantsLPr(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_b2

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Restored (pending) permission grants:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_12
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_af

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    if-eqz v2, :cond_ab

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_ab

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    const-string v4, "  User "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    move v4, v0

    :goto_39
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_ab

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    if-eqz v5, :cond_a8

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-lez v6, :cond_a8

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "    "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " :"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_64
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/Settings$RestoredPermissionGrant;

    const-string v9, "      "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v8, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->permissionName:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v9, v8, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->granted:Z

    if-eqz v9, :cond_83

    const-string v9, " GRANTED"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_83
    iget v9, v8, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->grantBits:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_8e

    const-string v9, " user_set"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_8e
    iget v9, v8, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->grantBits:I

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_99

    const-string v9, " user_fixed"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_99
    iget v9, v8, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->grantBits:I

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_a4

    const-string v9, " revoke_on_upgrade"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_a4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_64

    :cond_a8
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :cond_ab
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_12

    :cond_af
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_b2
    return-void
.end method

.method dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;Z)V"
        }
    .end annotation

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p5, :cond_57

    :cond_8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "runtime permissions:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    if-eqz p3, :cond_2e

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    goto :goto_15

    :cond_2e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ": granted="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, ", flags="

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/pm/Settings;->permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_15

    :cond_57
    return-void
.end method

.method dumpSharedUsersLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    const/4 v0, 0x0

    iget-object v1, v6, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/pm/SharedUserSetting;

    if-eqz p2, :cond_27

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v1

    if-eq v10, v1, :cond_27

    goto :goto_11

    :cond_27
    if-eqz v8, :cond_34

    invoke-virtual {v10}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Landroid/util/ArraySet;)Z

    move-result v1

    if-nez v1, :cond_34

    goto :goto_11

    :cond_34
    if-nez p5, :cond_104

    if-nez v0, :cond_47

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_41
    const-string v1, "Shared users:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_47
    move v11, v0

    const-string v0, "  SharedUser ["

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "] ("

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "):"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v12, "    "

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "userId="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v10, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {v10}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v13

    invoke-virtual {v6, v7, v12, v8, v13}, Lcom/android/server/pm/Settings;->dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/PermissionsState;)V

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v5

    array-length v4, v5

    const/4 v14, 0x0

    move v3, v14

    :goto_89
    if-ge v3, v4, :cond_101

    aget v2, v5, v3

    invoke-virtual {v13, v2}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v1

    nop

    invoke-virtual {v13, v2}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v15

    if-eqz v15, :cond_aa

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_a3

    goto :goto_aa

    :cond_a3
    move/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v21, v5

    goto :goto_fa

    :cond_aa
    :goto_aa
    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v16, v0

    const-string v0, "User "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v17, v2

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/pm/Settings;->dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_e8

    const/4 v0, 0x1

    move v15, v0

    goto :goto_e9

    :cond_e8
    move v15, v14

    :goto_e9
    move-object v0, v6

    move-object/from16 v18, v1

    move-object v1, v7

    move/from16 v19, v3

    move-object v3, v8

    move/from16 v20, v4

    move-object/from16 v4, v16

    move-object/from16 v21, v5

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Z)V

    :goto_fa
    add-int/lit8 v3, v19, 0x1

    move/from16 v4, v20

    move-object/from16 v5, v21

    goto :goto_89

    :cond_101
    nop

    move v0, v11

    goto :goto_119

    :cond_104
    const-string/jumbo v1, "suid,"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v10, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v10, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_119
    goto/16 :goto_11

    :cond_11b
    return-void
.end method

.method dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1c

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/SharedUserSetting;

    const-wide v3, 0x20b00000006L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/pm/SharedUserSetting;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1c
    return-void
.end method

.method dumpVersionLPr(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_7f

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/Settings$VersionInfo;

    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const-string v3, "Internal:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_52

    :cond_2a
    const-string/jumbo v3, "primary_physical"

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    const-string v3, "External:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_52

    :cond_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UUID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_52
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v3, "sdkVersion"

    iget v4, v2, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "databaseVersion"

    iget v4, v2, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v3, "fingerprint"

    iget-object v4, v2, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7f
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    if-nez v0, :cond_15

    new-instance v1, Lcom/android/server/pm/CrossProfileIntentResolver;

    invoke-direct {v1}, Lcom/android/server/pm/CrossProfileIntentResolver;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_15
    return-object v0
.end method

.method editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    if-nez v0, :cond_15

    new-instance v1, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    invoke-direct {v1}, Lcom/android/server/pm/PersistentPreferredIntentResolver;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_15
    return-object v0
.end method

.method editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PreferredIntentResolver;

    if-nez v0, :cond_15

    new-instance v1, Lcom/android/server/pm/PreferredIntentResolver;

    invoke-direct {v1}, Lcom/android/server/pm/PreferredIntentResolver;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_15
    return-object v0
.end method

.method enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 25

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iget-object v0, v15, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    if-nez v13, :cond_2c

    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_2c
    iget-object v0, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_40

    iget-object v0, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_40

    iget-object v0, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, -0x81

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_40
    iget-object v2, v13, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    iget-object v3, v13, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    iget-object v4, v13, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    iget-object v5, v13, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    iget-object v6, v13, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    iget-object v7, v13, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    iget-object v8, v13, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    iget v9, v13, Lcom/android/server/pm/PackageSetting;->appId:I

    iget-wide v10, v13, Lcom/android/server/pm/PackageSetting;->versionCode:J

    iget v12, v13, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    iget v1, v13, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    iget-object v0, v13, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    move/from16 v18, v12

    iget-object v12, v13, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    move-object/from16 v19, v12

    iget-object v12, v13, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    move-object/from16 v20, v12

    iget-object v12, v13, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    move-object/from16 v16, v0

    move-object v0, v15

    move/from16 v17, v1

    move-object v1, v14

    move-object/from16 v21, v12

    move/from16 v12, v18

    move-object/from16 v18, v13

    move/from16 v13, v17

    move-object/from16 v14, v16

    move-object/from16 v15, v19

    move-object/from16 v16, v20

    move-object/from16 v17, v21

    invoke-virtual/range {v0 .. v17}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJIILjava/lang/String;Ljava/util/List;[Ljava/lang/String;[J)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    if-nez v0, :cond_15

    new-instance v1, Lcom/android/server/pm/Settings$VersionInfo;

    invoke-direct {v1}, Lcom/android/server/pm/Settings$VersionInfo;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-object v0
.end method

.method getAllSharedUsersLPw()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getApplicationEnabledSettingLPr(Ljava/lang/String;I)I
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v1

    return v1

    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getBlockUninstallLPr(ILjava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-nez v0, :cond_c

    const/4 v1, 0x0

    return v1

    :cond_c
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method getComponentEnabledSettingLPr(Landroid/content/ComponentName;I)I
    .registers 8

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    if-eqz v1, :cond_17

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/server/pm/PackageSetting;->getCurrentEnabledStateLPr(Ljava/lang/String;I)I

    move-result v3

    return v3

    :cond_17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown component: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getComponentsOnlyForOwnerUser(Lcom/android/server/pm/PackageSetting;I)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_b

    const-string v1, "PackageSettings"

    const-string v2, "getComponentsOnlyForOwnerUser needs PackageSetting Object"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    const/4 v4, 0x0

    if-nez v3, :cond_38

    const-string v5, "PackageSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " has not package object"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_38
    iget-object v0, v3, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x80

    if-eqz v5, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Activity;

    invoke-static {v5, v7, v2, p2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    if-eqz v7, :cond_6c

    iget-object v4, v7, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_6c

    const-string v8, "com.samsung.android.multiuser.install_only_owner"

    invoke-virtual {v4, v8, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6c

    iget-object v6, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6c

    iget-object v6, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6c
    goto :goto_3e

    :cond_6d
    iget-object v0, v3, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_73
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Service;

    invoke-static {v5, v7, v2, p2}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;

    move-result-object v8

    if-eqz v8, :cond_9e

    iget-object v4, v8, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_9e

    const-string v9, "com.samsung.android.multiuser.install_only_owner"

    invoke-virtual {v4, v9, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_9e

    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9e

    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9e
    goto :goto_73

    :cond_9f
    iget-object v0, v3, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Activity;

    invoke-static {v5, v7, v2, p2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    if-eqz v6, :cond_d0

    iget-object v4, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_d0

    const-string v8, "com.samsung.android.multiuser.install_only_owner"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d0

    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d0

    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d0
    goto :goto_a5

    :cond_d1
    return-object v1
.end method

.method getDefaultBrowserPackageNameLPw(I)Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    const/4 v0, 0x0

    goto :goto_d

    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_d
    return-object v0
.end method

.method getDefaultDialerPackageNameLPw(I)Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    const/4 v0, 0x0

    goto :goto_d

    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultDialerApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_d
    return-object v0
.end method

.method public getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    return-object v0
.end method

.method public getExternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    const-string/jumbo v1, "primary_physical"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    return-object v0
.end method

.method getHarmfulAppWarningLPr(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getHarmfulAppWarning(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getInstallerPackageNameLPr(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_d

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    return-object v1

    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getIntentFilterVerificationLPr(Ljava/lang/String;)Landroid/content/pm/IntentFilterVerificationInfo;
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-nez v0, :cond_c

    const/4 v1, 0x0

    return-object v1

    :cond_c
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v1

    return-object v1
.end method

.method getIntentFilterVerificationStatusLPr(Ljava/lang/String;I)I
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-nez v0, :cond_c

    const/4 v1, 0x0

    return v1

    :cond_c
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getDomainVerificationStatusForUser(I)J

    move-result-wide v1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    return v1
.end method

.method getIntentFilterVerificationsLPr(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_16

    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3d

    goto :goto_16

    :cond_3d
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_41
    return-object v0
.end method

.method public getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    return-object v0
.end method

.method getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    return-object v0
.end method

.method getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method getSharedUserLPw(Ljava/lang/String;IIZ)Lcom/android/server/pm/SharedUserSetting;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    if-nez v0, :cond_5f

    if-eqz p4, :cond_5f

    new-instance v1, Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;II)V

    move-object v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/pm/Settings;->newUserIdLPw(Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iget v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-ltz v1, :cond_42

    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New shared user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5f

    :cond_42
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v2, -0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating shared user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_5f
    :goto_5f
    return-object v0
.end method

.method public getUserIdLPr(I)Ljava/lang/Object;
    .registers 5

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_17

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit16 v1, p1, -0x2710

    if-ge v1, v0, :cond_15

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    return-object v2

    :cond_17
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getVerifierDeviceIdentityLPw()Landroid/content/pm/VerifierDeviceIdentity;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    if-nez v0, :cond_d

    invoke-static {}, Landroid/content/pm/VerifierDeviceIdentity;->generate()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writeLPr()V

    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    return-object v0
.end method

.method getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_24
    return-object v0
.end method

.method hasOtherDisabledSystemPkgWithChildLPr(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_47

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    if-eqz v4, :cond_44

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1f

    goto :goto_44

    :cond_1f
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    goto :goto_44

    :cond_28
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v5, v1

    :goto_2f
    if-ge v5, v4, :cond_44

    iget-object v6, v3, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_41

    const/4 v1, 0x1

    return v1

    :cond_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    :cond_44
    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_47
    return v1
.end method

.method hasPackageOnlyForOwnerUser(Lcom/android/server/pm/PackageSetting;I)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_b

    const-string v1, "PackageSettings"

    const-string v2, "hasPackageOnlyForOwnerUser needs PackageSetting Object"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_b
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    const/4 v3, 0x0

    if-nez v2, :cond_15

    return v0

    :cond_15
    const/16 v4, 0x80

    invoke-static {v2, v4, v1, p2}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-nez v4, :cond_1e

    return v0

    :cond_1e
    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_2c

    const-string v5, "com.samsung.android.multiuser.install_only_owner"

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2c

    const/4 v0, 0x1

    return v0

    :cond_2c
    return v0
.end method

.method insertPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;)V
    .registers 5

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-nez v0, :cond_e

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v1, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    :cond_e
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_24

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-nez v0, :cond_24

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v1, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    :cond_24
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V

    return-void
.end method

.method installApplicationsForPersonaLI(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;ILjava/io/File;Ljava/util/List;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/Installer;",
            "I",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v10, p3

    move-object/from16 v11, p5

    if-eqz v11, :cond_e7

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_b
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v0

    move v4, v0

    new-array v0, v4, [Ljava/lang/String;

    move-object v5, v0

    new-array v0, v4, [I

    move-object v6, v0

    new-array v0, v4, [Ljava/lang/String;

    move-object v7, v0

    new-array v0, v4, [I

    move-object v8, v0

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_e0

    move-object v9, v0

    const/4 v0, 0x0

    :goto_29
    if-ge v0, v4, :cond_93

    :try_start_2b
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    const/4 v14, 0x0

    if-eqz v13, :cond_71

    iget-object v15, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v15, :cond_5f

    iget-object v14, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v14, v14, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v11, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/4 v14, 0x1

    invoke-virtual {v13, v14, v10}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    iget-object v14, v13, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    aput-object v14, v5, v0

    :cond_4a
    iget v14, v13, Lcom/android/server/pm/PackageSetting;->appId:I

    aput v14, v6, v0

    iget-object v14, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v14, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    aput-object v14, v7, v0

    iget-object v14, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v14, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    aput v14, v8, v0

    goto :goto_6f

    :cond_5f
    const-string v15, "PackageSettings"

    const-string v12, "installApplicationsForPersonaLI() : ps.pkg is null"

    invoke-static {v15, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    aput-object v14, v5, v0
    :try_end_68
    .catch Ljava/lang/NullPointerException; {:try_start_2b .. :try_end_68} :catch_86
    .catchall {:try_start_2b .. :try_end_68} :catchall_e0

    const/4 v12, 0x0

    :try_start_69
    aput v12, v6, v0

    aput-object v14, v7, v0

    aput v12, v8, v0
    :try_end_6f
    .catch Ljava/lang/NullPointerException; {:try_start_69 .. :try_end_6f} :catch_84
    .catchall {:try_start_69 .. :try_end_6f} :catchall_e0

    :goto_6f
    const/4 v12, 0x0

    goto :goto_81

    :cond_71
    :try_start_71
    const-string v12, "PackageSettings"

    const-string v15, "installApplicationsForPersonaLI() : PackageSetting is null"

    invoke-static {v12, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    aput-object v14, v5, v0
    :try_end_7a
    .catch Ljava/lang/NullPointerException; {:try_start_71 .. :try_end_7a} :catch_86
    .catchall {:try_start_71 .. :try_end_7a} :catchall_e0

    const/4 v12, 0x0

    :try_start_7b
    aput v12, v6, v0

    aput-object v14, v7, v0

    aput v12, v8, v0
    :try_end_81
    .catch Ljava/lang/NullPointerException; {:try_start_7b .. :try_end_81} :catch_84
    .catchall {:try_start_7b .. :try_end_81} :catchall_e0

    :goto_81
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :catch_84
    move-exception v0

    goto :goto_88

    :catch_86
    move-exception v0

    const/4 v12, 0x0

    :goto_88
    :try_start_88
    const-string v13, "PackageSettings"

    const-string v14, "installApplicationsForPersonaLI() : NullPointerException"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_94

    :cond_93
    const/4 v12, 0x0

    :goto_94
    monitor-exit v2
    :try_end_95
    .catchall {:try_start_88 .. :try_end_95} :catchall_e0

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move v9, v4

    nop

    :goto_9c
    if-ge v12, v9, :cond_ce

    aget-object v0, v13, v12

    if-nez v0, :cond_a6

    nop

    move/from16 v18, v9

    goto :goto_c9

    :cond_a6
    const/4 v0, 0x3

    move/from16 v17, v0

    const/4 v3, 0x0

    :try_start_aa
    aget-object v4, v13, v12

    const/4 v6, 0x3

    aget v7, v14, v12

    aget-object v8, v15, v12

    aget v0, v16, v12
    :try_end_b3
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_aa .. :try_end_b3} :catch_bf

    move-object/from16 v2, p2

    move v5, v10

    move/from16 v18, v9

    move v9, v0

    :try_start_b9
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/Installer;->createAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)J
    :try_end_bc
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_b9 .. :try_end_bc} :catch_bd

    goto :goto_c9

    :catch_bd
    move-exception v0

    goto :goto_c2

    :catch_bf
    move-exception v0

    move/from16 v18, v9

    :goto_c2
    const-string v2, "PackageSettings"

    const-string v3, "Failed to prepare app data"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c9
    add-int/lit8 v12, v12, 0x1

    move/from16 v9, v18

    goto :goto_9c

    :cond_ce
    move/from16 v18, v9

    iget-object v3, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    move-object/from16 v4, p1

    :try_start_d5
    invoke-virtual {v1, v4, v10}, Lcom/android/server/pm/Settings;->applyDefaultPreferredAppsLPw(Lcom/android/server/pm/PackageManagerService;I)V

    invoke-virtual {v1, v10}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    monitor-exit v3

    goto :goto_e9

    :catchall_dd
    move-exception v0

    monitor-exit v3
    :try_end_df
    .catchall {:try_start_d5 .. :try_end_df} :catchall_dd

    throw v0

    :catchall_e0
    move-exception v0

    move-object/from16 v4, p1

    :goto_e3
    :try_start_e3
    monitor-exit v2
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_e5

    throw v0

    :catchall_e5
    move-exception v0

    goto :goto_e3

    :cond_e7
    move-object/from16 v4, p1

    :goto_e9
    return-void
.end method

.method isDisabledSystemPackageLPr(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-nez v0, :cond_e

    const/4 v1, 0x0

    return v1

    :cond_e
    invoke-virtual {v0, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    return v2
.end method

.method isOrphaned(Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_d

    iget-boolean v1, v0, Lcom/android/server/pm/PackageSetting;->isOrphaned:Z

    return v1

    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected isRemovedApp(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRemovedApp:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method onDefaultRuntimePermissionsGrantedLPr(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->onDefaultRuntimePermissionsGrantedLPr(I)V

    return-void
.end method

.method public onVolumeForgotten(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public processRestoredPermissionGrantLPr(Ljava/lang/String;Ljava/lang/String;ZII)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->rememberRestoredUserGrantLPr(Ljava/lang/String;Ljava/lang/String;ZII)V

    return-void
.end method

.method pruneSharedUsersLPw()V
    .registers 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/SharedUserSetting;

    if-nez v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_2d
    iget-object v4, v3, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v7, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4c

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    :cond_4c
    goto :goto_33

    :cond_4d
    iget-object v4, v3, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-nez v4, :cond_5e

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5e
    goto :goto_f

    :cond_5f
    const/4 v1, 0x0

    :goto_60
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_72

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    :cond_72
    return-void
.end method

.method readAllDomainVerificationsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_9
    :goto_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_66

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1a

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_66

    :cond_1a
    if-eq v2, v1, :cond_9

    const/4 v1, 0x4

    if-ne v2, v1, :cond_20

    goto :goto_9

    :cond_20
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "domain-verification"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    new-instance v3, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v3, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    if-eqz v5, :cond_43

    invoke-virtual {v5, v3}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    goto :goto_48

    :cond_43
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_48
    goto :goto_65

    :cond_49
    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <all-intent-filter-verification>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_65
    goto :goto_9

    :cond_66
    return-void
.end method

.method readBlockUninstallPackagesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    :cond_9
    :goto_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_55

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1a

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_55

    :cond_1a
    if-eq v3, v2, :cond_9

    const/4 v2, 0x4

    if-ne v3, v2, :cond_20

    goto :goto_9

    :cond_20
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "block-uninstall"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/4 v4, 0x0

    const-string/jumbo v5, "packageName"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_54

    :cond_38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under block-uninstall-packages: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v5, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_54
    goto :goto_9

    :cond_55
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_61

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_66

    :cond_61
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_66
    return-void
.end method

.method readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_67

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_67

    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    goto :goto_4

    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "default-browser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_35

    const-string/jumbo v3, "packageName"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_66

    :cond_35
    const-string v3, "default-dialer"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    const-string/jumbo v3, "packageName"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mDefaultDialerApp:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_66

    :cond_4a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under default-apps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_66
    goto :goto_4

    :cond_67
    return-void
.end method

.method readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_de

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_de

    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    goto :goto_4

    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "item"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bf

    const-string/jumbo v4, "name"

    const/4 v5, 0x0

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v6, v4}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v6

    if-nez v6, :cond_51

    const-string v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown permission: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    :cond_51
    const-string v7, "granted"

    invoke-interface {p1, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_63

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_61

    goto :goto_63

    :cond_61
    move v3, v8

    nop

    :cond_63
    :goto_63
    const-string v9, "flags"

    invoke-interface {p1, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_72

    const/16 v8, 0x10

    invoke-static {v5, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    nop

    :cond_72
    const/16 v9, 0xff

    const/4 v10, -0x1

    if-eqz v3, :cond_9b

    invoke-virtual {p2, v6}, Lcom/android/server/pm/permission/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v11

    if-ne v11, v10, :cond_97

    const-string v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission already added: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_be

    :cond_97
    invoke-virtual {p2, v6, v10, v9, v8}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    goto :goto_be

    :cond_9b
    invoke-virtual {p2, v6}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v11

    if-ne v11, v10, :cond_bb

    const-string v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission already added: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_be

    :cond_bb
    invoke-virtual {p2, v6, v10, v9, v8}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    :goto_be
    goto :goto_dc

    :cond_bf
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <permissions>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_dc
    goto/16 :goto_4

    :cond_de
    return-void
.end method

.method readLPw(Ljava/util/List;)Z
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    const/4 v6, 0x0

    iput-boolean v6, v1, Lcom/android/server/pm/Settings;->bSkipReadPermissionForSharedUser:Z

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPendingPackagesForSharedUser:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/16 v8, 0x1fc

    const/4 v9, 0x1

    const/4 v10, -0x1

    :try_start_26
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v0
    :try_end_2a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_26 .. :try_end_2a} :catch_39d
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2a} :catch_350
    .catchall {:try_start_26 .. :try_end_2a} :catchall_349

    move-object v3, v0

    const/4 v11, 0x4

    :try_start_2c
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v3, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v12}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_36} :catch_38
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2c .. :try_end_36} :catch_39d
    .catchall {:try_start_2c .. :try_end_36} :catchall_349

    move-object v4, v0

    goto :goto_3f

    :catch_38
    move-exception v0

    :try_start_39
    const-string/jumbo v12, "there is no log(readLPw) file"

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_3f
    new-instance v0, Lcom/android/server/pm/XmlMoreAtomicFile;

    iget-object v12, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-direct {v0, v12, v4}, Lcom/android/server/pm/XmlMoreAtomicFile;-><init>(Ljava/io/File;Ljava/io/PrintWriter;)V
    :try_end_46
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_39 .. :try_end_46} :catch_39d
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_46} :catch_350
    .catchall {:try_start_39 .. :try_end_46} :catchall_349

    move-object v5, v0

    :try_start_47
    invoke-virtual {v5}, Lcom/android/server/pm/XmlMoreAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_4b
    .catch Ljava/io/FileNotFoundException; {:try_start_47 .. :try_end_4b} :catch_2fa
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_47 .. :try_end_4b} :catch_39d
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4b} :catch_350
    .catchall {:try_start_47 .. :try_end_4b} :catchall_349

    move-object v2, v0

    nop

    :try_start_4d
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v12, v0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_5b
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v13, v0

    const/4 v14, 0x2

    if-eq v0, v14, :cond_66

    if-eq v13, v9, :cond_66

    goto :goto_5b

    :cond_66
    if-eq v13, v14, :cond_9a

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v11, "No start tag found in settings file\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    const-string v11, "No start tag found in package manager settings"

    invoke-static {v0, v11}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    const-string v0, "PackageManager"

    const-string v11, "No start tag found in package manager settings"

    invoke-static {v0, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/android/server/pm/XmlMoreAtomicFile;->processDamagedFile()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->resetSystemServer()V
    :try_end_82
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4d .. :try_end_82} :catch_39d
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_82} :catch_350
    .catchall {:try_start_4d .. :try_end_82} :catchall_349

    nop

    if-eqz v4, :cond_88

    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    :cond_88
    if-eqz v2, :cond_8f

    :try_start_8a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e

    goto :goto_8f

    :catch_8e
    move-exception v0

    :cond_8f
    :goto_8f
    if-eqz v3, :cond_99

    nop

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_99
    return v6

    :cond_9a
    :try_start_9a
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :goto_9e
    move v14, v0

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v13, v0

    if-eq v0, v9, :cond_2dc

    const/4 v0, 0x3

    if-ne v13, v0, :cond_af

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    if-le v15, v14, :cond_2dc

    :cond_af
    if-eq v13, v0, :cond_2d4

    if-ne v13, v11, :cond_b5

    goto/16 :goto_2d4

    :cond_b5
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    const-string/jumbo v0, "package"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c8

    invoke-direct {v1, v12}, Lcom/android/server/pm/Settings;->readPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2d3

    :cond_c8
    const-string/jumbo v0, "permissions"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d8

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v12}, Lcom/android/server/pm/permission/PermissionSettings;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2d3

    :cond_d8
    const-string/jumbo v0, "permission-trees"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v12}, Lcom/android/server/pm/permission/PermissionSettings;->readPermissionTrees(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2d3

    :cond_e8
    const-string/jumbo v0, "shared-user"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    invoke-direct {v1, v12}, Lcom/android/server/pm/Settings;->readSharedUserLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2d3

    :cond_f6
    const-string/jumbo v0, "preferred-packages"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_101

    goto/16 :goto_2d3

    :cond_101
    const-string/jumbo v0, "preferred-activities"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10f

    invoke-virtual {v1, v12, v6}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_2d3

    :cond_10f
    const-string/jumbo v0, "persistent-preferred-activities"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11d

    invoke-direct {v1, v12, v6}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_2d3

    :cond_11d
    const-string v0, "crossProfile-intent-filters"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12a

    invoke-direct {v1, v12, v6}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_2d3

    :cond_12a
    const-string v0, "default-browser"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_137

    invoke-virtual {v1, v12, v6}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_2d3

    :cond_137
    const-string/jumbo v0, "updated-package"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_145

    invoke-direct {v1, v12}, Lcom/android/server/pm/Settings;->readDisabledSysPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2d3

    :cond_145
    const-string v0, "cleaning-package"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_193

    const-string/jumbo v0, "name"

    invoke-interface {v12, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    const-string/jumbo v0, "user"

    invoke-interface {v12, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    const-string v0, "code"

    invoke-interface {v12, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_166
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9a .. :try_end_166} :catch_39d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_166} :catch_350
    .catchall {:try_start_9a .. :try_end_166} :catchall_349

    move-object v7, v0

    move-object/from16 v11, v16

    if-eqz v11, :cond_191

    const/16 v16, 0x0

    move/from16 v18, v9

    move-object/from16 v8, v17

    if-eqz v8, :cond_17c

    :try_start_173
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_177
    .catch Ljava/lang/NumberFormatException; {:try_start_173 .. :try_end_177} :catch_17a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_173 .. :try_end_177} :catch_39d
    .catch Ljava/io/IOException; {:try_start_173 .. :try_end_177} :catch_350
    .catchall {:try_start_173 .. :try_end_177} :catchall_349

    move/from16 v16, v0

    goto :goto_17c

    :catch_17a
    move-exception v0

    goto :goto_17d

    :cond_17c
    :goto_17c
    nop

    :goto_17d
    move/from16 v0, v16

    if-eqz v7, :cond_187

    :try_start_181
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v16

    move/from16 v18, v16

    :cond_187
    move/from16 v10, v18

    new-instance v9, Landroid/content/pm/PackageCleanItem;

    invoke-direct {v9, v0, v11, v10}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v1, v9}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V

    :cond_191
    goto/16 :goto_2d3

    :cond_193
    const-string/jumbo v0, "renamed-package"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b5

    const-string/jumbo v0, "new"

    invoke-interface {v12, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "old"

    invoke-interface {v12, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v0, :cond_1b3

    if-eqz v7, :cond_1b3

    iget-object v8, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8, v0, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b3
    goto/16 :goto_2d3

    :cond_1b5
    const-string/jumbo v0, "restored-ivi"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c3

    invoke-direct {v1, v12}, Lcom/android/server/pm/Settings;->readRestoredIntentFilterVerifications(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2d3

    :cond_1c3
    const-string v0, "last-platform-version"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f4

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    const-string/jumbo v7, "primary_physical"

    invoke-virtual {v1, v7}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v7

    const-string v8, "internal"

    invoke-static {v12, v8, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    iput v8, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    const-string v8, "external"

    invoke-static {v12, v8, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    const-string v8, "fingerprint"

    invoke-static {v12, v8}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    iput-object v8, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    goto/16 :goto_2d3

    :cond_1f4
    const-string v0, "database-version"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21b

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    const-string/jumbo v7, "primary_physical"

    invoke-virtual {v1, v7}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v7

    const-string v8, "internal"

    invoke-static {v12, v8, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    iput v8, v0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    const-string v8, "external"

    invoke-static {v12, v8, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    goto/16 :goto_2d3

    :cond_21b
    const-string/jumbo v0, "verifier"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24f

    const-string v0, "device"

    invoke-interface {v12, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_22a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_181 .. :try_end_22a} :catch_39d
    .catch Ljava/io/IOException; {:try_start_181 .. :try_end_22a} :catch_350
    .catchall {:try_start_181 .. :try_end_22a} :catchall_349

    move-object v7, v0

    :try_start_22b
    invoke-static {v7}, Landroid/content/pm/VerifierDeviceIdentity;->parse(Ljava/lang/String;)Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;
    :try_end_231
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22b .. :try_end_231} :catch_232
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_22b .. :try_end_231} :catch_39d
    .catch Ljava/io/IOException; {:try_start_22b .. :try_end_231} :catch_350
    .catchall {:try_start_22b .. :try_end_231} :catchall_349

    goto :goto_24d

    :catch_232
    move-exception v0

    :try_start_233
    const-string v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Discard invalid verifier device id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24d
    goto/16 :goto_2d3

    :cond_24f
    const-string/jumbo v0, "read-external-storage"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26f

    const-string v0, "enforcement"

    invoke-interface {v12, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    const-string v7, "1"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26a

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_26c

    :cond_26a
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_26c
    iput-object v7, v1, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    goto :goto_2d3

    :cond_26f
    const-string v0, "keyset-settings"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27f

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    iget-object v7, v1, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12, v7}, Lcom/android/server/pm/KeySetManagerService;->readKeySetsLPw(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;)V

    goto :goto_2d3

    :cond_27f
    const-string/jumbo v0, "version"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b6

    const-string/jumbo v0, "volumeUuid"

    invoke-static {v12, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v7

    const-string/jumbo v8, "sdkVersion"

    invoke-static {v12, v8}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    const-string v8, "databaseVersion"

    invoke-static {v12, v8}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    const-string v8, "fingerprint"

    invoke-static {v12, v8}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    iget v8, v7, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    const/16 v9, 0x17

    if-lt v8, v9, :cond_2b5

    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/android/server/pm/Settings;->bSkipReadPermissionForSharedUser:Z

    :cond_2b5
    goto :goto_2d3

    :cond_2b6
    const-string v0, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <packages>: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_2d3
    nop

    :cond_2d4
    :goto_2d4
    move v0, v14

    const/16 v8, 0x1fc

    const/4 v9, 0x1

    const/4 v10, -0x1

    const/4 v11, 0x4

    goto/16 :goto_9e

    :cond_2dc
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2df
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_233 .. :try_end_2df} :catch_39d
    .catch Ljava/io/IOException; {:try_start_233 .. :try_end_2df} :catch_350
    .catchall {:try_start_233 .. :try_end_2df} :catchall_349

    if-eqz v4, :cond_2e4

    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    :cond_2e4
    if-eqz v2, :cond_2eb

    :try_start_2e6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2e9
    .catch Ljava/io/IOException; {:try_start_2e6 .. :try_end_2e9} :catch_2ea

    goto :goto_2eb

    :catch_2ea
    move-exception v0

    :cond_2eb
    :goto_2eb
    if-eqz v3, :cond_3ea

    :goto_2ed
    nop

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, -0x1

    const/16 v8, 0x1fc

    invoke-static {v0, v8, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto/16 :goto_3ea

    :catch_2fa
    move-exception v0

    move-object v7, v0

    :try_start_2fc
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v8, "No settings file found\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "No settings file; creating initial state"

    const/4 v8, 0x4

    invoke-static {v8, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    const-string/jumbo v0, "primary_physical"

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    if-eqz v4, :cond_321

    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    :cond_321
    if-eqz v3, :cond_32e

    nop

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, -0x1

    const/16 v9, 0x1fc

    invoke-static {v0, v9, v8, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_32e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2fc .. :try_end_32e} :catch_39d
    .catch Ljava/io/IOException; {:try_start_2fc .. :try_end_32e} :catch_350
    .catchall {:try_start_2fc .. :try_end_32e} :catchall_349

    :cond_32e
    nop

    if-eqz v4, :cond_334

    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    :cond_334
    if-eqz v2, :cond_33b

    :try_start_336
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_339
    .catch Ljava/io/IOException; {:try_start_336 .. :try_end_339} :catch_33a

    goto :goto_33b

    :catch_33a
    move-exception v0

    :cond_33b
    :goto_33b
    if-eqz v3, :cond_348

    nop

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, -0x1

    const/16 v9, 0x1fc

    invoke-static {v0, v9, v8, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_348
    return v6

    :catchall_349
    move-exception v0

    move-object v6, v5

    move-object v5, v3

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_58d

    :catch_350
    move-exception v0

    :try_start_351
    invoke-virtual {v5}, Lcom/android/server/pm/XmlMoreAtomicFile;->processDamagedFile()V

    iget-object v7, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error reading: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading settings: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    invoke-static {v8, v7}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    const-string v7, "PackageManager"

    const-string v8, "Error reading package manager settings"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->resetSystemServer()V
    :try_end_38d
    .catchall {:try_start_351 .. :try_end_38d} :catchall_349

    if-eqz v4, :cond_392

    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    :cond_392
    if-eqz v2, :cond_399

    :try_start_394
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_397
    .catch Ljava/io/IOException; {:try_start_394 .. :try_end_397} :catch_398

    goto :goto_399

    :catch_398
    move-exception v0

    :cond_399
    :goto_399
    if-eqz v3, :cond_3ea

    goto/16 :goto_2ed

    :catch_39d
    move-exception v0

    :try_start_39e
    invoke-virtual {v5}, Lcom/android/server/pm/XmlMoreAtomicFile;->processDamagedFile()V

    iget-object v7, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error reading: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading settings: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    invoke-static {v8, v7}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    const-string v7, "PackageManager"

    const-string v8, "Error reading package manager settings"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->resetSystemServer()V
    :try_end_3da
    .catchall {:try_start_39e .. :try_end_3da} :catchall_349

    if-eqz v4, :cond_3df

    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    :cond_3df
    if-eqz v2, :cond_3e6

    :try_start_3e1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3e4
    .catch Ljava/io/IOException; {:try_start_3e1 .. :try_end_3e4} :catch_3e5

    goto :goto_3e6

    :catch_3e5
    move-exception v0

    :cond_3e6
    :goto_3e6
    if-eqz v3, :cond_3ea

    goto/16 :goto_2ed

    :cond_3ea
    :goto_3ea
    iget-boolean v0, v1, Lcom/android/server/pm/Settings;->bSkipReadPermissionForSharedUser:Z

    if-eqz v0, :cond_454

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPendingPackagesForSharedUser:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v7, v6

    :goto_3f5
    if-ge v7, v0, :cond_454

    iget-object v8, v1, Lcom/android/server/pm/Settings;->mPendingPackagesForSharedUser:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    iget-object v9, v1, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_409
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_451

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/SharedUserSetting;

    iget v11, v10, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getSharedUserId()I

    move-result v12

    if-ne v11, v12, :cond_450

    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v9

    invoke-virtual {v10}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/android/server/pm/permission/PermissionsState;->copyFrom(Lcom/android/server/pm/permission/PermissionsState;)V

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    const-string v9, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Pending package for SharedUser "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ": sharedUserId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getSharedUserId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_451

    :cond_450
    goto :goto_409

    :cond_451
    :goto_451
    add-int/lit8 v7, v7, 0x1

    goto :goto_3f5

    :cond_454
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPendingPackagesForSharedUser:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v7, v6

    :goto_460
    if-ge v7, v0, :cond_4dd

    iget-object v8, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getSharedUserId()I

    move-result v9

    invoke-virtual {v1, v9}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    move-result-object v10

    instance-of v11, v10, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v11, :cond_485

    move-object v11, v10

    check-cast v11, Lcom/android/server/pm/SharedUserSetting;

    iput-object v11, v8, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v12, v11, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v12, v8, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {v1, v8, v11}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V

    nop

    :goto_483
    const/4 v12, 0x6

    goto :goto_4da

    :cond_485
    if-eqz v10, :cond_4b1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad package setting: package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " has shared uid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " that is not a shared uid\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x6

    invoke-static {v12, v11}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_483

    :cond_4b1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad package setting: package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " has shared uid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " that is not defined\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x6

    invoke-static {v12, v11}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_4da
    add-int/lit8 v7, v7, 0x1

    goto :goto_460

    :cond_4dd
    iget-object v7, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_509

    iget-object v7, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4f3

    goto :goto_509

    :cond_4f3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4f7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_519

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v8}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(I)V

    goto :goto_4f7

    :cond_509
    :goto_509
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->readStoppedLPw()V

    iget-object v7, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    iget-object v7, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    invoke-virtual {v1, v6}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    :cond_519
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_51d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_531

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget-object v8, v1, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readStateForUserSyncLPr(I)V

    goto :goto_51d

    :cond_531
    iget-object v6, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_53b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_559

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    iget v8, v7, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v1, v8}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_558

    instance-of v9, v8, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v9, :cond_558

    move-object v9, v8

    check-cast v9, Lcom/android/server/pm/SharedUserSetting;

    iput-object v9, v7, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    :cond_558
    goto :goto_53b

    :cond_559
    iget-object v7, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Read completed successfully: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " packages, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " shared uids\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr()V

    const/4 v7, 0x1

    return v7

    :goto_58d
    if-eqz v4, :cond_592

    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    :cond_592
    if-eqz v3, :cond_599

    :try_start_594
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_597
    .catch Ljava/io/IOException; {:try_start_594 .. :try_end_597} :catch_598

    goto :goto_599

    :catch_598
    move-exception v0

    :cond_599
    :goto_599
    if-eqz v5, :cond_5a6

    nop

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, -0x1

    const/16 v8, 0x1fc

    invoke-static {v0, v8, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_5a6
    throw v2
.end method

.method readPackageRestrictionsLPr(I)V
    .registers 61

    move-object/from16 v1, p0

    move/from16 v15, p1

    const/4 v14, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x0

    move-object v4, v12

    const/16 v6, 0x1fc

    const/4 v13, -0x1

    :try_start_c
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v0
    :try_end_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_10} :catch_8a1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_843
    .catchall {:try_start_c .. :try_end_10} :catchall_836

    move-object v2, v0

    const/4 v10, 0x4

    const/4 v9, 0x1

    :try_start_13
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v5}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1d} :catch_31
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_1d} :catch_29
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1f

    move-object v3, v0

    goto :goto_38

    :catchall_1f
    move-exception v0

    move-object v8, v1

    move-object v12, v2

    move-object/from16 v27, v4

    move v7, v6

    move v6, v13

    move v1, v15

    goto/16 :goto_8f7

    :catch_29
    move-exception v0

    move-object v8, v1

    move v7, v6

    move v6, v13

    move v1, v15

    :goto_2e
    const/4 v9, 0x6

    goto/16 :goto_8a8

    :catch_31
    move-exception v0

    :try_start_32
    const-string/jumbo v5, "there is no log(readPackageRestrictionsLPr) file"

    invoke-static {v10, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_38
    new-instance v0, Lcom/android/server/pm/XmlMoreAtomicFile;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v0, v5, v3}, Lcom/android/server/pm/XmlMoreAtomicFile;-><init>(Ljava/io/File;Ljava/io/PrintWriter;)V
    :try_end_41
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_32 .. :try_end_41} :catch_82d
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_41} :catch_843
    .catchall {:try_start_32 .. :try_end_41} :catchall_836

    move-object v8, v0

    :try_start_42
    invoke-virtual {v8}, Lcom/android/server/pm/XmlMoreAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_46
    .catch Ljava/io/FileNotFoundException; {:try_start_42 .. :try_end_46} :catch_6ad
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_42 .. :try_end_46} :catch_69a
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_46} :catch_689
    .catchall {:try_start_42 .. :try_end_46} :catchall_678

    move-object v14, v0

    nop

    :try_start_48
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v7, v0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_56
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_5a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_48 .. :try_end_5a} :catch_663
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_5a} :catch_650
    .catchall {:try_start_48 .. :try_end_5a} :catchall_63e

    move v4, v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_61

    if-eq v4, v9, :cond_61

    goto :goto_56

    :cond_61
    if-eq v4, v5, :cond_a8

    :try_start_63
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v5, "No start tag found in package restrictions file\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    const-string v5, "No start tag found in package manager stopped packages"

    invoke-static {v0, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/server/pm/XmlMoreAtomicFile;->processDamagedFile()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->resetSystemServer()V
    :try_end_76
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_63 .. :try_end_76} :catch_9f
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_76} :catch_98
    .catchall {:try_start_63 .. :try_end_76} :catchall_8d

    if-eqz v3, :cond_7b

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    :cond_7b
    if-eqz v14, :cond_82

    :try_start_7d
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_82

    :catch_81
    move-exception v0

    :cond_82
    :goto_82
    if-eqz v2, :cond_8c

    nop

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v13, v13}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_8c
    return-void

    :catchall_8d
    move-exception v0

    move-object v12, v2

    move v7, v6

    move-object/from16 v27, v8

    move v6, v13

    :goto_93
    move-object v2, v0

    move-object v8, v1

    move v1, v15

    goto/16 :goto_8f8

    :catch_98
    move-exception v0

    move v7, v6

    move-object v4, v8

    move v6, v13

    move v1, v15

    goto/16 :goto_848

    :catch_9f
    move-exception v0

    move v7, v6

    move-object v4, v8

    move v6, v13

    :goto_a3
    const/4 v9, 0x6

    move-object v8, v1

    move v1, v15

    goto/16 :goto_8a8

    :cond_a8
    const/4 v0, 0x0

    :try_start_a9
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v16

    move/from16 v25, v16

    move v11, v0

    move-object v0, v12

    :goto_b1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5
    :try_end_b5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a9 .. :try_end_b5} :catch_663
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_b5} :catch_650
    .catchall {:try_start_a9 .. :try_end_b5} :catchall_63e

    move v4, v5

    if-eq v5, v9, :cond_5c4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_ee

    :try_start_bb
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6
    :try_end_bf
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_bb .. :try_end_bf} :catch_e8
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_bf} :catch_e0
    .catchall {:try_start_bb .. :try_end_bf} :catchall_d8

    move/from16 v9, v25

    if-le v6, v9, :cond_c4

    goto :goto_f0

    :cond_c4
    move-object/from16 v52, v2

    move-object/from16 v50, v3

    move/from16 v19, v4

    move-object v2, v7

    move-object/from16 v27, v8

    move/from16 v29, v9

    move-object/from16 v53, v14

    move/from16 v57, v15

    move-object v15, v1

    move/from16 v1, v57

    goto/16 :goto_5d6

    :catchall_d8
    move-exception v0

    move-object v12, v2

    move-object/from16 v27, v8

    move v6, v13

    :goto_dd
    const/16 v7, 0x1fc

    goto :goto_93

    :catch_e0
    move-exception v0

    move-object v4, v8

    move v6, v13

    move v1, v15

    :goto_e4
    const/16 v7, 0x1fc

    goto/16 :goto_848

    :catch_e8
    move-exception v0

    move-object v4, v8

    move v6, v13

    :goto_eb
    const/16 v7, 0x1fc

    goto :goto_a3

    :cond_ee
    move/from16 v9, v25

    :goto_f0
    if-eq v4, v5, :cond_58e

    if-ne v4, v10, :cond_10f

    nop

    move-object/from16 v52, v2

    move-object/from16 v50, v3

    move/from16 v19, v4

    move-object v2, v7

    move-object/from16 v27, v8

    move/from16 v29, v9

    move-object/from16 v36, v12

    move-object/from16 v53, v14

    const/16 v25, 0x2

    const/16 v42, 0x1

    move/from16 v57, v15

    move-object v15, v1

    move/from16 v1, v57

    goto/16 :goto_5a6

    :cond_10f
    :try_start_10f
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v5, "pkg"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_11a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10f .. :try_end_11a} :catch_577
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_11a} :catch_562
    .catchall {:try_start_10f .. :try_end_11a} :catchall_54b

    if-eqz v5, :cond_48c

    :try_start_11c
    const-string/jumbo v5, "name"

    invoke-interface {v7, v12, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v10, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/PackageSetting;
    :try_end_12b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11c .. :try_end_12b} :catch_479
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_12b} :catch_46d
    .catchall {:try_start_11c .. :try_end_12b} :catchall_459

    move-object v0, v10

    if-nez v0, :cond_162

    :try_start_12e
    const-string v10, "PackageManager"
    :try_end_130
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12e .. :try_end_130} :catch_e8
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_130} :catch_e0
    .catchall {:try_start_12e .. :try_end_130} :catchall_d8

    :try_start_130
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No package known for stopped package "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_147
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_130 .. :try_end_147} :catch_15e
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_147} :catch_159
    .catchall {:try_start_130 .. :try_end_147} :catchall_153

    nop

    move/from16 v25, v9

    const/4 v5, 0x2

    const/16 v6, 0x1fc

    const/4 v9, 0x1

    const/4 v10, 0x4

    const/4 v12, 0x0

    const/4 v13, -0x1

    goto/16 :goto_b1

    :catchall_153
    move-exception v0

    move-object v12, v2

    move-object/from16 v27, v8

    const/4 v6, -0x1

    goto :goto_dd

    :catch_159
    move-exception v0

    move-object v4, v8

    move v1, v15

    goto/16 :goto_7a2

    :catch_15e
    move-exception v0

    move-object v4, v8

    const/4 v6, -0x1

    goto :goto_eb

    :cond_162
    :try_start_162
    const-string v10, "ceDataInode"

    const-wide/16 v12, 0x0

    invoke-static {v7, v10, v12, v13}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v12
    :try_end_16a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_162 .. :try_end_16a} :catch_44b
    .catch Ljava/io/IOException; {:try_start_162 .. :try_end_16a} :catch_43c
    .catchall {:try_start_162 .. :try_end_16a} :catchall_42d

    move-object/from16 v34, v2

    move/from16 v19, v4

    move-object v10, v5

    const/4 v2, 0x3

    const/16 v25, 0x2

    move-wide v4, v12

    :try_start_173
    const-string v12, "inst"

    const/4 v13, 0x1

    invoke-static {v7, v12, v13}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v12

    move-object v2, v7

    move v7, v12

    const-string/jumbo v12, "stopped"
    :try_end_17f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_173 .. :try_end_17f} :catch_417
    .catch Ljava/io/IOException; {:try_start_173 .. :try_end_17f} :catch_404
    .catchall {:try_start_173 .. :try_end_17f} :catchall_3f0

    move-object/from16 v36, v3

    const/4 v3, 0x0

    :try_start_182
    invoke-static {v2, v12, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v12
    :try_end_186
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_182 .. :try_end_186} :catch_3d8
    .catch Ljava/io/IOException; {:try_start_182 .. :try_end_186} :catch_3c3
    .catchall {:try_start_182 .. :try_end_186} :catchall_3ad

    move-object/from16 v27, v8

    move v8, v12

    :try_start_189
    const-string/jumbo v12, "nl"

    invoke-static {v2, v12, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v12

    move/from16 v29, v9

    move v9, v12

    const-string v12, "blocked"

    const/4 v13, 0x0

    invoke-interface {v2, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_19e

    move v13, v3

    goto :goto_1a2

    :cond_19e
    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    :goto_1a2
    const-string v3, "hidden"

    move-object/from16 v39, v6

    const/4 v6, 0x0

    invoke-interface {v2, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1af

    move v6, v13

    goto :goto_1b3

    :cond_1af
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :goto_1b3
    move-wide/from16 v40, v4

    move-object v4, v10

    const/4 v5, 0x4

    move v10, v6

    const-string/jumbo v6, "suspended"

    const/4 v13, 0x0

    invoke-static {v2, v6, v13}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v6

    move/from16 v30, v6

    const-string/jumbo v6, "suspending-package"

    const/4 v13, 0x0

    invoke-interface {v2, v13, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v5, "suspend_dialog_message"

    invoke-interface {v2, v13, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1d1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_189 .. :try_end_1d1} :catch_397
    .catch Ljava/io/IOException; {:try_start_189 .. :try_end_1d1} :catch_384
    .catchall {:try_start_189 .. :try_end_1d1} :catchall_370

    move/from16 v43, v7

    const/4 v7, 0x1

    move-object v13, v5

    if-eqz v30, :cond_1fd

    if-nez v6, :cond_1fd

    :try_start_1d9
    const-string v5, "android"
    :try_end_1db
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d9 .. :try_end_1db} :catch_1f2
    .catch Ljava/io/IOException; {:try_start_1d9 .. :try_end_1db} :catch_1e8
    .catchall {:try_start_1d9 .. :try_end_1db} :catchall_1de

    move-object/from16 v31, v5

    goto :goto_1ff

    :catchall_1de
    move-exception v0

    move-object v2, v0

    move-object v8, v1

    move v1, v15

    move-object/from16 v12, v34

    move-object/from16 v3, v36

    goto/16 :goto_4c0

    :catch_1e8
    move-exception v0

    move v1, v15

    move-object/from16 v4, v27

    move-object/from16 v2, v34

    move-object/from16 v3, v36

    goto/16 :goto_7a2

    :catch_1f2
    move-exception v0

    move-object v8, v1

    move v1, v15

    move-object/from16 v4, v27

    move-object/from16 v2, v34

    move-object/from16 v3, v36

    goto/16 :goto_4cf

    :cond_1fd
    move-object/from16 v31, v6

    :goto_1ff
    :try_start_1ff
    const-string v5, "blockUninstall"

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v5

    move/from16 v32, v5

    const-string v5, "instant-app"

    invoke-static {v2, v5, v6}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v16

    const-string/jumbo v5, "virtual-preload"

    invoke-static {v2, v5, v6}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v17

    const-string v5, "enabled"

    invoke-static {v2, v5, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v44, v39

    move v6, v5

    const-string v5, "enabledCaller"

    const/4 v7, 0x0

    invoke-interface {v2, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v5, "harmful-app-warning"

    invoke-interface {v2, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v5, "domainVerificationStatus"

    const/4 v7, 0x0

    invoke-static {v2, v5, v7}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v21

    const-string v5, "app-link-generation"

    invoke-static {v2, v5, v7}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    if-le v5, v11, :cond_23b

    move v11, v5

    :cond_23b
    move/from16 v28, v11

    const-string v7, "install-reason"

    const/4 v11, 0x0

    invoke-static {v2, v7, v11}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v23

    const/4 v7, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v33, 0x0

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v37

    move-object/from16 v38, v20

    move-object/from16 v39, v22

    move-object/from16 v45, v33

    move-object/from16 v33, v7

    :goto_257
    move/from16 v7, v37

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11
    :try_end_25d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1ff .. :try_end_25d} :catch_397
    .catch Ljava/io/IOException; {:try_start_1ff .. :try_end_25d} :catch_384
    .catchall {:try_start_1ff .. :try_end_25d} :catchall_370

    move/from16 v46, v11

    move-object/from16 v47, v3

    const/4 v3, 0x1

    if-eq v11, v3, :cond_321

    move/from16 v11, v46

    const/4 v3, 0x3

    if-ne v11, v3, :cond_276

    :try_start_269
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v7, :cond_270

    goto :goto_276

    :cond_270
    move/from16 v48, v7

    move/from16 v49, v11

    goto/16 :goto_325

    :cond_276
    :goto_276
    const/4 v3, 0x3

    if-eq v11, v3, :cond_314

    move/from16 v48, v7

    const/4 v7, 0x4

    if-ne v11, v7, :cond_283

    nop

    move/from16 v49, v11

    goto/16 :goto_318

    :cond_283
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    move/from16 v49, v11

    const v11, -0x78da70f9

    if-eq v7, v11, :cond_2c3

    const v11, -0x75017ede

    if-eq v7, v11, :cond_2b9

    const v11, -0x5ee8613f

    if-eq v7, v11, :cond_2ad

    const v11, -0x54ce12c2

    if-eq v7, v11, :cond_2a2

    goto :goto_2cd

    :cond_2a2
    const-string/jumbo v7, "suspended-launcher-extras"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2cd

    const/4 v3, 0x3

    goto :goto_2ce

    :cond_2ad
    const-string/jumbo v7, "suspended-app-extras"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2cd

    move/from16 v3, v25

    goto :goto_2ce

    :cond_2b9
    const-string v7, "enabled-components"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2cd

    const/4 v3, 0x0

    goto :goto_2ce

    :cond_2c3
    const-string v7, "disabled-components"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2cd

    const/4 v3, 0x1

    goto :goto_2ce

    :cond_2cd
    :goto_2cd
    const/4 v3, -0x1

    :goto_2ce
    packed-switch v3, :pswitch_data_910

    const-string v3, "PackageSettings"

    goto :goto_2f0

    :pswitch_2d4
    invoke-static {v2}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v3

    move-object/from16 v45, v3

    goto :goto_318

    :pswitch_2db
    invoke-static {v2}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v3

    move-object/from16 v39, v3

    goto :goto_318

    :pswitch_2e2
    invoke-direct {v1, v2}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;

    move-result-object v3

    move-object/from16 v38, v3

    goto :goto_318

    :pswitch_2e9
    invoke-direct {v1, v2}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;

    move-result-object v3

    move-object/from16 v33, v3

    goto :goto_318

    :goto_2f0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown tag "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " under tag "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "pkg"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_318

    :cond_314
    move/from16 v48, v7

    move/from16 v49, v11

    :goto_318
    move-object/from16 v3, v47

    move/from16 v37, v48

    move/from16 v19, v49

    const/4 v11, 0x0

    goto/16 :goto_257

    :cond_321
    move/from16 v48, v7

    move/from16 v49, v46

    :goto_325
    if-eqz v32, :cond_32c

    const/4 v7, 0x1

    invoke-virtual {v1, v15, v4, v7}, Lcom/android/server/pm/Settings;->setBlockUninstallLPw(ILjava/lang/String;Z)V
    :try_end_32b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_269 .. :try_end_32b} :catch_1f2
    .catch Ljava/io/IOException; {:try_start_269 .. :try_end_32b} :catch_1e8
    .catchall {:try_start_269 .. :try_end_32b} :catchall_1de

    goto :goto_32d

    :cond_32c
    const/4 v7, 0x1

    :goto_32d
    move-object v3, v2

    move-object/from16 v11, v34

    move-object v2, v0

    move-object v1, v3

    move-object/from16 v50, v36

    move-object/from16 v34, v47

    move v3, v15

    move-object/from16 v51, v1

    move-object v1, v11

    move/from16 v26, v49

    move/from16 v11, v30

    move-object/from16 v35, v12

    const/16 v36, 0x0

    move-object/from16 v12, v31

    move-object/from16 v52, v1

    move-object v1, v14

    move-object/from16 v14, v39

    move-object/from16 v53, v1

    move v1, v15

    move-object/from16 v15, v45

    move-object/from16 v19, v33

    move-object/from16 v20, v38

    move/from16 v22, v5

    move-object/from16 v37, v4

    move/from16 v42, v7

    move/from16 v7, v43

    move-wide/from16 v57, v40

    move/from16 v40, v5

    move-wide/from16 v4, v57

    move/from16 v41, v48

    :try_start_362
    invoke-virtual/range {v2 .. v24}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZZLjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IIILjava/lang/String;)V

    nop

    move/from16 v4, v26

    move/from16 v11, v28

    move-object/from16 v2, v51

    move-object/from16 v15, p0

    goto/16 :goto_528

    :catchall_370
    move-exception v0

    move-object/from16 v53, v14

    move v1, v15

    move-object/from16 v52, v34

    move-object/from16 v50, v36

    move-object v2, v0

    move-object/from16 v3, v50

    move-object/from16 v12, v52

    const/4 v6, -0x1

    const/16 v7, 0x1fc

    move-object/from16 v8, p0

    goto/16 :goto_8f8

    :catch_384
    move-exception v0

    move-object/from16 v53, v14

    move v1, v15

    move-object/from16 v52, v34

    move-object/from16 v50, v36

    move-object/from16 v4, v27

    move-object/from16 v3, v50

    move-object/from16 v2, v52

    const/4 v6, -0x1

    const/16 v7, 0x1fc

    goto/16 :goto_848

    :catch_397
    move-exception v0

    move-object/from16 v53, v14

    move v1, v15

    move-object/from16 v52, v34

    move-object/from16 v50, v36

    move-object/from16 v4, v27

    move-object/from16 v3, v50

    move-object/from16 v2, v52

    const/4 v6, -0x1

    const/16 v7, 0x1fc

    move-object/from16 v8, p0

    const/4 v9, 0x6

    goto/16 :goto_8a8

    :catchall_3ad
    move-exception v0

    move-object/from16 v27, v8

    move-object/from16 v53, v14

    move v1, v15

    move-object/from16 v52, v34

    move-object/from16 v50, v36

    move-object v2, v0

    move-object/from16 v3, v50

    move-object/from16 v12, v52

    const/4 v6, -0x1

    const/16 v7, 0x1fc

    move-object/from16 v8, p0

    goto/16 :goto_8f8

    :catch_3c3
    move-exception v0

    move-object/from16 v27, v8

    move-object/from16 v53, v14

    move v1, v15

    move-object/from16 v52, v34

    move-object/from16 v50, v36

    move-object/from16 v4, v27

    move-object/from16 v3, v50

    move-object/from16 v2, v52

    const/4 v6, -0x1

    const/16 v7, 0x1fc

    goto/16 :goto_848

    :catch_3d8
    move-exception v0

    move-object/from16 v27, v8

    move-object/from16 v53, v14

    move v1, v15

    move-object/from16 v52, v34

    move-object/from16 v50, v36

    move-object/from16 v4, v27

    move-object/from16 v3, v50

    move-object/from16 v2, v52

    const/4 v6, -0x1

    const/16 v7, 0x1fc

    move-object/from16 v8, p0

    const/4 v9, 0x6

    goto/16 :goto_8a8

    :catchall_3f0
    move-exception v0

    move-object/from16 v50, v3

    move-object/from16 v27, v8

    move-object/from16 v53, v14

    move v1, v15

    move-object/from16 v52, v34

    move-object v2, v0

    move-object/from16 v12, v52

    const/4 v6, -0x1

    const/16 v7, 0x1fc

    move-object/from16 v8, p0

    goto/16 :goto_8f8

    :catch_404
    move-exception v0

    move-object/from16 v50, v3

    move-object/from16 v27, v8

    move-object/from16 v53, v14

    move v1, v15

    move-object/from16 v52, v34

    move-object/from16 v4, v27

    move-object/from16 v2, v52

    const/4 v6, -0x1

    const/16 v7, 0x1fc

    goto/16 :goto_848

    :catch_417
    move-exception v0

    move-object/from16 v50, v3

    move-object/from16 v27, v8

    move-object/from16 v53, v14

    move v1, v15

    move-object/from16 v52, v34

    move-object/from16 v4, v27

    move-object/from16 v2, v52

    const/4 v6, -0x1

    const/16 v7, 0x1fc

    move-object/from16 v8, p0

    const/4 v9, 0x6

    goto/16 :goto_8a8

    :catchall_42d
    move-exception v0

    move-object/from16 v52, v2

    move-object/from16 v50, v3

    move-object/from16 v27, v8

    move-object/from16 v53, v14

    move v1, v15

    move-object v2, v0

    move-object/from16 v12, v52

    const/4 v6, -0x1

    goto :goto_467

    :catch_43c
    move-exception v0

    move-object/from16 v52, v2

    move-object/from16 v50, v3

    move-object/from16 v27, v8

    move-object/from16 v53, v14

    move v1, v15

    move-object/from16 v4, v27

    const/4 v6, -0x1

    goto/16 :goto_573

    :catch_44b
    move-exception v0

    move-object/from16 v52, v2

    move-object/from16 v50, v3

    move-object/from16 v27, v8

    move-object/from16 v53, v14

    move v1, v15

    move-object/from16 v4, v27

    const/4 v6, -0x1

    goto :goto_486

    :catchall_459
    move-exception v0

    move-object/from16 v52, v2

    move-object/from16 v50, v3

    move-object/from16 v27, v8

    move-object/from16 v53, v14

    move v1, v15

    move-object v2, v0

    move v6, v13

    move-object/from16 v12, v52

    :goto_467
    const/16 v7, 0x1fc

    move-object/from16 v8, p0

    goto/16 :goto_560

    :catch_46d
    move-exception v0

    move-object/from16 v52, v2

    move-object/from16 v50, v3

    move-object/from16 v27, v8

    move-object/from16 v53, v14

    move v1, v15

    goto/16 :goto_570

    :catch_479
    move-exception v0

    move-object/from16 v52, v2

    move-object/from16 v50, v3

    move-object/from16 v27, v8

    move-object/from16 v53, v14

    move v1, v15

    move v6, v13

    move-object/from16 v4, v27

    :goto_486
    const/16 v7, 0x1fc

    move-object/from16 v8, p0

    goto/16 :goto_58b

    :cond_48c
    move-object/from16 v52, v2

    move-object/from16 v50, v3

    move/from16 v19, v4

    move-object/from16 v44, v6

    move-object/from16 v51, v7

    move-object/from16 v27, v8

    move/from16 v29, v9

    move-object/from16 v36, v12

    move-object/from16 v53, v14

    move v1, v15

    const/16 v25, 0x2

    const/16 v42, 0x1

    const-string/jumbo v2, "preferred-activities"

    move-object/from16 v3, v44

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_4ac
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_362 .. :try_end_4ac} :catch_540
    .catch Ljava/io/IOException; {:try_start_362 .. :try_end_4ac} :catch_535
    .catchall {:try_start_362 .. :try_end_4ac} :catchall_52b

    if-eqz v2, :cond_4d4

    move-object/from16 v2, v51

    move-object/from16 v15, p0

    :try_start_4b2
    invoke-virtual {v15, v2, v1}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_526

    :catchall_4b7
    move-exception v0

    move-object v2, v0

    move-object v8, v15

    move-object/from16 v3, v50

    move-object/from16 v12, v52

    move-object/from16 v14, v53

    :goto_4c0
    const/4 v6, -0x1

    const/16 v7, 0x1fc

    goto/16 :goto_8f8

    :catch_4c5
    move-exception v0

    move-object v8, v15

    move-object/from16 v4, v27

    move-object/from16 v3, v50

    move-object/from16 v2, v52

    move-object/from16 v14, v53

    :goto_4cf
    const/4 v6, -0x1

    const/16 v7, 0x1fc

    goto/16 :goto_2e

    :cond_4d4
    move-object/from16 v2, v51

    move-object/from16 v15, p0

    const-string/jumbo v4, "persistent-preferred-activities"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e5

    invoke-direct {v15, v2, v1}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_526

    :cond_4e5
    const-string v4, "crossProfile-intent-filters"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f1

    invoke-direct {v15, v2, v1}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_526

    :cond_4f1
    const-string v4, "default-apps"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4fd

    invoke-virtual {v15, v2, v1}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_526

    :cond_4fd
    const-string v4, "block-uninstall-packages"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_509

    invoke-virtual {v15, v2, v1}, Lcom/android/server/pm/Settings;->readBlockUninstallPackagesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_526

    :cond_509
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <stopped-packages>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_526
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4b2 .. :try_end_526} :catch_4c5
    .catch Ljava/io/IOException; {:try_start_4b2 .. :try_end_526} :catch_535
    .catchall {:try_start_4b2 .. :try_end_526} :catchall_4b7

    :goto_526
    move/from16 v4, v19

    :goto_528
    move-object v7, v2

    goto/16 :goto_5a9

    :catchall_52b
    move-exception v0

    move-object v2, v0

    move-object/from16 v3, v50

    move-object/from16 v12, v52

    move-object/from16 v14, v53

    goto/16 :goto_792

    :catch_535
    move-exception v0

    move-object/from16 v4, v27

    move-object/from16 v3, v50

    move-object/from16 v2, v52

    move-object/from16 v14, v53

    goto/16 :goto_7a2

    :catch_540
    move-exception v0

    move-object/from16 v4, v27

    move-object/from16 v3, v50

    move-object/from16 v2, v52

    move-object/from16 v14, v53

    goto/16 :goto_7ae

    :catchall_54b
    move-exception v0

    move-object/from16 v52, v2

    move-object/from16 v50, v3

    move-object/from16 v27, v8

    move-object/from16 v53, v14

    move/from16 v57, v15

    move-object v15, v1

    move/from16 v1, v57

    move-object v2, v0

    move v6, v13

    move-object v8, v15

    move-object/from16 v12, v52

    const/16 v7, 0x1fc

    :goto_560
    goto/16 :goto_8f8

    :catch_562
    move-exception v0

    move-object/from16 v52, v2

    move-object/from16 v50, v3

    move-object/from16 v27, v8

    move-object/from16 v53, v14

    move/from16 v57, v15

    move-object v15, v1

    move/from16 v1, v57

    :goto_570
    move v6, v13

    move-object/from16 v4, v27

    :goto_573
    const/16 v7, 0x1fc

    goto/16 :goto_848

    :catch_577
    move-exception v0

    move-object/from16 v52, v2

    move-object/from16 v50, v3

    move-object/from16 v27, v8

    move-object/from16 v53, v14

    move/from16 v57, v15

    move-object v15, v1

    move/from16 v1, v57

    move v6, v13

    move-object v8, v15

    move-object/from16 v4, v27

    const/16 v7, 0x1fc

    :goto_58b
    const/4 v9, 0x6

    goto/16 :goto_8a8

    :cond_58e
    move-object/from16 v52, v2

    move-object/from16 v50, v3

    move/from16 v19, v4

    move-object v2, v7

    move-object/from16 v27, v8

    move/from16 v29, v9

    move-object/from16 v36, v12

    move-object/from16 v53, v14

    const/16 v25, 0x2

    const/16 v42, 0x1

    move/from16 v57, v15

    move-object v15, v1

    move/from16 v1, v57

    :goto_5a6
    move-object v7, v2

    move/from16 v4, v19

    :goto_5a9
    move/from16 v5, v25

    move-object/from16 v8, v27

    move/from16 v25, v29

    move-object/from16 v12, v36

    move/from16 v9, v42

    move-object/from16 v3, v50

    move-object/from16 v2, v52

    move-object/from16 v14, v53

    const/16 v6, 0x1fc

    const/4 v10, 0x4

    const/4 v13, -0x1

    move-object/from16 v57, v15

    move v15, v1

    move-object/from16 v1, v57

    goto/16 :goto_b1

    :cond_5c4
    move-object/from16 v52, v2

    move-object/from16 v50, v3

    move/from16 v19, v4

    move-object v2, v7

    move-object/from16 v27, v8

    move-object/from16 v53, v14

    move/from16 v29, v25

    move/from16 v57, v15

    move-object v15, v1

    move/from16 v1, v57

    :goto_5d6
    :try_start_5d6
    iget-object v3, v15, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    add-int/lit8 v4, v11, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_5dd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5d6 .. :try_end_5dd} :catch_62b
    .catch Ljava/io/IOException; {:try_start_5d6 .. :try_end_5dd} :catch_61a
    .catchall {:try_start_5d6 .. :try_end_5dd} :catchall_60a

    move-object/from16 v13, v50

    if-eqz v13, :cond_5e4

    invoke-virtual {v13}, Ljava/io/PrintWriter;->close()V

    :cond_5e4
    if-eqz v53, :cond_5ee

    move-object/from16 v2, v53

    :try_start_5e8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5eb
    .catch Ljava/io/IOException; {:try_start_5e8 .. :try_end_5eb} :catch_5ec

    goto :goto_5f0

    :catch_5ec
    move-exception v0

    goto :goto_5f0

    :cond_5ee
    move-object/from16 v2, v53

    :goto_5f0
    if-eqz v52, :cond_600

    nop

    move-object/from16 v12, v52

    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v10, 0x1fc

    const/4 v11, -0x1

    invoke-static {v0, v10, v11, v11}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_602

    :cond_600
    move-object/from16 v12, v52

    :goto_602
    move-object v14, v2

    move-object v2, v12

    move-object v3, v13

    move-object v8, v15

    move-object/from16 v4, v27

    goto/16 :goto_8f2

    :catchall_60a
    move-exception v0

    move-object/from16 v13, v50

    move-object/from16 v12, v52

    move-object/from16 v2, v53

    move-object v14, v2

    move-object v3, v13

    move-object v8, v15

    const/4 v6, -0x1

    const/16 v7, 0x1fc

    move-object v2, v0

    goto/16 :goto_8f8

    :catch_61a
    move-exception v0

    move-object/from16 v13, v50

    move-object/from16 v12, v52

    move-object/from16 v2, v53

    move-object v14, v2

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v4, v27

    const/4 v6, -0x1

    const/16 v7, 0x1fc

    goto/16 :goto_848

    :catch_62b
    move-exception v0

    move-object/from16 v13, v50

    move-object/from16 v12, v52

    move-object/from16 v2, v53

    move-object v14, v2

    move-object v2, v12

    move-object v3, v13

    move-object v8, v15

    move-object/from16 v4, v27

    const/4 v6, -0x1

    const/16 v7, 0x1fc

    const/4 v9, 0x6

    goto/16 :goto_8a8

    :catchall_63e
    move-exception v0

    move-object v12, v2

    move-object/from16 v27, v8

    move v11, v13

    move-object v2, v14

    move-object v13, v3

    move/from16 v57, v15

    move-object v15, v1

    move/from16 v1, v57

    move v7, v6

    move v6, v11

    move-object v8, v15

    move-object v2, v0

    goto/16 :goto_8f8

    :catch_650
    move-exception v0

    move-object v12, v2

    move-object/from16 v27, v8

    move v11, v13

    move-object v2, v14

    move-object v13, v3

    move/from16 v57, v15

    move-object v15, v1

    move/from16 v1, v57

    move v7, v6

    move v6, v11

    move-object v2, v12

    move-object/from16 v4, v27

    goto/16 :goto_848

    :catch_663
    move-exception v0

    move-object v12, v2

    move-object/from16 v27, v8

    move v11, v13

    move-object v2, v14

    move-object v13, v3

    move/from16 v57, v15

    move-object v15, v1

    move/from16 v1, v57

    move v7, v6

    move v6, v11

    move-object v2, v12

    move-object v8, v15

    move-object/from16 v4, v27

    const/4 v9, 0x6

    goto/16 :goto_8a8

    :catchall_678
    move-exception v0

    move-object v12, v2

    move-object/from16 v27, v8

    move v11, v13

    move-object v13, v3

    move/from16 v57, v15

    move-object v15, v1

    move/from16 v1, v57

    move-object v2, v0

    move v7, v6

    move v6, v11

    move-object v8, v15

    goto/16 :goto_8f8

    :catch_689
    move-exception v0

    move-object v12, v2

    move-object/from16 v27, v8

    move v11, v13

    move-object v13, v3

    move/from16 v57, v15

    move-object v15, v1

    move/from16 v1, v57

    move v7, v6

    move v6, v11

    move-object/from16 v4, v27

    goto/16 :goto_848

    :catch_69a
    move-exception v0

    move-object v12, v2

    move-object/from16 v27, v8

    move v11, v13

    move-object v13, v3

    move/from16 v57, v15

    move-object v15, v1

    move/from16 v1, v57

    move v7, v6

    move v6, v11

    move-object v8, v15

    move-object/from16 v4, v27

    const/4 v9, 0x6

    goto/16 :goto_8a8

    :catch_6ad
    move-exception v0

    move-object v12, v2

    move v10, v6

    move-object/from16 v27, v8

    move v11, v13

    move-object v13, v3

    move/from16 v57, v15

    move-object v15, v1

    move/from16 v1, v57

    move-object v2, v0

    move-object/from16 v25, v2

    :try_start_6bc
    iget-object v0, v15, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v2, "No stopped packages file found\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "No stopped packages file; assuming all started"

    const/4 v2, 0x4

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    iget-object v0, v15, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6d3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_6d7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6bc .. :try_end_6d7} :catch_821
    .catch Ljava/io/IOException; {:try_start_6bc .. :try_end_6d7} :catch_818
    .catchall {:try_start_6bc .. :try_end_6d7} :catchall_80e

    if-eqz v2, :cond_7e8

    :try_start_6d9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;
    :try_end_6df
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6d9 .. :try_end_6df} :catch_7d5
    .catch Ljava/io/IOException; {:try_start_6d9 .. :try_end_6df} :catch_7c4
    .catchall {:try_start_6d9 .. :try_end_6df} :catchall_7b5

    move-object v9, v2

    const/4 v2, 0x1

    if-eqz v1, :cond_727

    :try_start_6e3
    invoke-virtual {v15, v9, v1}, Lcom/android/server/pm/Settings;->hasPackageOnlyForOwnerUser(Lcom/android/server/pm/PackageSetting;I)Z

    move-result v3

    if-eqz v3, :cond_727

    const-string v3, "PackageSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set to uninstalled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", userId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6e3 .. :try_end_70a} :catch_71d
    .catch Ljava/io/IOException; {:try_start_6e3 .. :try_end_70a} :catch_714
    .catchall {:try_start_6e3 .. :try_end_70a} :catchall_70c

    const/4 v2, 0x0

    goto :goto_727

    :catchall_70c
    move-exception v0

    move-object v2, v0

    move v7, v10

    move v6, v11

    move-object v3, v13

    move-object v8, v15

    goto/16 :goto_8f8

    :catch_714
    move-exception v0

    move v7, v10

    move v6, v11

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v4, v27

    goto/16 :goto_848

    :catch_71d
    move-exception v0

    move v7, v10

    move v6, v11

    move-object v2, v12

    move-object v3, v13

    move-object v8, v15

    move-object/from16 v4, v27

    goto/16 :goto_2e

    :cond_727
    :goto_727
    move/from16 v26, v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object v2, v9

    move v3, v1

    move/from16 v7, v26

    move-object/from16 v35, v9

    move/from16 v9, v16

    move/from16 v10, v17

    move/from16 v11, v18

    move-object/from16 v54, v12

    move-object/from16 v12, v19

    move-object/from16 v55, v13

    move-object/from16 v13, v20

    move-object/from16 v56, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v22

    move/from16 v16, v23

    move/from16 v17, v24

    move-object/from16 v18, v28

    move-object/from16 v19, v29

    move-object/from16 v20, v30

    move/from16 v21, v31

    move/from16 v22, v32

    move/from16 v23, v33

    move-object/from16 v24, v34

    :try_start_779
    invoke-virtual/range {v2 .. v24}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZZLjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IIILjava/lang/String;)V
    :try_end_77c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_779 .. :try_end_77c} :catch_7a5
    .catch Ljava/io/IOException; {:try_start_779 .. :try_end_77c} :catch_799
    .catchall {:try_start_779 .. :try_end_77c} :catchall_78a

    nop

    move-object/from16 v12, v54

    move-object/from16 v13, v55

    move-object/from16 v14, v56

    const/16 v10, 0x1fc

    const/4 v11, -0x1

    move-object/from16 v15, p0

    goto/16 :goto_6d3

    :catchall_78a
    move-exception v0

    move-object v2, v0

    move-object/from16 v12, v54

    move-object/from16 v3, v55

    move-object/from16 v14, v56

    :goto_792
    const/4 v6, -0x1

    const/16 v7, 0x1fc

    move-object/from16 v8, p0

    goto/16 :goto_8f8

    :catch_799
    move-exception v0

    move-object/from16 v4, v27

    move-object/from16 v2, v54

    move-object/from16 v3, v55

    move-object/from16 v14, v56

    :goto_7a2
    const/4 v6, -0x1

    goto/16 :goto_e4

    :catch_7a5
    move-exception v0

    move-object/from16 v4, v27

    move-object/from16 v2, v54

    move-object/from16 v3, v55

    move-object/from16 v14, v56

    :goto_7ae
    const/4 v6, -0x1

    const/16 v7, 0x1fc

    move-object/from16 v8, p0

    goto/16 :goto_2e

    :catchall_7b5
    move-exception v0

    move-object/from16 v54, v12

    move-object/from16 v55, v13

    move-object/from16 v56, v14

    move-object v2, v0

    move v7, v10

    move v6, v11

    move-object v8, v15

    move-object/from16 v3, v55

    goto/16 :goto_8f8

    :catch_7c4
    move-exception v0

    move-object/from16 v54, v12

    move-object/from16 v55, v13

    move-object/from16 v56, v14

    move v7, v10

    move v6, v11

    move-object/from16 v4, v27

    move-object/from16 v2, v54

    move-object/from16 v3, v55

    goto/16 :goto_848

    :catch_7d5
    move-exception v0

    move-object/from16 v54, v12

    move-object/from16 v55, v13

    move-object/from16 v56, v14

    move v7, v10

    move v6, v11

    move-object v8, v15

    move-object/from16 v4, v27

    move-object/from16 v2, v54

    move-object/from16 v3, v55

    const/4 v9, 0x6

    goto/16 :goto_8a8

    :cond_7e8
    move-object/from16 v54, v12

    move-object/from16 v55, v13

    move-object/from16 v56, v14

    move-object/from16 v3, v55

    if-eqz v3, :cond_7f5

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    :cond_7f5
    move-object/from16 v5, v56

    if-eqz v5, :cond_7fe

    :try_start_7f9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7fc
    .catch Ljava/io/IOException; {:try_start_7f9 .. :try_end_7fc} :catch_7fd

    goto :goto_7fe

    :catch_7fd
    move-exception v0

    :cond_7fe
    :goto_7fe
    move-object/from16 v2, v54

    if-eqz v2, :cond_80d

    nop

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, -0x1

    const/16 v7, 0x1fc

    invoke-static {v0, v7, v6, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_80d
    return-void

    :catchall_80e
    move-exception v0

    move v7, v10

    move v6, v11

    move-object v2, v12

    move-object v3, v13

    move-object v5, v14

    move-object v8, v15

    move-object v2, v0

    goto/16 :goto_8f8

    :catch_818
    move-exception v0

    move v7, v10

    move v6, v11

    move-object v2, v12

    move-object v3, v13

    move-object v5, v14

    move-object/from16 v4, v27

    goto :goto_848

    :catch_821
    move-exception v0

    move v7, v10

    move v6, v11

    move-object v2, v12

    move-object v3, v13

    move-object v5, v14

    move-object v8, v15

    move-object/from16 v4, v27

    const/4 v9, 0x6

    goto/16 :goto_8a8

    :catch_82d
    move-exception v0

    move v7, v6

    move v6, v13

    move-object v5, v14

    move v1, v15

    move-object/from16 v8, p0

    goto/16 :goto_8a7

    :catchall_836
    move-exception v0

    move v7, v6

    move v6, v13

    move-object v5, v14

    move v1, v15

    move-object v12, v2

    move-object/from16 v27, v4

    move-object/from16 v8, p0

    move-object v2, v0

    goto/16 :goto_8f8

    :catch_843
    move-exception v0

    move v7, v6

    move v6, v13

    move-object v5, v14

    move v1, v15

    :goto_848
    :try_start_848
    invoke-virtual {v4}, Lcom/android/server/pm/XmlMoreAtomicFile;->processDamagedFile()V
    :try_end_84b
    .catchall {:try_start_848 .. :try_end_84b} :catchall_89d

    move-object/from16 v8, p0

    :try_start_84d
    iget-object v5, v8, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error reading: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error reading settings: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x6

    invoke-static {v9, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    const-string v5, "PackageManager"

    const-string v9, "Error reading package manager stopped packages"

    invoke-static {v5, v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->resetSystemServer()V
    :try_end_886
    .catchall {:try_start_84d .. :try_end_886} :catchall_8f3

    if-eqz v3, :cond_88b

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    :cond_88b
    if-eqz v14, :cond_892

    :try_start_88d
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_890
    .catch Ljava/io/IOException; {:try_start_88d .. :try_end_890} :catch_891

    goto :goto_892

    :catch_891
    move-exception v0

    :cond_892
    :goto_892
    if-eqz v2, :cond_8f2

    :goto_894
    nop

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7, v6, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_8f2

    :catchall_89d
    move-exception v0

    move-object/from16 v8, p0

    goto :goto_8f4

    :catch_8a1
    move-exception v0

    move-object v8, v1

    move v7, v6

    move v6, v13

    move-object v5, v14

    move v1, v15

    :goto_8a7
    const/4 v9, 0x6

    :goto_8a8
    :try_start_8a8
    invoke-virtual {v4}, Lcom/android/server/pm/XmlMoreAtomicFile;->processDamagedFile()V

    iget-object v5, v8, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error reading: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error reading stopped packages: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    const-string v5, "PackageManager"

    const-string v9, "Error reading package manager stopped packages"

    invoke-static {v5, v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->resetSystemServer()V
    :try_end_8e3
    .catchall {:try_start_8a8 .. :try_end_8e3} :catchall_8f3

    if-eqz v3, :cond_8e8

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    :cond_8e8
    if-eqz v14, :cond_8ef

    :try_start_8ea
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_8ed
    .catch Ljava/io/IOException; {:try_start_8ea .. :try_end_8ed} :catch_8ee

    goto :goto_8ef

    :catch_8ee
    move-exception v0

    :cond_8ef
    :goto_8ef
    if-eqz v2, :cond_8f2

    goto :goto_894

    :cond_8f2
    :goto_8f2
    return-void

    :catchall_8f3
    move-exception v0

    :goto_8f4
    move-object v12, v2

    move-object/from16 v27, v4

    :goto_8f7
    move-object v2, v0

    :goto_8f8
    if-eqz v3, :cond_8fd

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    :cond_8fd
    if-eqz v14, :cond_904

    :try_start_8ff
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_902
    .catch Ljava/io/IOException; {:try_start_8ff .. :try_end_902} :catch_903

    goto :goto_904

    :catch_903
    move-exception v0

    :cond_904
    :goto_904
    if-eqz v12, :cond_90e

    nop

    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7, v6, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_90e
    throw v2

    nop

    :pswitch_data_910
    .packed-switch 0x0
        :pswitch_2e9
        :pswitch_2e2
        :pswitch_2db
        :pswitch_2d4
    .end packed-switch
.end method

.method readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_80

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_80

    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    goto :goto_4

    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_64

    new-instance v3, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v3, p1}, Lcom/android/server/pm/PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v5, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v5}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3d

    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    goto :goto_63

    :cond_3d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v6}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_63
    goto :goto_7f

    :cond_64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <preferred-activities>: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_7f
    goto :goto_4

    :cond_80
    return-void
.end method

.method protected readRemovedAppFile()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRemovedApp:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string v4, "RemovedApps.txt"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_15

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_46

    return-void

    :cond_15
    :try_start_15
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v3

    :goto_20
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    if-eqz v3, :cond_2b

    invoke-virtual {p0, v4}, Lcom/android/server/pm/Settings;->addRemovedApp(Ljava/lang/String;)Z
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_2a} :catch_34
    .catchall {:try_start_15 .. :try_end_2a} :catchall_32

    goto :goto_20

    :cond_2b
    nop

    :goto_2c
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30
    .catchall {:try_start_2c .. :try_end_2f} :catchall_46

    goto :goto_3b

    :catch_30
    move-exception v3

    goto :goto_3c

    :catchall_32
    move-exception v3

    goto :goto_3e

    :catch_34
    move-exception v3

    :try_start_35
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_32

    if-eqz v1, :cond_3c

    goto :goto_2c

    :goto_3b
    nop

    :cond_3c
    :goto_3c
    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_46

    return-void

    :goto_3e
    if-eqz v1, :cond_45

    :try_start_40
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44
    .catchall {:try_start_40 .. :try_end_43} :catchall_46

    goto :goto_45

    :catch_44
    move-exception v4

    :cond_45
    :goto_45
    :try_start_45
    throw v3

    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_46

    throw v1
.end method

.method readStoppedLPw()V
    .registers 16

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_45

    :try_start_a
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v3, "Reading from backup stopped packages file\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Need to read from backup stopped packages file"

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_43

    const-string v1, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleaning up stopped packages file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_43} :catch_44

    :cond_43
    goto :goto_45

    :catch_44
    move-exception v1

    :cond_45
    :goto_45
    const/4 v1, 0x6

    const/4 v3, 0x0

    if-nez v0, :cond_8a

    :try_start_49
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_7b

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v5, "No stopped packages file found\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "No stopped packages file file; assuming all started"

    invoke-static {v2, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_67
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v4, v3, v3}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    invoke-virtual {v4, v3, v3}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    goto :goto_67

    :cond_7a
    return-void

    :cond_7b
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v4

    goto :goto_8a

    :catch_84
    move-exception v2

    goto/16 :goto_137

    :catch_87
    move-exception v2

    goto/16 :goto_16e

    :cond_8a
    :goto_8a
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_92
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v7, v6

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v6, v8, :cond_9e

    if-eq v7, v9, :cond_9e

    goto :goto_92

    :cond_9e
    if-eq v7, v8, :cond_ae

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v3, "No start tag found in stopped packages file\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    const-string v3, "No start tag found in package manager stopped packages"

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return-void

    :cond_ae
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    :cond_b2
    :goto_b2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v7, v8

    if-eq v8, v9, :cond_133

    const/4 v8, 0x3

    if-ne v7, v8, :cond_c2

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v6, :cond_133

    :cond_c2
    if-eq v7, v8, :cond_b2

    if-ne v7, v2, :cond_c7

    goto :goto_b2

    :cond_c7
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "pkg"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_115

    const-string/jumbo v10, "name"

    invoke-interface {v4, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/PackageSetting;

    if-eqz v11, :cond_fb

    invoke-virtual {v11, v9, v3}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    const-string v12, "1"

    const-string/jumbo v13, "nl"

    invoke-interface {v4, v5, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_111

    invoke-virtual {v11, v9, v3}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    goto :goto_111

    :cond_fb
    const-string v12, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No package known for stopped package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_111
    :goto_111
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_132

    :cond_115
    const-string v10, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown element under <stopped-packages>: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_132
    goto :goto_b2

    :cond_133
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_136
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_49 .. :try_end_136} :catch_87
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_136} :catch_84

    goto :goto_1a4

    :goto_137
    nop

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    const-string v1, "PackageManager"

    const-string v3, "Error reading package manager stopped packages"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a5

    :goto_16e
    nop

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading stopped packages: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    const-string v1, "PackageManager"

    const-string v3, "Error reading package manager stopped packages"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1a4
    nop

    :goto_1a5
    return-void
.end method

.method readUsesStaticLibLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSetting;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_53

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_53

    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    goto :goto_4

    :cond_1b
    const-string/jumbo v1, "name"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "version"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    :try_start_2c
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_30} :catch_32

    move-wide v4, v6

    goto :goto_33

    :catch_32
    move-exception v6

    :goto_33
    if-eqz v1, :cond_4f

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_4f

    const-class v6, Ljava/lang/String;

    iget-object v7, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    invoke-static {v6, v7, v1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iput-object v6, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    iget-object v6, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-static {v6, v4, v5}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJ)[J

    move-result-object v6

    iput-object v6, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    :cond_4f
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    :cond_53
    return-void
.end method

.method removeCrossProfileIntentFiltersLPw(I)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    :cond_13
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_57

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/CrossProfileIntentResolver;

    const/4 v5, 0x0

    new-instance v6, Landroid/util/ArraySet;

    invoke-virtual {v4}, Lcom/android/server/pm/CrossProfileIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_38
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-virtual {v8}, Lcom/android/server/pm/CrossProfileIntentFilter;->getTargetUserId()I

    move-result v9

    if-ne v9, p1, :cond_4e

    const/4 v5, 0x1

    invoke-virtual {v4, v8}, Lcom/android/server/pm/CrossProfileIntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    :cond_4e
    goto :goto_38

    :cond_4f
    if-eqz v5, :cond_54

    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_57
    monitor-exit v0

    return-void

    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_3 .. :try_end_5b} :catchall_59

    throw v1
.end method

.method removeDisabledSystemPackageLPw(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method removeIntentFilterVerificationLPw(Ljava/lang/String;I)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-nez v0, :cond_c

    const/4 v1, 0x0

    return v1

    :cond_c
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->clearDomainVerificationStatusForUser(I)V

    const/4 v1, 0x1

    return v1
.end method

.method removeIntentFilterVerificationLPw(Ljava/lang/String;[I)Z
    .registers 8

    const/4 v0, 0x0

    array-length v1, p2

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_f

    aget v3, p2, v2

    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/Settings;->removeIntentFilterVerificationLPw(Ljava/lang/String;I)Z

    move-result v4

    or-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_f
    return v0
.end method

.method removePackageLPw(Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_48

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->removeInstallerPackageStatus(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_40

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_48

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v1

    if-nez v1, :cond_48

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v1, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/Settings;->removeUserIdLPw(I)V

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v1, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    return v1

    :cond_40
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/Settings;->removeUserIdLPw(I)V

    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    return v1

    :cond_48
    const/4 v1, -0x1

    return v1
.end method

.method removeUserLPw(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/PackageSetting;->removeUser(I)V

    goto :goto_a

    :cond_20
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeCrossProfileIntentFiltersLPw(I)V

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    # invokes: Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->onUserRemovedLPw(I)V
    invoke-static {v2, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->access$100(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V

    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writePackageListLPr()V

    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->writeKernelRemoveUserLPr(I)V

    return-void
.end method

.method resetSystemServer()V
    .registers 2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method setBlockUninstallLPw(ILjava/lang/String;Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-eqz p3, :cond_1b

    if-nez v0, :cond_17

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_17
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_1b
    if-eqz v0, :cond_2b

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method setDefaultBrowserPackageNameLPw(Ljava/lang/String;I)Z
    .registers 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    const/4 v0, 0x0

    return v0

    :cond_5
    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_12

    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    :goto_12
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    const/4 v0, 0x1

    return v0
.end method

.method setDefaultDialerPackageNameLPw(Ljava/lang/String;I)Z
    .registers 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    const/4 v0, 0x0

    return v0

    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultDialerApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    const/4 v0, 0x1

    return v0
.end method

.method setHarmfulAppWarningLPw(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_16

    if-nez p2, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_12
    invoke-virtual {v0, p3, v1}, Lcom/android/server/pm/PackageSetting;->setHarmfulAppWarning(ILjava/lang/String;)V

    return-void

    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_14

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->setInstallerPackageName(Ljava/lang/String;)V

    if-eqz p2, :cond_14

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_14
    return-void
.end method

.method setPackageStoppedStateLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZII)Z
    .registers 12

    invoke-static {p5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    if-eqz v1, :cond_63

    if-nez p4, :cond_42

    iget v2, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ne v0, v2, :cond_15

    goto :goto_42

    :cond_15
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: attempt to change stopped state from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", package uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_42
    :goto_42
    invoke-virtual {v1, p6}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eq v2, p3, :cond_62

    invoke-virtual {v1, p3, p6}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    invoke-virtual {v1, p6}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v2

    if-eqz v2, :cond_60

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v2, :cond_5d

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v4, p6}, Lcom/android/server/pm/PackageManagerService;->notifyFirstLaunch(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_5d
    invoke-virtual {v1, v3, p6}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    :cond_60
    const/4 v2, 0x1

    return v2

    :cond_62
    return v3

    :cond_63
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method unInstallSystemApplicationsForPersonaLI(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;ILjava/io/File;Ljava/util/List;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/Installer;",
            "I",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p5, :cond_a9

    :try_start_6
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v4, :cond_3c

    const-string v4, "PackageSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "for KNOX due to missing metadata"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_3c
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {p5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9e

    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ps.pkgFlags"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v3, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_84

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p3}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " uninstalled system package : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_9e

    :cond_84
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Ignored pkg. Not a system package : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9e
    :goto_9e
    goto/16 :goto_10

    :cond_a0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/Settings;->applyDefaultPreferredAppsLPw(Lcom/android/server/pm/PackageManagerService;I)V

    invoke-virtual {p0, p3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    goto :goto_a9

    :catchall_a7
    move-exception v2

    goto :goto_ab

    :cond_a9
    :goto_a9
    monitor-exit v1

    return v0

    :goto_ab
    monitor-exit v1
    :try_end_ac
    .catchall {:try_start_6 .. :try_end_ac} :catchall_a7

    throw v2
.end method

.method updateIntentFilterVerificationStatusLPw(Ljava/lang/String;II)Z
    .registers 8

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    :cond_c
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p2, v2, :cond_1d

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    add-int/2addr v1, v3

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p3, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1e

    :cond_1d
    nop

    :goto_1e
    invoke-virtual {v0, p2, v1, p3}, Lcom/android/server/pm/PackageSetting;->setDomainVerificationStatusForUser(III)V

    return v3
.end method

.method updateSharedUserPermsLPw(Lcom/android/server/pm/PackageSetting;I)I
    .registers 15

    const/16 v0, -0x2710

    if-eqz p1, :cond_ab

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v1, :cond_a

    goto/16 :goto_ab

    :cond_a
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v1, :cond_f

    return v0

    :cond_f
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_aa

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    if-nez v4, :cond_2e

    goto :goto_19

    :cond_2e
    const/4 v5, 0x0

    iget-object v6, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_35
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_60

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    iget-object v8, v7, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v8, :cond_5f

    iget-object v8, v7, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5f

    iget-object v8, v7, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5f

    const/4 v5, 0x1

    goto :goto_60

    :cond_5f
    goto :goto_35

    :cond_60
    :goto_60
    if-eqz v5, :cond_63

    goto :goto_19

    :cond_63
    invoke-virtual {v1}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    if-eqz v7, :cond_92

    const/4 v8, 0x0

    iget-object v9, v7, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8e

    const/4 v8, 0x1

    goto :goto_8f

    :cond_8e
    goto :goto_7a

    :cond_8f
    :goto_8f
    if-eqz v8, :cond_92

    goto :goto_19

    :cond_92
    const/16 v8, 0xff

    const/4 v9, 0x0

    invoke-virtual {v6, v4, p2, v8, v9}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    invoke-virtual {v6, v4}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a1

    const/4 v0, -0x1

    return v0

    :cond_a1
    invoke-virtual {v6, v4, p2}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v8

    if-ne v8, v9, :cond_a8

    return p2

    :cond_a8
    goto/16 :goto_19

    :cond_aa
    return v0

    :cond_ab
    :goto_ab
    const-string v1, "PackageManager"

    const-string v2, "Trying to update info for null package. Just ignoring"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method wasPackageEverLaunchedLPr(Ljava/lang/String;I)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_11

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method wasPackageStoppedLPr(Ljava/lang/String;I)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v1

    return v1

    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method writeAllDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "all-intent-filter-verifications"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_23

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v4

    if-eqz v4, :cond_20

    invoke-virtual {p0, p1, v4}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_23
    const-string v2, "all-intent-filter-verifications"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method writeAllRuntimePermissionsLPr()V
    .registers 6

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_16

    aget v3, v0, v2

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_16
    return-void
.end method

.method writeAllUsersPackageRestrictionsLPr()V
    .registers 5

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    goto :goto_f

    :cond_21
    return-void
.end method

.method writeBlockUninstallPackagesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-eqz v0, :cond_35

    const-string v1, "block-uninstall-packages"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    :goto_11
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v1, v3, :cond_30

    const-string v3, "block-uninstall"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "packageName"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "block-uninstall"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_30
    const-string v1, "block-uninstall-packages"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_35
    return-void
.end method

.method writeChildPackagesLPw(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_24

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "child-package"

    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "name"

    invoke-interface {p1, v4, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "child-package"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_24
    return-void
.end method

.method writeCrossProfileIntentFiltersLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "crossProfile-intent-filters"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lcom/android/server/pm/CrossProfileIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/CrossProfileIntentFilter;

    const-string v4, "item"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v4, "item"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_18

    :cond_32
    const-string v2, "crossProfile-intent-filters"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "default-apps"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string v2, "default-browser"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "packageName"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "default-browser"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_24
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mDefaultDialerApp:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_42

    const-string v3, "default-dialer"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "packageName"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "default-dialer"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_42
    const-string v3, "default-apps"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method writeDisabledSysPackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "updated-package"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "name"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_1b

    const-string/jumbo v0, "realName"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1b
    const-string v0, "codePath"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "ft"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "it"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "ut"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "version"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    const-string/jumbo v0, "resourcePath"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_62
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    if-eqz v0, :cond_6e

    const-string/jumbo v0, "nativeLibraryPath"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6e
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    if-eqz v0, :cond_7a

    const-string/jumbo v0, "primaryCpuAbi"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7a
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    if-eqz v0, :cond_86

    const-string/jumbo v0, "secondaryCpuAbi"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_86
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    if-eqz v0, :cond_91

    const-string v0, "cpuAbiOverride"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_91
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v0, :cond_a2

    const-string/jumbo v0, "userId"

    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_ae

    :cond_a2
    const-string/jumbo v0, "sharedUserId"

    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_ae
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    if-eqz v0, :cond_ba

    const-string/jumbo v0, "parentPackageName"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_ba
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeChildPackagesLPw(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/pm/Settings;->writeUsesStaticLibLPw(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;[J)V

    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v0, :cond_d5

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    :cond_d5
    const-string/jumbo v0, "updated-package"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_16

    invoke-virtual {p2}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string v0, "domain-verification"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p2, p1}, Landroid/content/pm/IntentFilterVerificationInfo;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v0, "domain-verification"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_16
    return-void
.end method

.method writeKernelMappingLPr()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    if-ge v4, v2, :cond_1e

    aget-object v5, v0, v4

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_1e
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, v4}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    goto :goto_28

    :cond_3d
    nop

    :goto_3e
    move v2, v3

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_5d

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v2, 0x1

    goto :goto_3e

    :cond_5d
    return-void
.end method

.method writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-eqz v0, :cond_a7

    if-eqz p1, :cond_a7

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    if-nez v0, :cond_c

    goto/16 :goto_a7

    :cond_c
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$KernelPackageState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1c

    move v3, v2

    goto :goto_1d

    :cond_1c
    move v3, v1

    :goto_1d
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getNotInstalledUserIds()[I

    move-result-object v4

    if-nez v3, :cond_2e

    iget-object v5, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v5

    if-nez v5, :cond_2c

    goto :goto_2e

    :cond_2c
    move v2, v1

    nop

    :cond_2e
    :goto_2e
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    iget-object v7, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v3, :cond_4a

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    new-instance v6, Lcom/android/server/pm/Settings$KernelPackageState;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/server/pm/Settings$KernelPackageState;-><init>(Lcom/android/server/pm/Settings$1;)V

    move-object v0, v6

    iget-object v6, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    iget-object v7, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    iget v6, v0, Lcom/android/server/pm/Settings$KernelPackageState;->appId:I

    iget v7, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-eq v6, v7, :cond_5c

    new-instance v6, Ljava/io/File;

    const-string v7, "appid"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget v7, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v6, v7}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    :cond_5c
    if-eqz v2, :cond_a6

    move v6, v1

    :goto_5f
    array-length v7, v4

    if-ge v6, v7, :cond_7f

    iget-object v7, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    if-eqz v7, :cond_70

    iget-object v7, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget v8, v4, v6

    invoke-static {v7, v8}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v7

    if-nez v7, :cond_7c

    :cond_70
    new-instance v7, Ljava/io/File;

    const-string v8, "excluded_userids"

    invoke-direct {v7, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aget v8, v4, v6

    invoke-direct {p0, v7, v8}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    :cond_7c
    add-int/lit8 v6, v6, 0x1

    goto :goto_5f

    :cond_7f
    iget-object v6, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    if-eqz v6, :cond_a4

    nop

    :goto_84
    iget-object v6, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    array-length v6, v6

    if-ge v1, v6, :cond_a4

    iget-object v6, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget v6, v6, v1

    invoke-static {v4, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    if-nez v6, :cond_a1

    new-instance v6, Ljava/io/File;

    const-string v7, "clear_userid"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget v7, v7, v1

    invoke-direct {p0, v6, v7}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    :cond_a1
    add-int/lit8 v1, v1, 0x1

    goto :goto_84

    :cond_a4
    iput-object v4, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    :cond_a6
    return-void

    :cond_a7
    :goto_a7
    return-void
.end method

.method writeKeySetAliasesLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v2, "defined-keyset"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "alias"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "identifier"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "defined-keyset"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_c

    :cond_42
    return-void
.end method

.method writeLPr()V
    .registers 19

    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v10, -0x1

    :try_start_11
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_15} :catch_27c

    move-object v4, v0

    const/4 v11, 0x1

    :try_start_17
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v4, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v12}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_21} :catch_23

    move-object v5, v0

    goto :goto_2b

    :catch_23
    move-exception v0

    const/4 v12, 0x4

    :try_start_25
    const-string/jumbo v13, "there is no log(writeLPr) file"

    invoke-static {v12, v13}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_2b
    new-instance v0, Lcom/android/server/pm/XmlMoreAtomicFile;

    iget-object v12, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-direct {v0, v12, v5}, Lcom/android/server/pm/XmlMoreAtomicFile;-><init>(Ljava/io/File;Ljava/io/PrintWriter;)V

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/server/pm/XmlMoreAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    move-object v7, v0

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v8, v0

    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v8, v12}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v0, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v12, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v0, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v11, "packages"

    invoke-interface {v0, v13, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v12, 0x0

    :goto_60
    iget-object v14, v1, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v12, v14, :cond_a3

    iget-object v14, v1, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iget-object v15, v1, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v15, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/Settings$VersionInfo;

    const-string/jumbo v11, "version"

    invoke-interface {v0, v13, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "volumeUuid"

    invoke-static {v0, v11, v14}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v11, "sdkVersion"

    iget v9, v15, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    invoke-static {v0, v11, v9}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string v9, "databaseVersion"

    iget v11, v15, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    invoke-static {v0, v9, v11}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string v9, "fingerprint"

    iget-object v11, v15, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-static {v0, v9, v11}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v9, "version"

    invoke-interface {v0, v13, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v12, v12, 0x1

    goto :goto_60

    :cond_a3
    iget-object v9, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    if-eqz v9, :cond_be

    const-string/jumbo v9, "verifier"

    invoke-interface {v0, v13, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "device"

    iget-object v11, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    invoke-virtual {v11}, Landroid/content/pm/VerifierDeviceIdentity;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v13, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "verifier"

    invoke-interface {v0, v13, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_be
    iget-object v9, v1, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    if-eqz v9, :cond_e0

    const-string/jumbo v9, "read-external-storage"

    invoke-interface {v0, v13, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "enforcement"

    iget-object v11, v1, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_d5

    const-string v11, "1"

    goto :goto_d7

    :cond_d5
    const-string v11, "0"

    :goto_d7
    invoke-interface {v0, v13, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "read-external-storage"

    invoke-interface {v0, v13, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_e0
    const-string/jumbo v9, "permission-trees"

    invoke-interface {v0, v13, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v9, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/PermissionSettings;->writePermissionTrees(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v9, "permission-trees"

    invoke-interface {v0, v13, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "permissions"

    invoke-interface {v0, v13, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v9, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/PermissionSettings;->writePermissions(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v9, "permissions"

    invoke-interface {v0, v13, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v9, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_10c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v1, v0, v11}, Lcom/android/server/pm/Settings;->writePackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_10c

    :cond_11c
    iget-object v9, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_126
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_136

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v1, v0, v11}, Lcom/android/server/pm/Settings;->writeDisabledSysPackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_126

    :cond_136
    iget-object v9, v1, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_140
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_182

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/SharedUserSetting;

    const-string/jumbo v12, "shared-user"

    invoke-interface {v0, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "name"

    iget-object v14, v11, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-interface {v0, v13, v12, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "userId"

    iget v14, v11, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v13, v12, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v12, v11, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    const-string/jumbo v14, "sigs"

    iget-object v15, v1, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v12, v0, v14, v15}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v11}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v1, v0, v12}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    const-string/jumbo v12, "shared-user"

    invoke-interface {v0, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_140

    :cond_182
    iget-object v9, v1, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1ca

    iget-object v9, v1, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_190
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1ca

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageCleanItem;

    iget v12, v11, Landroid/content/pm/PackageCleanItem;->userId:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const-string v14, "cleaning-package"

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "name"

    iget-object v15, v11, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    invoke-interface {v0, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v14, "code"

    iget-boolean v15, v11, Landroid/content/pm/PackageCleanItem;->andCode:Z

    if-eqz v15, :cond_1b9

    const-string/jumbo v15, "true"

    goto :goto_1bb

    :cond_1b9
    const-string v15, "false"

    :goto_1bb
    invoke-interface {v0, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "user"

    invoke-interface {v0, v13, v14, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v14, "cleaning-package"

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_190

    :cond_1ca
    iget-object v9, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-lez v9, :cond_20d

    iget-object v9, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1dc
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_20d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    const-string/jumbo v12, "renamed-package"

    invoke-interface {v0, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "new"

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v0, v13, v12, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "old"

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v0, v13, v12, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "renamed-package"

    invoke-interface {v0, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1dc

    :cond_20d
    iget-object v9, v1, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-lez v9, :cond_235

    const-string/jumbo v11, "restored-ivi"

    invoke-interface {v0, v13, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v16, 0x0

    :goto_21d
    move/from16 v11, v16

    if-ge v11, v9, :cond_22f

    iget-object v12, v1, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-virtual {v1, v0, v12}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    add-int/lit8 v16, v11, 0x1

    goto :goto_21d

    :cond_22f
    const-string/jumbo v11, "restored-ivi"

    invoke-interface {v0, v13, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_235
    iget-object v11, v1, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    invoke-virtual {v11, v0}, Lcom/android/server/pm/KeySetManagerService;->writeKeySetManagerServiceLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v11, "packages"

    invoke-interface {v0, v13, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v6, v7}, Lcom/android/server/pm/XmlMoreAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    nop

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x1fc

    invoke-static {v11, v12, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    iget-object v11, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x1b0

    invoke-static {v11, v12, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writePackageListLPr()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeAllRuntimePermissionsLPr()V

    const-string/jumbo v11, "package"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v2

    invoke-static {v11, v12, v13}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_27b
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_27b} :catch_27c

    return-void

    :catch_27c
    move-exception v0

    invoke-virtual {v6, v7}, Lcom/android/server/pm/XmlMoreAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    if-eqz v5, :cond_285

    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    :cond_285
    if-eqz v4, :cond_291

    nop

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v11, 0x1fc

    invoke-static {v9, v11, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_291
    const/4 v9, 0x6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to write package manager settings, current changes will be lost at reboot: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    const-string v9, "PackageManager"

    const-string v10, "Unable to write package manager settings, current changes will be lost at reboot"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2d5

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2d5

    const-string v0, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to clean up mangled file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d5
    return-void
.end method

.method writePackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "package"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "name"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_1b

    const-string/jumbo v0, "realName"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1b
    const-string v0, "codePath"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string/jumbo v0, "resourcePath"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_34
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    if-eqz v0, :cond_40

    const-string/jumbo v0, "nativeLibraryPath"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_40
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    if-eqz v0, :cond_4c

    const-string/jumbo v0, "primaryCpuAbi"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4c
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    if-eqz v0, :cond_58

    const-string/jumbo v0, "secondaryCpuAbi"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_58
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    if-eqz v0, :cond_63

    const-string v0, "cpuAbiOverride"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_63
    const-string/jumbo v0, "publicFlags"

    iget v2, p2, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "privateFlags"

    iget v2, p2, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "ft"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "it"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "ut"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "version"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v0, :cond_ba

    const-string/jumbo v0, "userId"

    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_c6

    :cond_ba
    const-string/jumbo v0, "sharedUserId"

    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_c6
    iget-boolean v0, p2, Lcom/android/server/pm/PackageSetting;->uidError:Z

    if-eqz v0, :cond_d3

    const-string/jumbo v0, "uidError"

    const-string/jumbo v2, "true"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_d3
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_de

    const-string v0, "installer"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_de
    iget-boolean v0, p2, Lcom/android/server/pm/PackageSetting;->isOrphaned:Z

    if-eqz v0, :cond_ea

    const-string v0, "isOrphaned"

    const-string/jumbo v2, "true"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_ea
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    if-eqz v0, :cond_f6

    const-string/jumbo v0, "volumeUuid"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_f6
    iget v0, p2, Lcom/android/server/pm/PackageSetting;->categoryHint:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_106

    const-string v0, "categoryHint"

    iget v2, p2, Lcom/android/server/pm/PackageSetting;->categoryHint:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_106
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    if-eqz v0, :cond_112

    const-string/jumbo v0, "parentPackageName"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_112
    iget-boolean v0, p2, Lcom/android/server/pm/PackageSetting;->updateAvailable:Z

    if-eqz v0, :cond_11f

    const-string/jumbo v0, "updateAvailable"

    const-string/jumbo v2, "true"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_11f
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeChildPackagesLPw(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/pm/Settings;->writeUsesStaticLibLPw(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;[J)V

    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    const-string/jumbo v2, "sigs"

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v0, :cond_144

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    :cond_144
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeSigningKeySetLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeUpgradeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeKeySetAliasesLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    const-string/jumbo v0, "package"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method writePackageListLPr()V
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    return-void
.end method

.method writePackageListLPr(I)V
    .registers 19

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v6, 0x0

    :goto_14
    array-length v7, v0

    if-ge v6, v7, :cond_24

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    aput v7, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_24
    const/4 v6, -0x1

    if-eq v2, v6, :cond_2b

    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    :cond_2b
    move-object v6, v0

    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    new-instance v0, Lcom/android/internal/util/JournaledFile;

    iget-object v8, v1, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-direct {v0, v8, v7}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    move-object v8, v0

    invoke-virtual {v8}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v9

    const/4 v0, 0x0

    move-object v10, v0

    :try_start_57
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v11, Ljava/io/BufferedWriter;

    new-instance v12, Ljava/io/OutputStreamWriter;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-direct {v12, v0, v13}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v10, v11

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v11

    const/16 v12, 0x1a0

    const/16 v13, 0x3e8

    const/16 v14, 0x408

    invoke-static {v11, v12, v13, v14}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_87
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_152

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    iget-object v14, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v14, :cond_126

    iget-object v14, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v14, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v14, :cond_126

    iget-object v14, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v14, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    if-nez v14, :cond_a7

    goto/16 :goto_126

    :cond_a7
    iget-object v14, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v14, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v14, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget v3, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_b5

    const/4 v3, 0x1

    goto :goto_b6

    :cond_b5
    const/4 v3, 0x0

    :goto_b6
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionsState;->computeGids([I)[I

    move-result-object v5

    const/16 v1, 0x20

    invoke-virtual {v15, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_cb

    nop

    move-object/from16 v1, p0

    goto/16 :goto_14f

    :cond_cb
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v1, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_e3

    const-string v1, " 1 "

    goto :goto_e5

    :cond_e3
    const-string v1, " 0 "

    :goto_e5
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_117

    array-length v1, v5

    if-lez v1, :cond_117

    const/4 v1, 0x0

    aget v2, v5, v1

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    :goto_106
    array-length v1, v5

    if-ge v2, v1, :cond_11d

    const-string v1, ","

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v5, v2

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    goto :goto_106

    :cond_117
    const-string/jumbo v1, "none"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11d
    const-string v1, "\n"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_14b

    :cond_126
    :goto_126
    const-string v1, "android"

    iget-object v2, v13, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14b

    const-string v1, "PackageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " due to missing metadata"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14b
    :goto_14b
    move-object/from16 v1, p0

    move/from16 v2, p1

    :goto_14f
    const/4 v3, 0x1

    goto/16 :goto_87

    :cond_152
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->flush()V

    invoke-static {v0}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v10}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v8}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_15e} :catch_15f

    goto :goto_16d

    :catch_15f
    move-exception v0

    const-string v1, "PackageSettings"

    const-string v2, "Failed to write packages.list"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual {v8}, Lcom/android/internal/util/JournaledFile;->rollback()V

    :goto_16d
    return-void
.end method

.method writePackageRestrictionsLPr(I)V
    .registers 25

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v5

    new-instance v0, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v11, v10

    :try_start_1e
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v0
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_22} :catch_344

    move-object v6, v0

    const/4 v14, 0x1

    :try_start_24
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v6, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v15}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2e} :catch_30

    move-object v7, v0

    goto :goto_38

    :catch_30
    move-exception v0

    const/4 v15, 0x4

    :try_start_32
    const-string/jumbo v12, "there is no log(writePackageRestrictionsLPr) file"

    invoke-static {v15, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_38
    new-instance v0, Lcom/android/server/pm/XmlMoreAtomicFile;

    invoke-direct {v0, v5, v7}, Lcom/android/server/pm/XmlMoreAtomicFile;-><init>(Ljava/io/File;Ljava/io/PrintWriter;)V

    move-object v8, v0

    invoke-virtual {v8}, Lcom/android/server/pm/XmlMoreAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    move-object v9, v0

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v11, v0

    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    move-object v12, v0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v12, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v12, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "package-restrictions"

    invoke-interface {v12, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_74
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v16, v0

    move-object/from16 v13, v16

    invoke-virtual {v13, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_88} :catch_344

    move-object/from16 v17, v0

    if-eqz v2, :cond_10c

    :try_start_8c
    invoke-virtual {v1, v13, v2}, Lcom/android/server/pm/Settings;->hasPackageOnlyForOwnerUser(Lcom/android/server/pm/PackageSetting;I)Z

    move-result v0

    if-eqz v0, :cond_b8

    const-string v0, "PackageSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "set to uninstalled: "

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v13, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", userId: "

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {v13, v0, v2}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto :goto_10c

    :cond_b8
    invoke-virtual {v1, v13, v2}, Lcom/android/server/pm/Settings;->getComponentsOnlyForOwnerUser(Lcom/android/server/pm/PackageSetting;I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_10c

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_c2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v0, "PackageSettings"

    move-object/from16 v19, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v15

    const-string v15, "disable cmp: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "in pkg: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v13, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", userId: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13, v14, v2}, Lcom/android/server/pm/PackageSetting;->addDisabledComponent(Ljava/lang/String;I)V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_ff} :catch_107

    nop

    move-object/from16 v0, v18

    move-object/from16 v10, v19

    move-object/from16 v15, v20

    goto :goto_c2

    :catch_107
    move-exception v0

    move-wide/from16 v21, v3

    goto/16 :goto_347

    :cond_10c
    :goto_10c
    move-object/from16 v20, v15

    :try_start_10e
    const-string/jumbo v0, "pkg"

    const/4 v10, 0x0

    invoke-interface {v12, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "name"

    iget-object v14, v13, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-interface {v12, v10, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v10, v17

    iget-wide v14, v10, Landroid/content/pm/PackageUserState;->ceDataInode:J
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_121} :catch_344

    const-wide/16 v18, 0x0

    cmp-long v0, v14, v18

    if-eqz v0, :cond_12e

    :try_start_127
    const-string v0, "ceDataInode"

    iget-wide v14, v10, Landroid/content/pm/PackageUserState;->ceDataInode:J

    invoke-static {v12, v0, v14, v15}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V
    :try_end_12e
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_12e} :catch_107

    :cond_12e
    :try_start_12e
    iget-boolean v0, v10, Landroid/content/pm/PackageUserState;->installed:Z
    :try_end_130
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_130} :catch_344

    if-nez v0, :cond_13a

    :try_start_132
    const-string v0, "inst"

    const-string v14, "false"

    const/4 v15, 0x0

    invoke-interface {v12, v15, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_13a
    .catch Ljava/io/IOException; {:try_start_132 .. :try_end_13a} :catch_107

    :cond_13a
    :try_start_13a
    iget-boolean v0, v10, Landroid/content/pm/PackageUserState;->stopped:Z
    :try_end_13c
    .catch Ljava/io/IOException; {:try_start_13a .. :try_end_13c} :catch_344

    if-eqz v0, :cond_148

    :try_start_13e
    const-string/jumbo v0, "stopped"

    const-string/jumbo v14, "true"

    const/4 v15, 0x0

    invoke-interface {v12, v15, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_148
    .catch Ljava/io/IOException; {:try_start_13e .. :try_end_148} :catch_107

    :cond_148
    :try_start_148
    iget-boolean v0, v10, Landroid/content/pm/PackageUserState;->notLaunched:Z
    :try_end_14a
    .catch Ljava/io/IOException; {:try_start_148 .. :try_end_14a} :catch_344

    if-eqz v0, :cond_156

    :try_start_14c
    const-string/jumbo v0, "nl"

    const-string/jumbo v14, "true"

    const/4 v15, 0x0

    invoke-interface {v12, v15, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_156
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_156} :catch_107

    :cond_156
    :try_start_156
    iget-boolean v0, v10, Landroid/content/pm/PackageUserState;->hidden:Z
    :try_end_158
    .catch Ljava/io/IOException; {:try_start_156 .. :try_end_158} :catch_344

    if-eqz v0, :cond_163

    :try_start_15a
    const-string v0, "hidden"

    const-string/jumbo v14, "true"

    const/4 v15, 0x0

    invoke-interface {v12, v15, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_163
    .catch Ljava/io/IOException; {:try_start_15a .. :try_end_163} :catch_107

    :cond_163
    :try_start_163
    iget-boolean v0, v10, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eqz v0, :cond_1fc

    const-string/jumbo v0, "suspended"

    const-string/jumbo v14, "true"

    const/4 v15, 0x0

    invoke-interface {v12, v15, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, v10, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;
    :try_end_173
    .catch Ljava/io/IOException; {:try_start_163 .. :try_end_173} :catch_344

    if-eqz v0, :cond_17e

    :try_start_175
    const-string/jumbo v0, "suspending-package"

    iget-object v14, v10, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-interface {v12, v15, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_17e
    .catch Ljava/io/IOException; {:try_start_175 .. :try_end_17e} :catch_107

    :cond_17e
    :try_start_17e
    iget-object v0, v10, Landroid/content/pm/PackageUserState;->dialogMessage:Ljava/lang/String;
    :try_end_180
    .catch Ljava/io/IOException; {:try_start_17e .. :try_end_180} :catch_344

    if-eqz v0, :cond_18b

    :try_start_182
    const-string/jumbo v0, "suspend_dialog_message"

    iget-object v14, v10, Landroid/content/pm/PackageUserState;->dialogMessage:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-interface {v12, v15, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_18b
    .catch Ljava/io/IOException; {:try_start_182 .. :try_end_18b} :catch_107

    :cond_18b
    :try_start_18b
    iget-object v0, v10, Landroid/content/pm/PackageUserState;->suspendedAppExtras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_1c5

    const-string/jumbo v0, "suspended-app-extras"

    const/4 v14, 0x0

    invoke-interface {v12, v14, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_196
    .catch Ljava/io/IOException; {:try_start_18b .. :try_end_196} :catch_344

    :try_start_196
    iget-object v0, v10, Landroid/content/pm/PackageUserState;->suspendedAppExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v12}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_19b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_196 .. :try_end_19b} :catch_19f
    .catch Ljava/io/IOException; {:try_start_196 .. :try_end_19b} :catch_107

    nop

    move-wide/from16 v21, v3

    goto :goto_1bd

    :catch_19f
    move-exception v0

    :try_start_1a0
    const-string v14, "PackageSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1a7
    .catch Ljava/io/IOException; {:try_start_1a0 .. :try_end_1a7} :catch_344

    move-wide/from16 v21, v3

    :try_start_1a9
    const-string v3, "Exception while trying to write suspendedAppExtras for "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Will be lost on reboot"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1bd
    const-string/jumbo v0, "suspended-app-extras"

    const/4 v3, 0x0

    invoke-interface {v12, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1c7

    :cond_1c5
    move-wide/from16 v21, v3

    :goto_1c7
    iget-object v0, v10, Landroid/content/pm/PackageUserState;->suspendedLauncherExtras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_1fe

    const-string/jumbo v0, "suspended-launcher-extras"

    const/4 v3, 0x0

    invoke-interface {v12, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1d2
    .catch Ljava/io/IOException; {:try_start_1a9 .. :try_end_1d2} :catch_342

    :try_start_1d2
    iget-object v0, v10, Landroid/content/pm/PackageUserState;->suspendedLauncherExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v12}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_1d7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d2 .. :try_end_1d7} :catch_1d8
    .catch Ljava/io/IOException; {:try_start_1d2 .. :try_end_1d7} :catch_342

    goto :goto_1f4

    :catch_1d8
    move-exception v0

    :try_start_1d9
    const-string v3, "PackageSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception while trying to write suspendedLauncherExtras for "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ". Will be lost on reboot"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f4
    const-string/jumbo v0, "suspended-launcher-extras"

    const/4 v3, 0x0

    invoke-interface {v12, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1fe

    :cond_1fc
    move-wide/from16 v21, v3

    :cond_1fe
    :goto_1fe
    iget-boolean v0, v10, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v0, :cond_20b

    const-string v0, "instant-app"

    const-string/jumbo v3, "true"

    const/4 v4, 0x0

    invoke-interface {v12, v4, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_20b
    iget-boolean v0, v10, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    if-eqz v0, :cond_219

    const-string/jumbo v0, "virtual-preload"

    const-string/jumbo v3, "true"

    const/4 v4, 0x0

    invoke-interface {v12, v4, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_219
    iget v0, v10, Landroid/content/pm/PackageUserState;->enabled:I

    if-eqz v0, :cond_235

    const-string v0, "enabled"

    iget v3, v10, Landroid/content/pm/PackageUserState;->enabled:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v12, v4, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, v10, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    if-eqz v0, :cond_235

    const-string v0, "enabledCaller"

    iget-object v3, v10, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v12, v4, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_235
    iget v0, v10, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    if-eqz v0, :cond_240

    const-string v0, "domainVerificationStatus"

    iget v3, v10, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    invoke-static {v12, v0, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_240
    iget v0, v10, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    if-eqz v0, :cond_24b

    const-string v0, "app-link-generation"

    iget v3, v10, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    invoke-static {v12, v0, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_24b
    iget v0, v10, Landroid/content/pm/PackageUserState;->installReason:I

    if-eqz v0, :cond_25b

    const-string v0, "install-reason"

    iget v3, v10, Landroid/content/pm/PackageUserState;->installReason:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v12, v4, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_25b
    iget-object v0, v10, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    if-eqz v0, :cond_267

    const-string v0, "harmful-app-warning"

    iget-object v3, v10, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v12, v4, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_267
    iget-object v0, v10, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_29f

    const-string v0, "enabled-components"

    const/4 v3, 0x0

    invoke-interface {v12, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, v10, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_299

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "item"

    const/4 v14, 0x0

    invoke-interface {v12, v14, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "name"

    invoke-interface {v12, v14, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "item"

    invoke-interface {v12, v14, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_27b

    :cond_299
    const-string v0, "enabled-components"

    const/4 v3, 0x0

    invoke-interface {v12, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_29f
    iget-object v0, v10, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2d7

    const-string v0, "disabled-components"

    const/4 v3, 0x0

    invoke-interface {v12, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, v10, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "item"

    const/4 v14, 0x0

    invoke-interface {v12, v14, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "name"

    invoke-interface {v12, v14, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "item"

    invoke-interface {v12, v14, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2b3

    :cond_2d1
    const-string v0, "disabled-components"

    const/4 v3, 0x0

    invoke-interface {v12, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2d7
    const-string/jumbo v0, "pkg"

    const/4 v3, 0x0

    invoke-interface {v12, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    nop

    move-object/from16 v15, v20

    move-wide/from16 v3, v21

    const/4 v10, 0x0

    const/4 v14, 0x1

    goto/16 :goto_74

    :cond_2e7
    move-wide/from16 v21, v3

    const/4 v3, 0x1

    invoke-virtual {v1, v12, v2, v3}, Lcom/android/server/pm/Settings;->writePreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;IZ)V

    invoke-virtual {v1, v12, v2}, Lcom/android/server/pm/Settings;->writePersistentPreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    invoke-virtual {v1, v12, v2}, Lcom/android/server/pm/Settings;->writeCrossProfileIntentFiltersLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    invoke-virtual {v1, v12, v2}, Lcom/android/server/pm/Settings;->writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    invoke-virtual {v1, v12, v2}, Lcom/android/server/pm/Settings;->writeBlockUninstallPackagesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    const-string/jumbo v0, "package-restrictions"

    const/4 v3, 0x0

    invoke-interface {v12, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v8, v9}, Lcom/android/server/pm/XmlMoreAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    nop

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    const/16 v4, 0x1fc

    invoke-static {v0, v4, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x1b0

    invoke-static {v0, v4, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package-user-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v21

    invoke-static {v0, v3, v4}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_341
    .catch Ljava/io/IOException; {:try_start_1d9 .. :try_end_341} :catch_342

    return-void

    :catch_342
    move-exception v0

    goto :goto_347

    :catch_344
    move-exception v0

    move-wide/from16 v21, v3

    :goto_347
    if-eqz v8, :cond_34c

    invoke-virtual {v8, v9}, Lcom/android/server/pm/XmlMoreAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_34c
    if-eqz v7, :cond_351

    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    :cond_351
    if-eqz v6, :cond_35e

    nop

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    const/16 v10, 0x1fc

    invoke-static {v3, v10, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_35e
    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to write package manager user packages state,  current changes will be lost at reboot"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    const-string v3, "PackageManager"

    const-string v4, "Unable to write package manager user packages state,  current changes will be lost at reboot"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_39e

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_39e

    const-string v0, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to clean up mangled file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39e
    return-void
.end method

.method writePermissionLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/permission/BasePermission;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2, p1}, Lcom/android/server/pm/permission/BasePermission;->writeLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    return-void
.end method

.method writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string/jumbo v0, "perms"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    const-string v3, "item"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "name"

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "granted"

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "flags"

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "item"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_12

    :cond_4d
    const-string/jumbo v0, "perms"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method writePersistentPreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "persistent-preferred-activities"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PersistentPreferredActivity;

    const-string v4, "item"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/PersistentPreferredActivity;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v4, "item"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_19

    :cond_33
    const-string/jumbo v2, "persistent-preferred-activities"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method writePreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;IZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "preferred-activities"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PreferredIntentResolver;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lcom/android/server/pm/PreferredIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PreferredActivity;

    const-string v4, "item"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v3, p1, p3}, Lcom/android/server/pm/PreferredActivity;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    const-string v4, "item"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_19

    :cond_33
    const-string/jumbo v2, "preferred-activities"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method protected writeRemovedAppFile()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRemovedApp:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string v4, "RemovedApps.txt"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v1, v3

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mRemovedApp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_1e

    :cond_31
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_34} :catch_3d
    .catchall {:try_start_4 .. :try_end_34} :catchall_3b

    nop

    :goto_35
    :try_start_35
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39
    .catchall {:try_start_35 .. :try_end_38} :catchall_4d

    goto :goto_44

    :catch_39
    move-exception v2

    goto :goto_45

    :catchall_3b
    move-exception v2

    goto :goto_47

    :catch_3d
    move-exception v2

    :try_start_3e
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_3b

    if-eqz v1, :cond_45

    goto :goto_35

    :goto_44
    nop

    :cond_45
    :goto_45
    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_4d

    return-void

    :goto_47
    if-eqz v1, :cond_50

    :try_start_49
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4f
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_50

    :catchall_4d
    move-exception v1

    goto :goto_51

    :catch_4f
    move-exception v3

    :cond_50
    :goto_50
    :try_start_50
    throw v2

    :goto_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_50 .. :try_end_52} :catchall_4d

    throw v1
.end method

.method public writeRuntimePermissionsForShutdown()V
    .registers 3

    const-string v0, "PackageSettings"

    const-string/jumbo v1, "writeRuntimePermissionsForShutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writeRuntimePermissionsForShutdown()V

    return-void
.end method

.method public writeRuntimePermissionsForUserLPr(IZ)V
    .registers 4

    if-eqz p2, :cond_8

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserSyncLPr(I)V

    goto :goto_d

    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    :goto_d
    return-void
.end method

.method writeSigningKeySetLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "proper-signing-keyset"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "identifier"

    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "proper-signing-keyset"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method writeUpgradeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->isUsingUpgradeKeySets()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getUpgradeKeySets()[J

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_29

    aget-wide v3, v0, v2

    const-string/jumbo v5, "upgrade-keyset"

    const/4 v6, 0x0

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "identifier"

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "upgrade-keyset"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_29
    return-void
.end method

.method writeUserRestrictionsLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V
    .registers 8

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    if-nez p2, :cond_29

    sget-object v3, Lcom/android/server/pm/PackageSettingBase;->DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

    goto :goto_2f

    :cond_29
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, v3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v3

    :goto_2f
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageUserState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    :cond_40
    goto :goto_18

    :cond_41
    return-void
.end method

.method writeUsesStaticLibLPw(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;[J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([J)Z

    move-result v0

    if-nez v0, :cond_3a

    array-length v0, p2

    array-length v1, p3

    if-eq v0, v1, :cond_11

    goto :goto_3a

    :cond_11
    array-length v0, p2

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_39

    aget-object v2, p2, v1

    aget-wide v3, p3, v1

    const-string/jumbo v5, "uses-static-lib"

    const/4 v6, 0x0

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "name"

    invoke-interface {p1, v6, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "version"

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "uses-static-lib"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_39
    return-void

    :cond_3a
    :goto_3a
    return-void
.end method
