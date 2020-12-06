.class Lcom/android/server/AlarmManagerServiceExt;
.super Lcom/android/server/AppSyncWrapper;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerServiceExt$PackageList;,
        Lcom/android/server/AlarmManagerServiceExt$Sales;,
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;,
        Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    }
.end annotation


# static fields
.field private static ABOVE_ANDROID_M:Z = false

.field private static ANDROID_P_OR_LATER:Z = false

.field private static final APPSYNC_DEBUG_IF_PATH:Ljava/lang/String; = "/data/system/app_sync_log_enable"

.field private static APP_SYNC_LOG:Z = false

.field private static final BLACKLIST:Ljava/lang/String; = "BlackList"

.field private static final BLACKLIST3P:Ljava/lang/String; = "BlackList3P"

.field private static final CONFIG_FILE:Ljava/lang/String; = "/data/misc/lpnet/lpnetConfig"

.field private static final CONFIG_SECTION:Ljava/lang/String; = "APPSYNC_INIT"

.field static final COUNTRY_CODE_CHN:Z

.field private static DEBUG_MID:Z = false

.field private static final DELTA_FROM_TRIGGERS:Ljava/lang/String; = "deltaFromTriggers"

.field private static final ENABLE_CHN_DEACT_IN_SCR_ON:Ljava/lang/String; = "DeactivateInScreenOn"

.field private static final ENABLE_CHN_DEACT_IN_USB_ON:Ljava/lang/String; = "DeactivateInUSB"

.field private static final ENABLE_CHN_SOLUTION:Ljava/lang/String; = "enableChnSolution"

.field private static final EXTRA_WHITE_LIST:Ljava/lang/String; = "ExtraWhiteList"

.field private static NEW_ALARM_MANAGER:Z = false

.field private static final SYNC_INTERVAL:Ljava/lang/String; = "syncInterval"

.field private static final TAG:Ljava/lang/String; = "AlarmManagerEXT"

.field static final sCountryCode:Ljava/lang/String;

.field static final sIsGalaxyView:Z

.field static final sProductModel:Ljava/lang/String;


# instance fields
.field mAms:Lcom/android/server/AlarmManagerService;

