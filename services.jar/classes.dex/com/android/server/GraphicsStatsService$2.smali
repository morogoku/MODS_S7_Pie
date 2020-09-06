.class Lcom/android/server/GraphicsStatsService$2;
.super Ljava/lang/Object;
.source "GraphicsStatsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/GraphicsStatsService;->getSIGraphicsDataRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GraphicsStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/GraphicsStatsService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/GraphicsStatsService$2;->this$0:Lcom/android/server/GraphicsStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 23

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/GraphicsStatsService$2;->this$0:Lcom/android/server/GraphicsStatsService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/GraphicsStatsService;->mSiRunning:Z
    invoke-static {v0, v2}, Lcom/android/server/GraphicsStatsService;->access$502(Lcom/android/server/GraphicsStatsService;Z)Z

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-wide v6, v4

    const/4 v8, 0x0

    :try_start_d
    iget-object v0, v1, Lcom/android/server/GraphicsStatsService$2;->this$0:Lcom/android/server/GraphicsStatsService;

    # getter for: Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/GraphicsStatsService;->access$600(Lcom/android/server/GraphicsStatsService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_d1
    .catchall {:try_start_d .. :try_end_14} :catchall_cf

    move v0, v8

    :goto_15
    :try_start_15
    iget-object v10, v1, Lcom/android/server/GraphicsStatsService$2;->this$0:Lcom/android/server/GraphicsStatsService;

    # getter for: Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/server/GraphicsStatsService;->access$700(Lcom/android/server/GraphicsStatsService;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_52

    iget-object v10, v1, Lcom/android/server/GraphicsStatsService$2;->this$0:Lcom/android/server/GraphicsStatsService;

    # getter for: Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/server/GraphicsStatsService;->access$700(Lcom/android/server/GraphicsStatsService;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    iget v10, v10, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPid:I

    int-to-long v10, v10

    iget-object v12, v1, Lcom/android/server/GraphicsStatsService$2;->this$0:Lcom/android/server/GraphicsStatsService;

    # getter for: Lcom/android/server/GraphicsStatsService;->mPidForStats:J
    invoke-static {v12}, Lcom/android/server/GraphicsStatsService;->access$800(Lcom/android/server/GraphicsStatsService;)J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_4f

    new-instance v10, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;

    iget-object v11, v1, Lcom/android/server/GraphicsStatsService$2;->this$0:Lcom/android/server/GraphicsStatsService;

    iget-object v12, v1, Lcom/android/server/GraphicsStatsService$2;->this$0:Lcom/android/server/GraphicsStatsService;

    # getter for: Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/server/GraphicsStatsService;->access$700(Lcom/android/server/GraphicsStatsService;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    invoke-direct {v10, v11, v12}, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;-><init>(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V

    move-object v3, v10

    goto :goto_52

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_52
    :goto_52
    monitor-exit v9
    :try_end_53
    .catchall {:try_start_15 .. :try_end_53} :catchall_cc

    :try_start_53
    iget-object v0, v1, Lcom/android/server/GraphicsStatsService$2;->this$0:Lcom/android/server/GraphicsStatsService;

    # getter for: Lcom/android/server/GraphicsStatsService;->mSiLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/GraphicsStatsService;->access$900(Lcom/android/server/GraphicsStatsService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_5a} :catch_d1
    .catchall {:try_start_53 .. :try_end_5a} :catchall_cf

    if-eqz v3, :cond_a6

    :try_start_5c
    iget-object v0, v1, Lcom/android/server/GraphicsStatsService$2;->this$0:Lcom/android/server/GraphicsStatsService;

    # getter for: Lcom/android/server/GraphicsStatsService;->mSiPipe:[Landroid/os/ParcelFileDescriptor;
    invoke-static {v0}, Lcom/android/server/GraphicsStatsService;->access$1000(Lcom/android/server/GraphicsStatsService;)[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_a6

    iget-object v0, v1, Lcom/android/server/GraphicsStatsService$2;->this$0:Lcom/android/server/GraphicsStatsService;

    iget-object v10, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    # invokes: Lcom/android/server/GraphicsStatsService;->pathForApp(Lcom/android/server/GraphicsStatsService$BufferInfo;)Ljava/io/File;
    invoke-static {v0, v10}, Lcom/android/server/GraphicsStatsService;->access$1100(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$BufferInfo;)Ljava/io/File;

    move-result-object v0

    iget-object v10, v1, Lcom/android/server/GraphicsStatsService$2;->this$0:Lcom/android/server/GraphicsStatsService;

    # getter for: Lcom/android/server/GraphicsStatsService;->mSiPipe:[Landroid/os/ParcelFileDescriptor;
    invoke-static {v10}, Lcom/android/server/GraphicsStatsService;->access$1000(Lcom/android/server/GraphicsStatsService;)[Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    aget-object v2, v10, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v2

    # invokes: Lcom/android/server/GraphicsStatsService;->nCreateDump(IZ)J
    invoke-static {v2, v8}, Lcom/android/server/GraphicsStatsService;->access$1200(IZ)J

    move-result-wide v10
    :try_end_80
    .catchall {:try_start_5c .. :try_end_80} :catchall_a4

    :try_start_80
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    iget-object v2, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-object v13, v2, Lcom/android/server/GraphicsStatsService$BufferInfo;->packageName:Ljava/lang/String;

    iget-object v2, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v14, v2, Lcom/android/server/GraphicsStatsService$BufferInfo;->versionCode:J

    iget-object v2, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v6, v2, Lcom/android/server/GraphicsStatsService$BufferInfo;->startTime:J

    iget-object v2, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v4, v2, Lcom/android/server/GraphicsStatsService$BufferInfo;->endTime:J

    iget-object v2, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mData:[B

    move-wide/from16 v16, v6

    move-wide/from16 v18, v4

    move-object/from16 v20, v2

    # invokes: Lcom/android/server/GraphicsStatsService;->nAddToDump(JLjava/lang/String;Ljava/lang/String;JJJ[B)V
    invoke-static/range {v10 .. v20}, Lcom/android/server/GraphicsStatsService;->access$1300(JLjava/lang/String;Ljava/lang/String;JJJ[B)V
    :try_end_9f
    .catchall {:try_start_80 .. :try_end_9f} :catchall_a1

    move-wide v6, v10

    goto :goto_a6

    :catchall_a1
    move-exception v0

    move-wide v6, v10

    goto :goto_ca

    :catchall_a4
    move-exception v0

    goto :goto_ca

    :cond_a6
    :goto_a6
    :try_start_a6
    monitor-exit v9
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a4

    :try_start_a7
    const-string v0, "GraphicsStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Leaving mSIGraphicsDataRunnable PID = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/GraphicsStatsService$2;->this$0:Lcom/android/server/GraphicsStatsService;

    # getter for: Lcom/android/server/GraphicsStatsService;->mPidForStats:J
    invoke-static {v4}, Lcom/android/server/GraphicsStatsService;->access$800(Lcom/android/server/GraphicsStatsService;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_c3} :catch_d1
    .catchall {:try_start_a7 .. :try_end_c3} :catchall_cf

    const-wide/16 v4, 0x0

    cmp-long v0, v6, v4

    if-eqz v0, :cond_e3

    goto :goto_e0

    :goto_ca
    :try_start_ca
    monitor-exit v9
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_a4

    :try_start_cb
    throw v0
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_cc} :catch_d1
    .catchall {:try_start_cb .. :try_end_cc} :catchall_cf

    :catchall_cc
    move-exception v0

    :try_start_cd
    monitor-exit v9
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_cc

    :try_start_ce
    throw v0
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_cf} :catch_d1
    .catchall {:try_start_ce .. :try_end_cf} :catchall_cf

    :catchall_cf
    move-exception v0

    goto :goto_ea

    :catch_d1
    move-exception v0

    :try_start_d2
    const-string v2, "GraphicsStatsService"

    const-string/jumbo v4, "mSIGraphicsDataRunnable "

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_da
    .catchall {:try_start_d2 .. :try_end_da} :catchall_cf

    const-wide/16 v4, 0x0

    cmp-long v0, v6, v4

    if-eqz v0, :cond_e3

    :goto_e0
    # invokes: Lcom/android/server/GraphicsStatsService;->nFinishDump(J)V
    invoke-static {v6, v7}, Lcom/android/server/GraphicsStatsService;->access$1400(J)V

    :cond_e3
    iget-object v0, v1, Lcom/android/server/GraphicsStatsService$2;->this$0:Lcom/android/server/GraphicsStatsService;

    # setter for: Lcom/android/server/GraphicsStatsService;->mSiRunning:Z
    invoke-static {v0, v8}, Lcom/android/server/GraphicsStatsService;->access$502(Lcom/android/server/GraphicsStatsService;Z)Z

    nop

    return-void

    :goto_ea
    const-wide/16 v4, 0x0

    cmp-long v2, v6, v4

    if-eqz v2, :cond_f3

    # invokes: Lcom/android/server/GraphicsStatsService;->nFinishDump(J)V
    invoke-static {v6, v7}, Lcom/android/server/GraphicsStatsService;->access$1400(J)V

    :cond_f3
    iget-object v2, v1, Lcom/android/server/GraphicsStatsService$2;->this$0:Lcom/android/server/GraphicsStatsService;

    # setter for: Lcom/android/server/GraphicsStatsService;->mSiRunning:Z
    invoke-static {v2, v8}, Lcom/android/server/GraphicsStatsService;->access$502(Lcom/android/server/GraphicsStatsService;Z)Z

    throw v0
.end method
