.class final Lcom/android/server/am/Pageboost$SIPolicy;
.super Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SIPolicy"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;-><init>(Lcom/android/server/am/Pageboost$1;)V

    return-void
.end method


# virtual methods
.method AppFilter(Lcom/android/server/am/Pageboost$PageboostAppList;I)Lcom/android/server/am/Pageboost$PageboostAppList;
    .registers 15

    new-instance v0, Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-direct {v0}, Lcom/android/server/am/Pageboost$PageboostAppList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$400()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v2

    if-eqz v2, :cond_c1

    # getter for: Lcom/android/server/am/Pageboost;->mSysintManager:Lcom/samsung/android/sysint/SemSysIntManager;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1300()Lcom/samsung/android/sysint/SemSysIntManager;

    move-result-object v2

    if-eqz v2, :cond_c1

    # getter for: Lcom/android/server/am/Pageboost;->mSysintManager:Lcom/samsung/android/sysint/SemSysIntManager;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1300()Lcom/samsung/android/sysint/SemSysIntManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sysint/SemSysIntManager;->isSysIntRunning()Z

    move-result v2

    if-eqz v2, :cond_c1

    iget-object v2, p0, Lcom/android/server/am/Pageboost$SIPolicy;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_23
    iget-object v3, p1, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v3
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_be

    :try_start_26
    invoke-virtual {p1}, Lcom/android/server/am/Pageboost$PageboostAppList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    iget-object v6, v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_3c
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_26 .. :try_end_3d} :catchall_bb

    :try_start_3d
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "si policy : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/am/Pageboost;->mSysintManager:Lcom/samsung/android/sysint/SemSysIntManager;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1300()Lcom/samsung/android/sysint/SemSysIntManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/sysint/SemSysIntManager;->getNextAppRanking(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_ab

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_65
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_aa

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sysint/SysIntResponse;

    invoke-virtual {v6}, Lcom/samsung/android/sysint/SysIntResponse;->getPackage()Ljava/lang/String;

    move-result-object v7

    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$400()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v8

    if-eqz v8, :cond_a6

    invoke-virtual {v8}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->alive()Z

    move-result v9

    if-nez v9, :cond_a6

    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ghost selection : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    add-int/lit8 v4, v4, 0x1

    :cond_a6
    if-lt v4, p2, :cond_a9

    goto :goto_aa

    :cond_a9
    goto :goto_65

    :cond_aa
    :goto_aa
    goto :goto_b5

    :cond_ab
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "si policy : null list"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b5
    iput-object v1, p0, Lcom/android/server/am/Pageboost$SIPolicy;->mRecentPrefetchStrs:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/am/Pageboost$SIPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

    monitor-exit v2
    :try_end_ba
    .catchall {:try_start_3d .. :try_end_ba} :catchall_be

    goto :goto_ea

    :catchall_bb
    move-exception v4

    :try_start_bc
    monitor-exit v3
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    :try_start_bd
    throw v4

    :catchall_be
    move-exception v3

    monitor-exit v2
    :try_end_c0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_be

    throw v3

    :cond_c1
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "init for SI Policy is not done yet : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$400()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/am/Pageboost;->mSysintManager:Lcom/samsung/android/sysint/SemSysIntManager;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1300()Lcom/samsung/android/sysint/SemSysIntManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ea
    return-object v0
.end method

.method JudgePredict(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Z
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/Pageboost$SIPolicy;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/Pageboost$SIPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

    if-eqz v2, :cond_82

    iget-object v2, p0, Lcom/android/server/am/Pageboost$SIPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

    iget-object v2, v2, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_84

    :try_start_d
    iget-object v3, p0, Lcom/android/server/am/Pageboost$SIPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {v3}, Lcom/android/server/am/Pageboost$PageboostAppList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    if-ne v4, p1, :cond_3e

    const/4 v0, 0x1

    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ghost selection hit : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    :cond_3e
    goto :goto_13

    :cond_3f
    :goto_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_d .. :try_end_40} :catchall_7f

    :try_start_40
    iget-object v2, p0, Lcom/android/server/am/Pageboost$SIPolicy;->mRecentPrefetchStrs:Ljava/util/ArrayList;

    if-eqz v2, :cond_79

    iget-object v2, p0, Lcom/android/server/am/Pageboost$SIPolicy;->mRecentPrefetchStrs:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ghost selection found candidate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/am/Pageboost;->mSysintManager:Lcom/samsung/android/sysint/SemSysIntManager;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1300()Lcom/samsung/android/sysint/SemSysIntManager;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    int-to-long v4, p2

    iget-object v6, p0, Lcom/android/server/am/Pageboost$SIPolicy;->mRecentPrefetchStrs:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/android/sysint/SemSysIntManager;->launchFeedbackForNextApp(Ljava/lang/String;JLjava/util/ArrayList;)V

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/am/Pageboost$BigDataProxy;->updatePrefetchResult(ZI)V

    :cond_79
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/Pageboost$SIPolicy;->mRecentPrefetchStrs:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/server/am/Pageboost$SIPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;
    :try_end_7e
    .catchall {:try_start_40 .. :try_end_7e} :catchall_84

    goto :goto_82

    :catchall_7f
    move-exception v3

    :try_start_80
    monitor-exit v2
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    :try_start_81
    throw v3

    :cond_82
    :goto_82
    monitor-exit v1

    return v0

    :catchall_84
    move-exception v2

    monitor-exit v1
    :try_end_86
    .catchall {:try_start_81 .. :try_end_86} :catchall_84

    throw v2
.end method
