.class Lcom/android/server/sepunion/SemDeviceInfoManagerService$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "SemDeviceInfoManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemDeviceInfoManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$2;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 8

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageAdded(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "monitor_package_state;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$2;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    # invokes: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;
    invoke-static {v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$200(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    iget-object v2, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;

    if-eqz v2, :cond_4c

    iget-object v3, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$2;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    const-string/jumbo v4, "package_added"

    # invokes: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportPackageStateChanged(Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v2, p1, v4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$400(Lcom/android/server/sepunion/SemDeviceInfoManagerService;Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    :cond_4c
    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "We have key in mCustomEventMap. But no item for the key."

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    :goto_55
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 7

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageModified(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "monitor_package_state;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$2;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    # invokes: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;
    invoke-static {v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$200(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    iget-object v2, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;

    if-eqz v2, :cond_4c

    iget-object v3, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$2;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    const-string/jumbo v4, "package_modified"

    # invokes: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportPackageStateChanged(Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v2, p1, v4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$400(Lcom/android/server/sepunion/SemDeviceInfoManagerService;Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    :cond_4c
    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "We have key in mCustomEventMap. But no item for the key."

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    :goto_55
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 8

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageRemoved() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "monitor_package_state;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$2;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    # invokes: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;
    invoke-static {v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$200(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    iget-object v2, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;

    if-eqz v2, :cond_4c

    iget-object v3, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$2;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    const-string/jumbo v4, "package_removed"

    # invokes: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportPackageStateChanged(Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v2, p1, v4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$400(Lcom/android/server/sepunion/SemDeviceInfoManagerService;Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    :cond_4c
    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "We have key in mCustomEventMap. But no item for the key."

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    :goto_55
    return-void
.end method
