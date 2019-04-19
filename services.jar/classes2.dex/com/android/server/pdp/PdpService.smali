.class public Lcom/android/server/pdp/PdpService;
.super Lcom/android/server/SystemService;
.source "PdpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pdp/PdpService$SvcPdpHandler;
    }
.end annotation


# static fields
.field private static final MSG_DISPLAY_PDPTOAST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PdpService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSvcPdpHandler:Lcom/android/server/pdp/PdpService$SvcPdpHandler;

.field private mSvcPdpThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/pdp/PdpService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/pdp/PdpService$1;

    const-string/jumbo v1, "mSvcPdpThread"

    invoke-direct {v0, p0, v1}, Lcom/android/server/pdp/PdpService$1;-><init>(Lcom/android/server/pdp/PdpService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/server/pdp/PdpService;Lcom/android/server/pdp/PdpService$SvcPdpHandler;)Lcom/android/server/pdp/PdpService$SvcPdpHandler;
    .registers 2

    iput-object p1, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpHandler:Lcom/android/server/pdp/PdpService$SvcPdpHandler;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/pdp/PdpService;)Landroid/os/HandlerThread;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpThread:Landroid/os/HandlerThread;

    return-object v0
.end method


# virtual methods
.method public handleDisplayPDPToast(Ljava/lang/String;I)V
    .registers 8

    const-string v0, "PdpService"

    const-string v1, "[PDP] displayPDPToast start"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    move v1, v0

    :goto_9
    if-gt v1, p2, :cond_26

    :try_start_b
    iget-object v2, p0, Lcom/android/server/pdp/PdpService;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1a} :catch_1d

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :catch_1d
    move-exception v0

    const-string v1, "PdpService"

    const-string v2, "[PDP] Toast exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    :cond_26
    nop

    :goto_27
    const-string v0, "PdpService"

    const-string v1, "[PDP] displayPDPToast end"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBootPhase(I)V
    .registers 4

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_e

    const-string v0, "PdpService"

    const-string v1, "[PDP] PHASE_BOOT_COMPLETED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/pdp/PdpService;->pdpServiceReady()V

    :cond_e
    return-void
.end method

.method public onStart()V
    .registers 3

    const-string v0, "PdpService"

    const-string v1, "[PDP] onStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public pdpServiceReady()V
    .registers 5

    const-string v0, "PdpService"

    const-string v1, "[PDP] pdpServiceReady >"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpHandler:Lcom/android/server/pdp/PdpService$SvcPdpHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpHandler:Lcom/android/server/pdp/PdpService$SvcPdpHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpHandler:Lcom/android/server/pdp/PdpService$SvcPdpHandler;

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v1, "PdpService"

    const-string v2, "[PDP] pdpServiceReady <"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
