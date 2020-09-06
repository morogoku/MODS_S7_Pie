.class Lcom/android/server/am/MARsPolicyManager$1;
.super Landroid/app/IProcessObserver$Stub;
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

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mSkipTriggerLcdOnFreeze:Z
    invoke-static {v0}, Lcom/android/server/am/MARsPolicyManager;->access$000(Lcom/android/server/am/MARsPolicyManager;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/server/am/MARsPolicyManager;->access$100(Lcom/android/server/am/MARsPolicyManager;)Z

    move-result v0

    if-eqz v0, :cond_7d

    if-nez p3, :cond_7d

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mUidIdleCheck:Z
    invoke-static {v0}, Lcom/android/server/am/MARsPolicyManager;->access$200(Lcom/android/server/am/MARsPolicyManager;)Z

    move-result v0

    const v1, 0x186a0

    if-nez v0, :cond_2e

    if-lt p2, v1, :cond_21

    goto :goto_27

    :cond_21
    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    :goto_27
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/server/am/MARsPolicyManager;->triggerLcdOnAction(ILjava/lang/String;)V

    goto :goto_7d

    :cond_2e
    if-lt p2, v1, :cond_31

    goto :goto_37

    :cond_31
    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_7d

    :goto_37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$300(Lcom/android/server/am/MARsPolicyManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_43
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # invokes: Lcom/android/server/am/MARsPolicyManager;->getPackagesByUid(I)Ljava/util/ArrayList;
    invoke-static {v2, p2}, Lcom/android/server/am/MARsPolicyManager;->access$400(Lcom/android/server/am/MARsPolicyManager;I)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_60

    move v4, v3

    :goto_4d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_60

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    nop

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4d

    :cond_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_43 .. :try_end_61} :catchall_7a

    nop

    nop

    :goto_63
    move v1, v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7d

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    iget-object v2, v2, Lcom/android/server/am/MARsPolicyManager;->mHandler:Lcom/android/server/am/MARsHandler;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, p2, v3}, Lcom/android/server/am/MARsHandler;->sendUidIdleTriggerToMainHandler(ILjava/lang/String;)V

    add-int/lit8 v3, v1, 0x1

    goto :goto_63

    :catchall_7a
    move-exception v2

    :try_start_7b
    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw v2

    :cond_7d
    :goto_7d
    return-void
.end method

.method public onProcessDied(II)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mSkipTriggerLcdOnFreeze:Z
    invoke-static {v0}, Lcom/android/server/am/MARsPolicyManager;->access$000(Lcom/android/server/am/MARsPolicyManager;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/am/MARsPolicyManager;->access$300(Lcom/android/server/am/MARsPolicyManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_10
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # invokes: Lcom/android/server/am/MARsPolicyManager;->getPackagesByUid(I)Ljava/util/ArrayList;
    invoke-static {v1, p2}, Lcom/android/server/am/MARsPolicyManager;->access$400(Lcom/android/server/am/MARsPolicyManager;I)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_63

    const/4 v2, 0x0

    :goto_19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_63

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;
    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager;->access$500(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    move-result-object v4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    # invokes: Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;
    invoke-static {v3, v4, v5, v6}, Lcom/android/server/am/MARsPolicyManager;->access$600(Lcom/android/server/am/MARsPolicyManager;Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v3

    if-eqz v3, :cond_60

    iget v4, v3, Lcom/android/server/am/MARsPackageStatus;->freecessState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_60

    const/4 v4, 0x1

    iput v4, v3, Lcom/android/server/am/MARsPackageStatus;->freecessState:I

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    iget-object v4, v4, Lcom/android/server/am/MARsPolicyManager;->mHandler:Lcom/android/server/am/MARsHandler;

    const/16 v5, 0xe

    iget-object v6, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/MARsHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    iget-object v4, v4, Lcom/android/server/am/MARsPolicyManager;->mHandler:Lcom/android/server/am/MARsHandler;

    const/16 v5, 0xf

    iget-object v6, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/MARsHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    iget-object v4, v4, Lcom/android/server/am/MARsPolicyManager;->mHandler:Lcom/android/server/am/MARsHandler;

    const/16 v5, 0x11

    iget-object v6, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/MARsHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    :cond_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_63
    monitor-exit v0

    return-void

    :catchall_65
    move-exception v1

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_10 .. :try_end_67} :catchall_65

    throw v1
.end method
