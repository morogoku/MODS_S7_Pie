.class Lcom/android/server/SatsService$1;
.super Landroid/os/UEventObserver;
.source "SatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SatsService;


# direct methods
.method constructor <init>(Lcom/android/server/SatsService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/SatsService$1;->this$0:Lcom/android/server/SatsService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 9

    # getter for: Lcom/android/server/SatsService;->mLockUEvent:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/SatsService;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SWITCH_NAME"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_81

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7f

    :try_start_12
    const-string v1, "SWITCH_NAME"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uart3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7a

    const-string v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_86

    const-string v4, "SatsService"

    goto :goto_61

    :pswitch_31
    const-string v4, "SatsService"

    const-string v5, "SATServiceAt will wake up."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/SatsService$1;->this$0:Lcom/android/server/SatsService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/SatsService;->mThreadUartGoWait:Z
    invoke-static {v4, v5}, Lcom/android/server/SatsService;->access$102(Lcom/android/server/SatsService;Z)Z

    iget-object v4, p0, Lcom/android/server/SatsService$1;->this$0:Lcom/android/server/SatsService;

    # getter for: Lcom/android/server/SatsService;->mThreadUart:Ljava/lang/Thread;
    invoke-static {v4}, Lcom/android/server/SatsService;->access$200(Lcom/android/server/SatsService;)Ljava/lang/Thread;

    move-result-object v4

    monitor-enter v4
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_45} :catch_7b
    .catchall {:try_start_12 .. :try_end_45} :catchall_81

    :try_start_45
    iget-object v5, p0, Lcom/android/server/SatsService$1;->this$0:Lcom/android/server/SatsService;

    # getter for: Lcom/android/server/SatsService;->mThreadUart:Ljava/lang/Thread;
    invoke-static {v5}, Lcom/android/server/SatsService;->access$200(Lcom/android/server/SatsService;)Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4

    goto :goto_7a

    :catchall_50
    move-exception v5

    monitor-exit v4
    :try_end_52
    .catchall {:try_start_45 .. :try_end_52} :catchall_50

    :try_start_52
    throw v5

    :pswitch_53
    const-string v4, "SatsService"

    const-string v5, "SATServiceAt will wait."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/SatsService$1;->this$0:Lcom/android/server/SatsService;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/SatsService;->mThreadUartGoWait:Z
    invoke-static {v4, v5}, Lcom/android/server/SatsService;->access$102(Lcom/android/server/SatsService;Z)Z

    goto :goto_7a

    :goto_61
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown state["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_7a} :catch_7b
    .catchall {:try_start_52 .. :try_end_7a} :catchall_81

    :cond_7a
    :goto_7a
    goto :goto_7f

    :catch_7b
    move-exception v1

    :try_start_7c
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7f
    :goto_7f
    monitor-exit v0

    return-void

    :catchall_81
    move-exception v1

    monitor-exit v0
    :try_end_83
    .catchall {:try_start_7c .. :try_end_83} :catchall_81

    throw v1

    nop

    nop

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_53
        :pswitch_31
    .end packed-switch
.end method
