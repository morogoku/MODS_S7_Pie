.class public Lcom/android/systemui/splugins/SPluginInstanceManager;
.super Ljava/lang/Object;
.source "SPluginInstanceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;,
        Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginContextWrapper;,
        Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;,
        Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/samsung/systemui/splugins/SPlugin;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final isDebuggable:Z

.field private final mAction:Ljava/lang/String;

.field private final mActivityManagerProxy:Lcom/android/systemui/splugins/ActivityManagerProxy;

.field private final mAllowMultiple:Z

.field private final mAllowMultipleUsers:Z

.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/samsung/systemui/splugins/SPluginListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mMainHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/splugins/SPluginInstanceManager<",
            "TT;>.com/android/systemui/splugins/SPluginInstanceManager$MainHandler;"
        }
    .end annotation
.end field

.field private final mManager:Lcom/android/systemui/splugins/SPluginManagerImpl;

.field final mPluginHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/splugins/SPluginInstanceManager<",
            "TT;>.com/android/systemui/splugins/SPluginInstanceManager$PluginHandler;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mPolicyInteractor:Lcom/android/systemui/splugins/SPluginPolicyInteractor;

.field private final mVersion:Lcom/android/systemui/splugins/SVersionInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;ZZLandroid/os/Looper;Lcom/android/systemui/splugins/SVersionInfo;Lcom/android/systemui/splugins/SPluginManagerImpl;Z)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "TT;>;ZZ",
            "Landroid/os/Looper;",
            "Lcom/android/systemui/splugins/SVersionInfo;",
            "Lcom/android/systemui/splugins/SPluginManagerImpl;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;-><init>(Lcom/android/systemui/splugins/SPluginInstanceManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mMainHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;

    new-instance v0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;

    invoke-direct {v0, p0, p7}, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;-><init>(Lcom/android/systemui/splugins/SPluginInstanceManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;

    iput-object p9, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mManager:Lcom/android/systemui/splugins/SPluginManagerImpl;

    iput-object p1, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mPm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mAction:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mListener:Lcom/samsung/systemui/splugins/SPluginListener;

    iput-boolean p5, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mAllowMultiple:Z

    iput-boolean p6, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mAllowMultipleUsers:Z

    iput-object p8, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mVersion:Lcom/android/systemui/splugins/SVersionInfo;

    iput-boolean p10, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->isDebuggable:Z

    const-class v0, Lcom/android/systemui/splugins/ActivityManagerProxy;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/splugins/ActivityManagerProxy;

    iput-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mActivityManagerProxy:Lcom/android/systemui/splugins/ActivityManagerProxy;

    const-class v0, Lcom/android/systemui/splugins/SPluginPolicyInteractor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/splugins/SPluginPolicyInteractor;

    iput-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mPolicyInteractor:Lcom/android/systemui/splugins/SPluginPolicyInteractor;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;ZZLandroid/os/Looper;Lcom/android/systemui/splugins/SVersionInfo;Lcom/android/systemui/splugins/SPluginManagerImpl;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "TT;>;ZZ",
            "Landroid/os/Looper;",
            "Lcom/android/systemui/splugins/SVersionInfo;",
            "Lcom/android/systemui/splugins/SPluginManagerImpl;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/splugins/SPluginInstanceManager;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;ZZLandroid/os/Looper;Lcom/android/systemui/splugins/SVersionInfo;Lcom/android/systemui/splugins/SPluginManagerImpl;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/splugins/SPluginInstanceManager;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/splugins/SPluginInstanceManager;)Lcom/android/systemui/splugins/SPluginPolicyInteractor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mPolicyInteractor:Lcom/android/systemui/splugins/SPluginPolicyInteractor;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/splugins/SPluginInstanceManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->isDebuggable:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/splugins/SPluginInstanceManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mAllowMultipleUsers:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/splugins/SPluginInstanceManager;)Lcom/android/systemui/splugins/SPluginManagerImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mManager:Lcom/android/systemui/splugins/SPluginManagerImpl;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/splugins/SPluginInstanceManager;)Lcom/android/systemui/splugins/SVersionInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mVersion:Lcom/android/systemui/splugins/SVersionInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/splugins/SPluginInstanceManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mListener:Lcom/samsung/systemui/splugins/SPluginListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/splugins/SPluginInstanceManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mAllowMultiple:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/splugins/SPluginInstanceManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/splugins/SPluginInstanceManager;)Lcom/android/systemui/splugins/ActivityManagerProxy;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mActivityManagerProxy:Lcom/android/systemui/splugins/ActivityManagerProxy;

    return-object v0
.end method

.method private disable(Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo<",
            "TT;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mListener:Lcom/samsung/systemui/splugins/SPluginListener;

    iget-object v1, p1, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/systemui/splugins/SPlugin;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/SPluginListener;->onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;)V

    iget-object v0, p1, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPlugin:Ljava/lang/Object;

    instance-of v0, v0, Lcom/samsung/systemui/splugins/SPluginFragment;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/systemui/splugins/SPlugin;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/SPlugin;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SPluginInstanceManager"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v0, "SPluginInstanceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disabling plugin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->access$300(Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p1, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPackage:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public dependsOn(Lcom/samsung/systemui/splugins/SPlugin;Ljava/lang/Class;)Z
    .locals 6
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

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;

    invoke-static {v1}, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->access$100(Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;

    iget-object v4, v2, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPlugin:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v2}, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->access$400(Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;)Lcom/android/systemui/splugins/SVersionInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v2}, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->access$400(Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;)Lcom/android/systemui/splugins/SVersionInfo;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/systemui/splugins/SVersionInfo;->hasClass(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    return v3

    :cond_1
    goto :goto_0

    :cond_2
    return v3
.end method

.method public destroy()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;

    invoke-static {v1}, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->access$100(Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;

    iget-object v3, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mMainHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public disableAll(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;

    invoke-static {v1}, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->access$100(Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;

    if-eqz p1, :cond_0

    iget-object v3, v2, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/systemui/splugins/SPluginInstanceManager;->disable(Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public handlePluginConfigurationChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public loadAll()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPackageChange(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
