.class final Lcom/android/server/media/MediaSessionService$MessageHandler;
.super Landroid/os/Handler;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MessageHandler"
.end annotation


# static fields
.field private static final MSG_SESSIONS_CHANGED:I = 0x1

.field private static final MSG_SESSIONS_TOKENS_CHANGED:I = 0x3

.field private static final MSG_VOLUME_INITIAL_DOWN:I = 0x2


# instance fields
.field private final mIntegerCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->mIntegerCache:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_52

    goto :goto_51

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/android/server/media/MediaSessionService;->pushSessionTokensChanged(I)V
    invoke-static {v0, v1}, Lcom/android/server/media/MediaSessionService;->access$7900(Lcom/android/server/media/MediaSessionService;I)V

    goto :goto_51

    :pswitch_14
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1b
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$5000(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    if-eqz v1, :cond_3e

    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownVolumeKeyEvent:Landroid/view/KeyEvent;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/view/KeyEvent;

    move-result-object v2

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownVolumeKeyEvent:Landroid/view/KeyEvent;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/view/KeyEvent;

    move-result-object v3

    # invokes: Lcom/android/server/media/MediaSessionService;->dispatchVolumeKeyLongPressLocked(Landroid/view/KeyEvent;)V
    invoke-static {v2, v3}, Lcom/android/server/media/MediaSessionService;->access$4400(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V

    const/4 v2, 0x0

    # setter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownVolumeKeyEvent:Landroid/view/KeyEvent;
    invoke-static {v1, v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4002(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    :cond_3e
    monitor-exit v0

    goto :goto_51

    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_1b .. :try_end_42} :catchall_40

    throw v1

    :pswitch_43
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/android/server/media/MediaSessionService;->pushSessionsChanged(I)V
    invoke-static {v0, v1}, Lcom/android/server/media/MediaSessionService;->access$7800(Lcom/android/server/media/MediaSessionService;I)V

    nop

    :goto_51
    return-void

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_43
        :pswitch_14
        :pswitch_6
    .end packed-switch
.end method

.method public postSessionsChanged(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->mIntegerCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_13

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->mIntegerCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_13
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/media/MediaSessionService$MessageHandler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/server/media/MediaSessionService$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