.field mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z

    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->DEBUG_MID:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x16

    if-le v1, v3, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    move v1, v0

    :goto_f
    sput-boolean v1, Lcom/android/server/AlarmManagerServiceExt;->ABOVE_ANDROID_M:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_19

    move v1, v2

    goto :goto_1a

    :cond_19
    move v1, v0

    :goto_1a
    sput-boolean v1, Lcom/android/server/AlarmManagerServiceExt;->ANDROID_P_OR_LATER:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_24

    move v1, v2

    goto :goto_25

    :cond_24
    move v1, v0

    :goto_25
    sput-boolean v1, Lcom/android/server/AlarmManagerServiceExt;->NEW_ALARM_MANAGER:Z

    const-string/jumbo v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/AlarmManagerServiceExt;->sCountryCode:Ljava/lang/String;

    const-string v1, "CHINA"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt;->sCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_51

    const-string v1, "TAIWAN"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt;->sCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_51

    const-string v1, "HONG KONG"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt;->sCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    goto :goto_51

    :cond_4f
    move v1, v0

    goto :goto_52

    :cond_51
    :goto_51
    move v1, v2

    :goto_52
    sput-boolean v1, Lcom/android/server/AlarmManagerServiceExt;->COUNTRY_CODE_CHN:Z

    const-string/jumbo v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/AlarmManagerServiceExt;->sProductModel:Ljava/lang/String;

    sget-object v1, Lcom/android/server/AlarmManagerServiceExt;->sProductModel:Ljava/lang/String;

    if-eqz v1, :cond_6d

    sget-object v1, Lcom/android/server/AlarmManagerServiceExt;->sProductModel:Ljava/lang/String;

    const-string v3, "SM-T67"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6d

    move v0, v2

    nop

    :cond_6d
    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->sIsGalaxyView:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService;Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/server/AppSyncWrapper;-><init>()V

    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt;->initSystemProperties()V

    iput-object p2, p0, Lcom/android/server/AlarmManagerServiceExt;->mAms:Lcom/android/server/AlarmManagerService;

    new-instance v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;-><init>(Lcom/android/server/AlarmManagerServiceExt;Landroid/content/Context;Lcom/android/server/AlarmManagerService;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)I
    .registers 3

    invoke-static {p0, p1}, Lcom/android/server/AlarmManagerServiceExt;->getKidFromPendingIntent(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/AlarmManagerServiceExt;->isActiveAlarm(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/AlarmManagerServiceExt;Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Landroid/content/Intent;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerServiceExt;->getInfoFromPendingIntent(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->NEW_ALARM_MANAGER:Z

    return v0
.end method

.method static synthetic access$1300()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->ABOVE_ANDROID_M:Z

    return v0
.end method

.method static synthetic access$1400()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->DEBUG_MID:Z

    return v0
.end method

.method static synthetic access$1700(Landroid/app/PendingIntent;)I
    .registers 2

    invoke-static {p0}, Lcom/android/server/AlarmManagerServiceExt;->getUidFromPendingIntent(Landroid/app/PendingIntent;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z

    return v0
.end method

.method static synthetic access$900()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->ANDROID_P_OR_LATER:Z

    return v0
.end method

.method public static createAppSync(Landroid/content/Context;Lcom/android/server/AlarmManagerService;Ljava/lang/Object;)Lcom/android/server/AppSyncWrapper;
    .registers 5

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_DisableAppSync"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v1, Lcom/android/server/DummyAppSync;

    invoke-direct {v1}, Lcom/android/server/DummyAppSync;-><init>()V

    return-object v1

    :cond_12
    new-instance v1, Lcom/android/server/AlarmManagerServiceExt;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/AlarmManagerServiceExt;-><init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService;Ljava/lang/Object;)V

    return-object v1
.end method

.method private getInfoFromPendingIntent(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Landroid/content/Intent;
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    if-nez p2, :cond_6

    goto :goto_21

    :cond_6
    :try_start_6
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {p1, v1}, Lcom/android/server/AlarmManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActivityManagerInternal;->getInfoForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_16} :catch_17

    return-object v2

    :catch_17
    move-exception v1

    const-string v2, "AlarmManagerEXT"

    const-string/jumbo v3, "getInfoFromPendingIntent : "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :cond_21
    :goto_21
    return-object v0
.end method

.method private static getKidFromPendingIntent(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)I
    .registers 6

    const/4 v0, -0x1

    if-eqz p0, :cond_21

    if-nez p1, :cond_6

    goto :goto_21

    :cond_6
    :try_start_6
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, v1}, Lcom/android/server/AlarmManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActivityManagerInternal;->getKidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_16} :catch_17

    return v2

    :catch_17
    move-exception v1

    const-string v2, "AlarmManagerEXT"

    const-string/jumbo v3, "getKidFromPendingIntent : "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    :cond_21
    :goto_21
    return v0
.end method

.method private static getUidFromPendingIntent(Landroid/app/PendingIntent;)I
    .registers 5

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_11

    return v1

    :catch_11
    move-exception v1

    const-string v2, "AlarmManagerEXT"

    const-string/jumbo v3, "getUidFromPendingIntent : "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method static hasSmartManager(Landroid/content/Context;)Z
    .registers 6

    const-string v0, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v3, "com.samsung.android.lool"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_16

    return v3

    :cond_16
    const/16 v4, 0x80

    :try_start_18
    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_1c} :catch_21

    if-eqz v4, :cond_20

    const/4 v3, 0x1

    nop

    :cond_20
    return v3

    :catch_21
    move-exception v4

    return v3
.end method

