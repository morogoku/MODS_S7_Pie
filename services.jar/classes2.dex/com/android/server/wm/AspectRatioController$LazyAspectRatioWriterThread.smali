.class Lcom/android/server/wm/AspectRatioController$LazyAspectRatioWriterThread;
.super Ljava/lang/Thread;
.source "AspectRatioController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AspectRatioController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LazyAspectRatioWriterThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AspectRatioController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AspectRatioController;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/wm/AspectRatioController$LazyAspectRatioWriterThread;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_5
    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController$LazyAspectRatioWriterThread;->this$0:Lcom/android/server/wm/AspectRatioController;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController$LazyAspectRatioWriterThread;->this$0:Lcom/android/server/wm/AspectRatioController;

    # getter for: Lcom/android/server/wm/AspectRatioController;->mSavePackageQueue:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/wm/AspectRatioController;->access$200(Lcom/android/server/wm/AspectRatioController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/server/wm/AspectRatioController$LazyAspectRatioWriterThread;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    # invokes: Lcom/android/server/wm/AspectRatioController;->saveAspectRatioPackageMap(I)V
    invoke-static {v3, v4}, Lcom/android/server/wm/AspectRatioController;->access$300(Lcom/android/server/wm/AspectRatioController;I)V

    goto :goto_12

    :cond_28
    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController$LazyAspectRatioWriterThread;->this$0:Lcom/android/server/wm/AspectRatioController;

    # getter for: Lcom/android/server/wm/AspectRatioController;->mSavePackageQueue:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/wm/AspectRatioController;->access$200(Lcom/android/server/wm/AspectRatioController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_3a

    :try_start_31
    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController$LazyAspectRatioWriterThread;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_36} :catch_37
    .catchall {:try_start_31 .. :try_end_36} :catchall_3a

    goto :goto_38

    :catch_37
    move-exception v1

    :goto_38
    :try_start_38
    monitor-exit v0

    goto :goto_5

    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3a

    throw v1
.end method
