.class Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;
.super Ljava/lang/Object;
.source "BlockerManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/BlockerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DesktopModeBlockerInfo"
.end annotation


# instance fields
.field final blocker:Lcom/samsung/android/desktopmode/IDesktopModeBlocker;

.field final name:Ljava/lang/String;

.field final pid:I

.field final synthetic this$0:Lcom/android/server/desktopmode/BlockerManager;

.field final uid:I


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/BlockerManager;Lcom/samsung/android/desktopmode/IDesktopModeBlocker;Ljava/lang/String;II)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;->this$0:Lcom/android/server/desktopmode/BlockerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;->blocker:Lcom/samsung/android/desktopmode/IDesktopModeBlocker;

    iput-object p3, p0, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;->name:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;->pid:I

    iput p5, p0, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;->uid:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    # getter for: Lcom/android/server/desktopmode/BlockerManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/BlockerManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;->this$0:Lcom/android/server/desktopmode/BlockerManager;

    # getter for: Lcom/android/server/desktopmode/BlockerManager;->mBlockers:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/desktopmode/BlockerManager;->access$100(Lcom/android/server/desktopmode/BlockerManager;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    :try_start_1f
    iget-object v1, p0, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;->this$0:Lcom/android/server/desktopmode/BlockerManager;

    # getter for: Lcom/android/server/desktopmode/BlockerManager;->mBlockers:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/desktopmode/BlockerManager;->access$100(Lcom/android/server/desktopmode/BlockerManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;->blocker:Lcom/samsung/android/desktopmode/IDesktopModeBlocker;

    invoke-interface {v2}, Lcom/samsung/android/desktopmode/IDesktopModeBlocker;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_3a

    iget-object v0, p0, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;->blocker:Lcom/samsung/android/desktopmode/IDesktopModeBlocker;

    invoke-interface {v0}, Lcom/samsung/android/desktopmode/IDesktopModeBlocker;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
