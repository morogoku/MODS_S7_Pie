.class Lcom/android/server/am/MARsPolicyManager$2;
.super Landroid/app/IUidObserver$Stub;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsPolicyManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$300(Lcom/android/server/am/MARsPolicyManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_b
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mIsScreenOnFreecessEnabled:Z
    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager;->access$800(Lcom/android/server/am/MARsPolicyManager;)Z

    move-result v2

    if-eqz v2, :cond_97

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mSkipTriggerLcdOnFreeze:Z
    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager;->access$000(Lcom/android/server/am/MARsPolicyManager;)Z

    move-result v2

    if-nez v2, :cond_97

    const v2, 0x186a0

    if-lt p1, v2, :cond_21

    goto :goto_27

    :cond_21
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v2

    if-eqz v2, :cond_97

    :goto_27
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # invokes: Lcom/android/server/am/MARsPolicyManager;->getPackagesByUid(I)Ljava/util/ArrayList;
    invoke-static {v2, p1}, Lcom/android/server/am/MARsPolicyManager;->access$400(Lcom/android/server/am/MARsPolicyManager;I)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_97

    const/4 v3, 0x0

    :goto_30
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_97

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;
    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager;->access$500(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    move-result-object v5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    # invokes: Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;
    invoke-static {v4, v5, v6, v7}, Lcom/android/server/am/MARsPolicyManager;->access$600(Lcom/android/server/am/MARsPolicyManager;Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v4

    if-eqz v4, :cond_94

    iget v5, v4, Lcom/android/server/am/MARsPackageStatus;->freecessState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_58

    iget v5, v4, Lcom/android/server/am/MARsPackageStatus;->freecessState:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_94

    :cond_58
    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->DEBUG_ENG:Z

    if-eqz v5, :cond_89

    const-string v5, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onUidActive...uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/am/MARsPackageStatus;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", packageName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", freecessState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/am/MARsPackageStatus;->freecessState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_89
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    iget-object v5, v5, Lcom/android/server/am/MARsPolicyManager;->mHandler:Lcom/android/server/am/MARsHandler;

    iget-object v6, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v7, v4, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/MARsHandler;->sendFrozenStateMsgToMainHandler(Ljava/lang/String;I)V

    :cond_94
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_97
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mUidIdleList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager;->access$700(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ac

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mUidIdleList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager;->access$700(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_ac
    monitor-exit v1

    return-void

    :catchall_ae
    move-exception v2

    monitor-exit v1
    :try_end_b0
    .catchall {:try_start_b .. :try_end_b0} :catchall_ae

    throw v2
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onUidGone(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$300(Lcom/android/server/am/MARsPolicyManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_b
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mUidIdleList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager;->access$700(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mUidIdleList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager;->access$700(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_20
    monitor-exit v1

    return-void

    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_22

    throw v2
.end method

.method public onUidIdle(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$300(Lcom/android/server/am/MARsPolicyManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_b
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mUidIdleList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager;->access$700(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mUidIdleList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager;->access$700(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    monitor-exit v1

    return-void

    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_22

    throw v2
.end method

.method public onUidStateChanged(IIJ)V
    .registers 5

    return-void
.end method
