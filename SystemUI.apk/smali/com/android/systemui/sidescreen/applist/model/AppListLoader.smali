.class public Lcom/android/systemui/sidescreen/applist/model/AppListLoader;
.super Ljava/lang/Object;
.source "AppListLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;,
        Lcom/android/systemui/sidescreen/applist/model/AppListLoader$LoadingTask;,
        Lcom/android/systemui/sidescreen/applist/model/AppListLoader$LoadingTaskCallbacks;,
        Lcom/android/systemui/sidescreen/applist/model/AppListLoader$State;
    }
.end annotation


# static fields
.field public static SIZE_ICON_CACHE:I

.field private static sLoader:Lcom/android/systemui/sidescreen/applist/model/AppListLoader;


# instance fields
.field COMPARATOR_ALPHABETICAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/sidescreen/applist/model/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mAppInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/sidescreen/applist/model/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mAppListUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/sidescreen/applist/model/AppListLoader$LoadingTaskCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mDrawableFactory:Landroid/util/IconDrawableFactory;

.field private mIconCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field mIconHelper:Landroid/content/pm/PackageIconHelper;

.field private mMainHandler:Landroid/os/Handler;

.field mMwm:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private mPackageMonitor:Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;

.field mPm:Landroid/content/pm/PackageManager;

.field mState:Lcom/android/systemui/sidescreen/applist/model/AppListLoader$State;

.field public mTempList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/sidescreen/applist/model/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x50

    sput v0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->SIZE_ICON_CACHE:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mTempList:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;-><init>(Lcom/android/systemui/sidescreen/applist/model/AppListLoader;)V

    iput-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mPackageMonitor:Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$1;-><init>(Lcom/android/systemui/sidescreen/applist/model/AppListLoader;)V

    iput-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->COMPARATOR_ALPHABETICAL_ORDER:Ljava/util/Comparator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$3;-><init>(Lcom/android/systemui/sidescreen/applist/model/AppListLoader;)V

    iput-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mAppListUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$State;->NOT_LOADED:Lcom/android/systemui/sidescreen/applist/model/AppListLoader$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->setState(Lcom/android/systemui/sidescreen/applist/model/AppListLoader$State;)V

    invoke-direct {p0}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->initLruCache()V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/content/pm/PackageIconHelper;->getInstance()Landroid/content/pm/PackageIconHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mIconHelper:Landroid/content/pm/PackageIconHelper;

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mMwm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Recents-AppListLoader"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mBackgroundThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mBackgroundHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mPackageMonitor:Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->register(Landroid/content/Context;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mAppListUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/sidescreen/applist/model/AppListLoader;Lcom/android/systemui/sidescreen/applist/model/AppListLoader$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->setState(Lcom/android/systemui/sidescreen/applist/model/AppListLoader$State;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/sidescreen/applist/model/AppListLoader;Landroid/content/pm/ActivityInfo;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->hideIcon(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/sidescreen/applist/model/AppListLoader;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->addDrawableToMemCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/sidescreen/applist/model/AppListLoader;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/sidescreen/applist/model/AppListLoader;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/sidescreen/applist/model/AppListLoader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->removeDrawableCache(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/sidescreen/applist/model/AppListLoader;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->removeIconCacheAndNotify()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/sidescreen/applist/model/AppListLoader;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->forcePreload()V

    return-void
.end method

