.class final Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;
.super Lcom/android/server/autofill/RemoteFillService$PendingRequest;
.source "RemoteFillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/RemoteFillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingSaveRequest"
.end annotation


# instance fields
.field private final mCallback:Landroid/service/autofill/ISaveCallback;

.field private final mRequest:Landroid/service/autofill/SaveRequest;


# direct methods
.method public constructor <init>(Landroid/service/autofill/SaveRequest;Lcom/android/server/autofill/RemoteFillService;)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;-><init>(Lcom/android/server/autofill/RemoteFillService;)V

    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;->mRequest:Landroid/service/autofill/SaveRequest;

    new-instance v0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest$1;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest$1;-><init>(Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;)V

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;->mCallback:Landroid/service/autofill/ISaveCallback;

    return-void
.end method


# virtual methods
.method public isFinal()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method onTimeout(Lcom/android/server/autofill/RemoteFillService;)V
    .registers 3

    const/4 v0, 0x0

    # invokes: Lcom/android/server/autofill/RemoteFillService;->dispatchOnSaveRequestFailure(Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V
    invoke-static {p1, p0, v0}, Lcom/android/server/autofill/RemoteFillService;->access$1600(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public run()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;->getService()Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    if-eqz v0, :cond_24

    # getter for: Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;
    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService;->access$400(Lcom/android/server/autofill/RemoteFillService;)Landroid/service/autofill/IAutoFillService;

    move-result-object v1

    if-eqz v1, :cond_24

    :try_start_c
    # getter for: Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;
    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService;->access$400(Lcom/android/server/autofill/RemoteFillService;)Landroid/service/autofill/IAutoFillService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;->mRequest:Landroid/service/autofill/SaveRequest;

    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;->mCallback:Landroid/service/autofill/ISaveCallback;

    invoke-interface {v1, v2, v3}, Landroid/service/autofill/IAutoFillService;->onSaveRequest(Landroid/service/autofill/SaveRequest;Landroid/service/autofill/ISaveCallback;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_17} :catch_18

    goto :goto_24

    :catch_18
    move-exception v1

    const-string v2, "RemoteFillService"

    const-string v3, "Error calling on save request"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    # invokes: Lcom/android/server/autofill/RemoteFillService;->dispatchOnSaveRequestFailure(Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V
    invoke-static {v0, p0, v2}, Lcom/android/server/autofill/RemoteFillService;->access$1600(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V

    :cond_24
    :goto_24
    return-void
.end method
