.class Lcom/android/server/ServiceWatcher$3;
.super Lcom/android/internal/content/PackageMonitor;
.source "ServiceWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ServiceWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServiceWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/ServiceWatcher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ServiceWatcher$3;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/ServiceWatcher$3;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$200(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$3;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mBoundPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/ServiceWatcher;->access$300(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v2, p0, Lcom/android/server/ServiceWatcher$3;->this$0:Lcom/android/server/ServiceWatcher;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/ServiceWatcher;->mForceRebind:Z
    invoke-static {v2, v3}, Lcom/android/server/ServiceWatcher;->access$402(Lcom/android/server/ServiceWatcher;Z)Z

    iget-object v2, p0, Lcom/android/server/ServiceWatcher$3;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mConnectionRecord:Lcom/android/server/NSConnectionRecord;
    invoke-static {v2}, Lcom/android/server/ServiceWatcher;->access$000(Lcom/android/server/ServiceWatcher;)Lcom/android/server/NSConnectionRecord;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NSConnectionRecord;->setPackageAddedTime(J)V

    :cond_26
    iget-object v2, p0, Lcom/android/server/ServiceWatcher$3;->this$0:Lcom/android/server/ServiceWatcher;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z
    invoke-static {v2, v3, v1}, Lcom/android/server/ServiceWatcher;->access$500(Lcom/android/server/ServiceWatcher;Ljava/lang/String;Z)Z

    monitor-exit v0

    return-void

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 9

    iget-object v0, p0, Lcom/android/server/ServiceWatcher$3;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$200(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$3;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mBoundPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/ServiceWatcher;->access$300(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v2, p0, Lcom/android/server/ServiceWatcher$3;->this$0:Lcom/android/server/ServiceWatcher;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/ServiceWatcher;->mForceRebind:Z
    invoke-static {v2, v3}, Lcom/android/server/ServiceWatcher;->access$402(Lcom/android/server/ServiceWatcher;Z)Z

    iget-object v2, p0, Lcom/android/server/ServiceWatcher$3;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mConnectionRecord:Lcom/android/server/NSConnectionRecord;
    invoke-static {v2}, Lcom/android/server/ServiceWatcher;->access$000(Lcom/android/server/ServiceWatcher;)Lcom/android/server/NSConnectionRecord;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NSConnectionRecord;->setPackageChangedTime(J)V

    :cond_26
    iget-object v2, p0, Lcom/android/server/ServiceWatcher$3;->this$0:Lcom/android/server/ServiceWatcher;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z
    invoke-static {v2, v3, v1}, Lcom/android/server/ServiceWatcher;->access$500(Lcom/android/server/ServiceWatcher;Ljava/lang/String;Z)Z

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_32

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/content/PackageMonitor;->onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v0

    return v0

    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/ServiceWatcher$3;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$200(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$3;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mBoundPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/ServiceWatcher;->access$300(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v2, p0, Lcom/android/server/ServiceWatcher$3;->this$0:Lcom/android/server/ServiceWatcher;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/ServiceWatcher;->mForceRebind:Z
    invoke-static {v2, v3}, Lcom/android/server/ServiceWatcher;->access$402(Lcom/android/server/ServiceWatcher;Z)Z

    iget-object v2, p0, Lcom/android/server/ServiceWatcher$3;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mConnectionRecord:Lcom/android/server/NSConnectionRecord;
    invoke-static {v2}, Lcom/android/server/ServiceWatcher;->access$000(Lcom/android/server/ServiceWatcher;)Lcom/android/server/NSConnectionRecord;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NSConnectionRecord;->setPackageRemovedTime(J)V

    :cond_26
    iget-object v2, p0, Lcom/android/server/ServiceWatcher$3;->this$0:Lcom/android/server/ServiceWatcher;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z
    invoke-static {v2, v3, v1}, Lcom/android/server/ServiceWatcher;->access$500(Lcom/android/server/ServiceWatcher;Ljava/lang/String;Z)Z

    monitor-exit v0

    return-void

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/ServiceWatcher$3;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$200(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$3;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mBoundPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/ServiceWatcher;->access$300(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v2, p0, Lcom/android/server/ServiceWatcher$3;->this$0:Lcom/android/server/ServiceWatcher;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/ServiceWatcher;->mForceRebind:Z
    invoke-static {v2, v3}, Lcom/android/server/ServiceWatcher;->access$402(Lcom/android/server/ServiceWatcher;Z)Z

    iget-object v2, p0, Lcom/android/server/ServiceWatcher$3;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mConnectionRecord:Lcom/android/server/NSConnectionRecord;
    invoke-static {v2}, Lcom/android/server/ServiceWatcher;->access$000(Lcom/android/server/ServiceWatcher;)Lcom/android/server/NSConnectionRecord;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NSConnectionRecord;->setPackageUpdatedTime(J)V

    :cond_26
    iget-object v2, p0, Lcom/android/server/ServiceWatcher$3;->this$0:Lcom/android/server/ServiceWatcher;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z
    invoke-static {v2, v3, v1}, Lcom/android/server/ServiceWatcher;->access$500(Lcom/android/server/ServiceWatcher;Ljava/lang/String;Z)Z

    monitor-exit v0

    return-void

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw v1
.end method