.method private addDrawableToMemCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private forcePreload()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/sidescreen/applist/LogHelper;->debug()V

    sget-object v0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$State;->NOT_LOADED:Lcom/android/systemui/sidescreen/applist/model/AppListLoader$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->setState(Lcom/android/systemui/sidescreen/applist/model/AppListLoader$State;)V

    new-instance v0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$LoadingTask;

    invoke-direct {v0, p0}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$LoadingTask;-><init>(Lcom/android/systemui/sidescreen/applist/model/AppListLoader;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$LoadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/systemui/sidescreen/applist/model/AppListLoader;
    .locals 1

    sget-object v0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->sLoader:Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    invoke-direct {v0, p0}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->sLoader:Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    :cond_0
    sget-object v0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->sLoader:Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    return-object v0
.end method

.method private getDrawableFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getIcon(Landroid/content/pm/ActivityInfo;IZ)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v1

    if-eqz p2, :cond_1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIcon - NotFound "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/systemui/sidescreen/applist/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private hideIcon(Landroid/content/pm/ActivityInfo;)Z
    .locals 3

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.samsung.systemui.metadata.mwapplist.HIDE_ICON"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method private initLruCache()V
    .locals 2

    new-instance v0, Landroid/util/LruCache;

    sget v1, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->SIZE_ICON_CACHE:I

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mIconCache:Landroid/util/LruCache;

    return-void
.end method

.method static synthetic lambda$getAppInfosExceptRecentsList$0(Ljava/util/ArrayList;Lcom/android/systemui/sidescreen/applist/model/AppInfo;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/sidescreen/applist/model/ItemInfo;

    invoke-virtual {p1}, Lcom/android/systemui/sidescreen/applist/model/AppInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/systemui/sidescreen/applist/model/ItemInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private removeDrawableCache(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private removeIconCacheAndNotify()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/sidescreen/applist/LogHelper;->debug()V

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->clearIconCache()V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->getLoader(Landroid/content/Context;)Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->onTrimMemory(I)V

    invoke-direct {p0}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->forcePreload()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/sidescreen/applist/event/AppDataReloadedEvent;

    invoke-direct {v1}, Lcom/android/systemui/sidescreen/applist/event/AppDataReloadedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method private setState(Lcom/android/systemui/sidescreen/applist/model/AppListLoader$State;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mState:Lcom/android/systemui/sidescreen/applist/model/AppListLoader$State;

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/sidescreen/applist/model/AppListLoader$LoadingTaskCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearIconCache()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public getAppInfosExceptRecentsList(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/sidescreen/applist/model/ItemInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/systemui/sidescreen/applist/model/AppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mTempList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mTempList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/android/systemui/sidescreen/applist/model/-$$Lambda$AppListLoader$de4A3wXYBNR2b9oJ3DBnJO_ZgRk;

    invoke-direct {v0, p1}, Lcom/android/systemui/sidescreen/applist/model/-$$Lambda$AppListLoader$de4A3wXYBNR2b9oJ3DBnJO_ZgRk;-><init>(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mTempList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public getBadgedActivityIcon(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1, v1, p2}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedActivityIcon(Landroid/content/pm/ResolveInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 9

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mIconHelper:Landroid/content/pm/PackageIconHelper;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageIconHelper;->supportLiveIcon(Landroid/content/pm/ApplicationInfo;Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p0, v4, p2, v6}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->getBadgedActivityIcon(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Load live icon for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lcom/android/systemui/sidescreen/applist/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    if-nez v3, :cond_5

    iget-object v4, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mIconHelper:Landroid/content/pm/PackageIconHelper;

    iget-object v6, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageIconHelper;->hasThemeIconPack(Landroid/content/Context;)Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mIconHelper:Landroid/content/pm/PackageIconHelper;

    iget-object v7, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageIconHelper;->isDesktopMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    move v5, v6

    nop

    :cond_2
    move v4, v5

    iget-object v5, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager;->getAttr(Landroid/content/Context;)Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager$Attributes;

    move-result-object v5

    iget v7, v5, Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager$Attributes;->mItemIconDpi:I

    invoke-direct {p0, v0, v7, v4}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->getIcon(Landroid/content/pm/ActivityInfo;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v4, :cond_4

    iget-object v7, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroid/content/pm/PackageManager;->semCheckComponentMetadataForIconTray(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v2}, Landroid/content/pm/PackageManager;->semShouldPackIntoIconTray(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    iget-object v7, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v3, v6}, Landroid/content/pm/PackageManager;->semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v6

    if-eq p2, v6, :cond_5

    iget-object v6, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {p2}, Landroid/os/UserHandle;->semOf(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_5
    if-nez v3, :cond_6

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x10d0000

    invoke-virtual {v4, v5, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_6
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_7
    :goto_0
    return-object v1
.end method

.method public getBadgedActivityLabel(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLauncherPacakges(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public isResizable(Landroid/content/pm/ResolveInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mMwm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSupportedMultiWindowModes(Landroid/content/pm/ResolveInfo;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadAppInfoData(Lcom/android/systemui/sidescreen/applist/model/ItemInfo;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/systemui/sidescreen/applist/model/ItemInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->getDrawableFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/systemui/sidescreen/applist/model/ItemInfo;->notifyAppDataLoaded(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$2;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$2;-><init>(Lcom/android/systemui/sidescreen/applist/model/AppListLoader;Lcom/android/systemui/sidescreen/applist/model/ItemInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/sidescreen/applist/event/IconChangedEvent;)V
    .locals 2

    const-string v0, "IconChangedEvent"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/systemui/sidescreen/applist/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->removeIconCacheAndNotify()V

    return-void
.end method

.method public preload(Lcom/android/systemui/sidescreen/applist/model/AppListLoader$LoadingTaskCallbacks;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->addCallback(Lcom/android/systemui/sidescreen/applist/model/AppListLoader$LoadingTaskCallbacks;)V

    const-string/jumbo v0, "state=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mState:Lcom/android/systemui/sidescreen/applist/model/AppListLoader$State;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/systemui/sidescreen/applist/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$4;->$SwitchMap$com$android$systemui$sidescreen$applist$model$AppListLoader$State:[I

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mState:Lcom/android/systemui/sidescreen/applist/model/AppListLoader$State;

    invoke-virtual {v1}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {p1}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$LoadingTaskCallbacks;->onPreExecute()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$LoadingTask;

    invoke-direct {v0, p0}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$LoadingTask;-><init>(Lcom/android/systemui/sidescreen/applist/model/AppListLoader;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$LoadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :pswitch_2
    invoke-interface {p1}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$LoadingTaskCallbacks;->onPostExecute()V

    invoke-virtual {p0, p1}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->removeCallback(Lcom/android/systemui/sidescreen/applist/model/AppListLoader$LoadingTaskCallbacks;)V

    nop

    :goto_0
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeCallback(Lcom/android/systemui/sidescreen/applist/model/AppListLoader$LoadingTaskCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
