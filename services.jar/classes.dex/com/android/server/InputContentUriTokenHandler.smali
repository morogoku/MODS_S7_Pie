.class final Lcom/android/server/InputContentUriTokenHandler;
.super Lcom/android/internal/inputmethod/IInputContentUriToken$Stub;
.source "InputContentUriTokenHandler.java"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mPermissionOwnerToken:Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mSourceUid:I

.field private final mSourceUserId:I

.field private final mTargetPackage:Ljava/lang/String;

.field private final mTargetUserId:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;ILjava/lang/String;II)V
    .registers 7

    invoke-direct {p0}, Lcom/android/internal/inputmethod/IInputContentUriToken$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputContentUriTokenHandler;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/android/server/InputContentUriTokenHandler;->mUri:Landroid/net/Uri;

    iput p2, p0, Lcom/android/server/InputContentUriTokenHandler;->mSourceUid:I

    iput-object p3, p0, Lcom/android/server/InputContentUriTokenHandler;->mTargetPackage:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/InputContentUriTokenHandler;->mSourceUserId:I

    iput p5, p0, Lcom/android/server/InputContentUriTokenHandler;->mTargetUserId:I

    return-void
.end method

.method private doTakeLocked(Landroid/os/IBinder;)V
    .registers 12

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget v4, p0, Lcom/android/server/InputContentUriTokenHandler;->mSourceUid:I

    iget-object v5, p0, Lcom/android/server/InputContentUriTokenHandler;->mTargetPackage:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/InputContentUriTokenHandler;->mUri:Landroid/net/Uri;

    const/4 v7, 0x1

    iget v8, p0, Lcom/android/server/InputContentUriTokenHandler;->mSourceUserId:I

    iget v9, p0, Lcom/android/server/InputContentUriTokenHandler;->mTargetUserId:I

    move-object v3, p1

    invoke-interface/range {v2 .. v9}, Landroid/app/IActivityManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_1a
    .catchall {:try_start_4 .. :try_end_17} :catchall_18

    goto :goto_1e

    :catchall_18
    move-exception v2

    goto :goto_23

    :catch_1a
    move-exception v2

    :try_start_1b
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_18

    :goto_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :goto_23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/InputContentUriTokenHandler;->release()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public release()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/InputContentUriTokenHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    if-nez v1, :cond_9

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_29

    return-void

    :cond_9
    const/4 v1, 0x0

    :try_start_a
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/InputContentUriTokenHandler;->mUri:Landroid/net/Uri;

    const/4 v5, 0x1

    iget v6, p0, Lcom/android/server/InputContentUriTokenHandler;->mSourceUserId:I

    invoke-interface {v2, v3, v4, v5, v6}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_18} :catch_1d
    .catchall {:try_start_a .. :try_end_18} :catchall_1b

    :try_start_18
    iput-object v1, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_29

    goto :goto_23

    :catchall_1b
    move-exception v2

    goto :goto_26

    :catch_1d
    move-exception v2

    :try_start_1e
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_1b

    :try_start_21
    iput-object v1, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    :goto_23
    nop

    monitor-exit v0

    return-void

    :goto_26
    iput-object v1, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    throw v2

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public take()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/InputContentUriTokenHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    if-eqz v1, :cond_9

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_21

    return-void

    :cond_9
    :try_start_9
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const-string v2, "InputContentUriTokenHandler"

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_16
    .catchall {:try_start_9 .. :try_end_15} :catchall_21

    goto :goto_1a

    :catch_16
    move-exception v1

    :try_start_17
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_1a
    iget-object v1, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/InputContentUriTokenHandler;->doTakeLocked(Landroid/os/IBinder;)V

    monitor-exit v0

    return-void

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_21

    throw v1
.end method
