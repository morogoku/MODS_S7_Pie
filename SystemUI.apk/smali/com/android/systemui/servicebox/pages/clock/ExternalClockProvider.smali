.class public Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;
.super Landroid/content/BroadcastReceiver;
.source "ExternalClockProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$PluginContextWrapper;,
        Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClassLoaderFilter;,
        Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;
    }
.end annotation


# static fields
.field private static final AOD_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

.field private static final FIXED_CLOCK_TYPES:[I

.field private static final LOCK_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

.field private static final LOCK_SETTING_PALETTE_INFO_URI_PARSED:Landroid/net/Uri;

.field private static final LOCK_SETTING_THEME_CLOCK_PACKAGE_URI_PARSED:Landroid/net/Uri;

.field private static final LOCK_SETTING_THEME_CLOCK_TRIAL_PACKAGE_URI_PARSED:Landroid/net/Uri;

.field private static final TYPO_CLOCK_TYPES:[I

.field private static sExternalClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;


# instance fields
.field private mCachedAODClockType:I

.field private mCachedClockType:I

.field private final mClockCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mClockPkgUpdatedRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mContextForUser:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLastColorUpdatedTime:J

.field private mLastTypeChangedTime:J

.field private mLastUpdatedClockColor:Ljava/lang/String;

.field private mLastUpdatedClockType:Ljava/lang/String;

.field private mPaletteInfo:[I

.field private mParentClassLoader:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClassLoaderFilter;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_clock_type"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_palette_info"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_PALETTE_INFO_URI_PARSED:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_theme_clock_package"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_THEME_CLOCK_PACKAGE_URI_PARSED:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_theme_clock_trial_package"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_THEME_CLOCK_TRIAL_PACKAGE_URI_PARSED:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.app.aodservice.provider/settings/aod_clock_type"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->AOD_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->TYPO_CLOCK_TYPES:[I

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->FIXED_CLOCK_TYPES:[I

    return-void

    :array_0
    .array-data 4
        0x9
        0xc35f
        0xc360
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x6
        0x7
        0x9
        0xc35f
        0xc360
        0xc35d
        0xc35a
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 10

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mLastColorUpdatedTime:J

    iput-wide v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mLastTypeChangedTime:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mCachedClockType:I

    iput v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mCachedAODClockType:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mPaletteInfo:[I

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/servicebox/pages/clock/-$$Lambda$ExternalClockProvider$zpcGxEvDzcklzpUI5cz4rPybvB4;

    invoke-direct {v2, p0}, Lcom/android/systemui/servicebox/pages/clock/-$$Lambda$ExternalClockProvider$zpcGxEvDzcklzpUI5cz4rPybvB4;-><init>(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;)V

    iput-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockPkgUpdatedRunnable:Ljava/lang/Runnable;

    const-string v2, "ExternalClockProvider"

    const-string v3, "ExternalClockProvider() created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mPm:Landroid/content/pm/PackageManager;

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getContextForUser(I)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContextForUser:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/systemui/Rune;->KEYWI_AOD_PACKAGE_AVAILABLE:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const-string v3, "com.samsung.android.app.aodservice"

    invoke-virtual {v2, v3, v4}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string v3, "com.samsung.android.app.clockpack"

    invoke-virtual {v2, v3, v4}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$1;-><init>(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;)V

    const-string v7, "ExternalClockProvider"

    invoke-interface {v5, v6, v7}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_1
    sget-boolean v5, Lcom/android/systemui/Rune;->KEYWI_AOD_PACKAGE_AVAILABLE:Z

    if-eqz v5, :cond_1

    const-string v5, "com.samsung.android.app.aodservice"

    const-string v6, "com.samsung.android.clockpack.action.PLUGIN_CLOCK"

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->queryPlugin(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    goto :goto_2

    :cond_1
    const-string v5, "com.samsung.android.app.clockpack"

    const-string v6, "com.samsung.android.clockpack.action.PLUGIN_CLOCK"

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->queryPlugin(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    :goto_2
    sget-boolean v5, Lcom/android/keyguard/KeyguardUpdateMonitor;->CORE_APPS_ONLY:Z

    if-eqz v5, :cond_2

    return-void

    :cond_2
    new-instance v5, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$2;

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$2;-><init>(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;Landroid/os/Handler;)V

    const/4 v6, 0x5

    new-array v6, v6, [Landroid/net/Uri;

    sget-object v7, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    aput-object v7, v6, v4

    sget-object v7, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_PALETTE_INFO_URI_PARSED:Landroid/net/Uri;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    sget-object v8, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_THEME_CLOCK_PACKAGE_URI_PARSED:Landroid/net/Uri;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    sget-object v8, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_THEME_CLOCK_TRIAL_PACKAGE_URI_PARSED:Landroid/net/Uri;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    sget-boolean v8, Lcom/android/systemui/Rune;->KEYWI_AOD_PACKAGE_AVAILABLE:Z

    if-eqz v8, :cond_3

    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->AOD_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    nop

    :cond_3
    aput-object v1, v6, v7

    move-object v1, v6

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    :try_start_1
    array-length v7, v1

    move v8, v4

    :goto_3
    if-ge v8, v7, :cond_5

    aget-object v9, v1, v8

    if-eqz v9, :cond_4

    invoke-virtual {v6, v9, v4, v5, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    goto :goto_4

    :catch_1
    move-exception v0

    const-string v4, "ExternalClockProvider"

    const-string v7, "SecurityException occurred while registering com.samsung.android.app.clockpack.provider"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContextForUser:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;I)Landroid/content/Context;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getContextForUser(I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->handleClockSettingsChanged(Landroid/net/Uri;)V

    return-void
.end method

.method private getAODClockType(Z)I
    .locals 2

    if-nez p1, :cond_0

    iget v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mCachedAODClockType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->internalGetAODClockType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mCachedAODClockType:I

    :cond_1
    iget v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mCachedAODClockType:I

    return v0
.end method

.method private getContextForUser(I)Landroid/content/Context;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;
    .locals 1

    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->sExternalClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->sExternalClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    :cond_0
    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->sExternalClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    return-object v0
.end method

.method private getPaletteInfo()[I
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mPaletteInfo:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mPaletteInfo:[I

    return-object v0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContextForUser:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_PALETTE_INFO_URI_PARSED:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    goto :goto_0

    :catchall_0
    move-exception v6

    goto :goto_3

    :catch_0
    move-exception v5

    goto :goto_2

    :cond_1
    const/4 v6, -0x1

    :goto_0
    if-lez v6, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    aput v7, v0, v3

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    aput v7, v0, v2

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    aput v7, v0, v1

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mPaletteInfo:[I

    goto :goto_1

    :cond_2
    const-string v7, "ExternalClockProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPaletteInfo() wrong count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v4, :cond_3

    :try_start_2
    invoke-static {v5, v4}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    goto :goto_4

    :goto_2
    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    if-eqz v4, :cond_4

    :try_start_4
    invoke-static {v5, v4}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_4
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    const-string v4, "ExternalClockProvider"

    const-string v5, "getPaletteInfo() = %d %d"

    new-array v1, v1, [Ljava/lang/Object;

    aget v6, v0, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v3

    aget v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v4, v5, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private getThemeClockPackage()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_THEME_CLOCK_TRIAL_PACKAGE_URI_PARSED:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->querySingleString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ExternalClockProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThemeClockPackage() packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (TRIAL)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_THEME_CLOCK_PACKAGE_URI_PARSED:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->querySingleString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExternalClockProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThemeClockPackage() packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private handleClockPackageUpdated()V
    .locals 2

    const-string v0, "ExternalClockProvider"

    const-string v1, "handleClockPackageUpdated()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_AOD_PACKAGE_AVAILABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.android.app.aodservice"

    const-string v1, "com.samsung.android.clockpack.action.PLUGIN_CLOCK"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->queryPlugin(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.app.clockpack"

    const-string v1, "com.samsung.android.clockpack.action.PLUGIN_CLOCK"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->queryPlugin(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->invalidCachedClockType()V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;->onClockPackageChanged()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private handleClockSettingsChanged(Landroid/net/Uri;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->invalidCachedClockType()V

    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_THEME_CLOCK_PACKAGE_URI_PARSED:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_THEME_CLOCK_TRIAL_PACKAGE_URI_PARSED:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_PALETTE_INFO_URI_PARSED:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;->onClockColorChanged()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getPaletteInfo()[I

    move-result-object v0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    const-string v4, "lockscreen_pref"

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "9009"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Color "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v0, v3

    add-int/2addr v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_4
    aget v2, v0, v1

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    const-string v3, "lockscreen_pref"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "9009"

    const-string v3, "Color picker"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    :goto_1
    goto/16 :goto_6

    :cond_6
    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->AOD_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    nop

    :goto_2
    move v0, v1

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;->onAODClockStyleChanged()V

    :cond_7
    add-int/lit8 v1, v0, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    move v0, v1

    :goto_4
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;

    if-eqz v2, :cond_9

    invoke-interface {v2}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;->onClockStyleChanged()V

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "handleClockSettingsChanged clockType changed"

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->setLastUpdatedClockType(Ljava/lang/String;)V

    :cond_b
    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    if-eqz v0, :cond_c

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    const-string v2, "lockscreen_pref"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "9008"

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getClockType()I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;->getClockName(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v1, "ExternalClockProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Plugin|CategoryException: getClockName("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getClockType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    nop

    :cond_c
    :goto_6
    return-void
.end method

.method private internalGetAODClockType()I
    .locals 8

    const/4 v0, -0x1

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_AOD_PACKAGE_AVAILABLE:Z

    if-eqz v1, :cond_3

    const/16 v0, 0x9

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContextForUser:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->AOD_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v3

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v1, :cond_0

    :try_start_3
    invoke-static {v2, v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_0
    throw v3

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-static {v2, v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    const-string v1, "ExternalClockProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internalGetAODClockType() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private internalGetClockType()I
    .locals 8

    const/16 v0, 0x9

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContextForUser:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_0
    const/4 v3, -0x1

    :goto_0
    if-lez v3, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v4

    goto :goto_1

    :cond_1
    const-string v4, "ExternalClockProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "internalGetClockType() wrong count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v1, :cond_2

    :try_start_2
    invoke-static {v2, v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    goto :goto_4

    :goto_2
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    if-eqz v1, :cond_3

    :try_start_4
    invoke-static {v2, v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_3
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    const-string v1, "ExternalClockProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internalGetClockType() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isFixedClockType(I)Z
    .locals 5

    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->FIXED_CLOCK_TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    if-ne v4, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private isMonoClock(I)Z
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTypoClockType(I)Z
    .locals 5

    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->TYPO_CLOCK_TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    if-ne v4, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static synthetic lambda$zpcGxEvDzcklzpUI5cz4rPybvB4(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->handleClockPackageUpdated()V

    return-void
.end method

.method private loadPlugin(Landroid/content/ComponentName;)Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;
    .locals 8

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mPm:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    new-instance v4, Ldalvik/system/PathClassLoader;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getParentClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    new-instance v5, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$PluginContextWrapper;

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v5, v3, v4}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$PluginContextWrapper;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    move-object v3, v5

    const/4 v5, 0x1

    invoke-static {v1, v5, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    iget-object v7, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-interface {v6, v7, v3}, Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;->onCreate(Landroid/content/Context;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception v2

    const-string v3, "ExternalClockProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t load plugin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    return-object v3
.end method

.method private queryPlugin(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;
    .locals 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x200

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->loadPlugin(Landroid/content/ComponentName;)Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    move-result-object v4

    return-object v4

    :cond_1
    const-string v2, "ExternalClockProvider"

    const-string/jumbo v3, "queryPlugin() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method private querySingleString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContextForUser:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v1, :cond_0

    :try_start_3
    invoke-static {v2, v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_0
    throw v3

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-static {v2, v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :cond_3
    return-object v0
.end method

.method private sendRunnable(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setLastUpdatedClockColor(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mLastUpdatedClockColor:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mLastColorUpdatedTime:J

    const-string v0, "ExternalClockProvider"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setLastUpdatedClockType(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mLastUpdatedClockType:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mLastTypeChangedTime:J

    const-string v0, "ExternalClockProvider"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getAODClockType()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getAODClockType(Z)I

    move-result v0

    return v0
.end method

.method public getClockGroup(I)I
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    const/4 v2, 0x2

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;->getClockGroup(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const-string v1, "ExternalClockProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClockGroup() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getClockType()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getClockType(Z)I

    move-result v0

    return v0
.end method

.method public getClockType(Z)I
    .locals 2

    if-nez p1, :cond_0

    iget v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mCachedClockType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->internalGetClockType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mCachedClockType:I

    :cond_1
    iget v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mCachedClockType:I

    return v0
.end method

.method public getClockView(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getClockView(IZ)Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    move-result-object v0

    return-object v0
.end method

.method public getClockView(IZ)Lcom/samsung/android/clockpack/plugins/clock/ClockView;
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    const/4 v2, 0x2

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;->getClockView(II)Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    move-result-object v1

    move-object v0, v1

    const-string v1, "ExternalClockProvider"

    const-string v3, "VERSION_CODE = %s / %d / %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object v0, v4, v2

    invoke-static {v1, v3, v4}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    const-string v1, "ExternalClockProvider"

    const-string v2, "getClockView returns null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getAdaptiveColorValue()Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->updateClockColor(Lcom/samsung/android/clockpack/plugins/clock/ClockView;Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getDateColor()I
    .locals 3

    const v0, -0x50506

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->shouldUseDefaultColor()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getPaletteInfo()[I

    move-result-object v1

    const/4 v2, 0x2

    aget v0, v1, v2

    :cond_0
    return v0
.end method

.method public getDefaultClockType()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method getLastUpdatedClockColor()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mLastColorUpdatedTime:J

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mLastUpdatedClockColor:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/util/LogUtil;->getMsg(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLastUpdatedClockType()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mLastTypeChangedTime:J

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mLastUpdatedClockType:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/util/LogUtil;->getMsg(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getParentClassLoader()Ljava/lang/ClassLoader;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mParentClassLoader:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClassLoaderFilter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClassLoaderFilter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.samsung.android.clockpack.plugins"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClassLoaderFilter;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mParentClassLoader:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClassLoaderFilter;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mParentClassLoader:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClassLoaderFilter;

    return-object v0
.end method

.method public invalidCachedClockType()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mCachedClockType:I

    iput v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mCachedAODClockType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mPaletteInfo:[I

    return-void
.end method

.method public isThemeClockEnabled()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getThemeClockPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "reason"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "ExternalClockProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockPkgUpdatedRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v2}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->sendRunnable(Ljava/lang/Runnable;)V

    :cond_2
    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    const-string v3, "ExternalClockProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "com.samsung.android.app.aodservice"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "com.samsung.android.app.clockpack"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_5
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockPkgUpdatedRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v3}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->sendRunnable(Ljava/lang/Runnable;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public registerClockChangedCallback(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setClockType(I)Z
    .locals 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "lock_clock_type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContextForUser:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const-string v2, "ExternalClockProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setClockType() type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public setPreDefineOrCustomColor(Lcom/samsung/android/clockpack/plugins/clock/ClockView;Z)V
    .locals 5

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getPaletteInfo()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v3, v0, v2

    if-nez v1, :cond_0

    invoke-virtual {p1, v3}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->setPaletteIndex(I)V

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    invoke-virtual {p1, v3}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->setCustomColor(I)V

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPreDefineOrCustomColor() type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", indexOrColor="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->setLastUpdatedClockColor(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public shouldUseDefaultColor()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v2

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3
.end method

.method public unregisterClockChangedCallback(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateClockColor(Lcom/samsung/android/clockpack/plugins/clock/ClockView;Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V
    .locals 5

    const-string v0, "ExternalClockProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateClockColor() adaptiveColors="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->getClockType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->isMonoClock(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->shouldUseDefaultColor()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    iget v1, p2, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_main:I

    iget v2, p2, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_secondary:I

    iget v3, p2, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bg_main:I

    iget v4, p2, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bg_secondary:I

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->setAdaptiveColors(IIII)V

    invoke-virtual {p2}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->setLastUpdatedClockColor(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->setPreDefineOrCustomColor(Lcom/samsung/android/clockpack/plugins/clock/ClockView;Z)V

    :cond_1
    :goto_0
    return-void
.end method
