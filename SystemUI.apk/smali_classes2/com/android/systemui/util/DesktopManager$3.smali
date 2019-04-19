.class Lcom/android/systemui/util/DesktopManager$3;
.super Lcom/android/internal/desktop/IDesktopBarCallback$Stub;
.source "DesktopManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/DesktopManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/DesktopManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/DesktopManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/DesktopManager$3;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-direct {p0}, Lcom/android/internal/desktop/IDesktopBarCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyDismissKeyguard()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$3;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManager;->access$1000(Lcom/android/systemui/util/DesktopManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/util/DesktopManager$3;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v1}, Lcom/android/systemui/util/DesktopManager;->access$1100(Lcom/android/systemui/util/DesktopManager;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyFaceRunningStateChanged(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$3;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManager;->access$1200(Lcom/android/systemui/util/DesktopManager;)Landroid/os/Handler;

    move-result-object v0

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$3;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManager;->access$1200(Lcom/android/systemui/util/DesktopManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyIBRunningStateChanged(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$3;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManager;->access$1200(Lcom/android/systemui/util/DesktopManager;)Landroid/os/Handler;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$3;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManager;->access$1200(Lcom/android/systemui/util/DesktopManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyIrisRunningStateChanged(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$3;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManager;->access$1200(Lcom/android/systemui/util/DesktopManager;)Landroid/os/Handler;

    move-result-object v0

    const/high16 v1, 0x30000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$3;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManager;->access$1200(Lcom/android/systemui/util/DesktopManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyLockout()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$3;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManager;->access$1200(Lcom/android/systemui/util/DesktopManager;)Landroid/os/Handler;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$3;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManager;->access$1200(Lcom/android/systemui/util/DesktopManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
