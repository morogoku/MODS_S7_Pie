.class public Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;
.super Ljava/lang/Object;
.source "ExecClientStateMgr.java"

# interfaces
.implements Lcom/android/server/sepunion/friends/action/ActionExecutable;
.implements Lcom/android/server/sepunion/friends/common/Dump;


# static fields
.field private static final CMD_CLEAR_CLIENT_STATE:I = 0x3

.field private static final CMD_REMOVE_CLIENT_STATE:I = 0x2

.field private static final CMD_RESTORE_CLIENT_STATE:I = 0x1

.field private static final CMD_SAVE_CLIENT_STATE:I


# instance fields
.field private final mState:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->mState:Landroid/util/ArrayMap;

    return-void
.end method

.method private commandClearClientState()Landroid/os/Bundle;
    .registers 3

    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->mState:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_f

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private commandRemoveClientState(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4

    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->mState:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_f

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private commandRestoreClientState(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4

    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->mState:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private commandSaveClientState(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5

    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->mState:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_f

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    const-string v1, "clientStateAction"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "stateId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    packed-switch v1, :pswitch_data_32

    return-object v0

    :pswitch_16
    invoke-direct {p0}, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->commandClearClientState()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_1b
    invoke-direct {p0, v2}, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->commandRemoveClientState(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_20
    invoke-direct {p0, v2}, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->commandRestoreClientState(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_25
    const-string v0, "clientStateBundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->commandSaveClientState(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    nop

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
    .end packed-switch
.end method

.method public getDump(Ljava/lang/StringBuilder;)V
    .registers 6

    const-string v0, "\n---- client state\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->mState:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-nez v2, :cond_21

    goto :goto_12

    :cond_21
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_42
    monitor-exit v0

    return-void

    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_8 .. :try_end_46} :catchall_44

    throw v1
.end method
