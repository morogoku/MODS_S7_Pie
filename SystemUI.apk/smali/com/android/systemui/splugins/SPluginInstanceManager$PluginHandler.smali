.class Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;
.super Landroid/os/Handler;
.source "SPluginInstanceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/splugins/SPluginInstanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginHandler"
.end annotation


# instance fields
.field private final mPlugins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/splugins/SPluginInstanceManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    return-object v0
.end method

.method private checkVersion(Ljava/lang/Class;Lcom/samsung/systemui/splugins/SPlugin;Lcom/android/systemui/splugins/SVersionInfo;)Lcom/android/systemui/splugins/SVersionInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;TT;",
            "Lcom/android/systemui/splugins/SVersionInfo;",
            ")",
            "Lcom/android/systemui/splugins/SVersionInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/splugins/SVersionInfo$InvalidVersionException;
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/splugins/SVersionInfo;

    invoke-direct {v0}, Lcom/android/systemui/splugins/SVersionInfo;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/systemui/splugins/SVersionInfo;->addClass(Ljava/lang/Class;)Lcom/android/systemui/splugins/SVersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/splugins/SVersionInfo;->hasVersionInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3, v0}, Lcom/android/systemui/splugins/SVersionInfo;->checkVersion(Lcom/android/systemui/splugins/SVersionInfo;)V

    return-object v0

    :cond_0
    invoke-interface {p2}, Lcom/samsung/systemui/splugins/SPlugin;->getVersion()I

    move-result v1

    invoke-virtual {p3}, Lcom/android/systemui/splugins/SVersionInfo;->getDefaultVersion()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v2, 0x0

    return-object v2

    :cond_1
    new-instance v2, Lcom/android/systemui/splugins/SVersionInfo$InvalidVersionException;

    const/4 v3, 0x0

    const-string v4, "Invalid legacy version"

    invoke-direct {v2, v4, v3}, Lcom/android/systemui/splugins/SVersionInfo$InvalidVersionException;-><init>(Ljava/lang/String;Z)V

    throw v2
.end method

