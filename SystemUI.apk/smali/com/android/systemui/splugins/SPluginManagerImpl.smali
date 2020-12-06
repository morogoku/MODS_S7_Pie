.class public Lcom/android/systemui/splugins/SPluginManagerImpl;
.super Landroid/content/BroadcastReceiver;
.source "SPluginManagerImpl.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/splugins/SPluginManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;,
        Lcom/android/systemui/splugins/SPluginManagerImpl$ClassLoaderFilter;,
        Lcom/android/systemui/splugins/SPluginManagerImpl$SPluginInstanceManagerFactory;
    }
.end annotation


# instance fields
.field private final IGNORE_EXCEPTION:[Ljava/lang/String;

.field private final isDebuggable:Z

.field private final mClassLoaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mFactory:Lcom/android/systemui/splugins/SPluginManagerImpl$SPluginInstanceManagerFactory;

.field private mHasOneShot:Z

.field private mListening:Z

.field private mLooper:Landroid/os/Looper;

.field private final mOneShotPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mParentClassLoader:Lcom/android/systemui/splugins/SPluginManagerImpl$ClassLoaderFilter;

.field private final mPluginMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "*>;",
            "Lcom/android/systemui/splugins/SPluginInstanceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mPolicyInteractor:Lcom/android/systemui/splugins/SPluginPolicyInteractor;

.field private final mSPluginPrefs:Lcom/android/systemui/splugins/SPluginPrefs;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/android/systemui/splugins/SPluginManagerImpl$SPluginInstanceManagerFactory;

    invoke-direct {v0}, Lcom/android/systemui/splugins/SPluginManagerImpl$SPluginInstanceManagerFactory;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/systemui/splugins/SPluginManagerImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/splugins/SPluginManagerImpl$SPluginInstanceManagerFactory;ZLjava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/splugins/SPluginManagerImpl$SPluginInstanceManagerFactory;ZLjava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mOneShotPackages:Landroid/util/ArraySet;

    const-string v0, "com.samsung.systemui.bixby"

    const-string v1, "com.samsung.systemui.bixby2"

    const-string v2, "com.samsung.android.dynamiclock"

    const-string v3, "com.samsung.android.app.aodservice"

    const-string v4, "com.samsung.android.mateagent"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->IGNORE_EXCEPTION:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mFactory:Lcom/android/systemui/splugins/SPluginManagerImpl$SPluginInstanceManagerFactory;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    iput-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mLooper:Landroid/os/Looper;

    iput-boolean p3, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->isDebuggable:Z

    new-instance v0, Lcom/android/systemui/splugins/SPluginPrefs;

    iget-object v1, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/splugins/SPluginPrefs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mSPluginPrefs:Lcom/android/systemui/splugins/SPluginPrefs;

    const-class v0, Lcom/android/systemui/splugins/SPluginPolicyInteractor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/splugins/SPluginPolicyInteractor;

    iput-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mPolicyInteractor:Lcom/android/systemui/splugins/SPluginPolicyInteractor;

    new-instance v0, Lcom/android/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p4, v1}, Lcom/android/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;-><init>(Lcom/android/systemui/splugins/SPluginManagerImpl;Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/android/systemui/splugins/SPluginManagerImpl$1;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {}, Lcom/samsung/systemui/splugins/SPluginVersions;->initVersion()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/systemui/splugins/-$$Lambda$SPluginManagerImpl$W_QuvzrIosaW9c7bZNK5BTmayOw;

    invoke-direct {v2, p0}, Lcom/android/systemui/splugins/-$$Lambda$SPluginManagerImpl$W_QuvzrIosaW9c7bZNK5BTmayOw;-><init>(Lcom/android/systemui/splugins/SPluginManagerImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/splugins/SPluginManagerImpl;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->IGNORE_EXCEPTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/splugins/SPluginManagerImpl;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private clearClassLoader(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$new$1(Lcom/android/systemui/splugins/SPluginManagerImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mPolicyInteractor:Lcom/android/systemui/splugins/SPluginPolicyInteractor;

    invoke-interface {v0}, Lcom/android/systemui/splugins/SPluginPolicyInteractor;->applyUrgentOSUpgradePolicy()V

    return-void
.end method

.method private startListening()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mListening:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mListening:Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private stopListening()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mListening:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mHasOneShot:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            ">(",
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/splugins/SPluginManagerImpl;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method public addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            ">(",
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    const-string v0, "SPluginManagerImpl"

    const-string v1, "addPluginListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/android/systemui/splugins/SPluginManager;->getAction(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/splugins/SPluginManagerImpl;->addPluginListener(Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;ZZ)V

    return-void
.end method

.method public addPluginListener(Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;ZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "TT;>;",
            "Ljava/lang/Class;",
            "ZZ)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->isDebuggable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mSPluginPrefs:Lcom/android/systemui/splugins/SPluginPrefs;

    invoke-virtual {v0, p1}, Lcom/android/systemui/splugins/SPluginPrefs;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mFactory:Lcom/android/systemui/splugins/SPluginManagerImpl$SPluginInstanceManagerFactory;

    iget-object v2, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mLooper:Landroid/os/Looper;

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move v6, p5

    move-object v8, p3

    move-object v9, p0

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/splugins/SPluginManagerImpl$SPluginInstanceManagerFactory;->createPluginInstanceManager(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;ZZLandroid/os/Looper;Ljava/lang/Class;Lcom/android/systemui/splugins/SPluginManagerImpl;)Lcom/android/systemui/splugins/SPluginInstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/splugins/SPluginInstanceManager;->loadAll()V

    iget-object v1, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/systemui/splugins/SPluginManagerImpl;->startListening()V

    return-void
.end method

.method public dependsOn(Lcom/samsung/systemui/splugins/SPlugin;Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-virtual {v2, p1, p2}, Lcom/android/systemui/splugins/SPluginInstanceManager;->dependsOn(Lcom/samsung/systemui/splugins/SPlugin;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p2}, Lcom/samsung/systemui/splugins/SPluginVersions;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0

    :cond_0
    new-instance v0, Ldalvik/system/PathClassLoader;

    invoke-virtual {p0}, Lcom/android/systemui/splugins/SPluginManagerImpl;->getParentClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iget-object v1, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method getParentClassLoader()Ljava/lang/ClassLoader;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mParentClassLoader:Lcom/android/systemui/splugins/SPluginManagerImpl$ClassLoaderFilter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/splugins/SPluginManagerImpl$ClassLoaderFilter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.android.systemui.plugin"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/splugins/SPluginManagerImpl$ClassLoaderFilter;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mParentClassLoader:Lcom/android/systemui/splugins/SPluginManagerImpl$ClassLoaderFilter;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mParentClassLoader:Lcom/android/systemui/splugins/SPluginManagerImpl$ClassLoaderFilter;

    return-object v0
.end method

.method public handlePluginConfigurationChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/splugins/SPluginInstanceManager;->handlePluginConfigurationChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SPluginManagerImpl"

    const-string v1, "ACTION_USER_UNLOCKED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-virtual {v1}, Lcom/android/systemui/splugins/SPluginInstanceManager;->loadAll()V

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.systemui.action.DISABLE_PLUGIN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    nop

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    iget-object v2, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/NotificationManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_3

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/splugins/SPluginManagerImpl;->clearClassLoader(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "SPluginManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reloading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-virtual {v3, v1}, Lcom/android/systemui/splugins/SPluginInstanceManager;->onPackageChange(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-virtual {v3, v1}, Lcom/android/systemui/splugins/SPluginInstanceManager;->onPackageRemoved(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public removePluginListener(Lcom/samsung/systemui/splugins/SPluginListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "*>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->isDebuggable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-virtual {v0}, Lcom/android/systemui/splugins/SPluginInstanceManager;->destroy()V

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/splugins/SPluginManagerImpl;->stopListening()V

    :cond_2
    return-void
.end method
