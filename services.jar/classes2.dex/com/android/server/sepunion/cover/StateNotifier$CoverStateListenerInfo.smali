.class Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;
.super Ljava/lang/Object;
.source "StateNotifier.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/StateNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverStateListenerInfo"
.end annotation


# instance fields
.field final component:Landroid/content/ComponentName;

.field final pid:I

.field final synthetic this$0:Lcom/android/server/sepunion/cover/StateNotifier;

.field final token:Landroid/os/IBinder;

.field final type:I

.field final uid:I


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/cover/StateNotifier;Landroid/os/IBinder;Landroid/content/ComponentName;III)V
    .registers 7

    iput-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->component:Landroid/content/ComponentName;

    iput p4, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->pid:I

    iput p5, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->uid:I

    iput p6, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->type:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    # getter for: Lcom/android/server/sepunion/cover/StateNotifier;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/cover/StateNotifier;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    # getter for: Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/StateNotifier;->access$300(Lcom/android/server/sepunion/cover/StateNotifier;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    :try_start_21
    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    # getter for: Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/sepunion/cover/StateNotifier;->access$300(Lcom/android/server/sepunion/cover/StateNotifier;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_46

    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    # getter for: Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/StateNotifier;->access$400(Lcom/android/server/sepunion/cover/StateNotifier;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_32
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    # getter for: Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/StateNotifier;->access$400(Lcom/android/server/sepunion/cover/StateNotifier;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_43

    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_43
    move-exception v0

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v0

    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v1
.end method

.method onCoverAppStateChanged(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    if-nez v0, :cond_f

    # getter for: Lcom/android/server/sepunion/cover/StateNotifier;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/cover/StateNotifier;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onCoverAppStateChanged : token is null"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    iget v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->type:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2b

    :try_start_15
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverWindowStateListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverWindowStateListenerCallback;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-interface {v0, p1}, Lcom/samsung/android/cover/ICoverWindowStateListenerCallback;->onCoverAppCovered(Z)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_20} :catch_21

    :cond_20
    goto :goto_2b

    :catch_21
    move-exception v0

    # getter for: Lcom/android/server/sepunion/cover/StateNotifier;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/cover/StateNotifier;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed onCoverAppCovered callback"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2b
    :goto_2b
    return-void
.end method

.method onCoverAttachStateChanged(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    if-nez v0, :cond_f

    # getter for: Lcom/android/server/sepunion/cover/StateNotifier;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/cover/StateNotifier;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onCoverAttachStateChanged : token is null"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    iget v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->type:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2b

    :try_start_15
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverStateListenerCallback;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-interface {v0, p1}, Lcom/samsung/android/cover/ICoverStateListenerCallback;->onCoverAttachStateChanged(Z)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_20} :catch_21

    :cond_20
    goto :goto_2b

    :catch_21
    move-exception v0

    # getter for: Lcom/android/server/sepunion/cover/StateNotifier;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/cover/StateNotifier;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed onCoverAttachStateChanged callback"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2b
    :goto_2b
    return-void
.end method

.method onCoverSwitchStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    if-nez v0, :cond_f

    # getter for: Lcom/android/server/sepunion/cover/StateNotifier;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/cover/StateNotifier;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onCoverSwitchStateChanged : token is null"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    iget v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    :try_start_14
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManagerCallback;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-interface {v0, p1}, Lcom/samsung/android/cover/ICoverManagerCallback;->coverCallback(Lcom/samsung/android/cover/CoverState;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1f} :catch_20

    :cond_1f
    goto :goto_2a

    :catch_20
    move-exception v0

    # getter for: Lcom/android/server/sepunion/cover/StateNotifier;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/cover/StateNotifier;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed onCoverStateChanged coverCallback"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2a
    :goto_2a
    return-void
.end method

.method onCoverSwitchStateChanged(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    if-nez v0, :cond_f

    # getter for: Lcom/android/server/sepunion/cover/StateNotifier;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/cover/StateNotifier;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onCoverSwitchStateChanged : token is null"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    iget v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->type:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2b

    :try_start_15
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverStateListenerCallback;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-interface {v0, p1}, Lcom/samsung/android/cover/ICoverStateListenerCallback;->onCoverSwitchStateChanged(Z)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_20} :catch_21

    :cond_20
    goto :goto_2b

    :catch_21
    move-exception v0

    # getter for: Lcom/android/server/sepunion/cover/StateNotifier;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/cover/StateNotifier;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed onCoverSwitchStateChanged callback"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2b
    :goto_2b
    return-void
.end method
