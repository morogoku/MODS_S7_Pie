.class final Lcom/android/server/pm/InstantAppResolverConnection;
.super Ljava/lang/Object;
.source "InstantAppResolverConnection.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;,
        Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;,
        Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;,
        Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;
    }
.end annotation


# static fields
.field private static final BIND_SERVICE_TIMEOUT_MS:J

.field private static final CALL_SERVICE_TIMEOUT_MS:J

.field private static final DEBUG_INSTANT:Z

.field private static final STATE_BINDING:I = 0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PENDING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PackageManager"


# instance fields
.field private final mBgHandler:Landroid/os/Handler;

.field private mBindState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mGetInstantAppResolveInfoCaller:Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;

.field private final mIntent:Landroid/content/Intent;

.field private final mLock:Ljava/lang/Object;

.field private mRemoteInstance:Landroid/app/IInstantAppResolver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x1f4

    goto :goto_9

    :cond_7
    const-wide/16 v0, 0x12c

    :goto_9
    sput-wide v0, Lcom/android/server/pm/InstantAppResolverConnection;->BIND_SERVICE_TIMEOUT_MS:J

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_12

    const-wide/16 v0, 0xc8

    goto :goto_14

    :cond_12
    const-wide/16 v0, 0x64

    :goto_14
    sput-wide v0, Lcom/android/server/pm/InstantAppResolverConnection;->CALL_SERVICE_TIMEOUT_MS:J

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;

    invoke-direct {v0}, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mGetInstantAppResolveInfoCaller:Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;

    new-instance v0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;-><init>(Lcom/android/server/pm/InstantAppResolverConnection;Lcom/android/server/pm/InstantAppResolverConnection$1;)V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mIntent:Landroid/content/Intent;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBgHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/InstantAppResolverConnection;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/pm/InstantAppResolverConnection;Landroid/app/IInstantAppResolver;)Landroid/app/IInstantAppResolver;
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/pm/InstantAppResolverConnection;)I
    .registers 2

    iget v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/pm/InstantAppResolverConnection;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/pm/InstantAppResolverConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/InstantAppResolverConnection;->handleBinderDiedLocked()V

    return-void
.end method

.method static synthetic access$600()J
    .registers 2

    sget-wide v0, Lcom/android/server/pm/InstantAppResolverConnection;->CALL_SERVICE_TIMEOUT_MS:J

    return-wide v0
.end method

