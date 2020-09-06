.class Lcom/android/server/desktopmode/DockManager$4;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "DockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DockManager;->registerObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DockManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DockManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager$4;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public interfaceAdded(Ljava/lang/String;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/server/net/BaseNetworkObserver;->interfaceAdded(Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    # getter for: Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "interfaceAdded(), iface= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const-string/jumbo v0, "eth0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$4;->this$0:Lcom/android/server/desktopmode/DockManager;

    # invokes: Lcom/android/server/desktopmode/DockManager;->setVirtualMacAddress()V
    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->access$900(Lcom/android/server/desktopmode/DockManager;)V

    :cond_2e
    return-void
.end method
