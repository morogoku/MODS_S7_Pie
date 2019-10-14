.class Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;
.super Ljava/lang/Object;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mNextRequestId:I

.field private mRequestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mNextRequestId:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mRequestMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public allocateNewRequestId(Z)I
    .registers 7

    iget v0, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mNextRequestId:I

    iget v1, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mNextRequestId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mNextRequestId:I

    if-eqz p1, :cond_22

    new-instance v1, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;

    invoke-direct {v1}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;-><init>()V

    iput v0, v1, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mRequestId:I

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mRequestMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_14
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mRequestMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    goto :goto_22

    :catchall_1f
    move-exception v3

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_1f

    throw v3

    :cond_22
    :goto_22
    return v0
.end method

.method public getRequestItem(I)Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mRequestMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mRequestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;

    move-object v0, v2

    monitor-exit v1

    return-object v0

    :catchall_13
    move-exception v2

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_13

    throw v2
.end method

.method public notifyResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;)V
    .registers 6

    iget v0, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mRequestId:I

    invoke-virtual {p0, v0}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->getRequestItem(I)Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;

    move-result-object v0

    if-nez v0, :cond_22

    sget-object v1, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyResult : Could not find request information. id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mRequestId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_22
    iget-object v1, v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mWaitObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_25
    iput-object p1, v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mResultData:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mResponseArrived:Z

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mWaitObj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_31
    move-exception v2

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_31

    throw v2
.end method

.method public waitResult(II)Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;
    .registers 11

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->getRequestItem(I)Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;

    move-result-object v0

    if-nez v0, :cond_1f

    sget-object v1, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "waitResult : Could not find request info!! id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mWaitObj:Ljava/lang/Object;

    monitor-enter v3

    :try_start_26
    iget-boolean v4, v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mResponseArrived:Z
    :try_end_28
    .catchall {:try_start_26 .. :try_end_28} :catchall_8b

    if-nez v4, :cond_49

    :try_start_2a
    iget-object v4, v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mWaitObj:Ljava/lang/Object;

    int-to-long v5, p2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_30} :catch_31
    .catchall {:try_start_2a .. :try_end_30} :catchall_8b

    goto :goto_49

    :catch_31
    move-exception v4

    :try_start_32
    sget-object v5, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "waitResult : e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    :goto_49
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_32 .. :try_end_4a} :catchall_8b

    sget-object v3, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "waitResult : Unlocked. Id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Elapsed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mRequestMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_77
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mRequestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;

    move-object v0, v3

    monitor-exit v4
    :try_end_85
    .catchall {:try_start_77 .. :try_end_85} :catchall_88

    iget-object v3, v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mResultData:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    return-object v3

    :catchall_88
    move-exception v3

    :try_start_89
    monitor-exit v4
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw v3

    :catchall_8b
    move-exception v4

    :try_start_8c
    monitor-exit v3
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    throw v4
.end method
