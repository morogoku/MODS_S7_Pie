.class Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$2;
.super Landroid/view/IRotationWatcher$Stub;
.source "MinimizeContainerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->createRotationWatcherIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MinimizeContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Manager] IRotationWatcher_onRotationChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v0, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v1, v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    invoke-virtual {v1, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