.method private bind(Ljava/lang/String;)Landroid/app/IInstantAppResolver;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    monitor-exit v1

    return-object v2

    :cond_c
    iget v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3e

    sget-boolean v2, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    if-eqz v2, :cond_30

    const-string v2, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] Previous bind timed out; waiting for connection"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_13a

    :cond_30
    :try_start_30
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection;->waitForBindLocked(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;
    :try_end_39
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_30 .. :try_end_39} :catch_3c
    .catchall {:try_start_30 .. :try_end_39} :catchall_13a

    :try_start_39
    monitor-exit v1

    return-object v2

    :cond_3b
    goto :goto_3e

    :catch_3c
    move-exception v2

    const/4 v0, 0x1

    :cond_3e
    :goto_3e
    iget v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_73

    sget-boolean v2, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    if-eqz v2, :cond_62

    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] Another thread is binding; waiting for connection"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection;->waitForBindLocked(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    monitor-exit v1

    return-object v2

    :cond_6d
    new-instance v2, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    invoke-direct {v2, v4}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw v2

    :cond_73
    iput v4, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    monitor-exit v1
    :try_end_76
    .catchall {:try_start_39 .. :try_end_76} :catchall_13a

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_a7

    :try_start_7b
    sget-boolean v6, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    if-eqz v6, :cond_9a

    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "] Previous connection never established; rebinding"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9a
    iget-object v6, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v6, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_a7

    :catchall_a2
    move-exception v4

    move-object v6, v2

    move v2, v1

    goto/16 :goto_124

    :cond_a7
    :goto_a7
    sget-boolean v6, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    if-eqz v6, :cond_c6

    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "] Binding to instant app resolver"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c6
    const v6, 0x4000001

    iget-object v7, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mIntent:Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    const v10, 0x4000001

    sget-object v11, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v7

    move v1, v7

    if-eqz v1, :cond_fe

    iget-object v4, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_de
    .catchall {:try_start_7b .. :try_end_de} :catchall_a2

    :try_start_de
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection;->waitForBindLocked(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    move-object v2, v7

    monitor-exit v4
    :try_end_e5
    .catchall {:try_start_de .. :try_end_e5} :catchall_fb

    iget-object v7, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v7

    if-eqz v1, :cond_ef

    if-nez v2, :cond_ef

    :try_start_ec
    iput v3, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    goto :goto_f1

    :cond_ef
    iput v5, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    :goto_f1
    iget-object v3, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v7

    return-object v2

    :catchall_f8
    move-exception v3

    monitor-exit v7
    :try_end_fa
    .catchall {:try_start_ec .. :try_end_fa} :catchall_f8

    throw v3

    :catchall_fb
    move-exception v7

    :try_start_fc
    monitor-exit v4
    :try_end_fd
    .catchall {:try_start_fc .. :try_end_fd} :catchall_fb

    :try_start_fd
    throw v7

    :cond_fe
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "] Failed to bind to: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mIntent:Landroid/content/Intent;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    invoke-direct {v7, v4}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw v7
    :try_end_124
    .catchall {:try_start_fd .. :try_end_124} :catchall_a2

    :goto_124
    iget-object v7, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v7

    if-eqz v2, :cond_12e

    if-nez v6, :cond_12e

    :try_start_12b
    iput v3, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    goto :goto_130

    :cond_12e
    iput v5, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    :goto_130
    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v7
    :try_end_136
    .catchall {:try_start_12b .. :try_end_136} :catchall_137

    throw v4

    :catchall_137
    move-exception v1

    :try_start_138
    monitor-exit v7
    :try_end_139
    .catchall {:try_start_138 .. :try_end_139} :catchall_137

    throw v1

    :catchall_13a
    move-exception v2

    :try_start_13b
    monitor-exit v1
    :try_end_13c
    .catchall {:try_start_13b .. :try_end_13c} :catchall_13a

    throw v2
.end method

.method private getRemoteInstanceLazy(Ljava/lang/String;)Landroid/app/IInstantAppResolver;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection;->bind(Ljava/lang/String;)Landroid/app/IInstantAppResolver;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private handleBinderDiedLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz v0, :cond_10

    :try_start_4
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    invoke-interface {v0}, Landroid/app/IInstantAppResolver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_e
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_e} :catch_f

    goto :goto_10

    :catch_f
    move-exception v0

    :cond_10
    :goto_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    return-void
.end method

.method public static synthetic lambda$optimisticBind$0(Lcom/android/server/pm/InstantAppResolverConnection;)V
    .registers 4

    :try_start_0
    const-string v0, "Optimistic Bind"

    invoke-direct {p0, v0}, Lcom/android/server/pm/InstantAppResolverConnection;->bind(Ljava/lang/String;)Landroid/app/IInstantAppResolver;

    move-result-object v0

    if-eqz v0, :cond_13

    sget-boolean v0, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_13

    const-string v0, "PackageManager"

    const-string v1, "Optimistic bind succeeded."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_0 .. :try_end_13} :catch_14
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_13} :catch_14
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_13} :catch_14

    :cond_13
    goto :goto_1c

    :catch_14
    move-exception v0

    const-string v1, "PackageManager"

    const-string v2, "Optimistic bind failed."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    return-void
.end method

