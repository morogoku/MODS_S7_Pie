.class final Lcom/android/server/am/PendingIntentRecord;
.super Landroid/content/IIntentSender$Stub;
.source "PendingIntentRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PendingIntentRecord$Key;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field canceled:Z

.field final key:Lcom/android/server/am/PendingIntentRecord$Key;

.field lastTag:Ljava/lang/String;

.field lastTagPrefix:Ljava/lang/String;

.field private mCancelCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/os/IResultReceiver;",
            ">;"
        }
    .end annotation
.end field

.field final owner:Lcom/android/server/am/ActivityManagerService;

.field final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;"
        }
    .end annotation
.end field

.field sent:Z

.field sourceToken:Landroid/os/IBinder;

.field stringName:Ljava/lang/String;

.field final uid:I

.field private whitelistDuration:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/PendingIntentRecord$Key;I)V
    .registers 5

    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->sourceToken:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iput p3, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public completeFinalize()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    if-ne v1, v2, :cond_2a

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mSamsungActivityManager:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/am/SamsungActivityManagerService;->removePendingIntentRecordLocked(Ljava/lang/String;)V

    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_2f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public detachCancelListenersLocked()Landroid/os/RemoteCallbackList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/os/IResultReceiver;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "uid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " packageName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " type="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v0}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " flags=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    if-eqz v0, :cond_5f

    :cond_44
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "activity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " who="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5f
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    if-nez v0, :cond_6b

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eqz v0, :cond_87

    :cond_6b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requestCode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " requestResolvedType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_87
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v0, :cond_a5

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requestIntent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->SAFE_DEBUG:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a5
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    if-nez v0, :cond_ad

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-eqz v0, :cond_c5

    :cond_ad
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "sent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " canceled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_c5
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_10e

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "whitelistDuration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v0, v1

    :goto_d4
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_10b

    if-eqz v0, :cond_e3

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_e3
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d4

    :cond_10b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_10e
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_141

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCancelCallbacks:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    nop

    :goto_11c
    move v0, v1

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-ge v0, v1, :cond_141

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  #"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v0, 0x1

    goto :goto_11c

    :cond_141
    return-void
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x17

    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_1a

    :cond_15
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_1a
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public registerCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    :cond_b
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 21

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    return-void
.end method

.method sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I
    .registers 27

    const/4 v13, 0x0

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Landroid/app/IApplicationThread;)I

    move-result v0

    return v0
.end method

