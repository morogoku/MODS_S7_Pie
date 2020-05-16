.class public final Lcom/android/server/net/UrspNetworkManagementService;
.super Landroid/os/Handler;
.source "UrspNetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/UrspNetworkManagementService$UrspNmsHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final MSG_BASE:I = 0x2710

.field private static final MSG_SET_NETID_FOR_FOC:I = 0x2713

.field private static final MSG_SET_NETID_FOR_MDO:I = 0x2711

.field private static final MSG_SET_STATE_FOR_FOC:I = 0x2714

.field private static final MSG_SET_UID_RULES_FOR_FOC:I = 0x2715

.field private static final MSG_SET_UID_RULE_FOR_MDO:I = 0x2712

.field private static final TAG:Ljava/lang/String; = "UrspNms"

.field private static final VDBG:Z = true


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mNetworkManager:Landroid/os/INetworkManagementService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;)V
    .registers 6

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-string/jumbo v0, "start UrspNetworkManagementService"

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/net/UrspNetworkManagementService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UrspNms"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_25

    new-instance v2, Lcom/android/server/net/UrspNetworkManagementService$UrspNmsHandler;

    invoke-direct {v2, p0, v1}, Lcom/android/server/net/UrspNetworkManagementService$UrspNmsHandler;-><init>(Lcom/android/server/net/UrspNetworkManagementService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/net/UrspNetworkManagementService;->mHandler:Landroid/os/Handler;

    goto :goto_2b

    :cond_25
    const-string/jumbo v2, "handlerThread.getLooper() returned null"

    invoke-static {v2}, Lcom/android/server/net/UrspNetworkManagementService;->logn(Ljava/lang/String;)V

    :goto_2b
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/UrspNetworkManagementService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspNetworkManagementService;->setUrspNetIdForMdo(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/net/UrspNetworkManagementService;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/UrspNetworkManagementService;->setUrspUidForMdo(ZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/net/UrspNetworkManagementService;ZI[I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/UrspNetworkManagementService;->setUrspRulesForFoc(ZI[I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/net/UrspNetworkManagementService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspNetworkManagementService;->setUrspNetIdForFoc(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/net/UrspNetworkManagementService;Z[II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/UrspNetworkManagementService;->setUrspStateForFoc(Z[II)V

    return-void
.end method

.method protected static log(Ljava/lang/String;)V
    .registers 2

    const-string v0, "UrspNms"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static logn(Ljava/lang/String;)V
    .registers 2

    const-string v0, "UrspNms"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setUrspNetIdForFoc(I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspNetIdForFoc - NetId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->logn(Ljava/lang/String;)V

    :try_start_15
    iget-object v0, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->setFocNetId(I)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1b

    goto :goto_24

    :catch_1b
    move-exception v0

    const-string v1, "UrspNms"

    const-string/jumbo v2, "setFocNetId exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    return-void
.end method

.method private setUrspNetIdForMdo(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspNetIdForMdo - NetId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->logn(Ljava/lang/String;)V

    :try_start_15
    iget-object v0, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->setMdoNetId(I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1b

    goto :goto_25

    :catch_1b
    move-exception v0

    const-string/jumbo v1, "setUrspNetIdForMdo exception"

    invoke-static {v1}, Lcom/android/server/net/UrspNetworkManagementService;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_25
    return-void
.end method

.method private setUrspRulesForFoc(ZI[I)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspRulesForFoc - enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->logn(Ljava/lang/String;)V

    if-eqz p1, :cond_31

    :try_start_1f
    iget-object v0, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->flushFocTables()V

    iget-object v0, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p2, p3}, Landroid/os/INetworkManagementService;->doDestroySockets(I[I)V

    iget-object v0, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p3}, Landroid/os/INetworkManagementService;->setFocBlockList(Z[I)V

    goto :goto_31

    :catch_2f
    move-exception v0

    goto :goto_3c

    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->clearFocUidList()V

    iget-object v0, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p3}, Landroid/os/INetworkManagementService;->setFocUidList([I)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_3b} :catch_2f

    goto :goto_45

    :goto_3c
    nop

    const-string v1, "UrspNms"

    const-string/jumbo v2, "setFocUidList exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_45
    return-void
.end method

.method private setUrspStateForFoc(Z[II)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspStateForFoc - enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->logn(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_32

    :try_start_18
    iget-object v1, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->flushFocTables()V

    iget-object v1, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p3, p2}, Landroid/os/INetworkManagementService;->doDestroySockets(I[I)V

    iget-object v1, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, v0, p2}, Landroid/os/INetworkManagementService;->setFocBlockList(Z[I)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_27} :catch_28

    goto :goto_31

    :catch_28
    move-exception v0

    const-string v1, "UrspNms"

    const-string/jumbo v2, "setFocState::setFocBlockList true exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_31
    goto :goto_48

    :cond_32
    if-nez p1, :cond_48

    :try_start_34
    iget-object v0, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p3, p2}, Landroid/os/INetworkManagementService;->doDestroySockets(I[I)V

    iget-object v0, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->flushFocTables()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3e} :catch_3f

    goto :goto_48

    :catch_3f
    move-exception v0

    const-string v1, "UrspNms"

    const-string/jumbo v2, "setFocState::setFocBlockList false exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_48
    :goto_48
    return-void
.end method

.method private setUrspUidForMdo(ZI)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspUidForMdo - enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->logn(Ljava/lang/String;)V

    :try_start_1d
    iget-object v0, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2}, Landroid/os/INetworkManagementService;->setMdoUid(ZI)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_22} :catch_23

    goto :goto_2d

    :catch_23
    move-exception v0

    const-string/jumbo v1, "setUrspUidForMdo exception"

    invoke-static {v1}, Lcom/android/server/net/UrspNetworkManagementService;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2d
    return-void
.end method


# virtual methods
.method public setUrspMode(IZ[II)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspMode - type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " + uids"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->logn(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/net/UrspNetworkManagementService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2714

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p4, v0, Landroid/os/Message;->arg2:I

    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_3a
    return-void
.end method

.method public setUrspNetId(II)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspNetId - type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", NetId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->logn(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_2d

    iget-object v1, p0, Lcom/android/server/net/UrspNetworkManagementService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2711

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_38

    :cond_2d
    const/4 v1, 0x1

    if-ne p1, v1, :cond_38

    iget-object v1, p0, Lcom/android/server/net/UrspNetworkManagementService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2713

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    :cond_38
    :goto_38
    if-eqz v0, :cond_3f

    iput p2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_3f
    return-void
.end method

.method public setUrspRule(IIZ)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspRule - type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->logn(Ljava/lang/String;)V

    if-nez p1, :cond_3f

    iget-object v0, p0, Lcom/android/server/net/UrspNetworkManagementService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne p3, v1, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v1, 0x0

    :goto_3a
    iput v1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_3f
    return-void
.end method

.method public setUrspRules(IZI[I)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspRules - type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->logn(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_31

    iget-object v1, p0, Lcom/android/server/net/UrspNetworkManagementService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2715

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    if-ne p2, v0, :cond_27

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    iput v0, v1, Landroid/os/Message;->arg1:I

    iput p3, v1, Landroid/os/Message;->arg2:I

    iput-object p4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_31
    return-void
.end method
