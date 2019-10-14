.class final Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;
.super Ljava/lang/Object;
.source "TextClassificationManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textclassifier/TextClassificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingRequest"
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private final mOnServiceFailure:Ljava/lang/Runnable;

.field private final mOwningUser:Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mRequest:Ljava/lang/Runnable;

.field private final mService:Lcom/android/server/textclassifier/TextClassificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Landroid/os/IBinder;Lcom/android/server/textclassifier/TextClassificationManagerService;Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;

    const-string v1, "handling pending request"

    # invokes: Lcom/android/server/textclassifier/TextClassificationManagerService;->logOnFailure(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/lang/String;)Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$600(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mRequest:Ljava/lang/Runnable;

    const-string/jumbo v0, "notifying callback of service failure"

    # invokes: Lcom/android/server/textclassifier/TextClassificationManagerService;->logOnFailure(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/lang/String;)Ljava/lang/Runnable;
    invoke-static {p2, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$600(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mOnServiceFailure:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mBinder:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    iput-object p5, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mOwningUser:Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_30

    :try_start_25
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_30
    :goto_30
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mRequest:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mOnServiceFailure:Ljava/lang/Runnable;

    return-object v0
.end method

.method private removeLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mOwningUser:Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    iget-object v0, v0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mPendingRequests:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_11
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    # getter for: Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$100(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->removeLocked()V

    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw v1
.end method
