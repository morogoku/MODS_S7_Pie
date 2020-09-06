.class final Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;
.super Ljava/lang/Object;
.source "InstantAppResolverConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/InstantAppResolverConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/InstantAppResolverConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/InstantAppResolverConnection;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/InstantAppResolverConnection;Lcom/android/server/pm/InstantAppResolverConnection$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;-><init>(Lcom/android/server/pm/InstantAppResolverConnection;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    # getter for: Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z
    invoke-static {}, Lcom/android/server/pm/InstantAppResolverConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "PackageManager"

    const-string v1, "Connected to instant app resolver"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    # getter for: Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/InstantAppResolverConnection;->access$200(Lcom/android/server/pm/InstantAppResolverConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_14
    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-static {p2}, Landroid/app/IInstantAppResolver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstantAppResolver;

    move-result-object v2

    # setter for: Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;
    invoke-static {v1, v2}, Lcom/android/server/pm/InstantAppResolverConnection;->access$302(Lcom/android/server/pm/InstantAppResolverConnection;Landroid/app/IInstantAppResolver;)Landroid/app/IInstantAppResolver;

    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    # getter for: Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I
    invoke-static {v1}, Lcom/android/server/pm/InstantAppResolverConnection;->access$400(Lcom/android/server/pm/InstantAppResolverConnection;)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2c

    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    # setter for: Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I
    invoke-static {v1, v3}, Lcom/android/server/pm/InstantAppResolverConnection;->access$402(Lcom/android/server/pm/InstantAppResolverConnection;I)I
    :try_end_2c
    .catchall {:try_start_14 .. :try_end_2c} :catchall_43

    :cond_2c
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-interface {p2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_31} :catch_32
    .catchall {:try_start_2c .. :try_end_31} :catchall_43

    goto :goto_38

    :catch_32
    move-exception v1

    :try_start_33
    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    # invokes: Lcom/android/server/pm/InstantAppResolverConnection;->handleBinderDiedLocked()V
    invoke-static {v2}, Lcom/android/server/pm/InstantAppResolverConnection;->access$500(Lcom/android/server/pm/InstantAppResolverConnection;)V

    :goto_38
    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    # getter for: Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/pm/InstantAppResolverConnection;->access$200(Lcom/android/server/pm/InstantAppResolverConnection;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_33 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    # getter for: Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z
    invoke-static {}, Lcom/android/server/pm/InstantAppResolverConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "PackageManager"

    const-string v1, "Disconnected from instant app resolver"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    # getter for: Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/InstantAppResolverConnection;->access$200(Lcom/android/server/pm/InstantAppResolverConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_14
    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    # invokes: Lcom/android/server/pm/InstantAppResolverConnection;->handleBinderDiedLocked()V
    invoke-static {v1}, Lcom/android/server/pm/InstantAppResolverConnection;->access$500(Lcom/android/server/pm/InstantAppResolverConnection;)V

    monitor-exit v0

    return-void

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw v1
.end method