.method private initSystemProperties()V
    .registers 5

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/io/File;

    const-string v3, "/data/system/app_sync_log_enable"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v2

    goto :goto_1d

    :cond_1c
    move v0, v1

    :goto_1d
    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z

    const-string v0, "0x494d"

    const-string/jumbo v3, "ro.debug_level"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "0x494d"

    const-string/jumbo v3, "ro.boot.debug_level"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_40

    :cond_3e
    move v0, v1

    goto :goto_41

    :cond_40
    :goto_40
    move v0, v2

    :goto_41
    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->DEBUG_MID:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-le v0, v3, :cond_4b

    move v0, v2

    goto :goto_4c

    :cond_4b
    move v0, v1

    :goto_4c
    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->ABOVE_ANDROID_M:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_56

    move v0, v2

    goto :goto_57

    :cond_56
    move v0, v1

    :goto_57
    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->ANDROID_P_OR_LATER:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_61

    move v1, v2

    nop

    :cond_61
    sput-boolean v1, Lcom/android/server/AlarmManagerServiceExt;->NEW_ALARM_MANAGER:Z

    const-string v0, "AlarmManagerEXT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SystemProperties initialized : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/AlarmManagerServiceExt;->DEBUG_MID:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/AlarmManagerServiceExt;->ABOVE_ANDROID_M:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/AlarmManagerServiceExt;->ANDROID_P_OR_LATER:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/AlarmManagerServiceExt;->NEW_ALARM_MANAGER:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static isActiveAlarm(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 11

    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->ANDROID_P_OR_LATER:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    if-eqz p0, :cond_60

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    if-nez v2, :cond_e

    goto :goto_60

    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const-class v4, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStatsManagerInternal;

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v5

    sget-boolean v6, Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z

    const/16 v7, 0xa

    if-eqz v6, :cond_59

    const-string v6, "AlarmManagerEXT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isActiveAlarm : SBBucket ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] <= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gt v5, v7, :cond_4e

    move v9, v1

    goto :goto_4f

    :cond_4e
    move v9, v0

    :goto_4f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_59} :catch_5e

    :cond_59
    if-gt v5, v7, :cond_5d

    move v0, v1

    nop

    :cond_5d
    return v0

    :catch_5e
    move-exception v1

    return v0

    :cond_60
    :goto_60
    return v0
.end method

