.class Lcom/android/server/twilight/TwilightService$1;
.super Ljava/lang/Object;
.source "TwilightService.java"

# interfaces
.implements Lcom/android/server/twilight/TwilightManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/twilight/TwilightService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/twilight/TwilightService;


# direct methods
.method constructor <init>(Lcom/android/server/twilight/TwilightService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastTwilightState()Lcom/android/server/twilight/TwilightState;
    .registers 3

    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    # getter for: Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;
    invoke-static {v0}, Lcom/android/server/twilight/TwilightService;->access$000(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v1, v1, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    # getter for: Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;
    invoke-static {v0}, Lcom/android/server/twilight/TwilightService;->access$000(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    # getter for: Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;
    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->access$000(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    # getter for: Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/twilight/TwilightService;->access$000(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_32

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    # getter for: Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/twilight/TwilightService;->access$000(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_32

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    # getter for: Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/twilight/TwilightService;->access$100(Lcom/android/server/twilight/TwilightService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_32
    monitor-exit v0

    return-void

    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public unregisterListener(Lcom/android/server/twilight/TwilightListener;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    # getter for: Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;
    invoke-static {v0}, Lcom/android/server/twilight/TwilightService;->access$000(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    # getter for: Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;
    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->access$000(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    # getter for: Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/twilight/TwilightService;->access$000(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_32

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    # getter for: Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/twilight/TwilightService;->access$000(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    # getter for: Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/twilight/TwilightService;->access$100(Lcom/android/server/twilight/TwilightService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_32
    monitor-exit v0

    return-void

    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method