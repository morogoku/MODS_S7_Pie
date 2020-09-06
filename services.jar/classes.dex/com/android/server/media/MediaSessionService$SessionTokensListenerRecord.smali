.class final Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionTokensListenerRecord"
.end annotation


# instance fields
.field private final mListener:Landroid/media/ISessionTokensListener;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService;Landroid/media/ISessionTokensListener;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;->mListener:Landroid/media/ISessionTokensListener;

    iput p3, p0, Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;->mUserId:I

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;)Landroid/media/ISessionTokensListener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;->mListener:Landroid/media/ISessionTokensListener;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;)I
    .registers 2

    iget v0, p0, Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;->mUserId:I

    return v0
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mSessionTokensListeners:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$5400(Lcom/android/server/media/MediaSessionService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1
.end method
