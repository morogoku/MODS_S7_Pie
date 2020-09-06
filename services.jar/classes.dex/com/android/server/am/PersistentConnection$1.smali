.class Lcom/android/server/am/PersistentConnection$1;
.super Ljava/lang/Object;
.source "PersistentConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PersistentConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PersistentConnection;


# direct methods
.method constructor <init>(Lcom/android/server/am/PersistentConnection;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    # getter for: Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/am/PersistentConnection;->access$000(Lcom/android/server/am/PersistentConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    # getter for: Lcom/android/server/am/PersistentConnection;->mBound:Z
    invoke-static {v1}, Lcom/android/server/am/PersistentConnection;->access$100(Lcom/android/server/am/PersistentConnection;)Z

    move-result v1

    if-nez v1, :cond_48

    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    # getter for: Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/am/PersistentConnection;->access$200(Lcom/android/server/am/PersistentConnection;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding died: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    # getter for: Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v3}, Lcom/android/server/am/PersistentConnection;->access$300(Lcom/android/server/am/PersistentConnection;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    # getter for: Lcom/android/server/am/PersistentConnection;->mUserId:I
    invoke-static {v3}, Lcom/android/server/am/PersistentConnection;->access$400(Lcom/android/server/am/PersistentConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but not bound, ignore."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_48
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    # getter for: Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/am/PersistentConnection;->access$200(Lcom/android/server/am/PersistentConnection;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding died: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    # getter for: Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v3}, Lcom/android/server/am/PersistentConnection;->access$300(Lcom/android/server/am/PersistentConnection;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    # getter for: Lcom/android/server/am/PersistentConnection;->mUserId:I
    invoke-static {v3}, Lcom/android/server/am/PersistentConnection;->access$400(Lcom/android/server/am/PersistentConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-virtual {v1}, Lcom/android/server/am/PersistentConnection;->scheduleRebindLocked()V

    monitor-exit v0

    return-void

    :catchall_81
    move-exception v1

    monitor-exit v0
    :try_end_83
    .catchall {:try_start_7 .. :try_end_83} :catchall_81

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    # getter for: Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/am/PersistentConnection;->access$000(Lcom/android/server/am/PersistentConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    # getter for: Lcom/android/server/am/PersistentConnection;->mBound:Z
    invoke-static {v1}, Lcom/android/server/am/PersistentConnection;->access$100(Lcom/android/server/am/PersistentConnection;)Z

    move-result v1

    if-nez v1, :cond_48

    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    # getter for: Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/am/PersistentConnection;->access$200(Lcom/android/server/am/PersistentConnection;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    # getter for: Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v3}, Lcom/android/server/am/PersistentConnection;->access$300(Lcom/android/server/am/PersistentConnection;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    # getter for: Lcom/android/server/am/PersistentConnection;->mUserId:I
    invoke-static {v3}, Lcom/android/server/am/PersistentConnection;->access$400(Lcom/android/server/am/PersistentConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but not bound, ignore."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_48
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    # getter for: Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/am/PersistentConnection;->access$200(Lcom/android/server/am/PersistentConnection;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    # getter for: Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v3}, Lcom/android/server/am/PersistentConnection;->access$300(Lcom/android/server/am/PersistentConnection;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    # getter for: Lcom/android/server/am/PersistentConnection;->mUserId:I
    invoke-static {v3}, Lcom/android/server/am/PersistentConnection;->access$400(Lcom/android/server/am/PersistentConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/am/PersistentConnection;->mIsConnected:Z
    invoke-static {v1, v2}, Lcom/android/server/am/PersistentConnection;->access$502(Lcom/android/server/am/PersistentConnection;Z)Z

    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    iget-object v2, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-virtual {v2, p2}, Lcom/android/server/am/PersistentConnection;->asInterface(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v2

    # setter for: Lcom/android/server/am/PersistentConnection;->mService:Ljava/lang/Object;
    invoke-static {v1, v2}, Lcom/android/server/am/PersistentConnection;->access$602(Lcom/android/server/am/PersistentConnection;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_8d
    move-exception v1

    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_7 .. :try_end_8f} :catchall_8d

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    # getter for: Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/am/PersistentConnection;->access$000(Lcom/android/server/am/PersistentConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    # getter for: Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/am/PersistentConnection;->access$200(Lcom/android/server/am/PersistentConnection;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    # getter for: Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v3}, Lcom/android/server/am/PersistentConnection;->access$300(Lcom/android/server/am/PersistentConnection;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    # getter for: Lcom/android/server/am/PersistentConnection;->mUserId:I
    invoke-static {v3}, Lcom/android/server/am/PersistentConnection;->access$400(Lcom/android/server/am/PersistentConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    # invokes: Lcom/android/server/am/PersistentConnection;->cleanUpConnectionLocked()V
    invoke-static {v1}, Lcom/android/server/am/PersistentConnection;->access$700(Lcom/android/server/am/PersistentConnection;)V

    monitor-exit v0

    return-void

    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_40

    throw v1
.end method