.method private throwIfCalledOnMainThread()V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_11

    return-void

    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot invoke on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private waitForBindLocked(Ljava/lang/String;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    :goto_4
    iget v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz v2, :cond_d

    goto :goto_3d

    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sget-wide v4, Lcom/android/server/pm/InstantAppResolverConnection;->BIND_SERVICE_TIMEOUT_MS:J

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_21

    iget-object v6, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v6, v4, v5}, Ljava/lang/Object;->wait(J)V

    goto :goto_4

    :cond_21
    new-instance v6, Ljava/util/concurrent/TimeoutException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "] Didn\'t bind to resolver in time!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3d
    :goto_3d
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    sget-boolean v0, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_b

    const-string v0, "PackageManager"

    const-string v1, "Binder to instant app resolver died"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_e
    invoke-direct {p0}, Lcom/android/server/pm/InstantAppResolverConnection;->handleBinderDiedLocked()V

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_16

    invoke-virtual {p0}, Lcom/android/server/pm/InstantAppResolverConnection;->optimisticBind()V

    return-void

    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public final getInstantAppIntentFilterList(Landroid/content/Intent;[ILjava/lang/String;Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;Landroid/os/Handler;J)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;
        }
    .end annotation

    new-instance v6, Lcom/android/server/pm/InstantAppResolverConnection$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p5

    move-object v3, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/InstantAppResolverConnection$1;-><init>(Lcom/android/server/pm/InstantAppResolverConnection;Landroid/os/Handler;Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;J)V

    move-object v0, v6

    :try_start_b
    invoke-direct {p0, p3}, Lcom/android/server/pm/InstantAppResolverConnection;->getRemoteInstanceLazy(Ljava/lang/String;)Landroid/app/IInstantAppResolver;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, v0}, Landroid/app/IInstantAppResolver;->getInstantAppIntentFilterList(Landroid/content/Intent;[ILjava/lang/String;Landroid/os/IRemoteCallback;)V
    :try_end_12
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_b .. :try_end_12} :catch_1d
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_12} :catch_15
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v1

    :goto_14
    return-void

    :catch_15
    move-exception v1

    new-instance v2, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw v2

    :catch_1d
    move-exception v1

    new-instance v2, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw v2
.end method

.method public final getInstantAppResolveInfoList(Landroid/content/Intent;[ILjava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "[I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/InstantAppResolverConnection;->throwIfCalledOnMainThread()V

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_5
    invoke-direct {p0, p3}, Lcom/android/server/pm/InstantAppResolverConnection;->getRemoteInstanceLazy(Ljava/lang/String;)Landroid/app/IInstantAppResolver;

    move-result-object v2
    :try_end_9
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_9} :catch_3f
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_9} :catch_37
    .catchall {:try_start_5 .. :try_end_9} :catchall_35

    move-object v1, v2

    nop

    :try_start_b
    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mGetInstantAppResolveInfoCaller:Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;

    invoke-virtual {v2, v1, p1, p2, p3}, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;->getInstantAppResolveInfoList(Landroid/app/IInstantAppResolver;Landroid/content/Intent;[ILjava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_11
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_b .. :try_end_11} :catch_2d
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_1e
    .catchall {:try_start_b .. :try_end_11} :catchall_35

    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_14
    iget-object v3, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-object v2

    :catchall_1b
    move-exception v2

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw v2

    :catch_1e
    move-exception v2

    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_22
    iget-object v3, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    nop

    return-object v0

    :catchall_2a
    move-exception v0

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_2a

    throw v0

    :catch_2d
    move-exception v0

    :try_start_2e
    new-instance v2, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw v2

    :catchall_35
    move-exception v0

    goto :goto_47

    :catch_37
    move-exception v0

    new-instance v2, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw v2

    :catch_3f
    move-exception v0

    new-instance v2, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw v2
    :try_end_47
    .catchall {:try_start_2e .. :try_end_47} :catchall_35

    :goto_47
    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4a
    iget-object v3, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_51

    throw v0

    :catchall_51
    move-exception v0

    :try_start_52
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v0
.end method

.method optimisticBind()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$InstantAppResolverConnection$D-JKXi4qrYjnPQMOwj8UtfZenps;

    invoke-direct {v1, p0}, Lcom/android/server/pm/-$$Lambda$InstantAppResolverConnection$D-JKXi4qrYjnPQMOwj8UtfZenps;-><init>(Lcom/android/server/pm/InstantAppResolverConnection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