.method private handleQueryPlugins(Ljava/lang/String;)V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v1}, Lcom/android/systemui/splugins/SPluginInstanceManager;->access$800(Lcom/android/systemui/splugins/SPluginInstanceManager;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v1}, Lcom/android/systemui/splugins/SPluginInstanceManager;->access$1000(Lcom/android/systemui/splugins/SPluginInstanceManager;)Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v3}, Lcom/android/systemui/splugins/SPluginInstanceManager;->access$900(Lcom/android/systemui/splugins/SPluginInstanceManager;)Lcom/android/systemui/splugins/ActivityManagerProxy;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/splugins/ActivityManagerProxy;->getCurrentUser()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v2}, Lcom/android/systemui/splugins/SPluginInstanceManager;->access$700(Lcom/android/systemui/splugins/SPluginInstanceManager;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "SPluginInstanceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple plugins found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v4}, Lcom/android/systemui/splugins/SPluginInstanceManager;->access$800(Lcom/android/systemui/splugins/SPluginInstanceManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v2}, Lcom/android/systemui/splugins/SPluginInstanceManager;->access$1100(Lcom/android/systemui/splugins/SPluginInstanceManager;)Lcom/android/systemui/splugins/SPluginPolicyInteractor;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/systemui/splugins/SPluginPolicyInteractor;->applyUrgentOSUpgradePolicy(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->handleLoadPlugin(Landroid/content/ComponentName;)Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    iget-object v7, v7, Lcom/android/systemui/splugins/SPluginInstanceManager;->mMainHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;

    invoke-virtual {v7, v3, v6}, Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    iget-object v7, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method protected handleLoadPlugin(Landroid/content/ComponentName;)Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v0}, Lcom/android/systemui/splugins/SPluginInstanceManager;->access$1200(Lcom/android/systemui/splugins/SPluginInstanceManager;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SPluginInstanceManager"

    const-string v2, "Somehow hit second debuggable check"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v3}, Lcom/android/systemui/splugins/SPluginInstanceManager;->access$1300(Lcom/android/systemui/splugins/SPluginInstanceManager;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v3}, Lcom/android/systemui/splugins/SPluginInstanceManager;->access$1000(Lcom/android/systemui/splugins/SPluginInstanceManager;)Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v5}, Lcom/android/systemui/splugins/SPluginInstanceManager;->access$900(Lcom/android/systemui/splugins/SPluginInstanceManager;)Lcom/android/systemui/splugins/ActivityManagerProxy;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/splugins/ActivityManagerProxy;->getCurrentUser()I

    move-result v5

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v3}, Lcom/android/systemui/splugins/SPluginInstanceManager;->access$1000(Lcom/android/systemui/splugins/SPluginInstanceManager;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    :goto_0
    move-object v9, v3

    iget-object v3, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v3}, Lcom/android/systemui/splugins/SPluginInstanceManager;->access$1000(Lcom/android/systemui/splugins/SPluginInstanceManager;)Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v5, "com.samsung.systemui.permission.SPLUGIN"

    invoke-virtual {v3, v5, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "SPluginInstanceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Plugin doesn\'t have permission: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v3}, Lcom/android/systemui/splugins/SPluginInstanceManager;->access$1400(Lcom/android/systemui/splugins/SPluginInstanceManager;)Lcom/android/systemui/splugins/SPluginManagerImpl;

    move-result-object v3

    iget-object v5, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v6, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/android/systemui/splugins/SPluginManagerImpl;->getClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v3

    move-object v10, v3

    new-instance v7, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginContextWrapper;

    iget-object v3, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v3}, Lcom/android/systemui/splugins/SPluginInstanceManager;->access$500(Lcom/android/systemui/splugins/SPluginInstanceManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v9, v4}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v7, v3, v10}, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginContextWrapper;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    const/4 v3, 0x1

    invoke-static {v2, v3, v10}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    move-object v11, v3

    invoke-virtual {v11}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/systemui/splugins/SPlugin;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-object v12, v3

    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v3}, Lcom/android/systemui/splugins/SPluginInstanceManager;->access$1500(Lcom/android/systemui/splugins/SPluginInstanceManager;)Lcom/android/systemui/splugins/SVersionInfo;

    move-result-object v3

    invoke-direct {p0, v11, v12, v3}, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->checkVersion(Ljava/lang/Class;Lcom/samsung/systemui/splugins/SPlugin;Lcom/android/systemui/splugins/SVersionInfo;)Lcom/android/systemui/splugins/SVersionInfo;

    move-result-object v8

    iget-object v3, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v3}, Lcom/android/systemui/splugins/SPluginInstanceManager;->access$1100(Lcom/android/systemui/splugins/SPluginInstanceManager;)Lcom/android/systemui/splugins/SPluginPolicyInteractor;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/systemui/splugins/SPluginPolicyInteractor;->onPluginLoaded(Ljava/lang/String;)V

    new-instance v13, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;

    move-object v3, v13

    move-object v4, v0

    move-object v5, v2

    move-object v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;Lcom/android/systemui/splugins/SVersionInfo;)V
    :try_end_1
    .catch Lcom/android/systemui/splugins/SVersionInfo$InvalidVersionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-object v13

    :catch_0
    move-exception v3

    :try_start_2
    iget-object v4, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v4}, Lcom/android/systemui/splugins/SPluginInstanceManager;->access$1100(Lcom/android/systemui/splugins/SPluginInstanceManager;)Lcom/android/systemui/splugins/SPluginPolicyInteractor;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/android/systemui/splugins/SPluginPolicyInteractor;->onPluginLoadFailed(Ljava/lang/String;)V

    instance-of v4, v12, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v4}, Lcom/android/systemui/splugins/SPluginInstanceManager;->access$600(Lcom/android/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginListener;

    move-result-object v4

    invoke-interface {v4, v12}, Lcom/samsung/systemui/splugins/SPluginListener;->onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;)V

    :cond_3
    const-string v4, "SPluginInstanceManager"

    invoke-virtual {v3}, Lcom/android/systemui/splugins/SVersionInfo$InvalidVersionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    :catch_1
    move-exception v3

    const-string v4, "SPluginInstanceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t load plugin: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v3, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;

    iget-object v5, v4, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->access$300(Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    iget-object v5, v5, Lcom/android/systemui/splugins/SPluginInstanceManager;->mMainHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v4}, Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    goto :goto_0

    :cond_1
    goto/16 :goto_3

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_3

    iget-object v3, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;

    iget-object v4, v3, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    iget-object v4, v4, Lcom/android/systemui/splugins/SPluginInstanceManager;->mMainHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;

    invoke-virtual {v4, v1, v3}, Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    iget-object v4, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    goto :goto_3

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v1}, Lcom/android/systemui/splugins/SPluginInstanceManager;->access$700(Lcom/android/systemui/splugins/SPluginInstanceManager;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->handleQueryPlugins(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_5

    iget-object v2, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;

    iget-object v3, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    iget-object v3, v3, Lcom/android/systemui/splugins/SPluginInstanceManager;->mMainHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;

    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    iget-object v3, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->handleQueryPlugins(Ljava/lang/String;)V

    nop

    :cond_6
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
