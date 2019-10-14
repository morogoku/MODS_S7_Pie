.class Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;
.super Ljava/lang/Object;
.source "AODManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/aod/AODManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AODDozeCallbackRecord"
.end annotation


# static fields
.field private static final MSG_AOD_DOZE_ACQUIRED:I = 0x1

.field private static final MSG_AOD_DOZE_RELEASED:I = 0x2

.field private static final MSG_AOD_TOAST_REQUESTED:I = 0x3


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final pid:I

.field final synthetic this$0:Lcom/android/server/aod/AODManagerService;

.field private final token:Landroid/os/IBinder;

.field private final uid:I


# direct methods
.method constructor <init>(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;II)V
    .registers 7

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord$1;

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mLooper:Landroid/os/Looper;
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$6100(Lcom/android/server/aod/AODManagerService;)Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord$1;-><init>(Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->token:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->pid:I

    iput p4, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->uid:I

    :try_start_18
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->token:Landroid/os/IBinder;

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->token:Landroid/os/IBinder;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_22} :catch_23

    :cond_22
    goto :goto_2d

    :catch_23
    move-exception p1

    # getter for: Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AODListenerRecord : linkToDeath error"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;)Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->token:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->handleAODDozeAcquired()V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->handleAODDozeReleased()V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;Lcom/samsung/android/aod/AODToast;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->handleAODToastRequested(Lcom/samsung/android/aod/AODToast;)V

    return-void
.end method

.method private handleAODDozeAcquired()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->token:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/samsung/android/aod/IAODDozeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAODDozeCallback;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/samsung/android/aod/IAODDozeCallback;->onDozeAcquired()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    :cond_b
    goto :goto_17

    :catch_c
    move-exception v0

    # getter for: Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "handleAODDozeAcquired : RemoteException : "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_17
    return-void
.end method

.method private handleAODDozeReleased()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->token:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/samsung/android/aod/IAODDozeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAODDozeCallback;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/samsung/android/aod/IAODDozeCallback;->onDozeReleased()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    :cond_b
    goto :goto_17

    :catch_c
    move-exception v0

    # getter for: Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "handleAODDozeReleased : RemoteException : "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_17
    return-void
.end method

.method private handleAODToastRequested(Lcom/samsung/android/aod/AODToast;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->token:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/samsung/android/aod/IAODDozeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAODDozeCallback;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Lcom/samsung/android/aod/IAODDozeCallback;->onAODToastRequested(Lcom/samsung/android/aod/AODToast;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    :cond_b
    goto :goto_17

    :catch_c
    move-exception v0

    # getter for: Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "handleAODDozeReleased : RemoteException : "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_17
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    # getter for: Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$6500(Lcom/android/server/aod/AODManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    :try_start_16
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->this$0:Lcom/android/server/aod/AODManagerService;

    # setter for: Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;
    invoke-static {v2, v1}, Lcom/android/server/aod/AODManagerService;->access$6602(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;)Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_23

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method onAODDozeAcquired()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->token:Landroid/os/IBinder;

    if-nez v0, :cond_f

    # getter for: Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAODDozeAcquired : token is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method onAODDozeReleased()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->token:Landroid/os/IBinder;

    if-nez v0, :cond_f

    # getter for: Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAODDozeReleased : token is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method onAODToastRequested(Lcom/samsung/android/aod/AODToast;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->token:Landroid/os/IBinder;

    if-nez v0, :cond_f

    # getter for: Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAODDozeReleased : token is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[callback: pid:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") uid:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
