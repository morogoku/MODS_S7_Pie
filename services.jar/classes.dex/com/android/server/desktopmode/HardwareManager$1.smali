.class Lcom/android/server/desktopmode/HardwareManager$1;
.super Ljava/lang/Object;
.source "HardwareManager.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/HardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/HardwareManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/HardwareManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$1;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1d

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/HardwareManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisplayAdded displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$1;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/desktopmode/HardwareManager;->updateExternalDisplayStatus(ZI)V
    invoke-static {v0, v1, p1}, Lcom/android/server/desktopmode/HardwareManager;->access$100(Lcom/android/server/desktopmode/HardwareManager;ZI)V

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$1;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;
    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->access$200(Lcom/android/server/desktopmode/HardwareManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_53

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$1;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;
    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->access$300(Lcom/android/server/desktopmode/HardwareManager;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_53

    new-instance v1, Lcom/android/server/desktopmode/DisplayInfo;

    invoke-direct {v1, v0}, Lcom/android/server/desktopmode/DisplayInfo;-><init>(Landroid/view/Display;)V

    iget-object v2, p0, Lcom/android/server/desktopmode/HardwareManager$1;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/desktopmode/HardwareManager;->access$400(Lcom/android/server/desktopmode/HardwareManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/DisplayInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_53

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/HardwareManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDisplayChanged, DisplayInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/desktopmode/HardwareManager$1;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/desktopmode/HardwareManager;->access$400(Lcom/android/server/desktopmode/HardwareManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_53
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1d

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/HardwareManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisplayRemoved displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$1;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/desktopmode/HardwareManager;->updateExternalDisplayStatus(ZI)V
    invoke-static {v0, v1, p1}, Lcom/android/server/desktopmode/HardwareManager;->access$100(Lcom/android/server/desktopmode/HardwareManager;ZI)V

    return-void
.end method
