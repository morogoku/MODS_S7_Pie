.class Lcom/android/server/nextapp/PkgPredictorService$ObserverHandler;
.super Landroid/os/Handler;
.source "PkgPredictorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/nextapp/PkgPredictorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObserverHandler"
.end annotation


# static fields
.field public static final ACTION_FOREGROUND_ACTIVITY_CHANGED:I = 0x1

.field public static final ACTION_PROCESS_DIE:I = 0x2

.field public static final ACTION_SAVE_REC:I = 0x4

.field public static final ACTION_UID_GONE:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/nextapp/PkgPredictorService;


# direct methods
.method public constructor <init>(Lcom/android/server/nextapp/PkgPredictorService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/nextapp/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_82

    goto/16 :goto_81

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/nextapp/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    # getter for: Lcom/android/server/nextapp/PkgPredictorService;->mCollector:Lcom/android/server/nextapp/Collector;
    invoke-static {v0}, Lcom/android/server/nextapp/PkgPredictorService;->access$100(Lcom/android/server/nextapp/PkgPredictorService;)Lcom/android/server/nextapp/Collector;

    move-result-object v0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/android/server/nextapp/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    # getter for: Lcom/android/server/nextapp/PkgPredictorService;->mCollector:Lcom/android/server/nextapp/Collector;
    invoke-static {v0}, Lcom/android/server/nextapp/PkgPredictorService;->access$100(Lcom/android/server/nextapp/PkgPredictorService;)Lcom/android/server/nextapp/Collector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/nextapp/Collector;->saveRecords()V

    goto :goto_81

    :pswitch_19
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    # getter for: Lcom/android/server/nextapp/PkgPredictorService;->mInstalledPkgs:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/nextapp/PkgPredictorService;->access$1000(Lcom/android/server/nextapp/PkgPredictorService;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    :try_start_23
    iget-object v3, p0, Lcom/android/server/nextapp/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    # getter for: Lcom/android/server/nextapp/PkgPredictorService;->mInstalledPkgs:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/server/nextapp/PkgPredictorService;->access$1000(Lcom/android/server/nextapp/PkgPredictorService;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/nextapp/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    # getter for: Lcom/android/server/nextapp/PkgPredictorService;->mInstalledPkgs:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/nextapp/PkgPredictorService;->access$1000(Lcom/android/server/nextapp/PkgPredictorService;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v3

    :cond_4d
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_23 .. :try_end_4e} :catchall_6a

    const/4 v2, 0x0

    :goto_4f
    if-eqz v1, :cond_69

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_69

    iget-object v3, p0, Lcom/android/server/nextapp/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    # getter for: Lcom/android/server/nextapp/PkgPredictorService;->mController:Lcom/android/server/nextapp/PreloadController;
    invoke-static {v3}, Lcom/android/server/nextapp/PkgPredictorService;->access$400(Lcom/android/server/nextapp/PkgPredictorService;)Lcom/android/server/nextapp/PreloadController;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/nextapp/PreloadController;->die(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    :cond_69
    goto :goto_81

    :catchall_6a
    move-exception v3

    :try_start_6b
    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v3

    :pswitch_6d
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    # invokes: Lcom/android/server/nextapp/PkgPredictorService;->processProcessDie(II)V
    invoke-static {v2, v0, v1}, Lcom/android/server/nextapp/PkgPredictorService;->access$900(Lcom/android/server/nextapp/PkgPredictorService;II)V

    goto :goto_81

    :pswitch_77
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    # invokes: Lcom/android/server/nextapp/PkgPredictorService;->processForegroundChanged(II)V
    invoke-static {v2, v0, v1}, Lcom/android/server/nextapp/PkgPredictorService;->access$800(Lcom/android/server/nextapp/PkgPredictorService;II)V

    nop

    :cond_81
    :goto_81
    return-void

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_77
        :pswitch_6d
        :pswitch_19
        :pswitch_7
    .end packed-switch
.end method