.method static isAppSync3PlusTarget(Landroid/content/Context;)Z
    .registers 5

    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->VZW:Z

    if-nez v0, :cond_c

    invoke-static {p0}, Lcom/android/server/AlarmManagerServiceExt;->hasSmartManager(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    const-string/jumbo v1, "dev.ssrm.appsync3p"

    if-eqz v0, :cond_16

    const-string/jumbo v2, "true"

    goto :goto_19

    :cond_16
    const-string/jumbo v2, "false"

    :goto_19
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AlarmManagerEXT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppSync3+ = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static maxRepeatInterval(JJ)J
    .registers 14

    move-wide v0, p0

    add-long v2, p0, p2

    const-wide/16 v4, 0x2

    div-long v4, p0, v4

    const-wide/16 v6, 0x0

    cmp-long v6, p2, v6

    if-nez v6, :cond_e

    return-wide v0

    :cond_e
    const-wide/32 v6, 0x36ee80

    cmp-long v6, v2, v6

    if-ltz v6, :cond_1f

    long-to-double v6, v2

    long-to-double v8, v4

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-long v6, v6

    mul-long/2addr v6, v4

    :goto_1e
    goto :goto_48

    :cond_1f
    const-wide/32 v6, 0x1b7740

    cmp-long v6, v2, v6

    if-ltz v6, :cond_37

    long-to-double v6, v2

    const-wide v8, 0x41224f8000000000L    # 600000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-long v6, v6

    const-wide/32 v8, 0x927c0

    mul-long/2addr v6, v8

    goto :goto_1e

    :cond_37
    long-to-double v6, v2

    const-wide v8, 0x41124f8000000000L    # 300000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-long v6, v6

    const-wide/32 v8, 0x493e0

    mul-long/2addr v6, v8

    goto :goto_1e

    :goto_48
    return-wide v6
.end method


# virtual methods
.method public disableSuspiciousPackageAsUser(Ljava/lang/String;I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->disableSuspiciousPackageControlAsUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public doDump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->doDump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public doGC(J)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->doGarbageCollection(J)V

    return-void
.end method

.method public enableSuspiciousPackageAsUser(Ljava/lang/String;I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->enableSuspiciousPackageControlAsUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getSyncScheduler()Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    return-object v0
.end method

.method public log(Lcom/android/server/AlarmManagerService$Alarm;Z)V
    .registers 12

    sget-boolean v0, Lcom/android/server/AppSyncWrapper;->LOG:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-wide v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget v5, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x1

    if-gt v5, v6, :cond_1d

    const-wide/16 v5, 0x0

    goto :goto_1e

    :cond_1d
    move-wide v5, v1

    :goto_1e
    add-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {v0}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_2c

    const-string/jumbo v4, "setExact"

    goto :goto_2f

    :cond_2c
    const-string/jumbo v4, "setWindow/setInexact"

    :goto_2f
    const-string v5, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " (T:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v7, :cond_8d

    iget-object v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->hashCode()I

    move-result v7

    goto :goto_97

    :cond_8d
    iget-object v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v7}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :goto_97
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v7, :cond_b0

    iget-object v7, p0, Lcom/android/server/AlarmManagerServiceExt;->mAms:Lcom/android/server/AlarmManagerService;

    iget-object v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-static {v7, v8}, Lcom/android/server/AlarmManagerServiceExt;->getKidFromPendingIntent(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)I

    move-result v7

    goto :goto_ba

    :cond_b0
    iget-object v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v7}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :goto_ba
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public lookForNonAdjustableAlarm(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;J)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->lookForNonAdjustableAlarm(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;J)Z

    move-result v0

    return v0
.end method

.method public removeRepeatingAlarm(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeRepeatingAlarm(I)V

    return-void
.end method

.method public removeRepeatingAlarm(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeRepeatingAlarm(IZ)V

    return-void
.end method

.method public removeRepeatingAlarm(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .registers 4

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeRepeatingAlarm(Landroid/app/PendingIntent;)V

    goto :goto_d

    :cond_8
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v0, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeRepeatingAlarm(Landroid/app/IAlarmListener;)V

    :goto_d
    return-void
.end method

.method public removeRepeatingAlarm(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeRepeatingAlarm(Ljava/lang/String;)V

    return-void
.end method

.method public removeRepeatingAlarms(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    if-nez v1, :cond_16

    goto :goto_7

    :cond_16
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v2, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeRepeatingAlarm(Landroid/app/PendingIntent;)V

    goto :goto_7

    :cond_1c
    return-void
.end method

.method public rescheduleAlarms(Lcom/android/server/AlarmManagerService$Alarm;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateExplicitRepeatingAlarms(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-nez v0, :cond_14

    const-string v0, "AlarmManagerEXT"

    const-string v1, "AppSync scheduleAlarms: changed --- alarm operation null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    :cond_14
    const-string v0, "AlarmManagerEXT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppSync scheduleAlarms: changed --- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    :goto_2c
    return-void
.end method

.method public scheduleAlarms(Lcom/android/server/AlarmManagerService$Alarm;)J
    .registers 4

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->schedulingRepeatingAlarms(Lcom/android/server/AlarmManagerService$Alarm;)J

    move-result-wide v0

    return-wide v0
.end method

.method public updateAlarmTriggerInfo(Lcom/android/server/AlarmManagerService$Alarm;IJ)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateAlarmTriggerInfo(Lcom/android/server/AlarmManagerService$Alarm;IJ)V

    return-void
.end method
