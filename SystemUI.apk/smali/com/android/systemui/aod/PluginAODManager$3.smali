.class Lcom/android/systemui/aod/PluginAODManager$3;
.super Ljava/lang/Object;
.source "PluginAODManager.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/aod/PluginAODManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/aod/PluginAODManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/aod/PluginAODManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/aod/PluginAODManager$3;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clickNotification(Ljava/lang/String;)V
    .locals 5

    const-string v0, "PluginAODManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickNotification() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$3;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$600(Lcom/android/systemui/aod/PluginAODManager;)Lcom/android/systemui/statusbar/NotificationEntryManager;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$3;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    const-class v1, Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-static {v0, v1}, Lcom/android/systemui/aod/PluginAODManager;->access$602(Lcom/android/systemui/aod/PluginAODManager;Lcom/android/systemui/statusbar/NotificationEntryManager;)Lcom/android/systemui/statusbar/NotificationEntryManager;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$3;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$600(Lcom/android/systemui/aod/PluginAODManager;)Lcom/android/systemui/statusbar/NotificationEntryManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$3;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$600(Lcom/android/systemui/aod/PluginAODManager;)Lcom/android/systemui/statusbar/NotificationEntryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, "statusbar"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    nop

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->getRank(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {p1, v2, v3, v4}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v2

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1, p1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_1
    const-string v3, "PluginAODManager"

    const-string v4, "can\'t get STATUS_BAR_SERVICE"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_2

    :goto_1
    nop

    :cond_2
    :goto_2
    return-void
.end method

.method public requestActiveNotifications()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$3;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$000(Lcom/android/systemui/aod/PluginAODManager;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$3;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$000(Lcom/android/systemui/aod/PluginAODManager;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->requestActiveNotifications()V

    :cond_0
    return-void
.end method

.method public requestVisibleNotifications()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$3;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$300(Lcom/android/systemui/aod/PluginAODManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/aod/PluginAODManager$3;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v1}, Lcom/android/systemui/aod/PluginAODManager;->access$200(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/aod/PluginAOD;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/aod/PluginAODManager$3;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v1}, Lcom/android/systemui/aod/PluginAODManager;->access$200(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/aod/PluginAOD;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/aod/PluginAOD;->getNotificationManager()Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/aod/PluginAODManager$3;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v2}, Lcom/android/systemui/aod/PluginAODManager;->access$300(Lcom/android/systemui/aod/PluginAODManager;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/aod/PluginAODManager$3;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v3}, Lcom/android/systemui/aod/PluginAODManager;->access$400(Lcom/android/systemui/aod/PluginAODManager;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager;->updateVisibleNotifications(Ljava/util/List;I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/aod/PluginAODManager$3;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v1}, Lcom/android/systemui/aod/PluginAODManager;->access$500(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/aod/PluginAODManager$3;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v1}, Lcom/android/systemui/aod/PluginAODManager;->access$500(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/cover/PluginViewCover;->getNotificationManager()Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/aod/PluginAODManager$3;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v2}, Lcom/android/systemui/aod/PluginAODManager;->access$300(Lcom/android/systemui/aod/PluginAODManager;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/aod/PluginAODManager$3;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v3}, Lcom/android/systemui/aod/PluginAODManager;->access$400(Lcom/android/systemui/aod/PluginAODManager;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager;->updateVisibleNotifications(Ljava/util/List;I)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