.method sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Landroid/app/IApplicationThread;)I
    .registers 63

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    const/4 v3, 0x5

    const/4 v4, 0x2

    if-ne v0, v4, :cond_42

    if-nez p7, :cond_42

    iget-object v0, v1, Lcom/android/server/am/PendingIntentRecord;->sourceToken:Landroid/os/IBinder;

    if-eqz v0, :cond_42

    iget-object v0, v1, Lcom/android/server/am/PendingIntentRecord;->sourceToken:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v5

    if-nez p12, :cond_29

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v7

    goto :goto_2d

    :cond_29
    invoke-static/range {p12 .. p12}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v7

    :goto_2d
    const/4 v8, 0x0

    if-ne v5, v3, :cond_3a

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v9

    if-nez v9, :cond_3a

    invoke-virtual {v7, v5}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    const/4 v8, 0x1

    :cond_3a
    if-eqz v8, :cond_42

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    move-object v15, v0

    goto :goto_44

    :cond_42
    move-object/from16 v15, p12

    :goto_44
    const/4 v0, 0x1

    if-eqz v2, :cond_4a

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setDefusable(Z)V

    :cond_4a
    if-eqz v15, :cond_4f

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->setDefusable(Z)V

    :cond_4f
    iget-object v14, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    :try_start_52
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-boolean v4, v1, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-nez v4, :cond_457

    iput-boolean v0, v1, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    iget-object v4, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I
    :try_end_5f
    .catchall {:try_start_52 .. :try_end_5f} :catchall_4c5

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v4, v5

    if-eqz v4, :cond_77

    :try_start_64
    iget-object v4, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v1, v0}, Lcom/android/server/am/ActivityManagerService;->cancelIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord;Z)V
    :try_end_69
    .catchall {:try_start_64 .. :try_end_69} :catchall_6a

    goto :goto_77

    :catchall_6a
    move-exception v0

    move-object/from16 v35, p3

    move/from16 v36, p10

    move/from16 v37, p11

    :goto_71
    move-object/from16 v19, v14

    move-object/from16 v20, v15

    goto/16 :goto_4d2

    :cond_77
    :goto_77
    :try_start_77
    iget-object v4, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_4c5

    if-eqz v4, :cond_87

    :try_start_7d
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_86
    .catchall {:try_start_7d .. :try_end_86} :catchall_6a

    goto :goto_8c

    :cond_87
    :try_start_87
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    :goto_8c
    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I
    :try_end_90
    .catchall {:try_start_87 .. :try_end_90} :catchall_4c5

    const/high16 v6, 0x4000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_97

    move v5, v0

    goto :goto_98

    :cond_97
    const/4 v5, 0x0

    :goto_98
    move/from16 v34, v5

    if-nez v34, :cond_e0

    if-eqz v2, :cond_b3

    :try_start_9e
    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    move-result v5

    and-int/lit8 v7, v5, 0x2

    if-nez v7, :cond_b0

    iget-object v7, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;
    :try_end_ae
    .catchall {:try_start_9e .. :try_end_ae} :catchall_6a

    move-object v5, v7

    goto :goto_b2

    :cond_b0
    move-object/from16 v5, p3

    :goto_b2
    goto :goto_b7

    :cond_b3
    :try_start_b3
    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;
    :try_end_b7
    .catchall {:try_start_b3 .. :try_end_b7} :catchall_d6

    :goto_b7
    move/from16 v7, p10

    and-int/lit16 v7, v7, -0xc4

    and-int v8, p11, v7

    :try_start_bd
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v9

    not-int v10, v7

    and-int/2addr v9, v10

    or-int/2addr v9, v8

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_c7
    .catchall {:try_start_bd .. :try_end_c7} :catchall_ce

    move-object/from16 v35, v5

    move/from16 v36, v7

    move/from16 v37, v8

    goto :goto_ec

    :catchall_ce
    move-exception v0

    move-object/from16 v35, v5

    move/from16 v36, v7

    move/from16 v37, v8

    goto :goto_71

    :catchall_d6
    move-exception v0

    move/from16 v7, p10

    move-object/from16 v35, p3

    move/from16 v37, p11

    move/from16 v36, v7

    goto :goto_71

    :cond_e0
    move/from16 v7, p10

    :try_start_e2
    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;
    :try_end_e6
    .catchall {:try_start_e2 .. :try_end_e6} :catchall_455

    move/from16 v37, p11

    move-object/from16 v35, v5

    move/from16 v36, v7

    :goto_ec
    :try_start_ec
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move v12, v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v39

    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->options:Lcom/android/server/am/SafeActivityOptions;
    :try_end_f9
    .catchall {:try_start_ec .. :try_end_f9} :catchall_44e

    if-nez v5, :cond_106

    :try_start_fb
    invoke-static {v15}, Lcom/android/server/am/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/am/SafeActivityOptions;

    move-result-object v7
    :try_end_ff
    .catchall {:try_start_fb .. :try_end_ff} :catchall_103

    move-object v5, v7

    :goto_100
    move-object/from16 v45, v5

    goto :goto_10e

    :catchall_103
    move-exception v0

    goto/16 :goto_71

    :cond_106
    :try_start_106
    invoke-static {v15}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/am/SafeActivityOptions;->setCallerOptions(Landroid/app/ActivityOptions;)V

    goto :goto_100

    :goto_10e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    move-wide v10, v7

    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;
    :try_end_115
    .catchall {:try_start_106 .. :try_end_115} :catchall_44e

    if-eqz v5, :cond_1a7

    :try_start_117
    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;
    :try_end_119
    .catchall {:try_start_117 .. :try_end_119} :catchall_1a2

    move-object/from16 v9, p4

    :try_start_11b
    invoke-virtual {v5, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_1a9

    iget-object v7, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v12}, Lcom/android/server/am/ActivityManagerService;->getUidState(I)I

    move-result v7

    invoke-static {v7}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v8

    if-nez v8, :cond_183

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v13, 0x40

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v13, "pendingintent:"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v12}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string v13, ":"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_152

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16d

    :cond_152
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    if-eqz v13, :cond_160

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;)V

    goto :goto_16d

    :cond_160
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    if-eqz v13, :cond_16d

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_16d
    :goto_16d
    iget-object v13, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget v6, v1, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v42

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v38, v13

    move/from16 v40, v12

    move/from16 v41, v6

    invoke-virtual/range {v38 .. v44}, Lcom/android/server/am/ActivityManagerService;->tempWhitelistForPendingIntentLocked(IIIJLjava/lang/String;)V

    goto :goto_1a9

    :cond_183
    const-string v6, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Not doing whitelist "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ": caller state="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a1
    .catchall {:try_start_11b .. :try_end_1a1} :catchall_103

    goto :goto_1a9

    :catchall_1a2
    move-exception v0

    move-object/from16 v9, p4

    goto/16 :goto_71

    :cond_1a7
    move-object/from16 v9, p4

    :cond_1a9
    :goto_1a9
    if-eqz p5, :cond_1ad

    move v5, v0

    goto :goto_1ae

    :cond_1ad
    const/4 v5, 0x0

    :goto_1ae
    move/from16 v38, v5

    :try_start_1b0
    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I
    :try_end_1b4
    .catchall {:try_start_1b0 .. :try_end_1b4} :catchall_44e

    const/4 v6, -0x2

    if-ne v5, v6, :cond_1c0

    :try_start_1b7
    iget-object v6, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v6}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserId()I

    move-result v6
    :try_end_1bf
    .catchall {:try_start_1b7 .. :try_end_1bf} :catchall_103

    move v5, v6

    :cond_1c0
    move/from16 v40, v5

    const/16 v41, 0x0

    :try_start_1c4
    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->type:I
    :try_end_1c8
    .catchall {:try_start_1c4 .. :try_end_1c8} :catchall_44e

    packed-switch v5, :pswitch_data_4da

    move-object/from16 v48, v4

    move-wide/from16 v46, v10

    move/from16 v18, v12

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    const/16 v2, -0x60

    goto/16 :goto_420

    :pswitch_1d9
    :try_start_1d9
    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget v7, v1, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v6, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    if-ne v6, v3, :cond_1e4

    goto :goto_1e5

    :cond_1e4
    const/4 v0, 0x0

    :goto_1e5
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;
    :try_end_1e9
    .catch Ljava/lang/RuntimeException; {:try_start_1d9 .. :try_end_1e9} :catch_211
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1d9 .. :try_end_1e9} :catch_1fd
    .catchall {:try_start_1d9 .. :try_end_1e9} :catchall_103

    move-object/from16 v6, p13

    move-object v8, v4

    move-object/from16 v9, v35

    move-wide/from16 v46, v10

    move v10, v0

    move-object v11, v3

    move v3, v12

    move/from16 v12, v40

    :try_start_1f5
    invoke-virtual/range {v5 .. v12}, Lcom/android/server/am/ActivityManagerService;->startServiceInPackage(Landroid/app/IApplicationThread;ILandroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;I)Landroid/content/ComponentName;
    :try_end_1f8
    .catch Ljava/lang/RuntimeException; {:try_start_1f5 .. :try_end_1f8} :catch_1fb
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1f5 .. :try_end_1f8} :catch_1f9
    .catchall {:try_start_1f5 .. :try_end_1f8} :catchall_103

    goto :goto_21c

    :catch_1f9
    move-exception v0

    goto :goto_201

    :catch_1fb
    move-exception v0

    goto :goto_215

    :catch_1fd
    move-exception v0

    move-wide/from16 v46, v10

    move v3, v12

    :goto_201
    const/16 v41, -0x60

    move/from16 v18, v3

    move-object/from16 v48, v4

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    move/from16 v11, v41

    const/16 v2, -0x60

    goto/16 :goto_422

    :catch_211
    move-exception v0

    move-wide/from16 v46, v10

    move v3, v12

    :goto_215
    :try_start_215
    const-string v5, "ActivityManager"

    const-string v6, "Unable to send startService intent"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_21c
    nop

    :cond_21d
    :goto_21d
    move/from16 v18, v3

    move-object/from16 v48, v4

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    const/16 v2, -0x60

    goto/16 :goto_420

    :pswitch_229
    move-wide/from16 v46, v10

    move v3, v12

    const-string v0, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received ACTIVITY intent in key u"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " act="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v6}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " cmp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "} from uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_21d

    const/4 v6, -0x1

    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v5, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v8, v5, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v9, v5, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    move-object v5, v0

    move/from16 v10, p1

    move-object v11, v4

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_2a6
    .catchall {:try_start_215 .. :try_end_2a6} :catchall_103

    goto/16 :goto_21d

    :pswitch_2a8
    move-wide/from16 v46, v10

    move v3, v12

    :try_start_2ab
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz v5, :cond_2b2

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFromPendingIntent(Z)V

    :cond_2b2
    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    if-eqz v5, :cond_318

    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v5, v5

    if-le v5, v0, :cond_318

    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v5, v5

    new-array v5, v5, [Landroid/content/Intent;

    move-object v13, v5

    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v5, v5

    new-array v5, v5, [Ljava/lang/String;

    move-object v12, v5

    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    iget-object v6, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v6, v6

    const/4 v7, 0x0

    invoke-static {v5, v7, v13, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    if-eqz v5, :cond_2ef

    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    array-length v6, v6

    const/4 v7, 0x0

    invoke-static {v5, v7, v12, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2ef
    array-length v5, v13

    sub-int/2addr v5, v0

    aput-object v4, v13, v5

    array-length v5, v12

    sub-int/2addr v5, v0

    aput-object v35, v12, v5

    iget-object v0, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v5

    iget v6, v1, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v0, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;
    :try_end_303
    .catch Ljava/lang/RuntimeException; {:try_start_2ab .. :try_end_303} :catch_3bf
    .catchall {:try_start_2ab .. :try_end_303} :catchall_103

    const/4 v0, 0x0

    move-object v8, v13

    move-object v9, v12

    move-object/from16 v10, p7

    move-object/from16 v11, v45

    move-object/from16 v16, v12

    move/from16 v12, v40

    move-object/from16 v17, v13

    const/16 v2, -0x60

    move v13, v0

    :try_start_313
    invoke-virtual/range {v5 .. v13}, Lcom/android/server/am/ActivityStartController;->startActivitiesInPackage(ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/am/SafeActivityOptions;IZ)I

    move-result v0

    goto :goto_348

    :cond_318
    const/16 v2, -0x60

    iget-object v0, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v18

    iget v0, v1, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    const/16 v28, 0x0

    const/16 v31, 0x0

    const-string v32, "PendingIntentRecord"

    const/16 v33, 0x0

    move/from16 v19, v0

    move/from16 v20, v39

    move/from16 v21, v3

    move-object/from16 v22, v5

    move-object/from16 v23, v4

    move-object/from16 v24, v35

    move-object/from16 v25, p7

    move-object/from16 v26, p8

    move/from16 v27, p9

    move-object/from16 v29, v45

    move/from16 v30, v40

    invoke-virtual/range {v18 .. v33}, Lcom/android/server/am/ActivityStartController;->startActivityInPackage(IIILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/am/SafeActivityOptions;ILcom/android/server/am/TaskRecord;Ljava/lang/String;Z)I

    move-result v0
    :try_end_348
    .catch Ljava/lang/RuntimeException; {:try_start_313 .. :try_end_348} :catch_3bd
    .catchall {:try_start_313 .. :try_end_348} :catchall_103

    :goto_348
    move v5, v0

    :try_start_349
    const-string v0, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received ACTIVITY intent in key u"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " act="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v7}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " cmp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " res="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "} from uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3ad
    .catch Ljava/lang/RuntimeException; {:try_start_349 .. :try_end_3ad} :catch_3b9
    .catchall {:try_start_349 .. :try_end_3ad} :catchall_103

    nop

    move/from16 v18, v3

    move-object/from16 v48, v4

    move v11, v5

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    goto/16 :goto_422

    :catch_3b9
    move-exception v0

    move/from16 v41, v5

    goto :goto_3c2

    :catch_3bd
    move-exception v0

    goto :goto_3c2

    :catch_3bf
    move-exception v0

    const/16 v2, -0x60

    :goto_3c2
    :try_start_3c2
    const-string v5, "ActivityManager"

    const-string v6, "Unable to send startActivity intent"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c9
    .catchall {:try_start_3c2 .. :try_end_3c9} :catchall_103

    nop

    move/from16 v18, v3

    move-object/from16 v48, v4

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    goto :goto_420

    :pswitch_3d3
    move-wide/from16 v46, v10

    move v3, v12

    const/16 v2, -0x60

    const/4 v7, 0x0

    :try_start_3d9
    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget v8, v1, Lcom/android/server/am/PendingIntentRecord;->uid:I
    :try_end_3e1
    .catch Ljava/lang/RuntimeException; {:try_start_3d9 .. :try_end_3e1} :catch_40f
    .catchall {:try_start_3d9 .. :try_end_3e1} :catchall_44e

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz p5, :cond_3e6

    goto :goto_3e7

    :cond_3e6
    move v0, v7

    :goto_3e7
    const/16 v16, 0x0

    move/from16 v18, v3

    move-object v3, v5

    move-object v13, v4

    move-object/from16 v4, p13

    move-object v5, v6

    move v6, v8

    move-object v7, v13

    move-object/from16 v8, v35

    move-object/from16 v9, p5

    move/from16 v10, p1

    move-object/from16 v48, v13

    move-object/from16 v13, p6

    move-object/from16 v19, v14

    move-object v14, v15

    move-object/from16 v20, v15

    move v15, v0

    move/from16 v17, v40

    :try_start_404
    invoke-virtual/range {v3 .. v17}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentInPackage(Landroid/app/IApplicationThread;Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZI)I

    move-result v0
    :try_end_408
    .catch Ljava/lang/RuntimeException; {:try_start_404 .. :try_end_408} :catch_40d
    .catchall {:try_start_404 .. :try_end_408} :catchall_4d7

    if-nez v0, :cond_40c

    const/16 v38, 0x0

    :cond_40c
    goto :goto_420

    :catch_40d
    move-exception v0

    goto :goto_418

    :catch_40f
    move-exception v0

    move/from16 v18, v3

    move-object/from16 v48, v4

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    :goto_418
    :try_start_418
    const-string v3, "ActivityManager"

    const-string v4, "Unable to send startActivity intent"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_41f
    .catchall {:try_start_418 .. :try_end_41f} :catchall_4d7

    nop

    :goto_420
    move/from16 v11, v41

    :goto_422
    if-eqz v38, :cond_442

    if-eq v11, v2, :cond_442

    :try_start_426
    new-instance v4, Landroid/content/Intent;
    :try_end_428
    .catch Landroid/os/RemoteException; {:try_start_426 .. :try_end_428} :catch_43e
    .catchall {:try_start_426 .. :try_end_428} :catchall_4d7

    move-object/from16 v2, v48

    :try_start_42a
    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v0, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v10, v0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    move-object/from16 v3, p5

    invoke-interface/range {v3 .. v10}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    :try_end_43b
    .catch Landroid/os/RemoteException; {:try_start_42a .. :try_end_43b} :catch_43c
    .catchall {:try_start_42a .. :try_end_43b} :catchall_4d7

    goto :goto_444

    :catch_43c
    move-exception v0

    goto :goto_441

    :catch_43e
    move-exception v0

    move-object/from16 v2, v48

    :goto_441
    goto :goto_444

    :cond_442
    move-object/from16 v2, v48

    :goto_444
    move-wide/from16 v3, v46

    :try_start_446
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v19
    :try_end_44a
    .catchall {:try_start_446 .. :try_end_44a} :catchall_4d7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v11

    :catchall_44e
    move-exception v0

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    goto/16 :goto_4d2

    :catchall_455
    move-exception v0

    goto :goto_4c8

    :cond_457
    move/from16 v7, p10

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    const/16 v2, -0x60

    :try_start_45f
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received ACTIVITY intent in key u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " act="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v4}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cmp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "} is canceled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v19
    :try_end_4b9
    .catchall {:try_start_45f .. :try_end_4b9} :catchall_4bd

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_4bd
    move-exception v0

    move-object/from16 v35, p3

    move/from16 v37, p11

    move/from16 v36, v7

    goto :goto_4d2

    :catchall_4c5
    move-exception v0

    move/from16 v7, p10

    :goto_4c8
    move-object/from16 v19, v14

    move-object/from16 v20, v15

    move-object/from16 v35, p3

    move/from16 v37, p11

    move/from16 v36, v7

    :goto_4d2
    :try_start_4d2
    monitor-exit v19
    :try_end_4d3
    .catchall {:try_start_4d2 .. :try_end_4d3} :catchall_4d7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_4d7
    move-exception v0

    goto :goto_4d2

    nop

    :pswitch_data_4da
    .packed-switch 0x1
        :pswitch_3d3
        :pswitch_2a8
        :pswitch_229
        :pswitch_1d9
        :pswitch_1d9
    .end packed-switch
.end method

.method public sendWithResult(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 21

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method setWhitelistDurationLocked(Landroid/os/IBinder;J)V
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-lez v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    if-nez v0, :cond_12

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    :cond_12
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    :cond_1c
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-gtz v0, :cond_2f

    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    :cond_2f
    :goto_2f
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "PendingIntentRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    if-eqz v1, :cond_7c

    const-string v1, " (whitelist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_40
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_77

    if-eqz v1, :cond_4f

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4f
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    :cond_77
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7c
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    return-object v1
.end method

.method public unregisterCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-gtz v0, :cond_15

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    :cond_15
    return-void
.end method
