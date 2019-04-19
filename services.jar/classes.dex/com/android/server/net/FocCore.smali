.class public Lcom/android/server/net/FocCore;
.super Lcom/android/server/net/UrspCore;
.source "FocCore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UrspService_FOC"


# instance fields
.field private mFocNetId:I

.field private mFocState:Z

.field private mFocUidRule:Landroid/util/SparseBooleanArray;

.field private final mUrspAppListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/net/IUrspAppListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/net/UrspService;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspCore;-><init>(Lcom/android/server/net/UrspService;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/FocCore;->mFocState:Z

    iput v0, p0, Lcom/android/server/net/FocCore;->mFocNetId:I

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/FocCore;->mFocUidRule:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/FocCore;->mUrspAppListeners:Landroid/os/RemoteCallbackList;

    return-void
.end method

.method protected static log(Ljava/lang/String;)V
    .registers 2

    const-string v0, "UrspService_FOC"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static logn(Ljava/lang/String;)V
    .registers 2

    const-string v0, "UrspService_FOC"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    const-string v0, "FoC status: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/net/FocCore;->mFocState:Z

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "FoC NetId: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/net/FocCore;->mFocNetId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    const-string v0, "FoC UIDs:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v0, 0x0

    :goto_1d
    iget-object v1, p0, Lcom/android/server/net/FocCore;->mFocUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_36

    const-string v1, "UID="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/net/FocCore;->mFocUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_36
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public getAllUrspRule()[I
    .registers 7

    const/4 v0, 0x0

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/android/server/net/FocCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v2}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    nop

    :goto_b
    :try_start_b
    iget-object v3, p0, Lcom/android/server/net/FocCore;->mFocUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_2a

    iget-object v3, p0, Lcom/android/server/net/FocCore;->mFocUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/net/FocCore;->mFocUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_27

    invoke-static {v1, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    move-object v1, v5

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_2a
    monitor-exit v2

    return-object v1

    :catchall_2c
    move-exception v0

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_b .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public getUrspMode()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/net/FocCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/net/FocCore;->mFocState:Z

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getUrspNetId()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/net/FocCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget v1, p0, Lcom/android/server/net/FocCore;->mFocNetId:I

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public isUrspRuleEnabled(I)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/net/FocCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/net/FocCore;->mFocUidRule:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public registerUrspAppListner(Landroid/net/IUrspAppListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/net/FocCore;->mUrspAppListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public setUrspMode(Z)V
    .registers 8

    iget-boolean v0, p0, Lcom/android/server/net/FocCore;->mFocState:Z

    if-eq p1, v0, :cond_28

    iget-object v0, p0, Lcom/android/server/net/FocCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_b
    iget-boolean v1, p0, Lcom/android/server/net/FocCore;->mFocState:Z

    if-eq v1, p1, :cond_23

    iput-boolean p1, p0, Lcom/android/server/net/FocCore;->mFocState:Z

    iget-object v1, p0, Lcom/android/server/net/FocCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v1}, Lcom/android/server/net/UrspService;->getUrspNetworkManagementService()Lcom/android/server/net/UrspNetworkManagementService;

    move-result-object v1

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/server/net/FocCore;->mFocState:Z

    invoke-virtual {p0}, Lcom/android/server/net/FocCore;->getAllUrspRule()[I

    move-result-object v4

    iget v5, p0, Lcom/android/server/net/FocCore;->mFocNetId:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/net/UrspNetworkManagementService;->setUrspMode(IZ[II)V

    :cond_23
    monitor-exit v0

    goto :goto_28

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_25

    throw v1

    :cond_28
    :goto_28
    return-void
.end method

.method public setUrspNetId(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/net/FocCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iput p1, p0, Lcom/android/server/net/FocCore;->mFocNetId:I

    iget-object v1, p0, Lcom/android/server/net/FocCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v1}, Lcom/android/server/net/UrspService;->getUrspNetworkManagementService()Lcom/android/server/net/UrspNetworkManagementService;

    move-result-object v1

    iget v2, p0, Lcom/android/server/net/FocCore;->mFocNetId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/server/net/UrspNetworkManagementService;->setUrspNetId(II)V

    iget-object v1, p0, Lcom/android/server/net/FocCore;->mUrspAppListeners:Landroid/os/RemoteCallbackList;

    iget v2, p0, Lcom/android/server/net/FocCore;->mFocNetId:I

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/net/FocCore;->sendUrspAppBroadcast(Landroid/os/RemoteCallbackList;II)V

    monitor-exit v0

    return-void

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public setUrspRule(ZI)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspRule, uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/FocCore;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/FocCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_24
    iget-object v1, p0, Lcom/android/server/net/FocCore;->mFocUidRule:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_49

    iget-object v0, p0, Lcom/android/server/net/FocCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2713

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v2, 0x0

    :goto_3d
    iput v2, v0, Landroid/os/Message;->arg2:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_49
    move-exception v1

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v1
.end method

.method public setUrspRules(Z[I)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/net/FocCore;->mFocUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3d

    aget v4, p2, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setUrspRules, uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", enabled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/net/FocCore;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/net/FocCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v5}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_31
    iget-object v6, p0, Lcom/android/server/net/FocCore;->mFocUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :catchall_3a
    move-exception v0

    monitor-exit v5
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_3a

    throw v0

    :cond_3d
    iget-object v0, p0, Lcom/android/server/net/FocCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getUrspNetworkManagementService()Lcom/android/server/net/UrspNetworkManagementService;

    move-result-object v0

    invoke-virtual {v0, v3, p2}, Lcom/android/server/net/UrspNetworkManagementService;->setUrspRules(I[I)V

    iget-object v0, p0, Lcom/android/server/net/FocCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x2714

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->arg1:I

    if-ne p1, v3, :cond_58

    move v1, v3

    nop

    :cond_58
    iput v1, v0, Landroid/os/Message;->arg2:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unregisterUrspAppListner(Landroid/net/IUrspAppListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/net/FocCore;->mUrspAppListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public writePolicy(Ljava/io/FileOutputStream;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 8

    :try_start_0
    const-string/jumbo v0, "foc-policy"

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v0, 0x0

    :goto_8
    iget-object v2, p0, Lcom/android/server/net/FocCore;->mFocUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3a

    iget-object v2, p0, Lcom/android/server/net/FocCore;->mFocUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/net/FocCore;->mFocUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_37

    :cond_1f
    const-string/jumbo v4, "foc-uid-policy"

    invoke-interface {p2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "uid"

    invoke-static {p2, v4, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string/jumbo v4, "policy"

    invoke-static {p2, v4, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v4, "foc-uid-policy"

    invoke-interface {p2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_3a
    const-string/jumbo v0, "foc-policy"

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_40} :catch_41

    goto :goto_57

    :catch_41
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fail to write policy file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/net/FocCore;->log(Ljava/lang/String;)V

    :goto_57
    return-void
.end method
