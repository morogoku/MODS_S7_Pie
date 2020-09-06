.class Lcom/android/server/vr/GearVrManagerService$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "GearVrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/GearVrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/GearVrManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vr/GearVrManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerService$1;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 6

    const-string v0, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "GearVrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---- GearVrManagerService onPackageAdded uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$1;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$1900(Lcom/android/server/vr/GearVrManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_2a
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$1;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->updateVrServiceAvailableLocked()V
    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerService;->access$2000(Lcom/android/server/vr/GearVrManagerService;)V

    monitor-exit v0

    goto :goto_34

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_31

    throw v1

    :cond_34
    :goto_34
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .registers 6

    const-string v0, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "GearVrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---- GearVrManagerService onPackageAppeared reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$1;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$1900(Lcom/android/server/vr/GearVrManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_2a
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$1;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->updateVrServiceAvailableLocked()V
    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerService;->access$2000(Lcom/android/server/vr/GearVrManagerService;)V

    monitor-exit v0

    goto :goto_34

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_31

    throw v1

    :cond_34
    :goto_34
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .registers 8

    const-string v0, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    const-string v0, "GearVrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---- GearVrManagerService onPackageDisappeared reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$1;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$1900(Lcom/android/server/vr/GearVrManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_2a
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$1;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mVrServiceAvailable:Z
    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerService;->access$2100(Lcom/android/server/vr/GearVrManagerService;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService$1;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/vr/GearVrManagerService;->mVrServiceAvailable:Z
    invoke-static {v2, v3}, Lcom/android/server/vr/GearVrManagerService;->access$2102(Lcom/android/server/vr/GearVrManagerService;Z)Z

    const-string v2, "GearVrManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---- GearVrManagerService Disappeared mVrAvailable = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "] ==> ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerService$1;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mVrServiceAvailable:Z
    invoke-static {v4}, Lcom/android/server/vr/GearVrManagerService;->access$2100(Lcom/android/server/vr/GearVrManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "] ----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    goto :goto_64

    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_2a .. :try_end_63} :catchall_61

    throw v1

    :cond_64
    :goto_64
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 4

    const-string v0, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "GearVrManagerService"

    const-string v1, "---- GearVrManagerService onPackageModified ----"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$1;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$1900(Lcom/android/server/vr/GearVrManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_16
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$1;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->updateVrServiceAvailableLocked()V
    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerService;->access$2000(Lcom/android/server/vr/GearVrManagerService;)V

    monitor-exit v0

    goto :goto_20

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_1d

    throw v1

    :cond_20
    :goto_20
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 6

    const-string v0, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "GearVrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---- GearVrManagerService onPackageRemoved uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$1;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$1900(Lcom/android/server/vr/GearVrManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_2a
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$1;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->updateVrServiceAvailableLocked()V
    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerService;->access$2000(Lcom/android/server/vr/GearVrManagerService;)V

    monitor-exit v0

    goto :goto_34

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_31

    throw v1

    :cond_34
    :goto_34
    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 6

    const-string v0, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "GearVrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---- GearVrManagerService onPackageUpdateFinished uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return-void
.end method

.method public onPackageUpdateStarted(Ljava/lang/String;I)V
    .registers 6

    const-string v0, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "GearVrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---- GearVrManagerService onPackageUpdateStarted uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return-void
.end method
