.class Lcom/android/server/desktopmode/PackageStateManager$PackageStateReceiver;
.super Lcom/android/internal/content/PackageMonitor;
.source "PackageStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/PackageStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/PackageStateManager;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/PackageStateManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/PackageStateManager$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/PackageStateManager;Lcom/android/server/desktopmode/PackageStateManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/PackageStateManager$PackageStateReceiver;-><init>(Lcom/android/server/desktopmode/PackageStateManager;)V

    return-void
.end method

.method private isMonitoredPackage(Landroid/content/Intent;)Z
    .registers 10

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_19

    iget-object v2, p0, Lcom/android/server/desktopmode/PackageStateManager$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    # getter for: Lcom/android/server/desktopmode/PackageStateManager;->mPackageState:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/desktopmode/PackageStateManager;->access$200(Lcom/android/server/desktopmode/PackageStateManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    return v2

    :cond_19
    const-string v2, "android.intent.extra.changed_package_list"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_39

    array-length v4, v2

    move v5, v3

    :goto_24
    if-ge v5, v4, :cond_39

    aget-object v6, v2, v5

    iget-object v7, p0, Lcom/android/server/desktopmode/PackageStateManager$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    # getter for: Lcom/android/server/desktopmode/PackageStateManager;->mPackageState:Ljava/util/Map;
    invoke-static {v7}, Lcom/android/server/desktopmode/PackageStateManager;->access$200(Lcom/android/server/desktopmode/PackageStateManager;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_36

    const/4 v3, 0x1

    return v3

    :cond_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    :cond_39
    return v3
.end method


# virtual methods
.method public onPackageDataCleared(Ljava/lang/String;I)V
    .registers 6

    const-string v0, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_25

    # getter for: Lcom/android/server/desktopmode/PackageStateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/PackageStateManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageDataCleared(), packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/PackageStateManager$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    # getter for: Lcom/android/server/desktopmode/PackageStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;
    invoke-static {v1}, Lcom/android/server/desktopmode/PackageStateManager;->access$500(Lcom/android/server/desktopmode/PackageStateManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v1

    # invokes: Lcom/android/server/desktopmode/PackageStateManager;->setSettingsComponent(Lcom/android/server/desktopmode/State;)V
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/PackageStateManager;->access$600(Lcom/android/server/desktopmode/PackageStateManager;Lcom/android/server/desktopmode/State;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    # getter for: Lcom/android/server/desktopmode/PackageStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;
    invoke-static {v0}, Lcom/android/server/desktopmode/PackageStateManager;->access$500(Lcom/android/server/desktopmode/PackageStateManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/server/desktopmode/IStateManager;->notifyLauncherPackageReplaced(Z)V

    :cond_3e
    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 6

    const-string v0, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_25

    # getter for: Lcom/android/server/desktopmode/PackageStateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/PackageStateManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageUpdateFinished(), packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/PackageStateManager$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    # getter for: Lcom/android/server/desktopmode/PackageStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;
    invoke-static {v1}, Lcom/android/server/desktopmode/PackageStateManager;->access$500(Lcom/android/server/desktopmode/PackageStateManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v1

    # invokes: Lcom/android/server/desktopmode/PackageStateManager;->setSettingsComponent(Lcom/android/server/desktopmode/State;)V
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/PackageStateManager;->access$600(Lcom/android/server/desktopmode/PackageStateManager;Lcom/android/server/desktopmode/State;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    # getter for: Lcom/android/server/desktopmode/PackageStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;
    invoke-static {v0}, Lcom/android/server/desktopmode/PackageStateManager;->access$500(Lcom/android/server/desktopmode/PackageStateManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/desktopmode/IStateManager;->notifyLauncherPackageReplaced(Z)V

    :cond_3e
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string v0, "com.samsung.android.knox.intent.action.ADD_PACKAGE_PREVENT_START_BLACKLIST_CHANGED_INTERNAL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1a

    # getter for: Lcom/android/server/desktopmode/PackageStateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/PackageStateManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onReceive(), action=com.samsung.android.knox.intent.action.ADD_PACKAGE_PREVENT_START_BLACKLIST_CHANGED_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/desktopmode/PackageStateManager$PackageStateReceiver;->onSomePackagesChanged()V

    goto :goto_27

    :cond_1e
    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/PackageStateManager$PackageStateReceiver;->isMonitoredPackage(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_27
    :goto_27
    return-void
.end method

.method public onSomePackagesChanged()V
    .registers 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_e

    # getter for: Lcom/android/server/desktopmode/PackageStateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/PackageStateManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onSomePackagesChanged()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    # invokes: Lcom/android/server/desktopmode/PackageStateManager;->updatePackageState()V
    invoke-static {v0}, Lcom/android/server/desktopmode/PackageStateManager;->access$400(Lcom/android/server/desktopmode/PackageStateManager;)V

    return-void
.end method

.method public register(Landroid/content/Context;Landroid/os/UserHandle;ZLandroid/os/Handler;)V
    .registers 11

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;ZLandroid/os/Handler;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.android.knox.intent.action.ADD_PACKAGE_PREVENT_START_BLACKLIST_CHANGED_INTERNAL"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
