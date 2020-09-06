.class Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;
.super Ljava/lang/Object;
.source "PaymentManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/spay/PaymentManagerService$FrameworkClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientBinderDeathReceiver"
.end annotation


# instance fields
.field private mReceiver:Landroid/os/IBinder;

.field final synthetic this$1:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;


# direct methods
.method public constructor <init>(Lcom/android/server/spay/PaymentManagerService$FrameworkClient;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->deleteClient()V

    return-void
.end method

.method private declared-synchronized deleteClient()V
    .registers 9

    monitor-enter p0

    :try_start_1
    const-string v0, "PaymentManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Client stopped. Clearing Databstructures for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    iget-object v2, v2, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    iget-object v0, v0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mCommnInfo:Landroid/spay/PaymentTZServiceCommnInfo;

    iget-object v0, v0, Landroid/spay/PaymentTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_98

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    iget-object v2, v2, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mCommnInfo:Landroid/spay/PaymentTZServiceCommnInfo;

    iget-object v2, v2, Landroid/spay/PaymentTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/spay/TAController;
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_a9

    :try_start_41
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x101

    if-ne v3, v4, :cond_8f

    iget-boolean v3, v2, Lcom/android/server/spay/TAController;->SET_QSEE_SECURE_UI:Z

    if-eqz v3, :cond_8f

    # getter for: Lcom/android/server/spay/PaymentManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/spay/PaymentManagerService;->access$000()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/spay/Utils;->sendSecureUIAbortIntent(Landroid/content/Context;)Z

    move-result v3

    const-string v4, "PaymentManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendSecureUIAbortIntent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_6d
    const/16 v5, 0xa

    if-ge v4, v5, :cond_8f

    iget-boolean v5, v2, Lcom/android/server/spay/TAController;->SET_QSEE_SECURE_UI:Z

    if-nez v5, :cond_7e

    const-string v5, "PaymentManagerService"

    const-string/jumbo v6, "secureUI unsetted"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_7d} :catch_93
    .catchall {:try_start_41 .. :try_end_7d} :catchall_a9

    goto :goto_8f

    :cond_7e
    const-wide/16 v5, 0x64

    :try_start_80
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_83} :catch_84
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_83} :catch_93
    .catchall {:try_start_80 .. :try_end_83} :catchall_a9

    goto :goto_8c

    :catch_84
    move-exception v5

    :try_start_85
    const-string v6, "PaymentManagerService"

    const-string v7, "Failed to put thread to sleep!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8c
    add-int/lit8 v4, v4, 0x1

    goto :goto_6d

    :cond_8f
    :goto_8f
    invoke-virtual {v2}, Lcom/android/server/spay/TAController;->unloadTA()V
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_92} :catch_93
    .catchall {:try_start_85 .. :try_end_92} :catchall_a9

    goto :goto_97

    :catch_93
    move-exception v3

    :try_start_94
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_97
    goto :goto_29

    :cond_98
    iget-object v0, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    iget-object v0, v0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->this$0:Lcom/android/server/spay/PaymentManagerService;

    # getter for: Lcom/android/server/spay/PaymentManagerService;->mRegisteredFWKClientMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/spay/PaymentManagerService;->access$100(Lcom/android/server/spay/PaymentManagerService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    iget-object v1, v1, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a7
    .catchall {:try_start_94 .. :try_end_a7} :catchall_a9

    monitor-exit p0

    return-void

    :catchall_a9
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    const-string v0, "PaymentManagerService"

    const-string v1, "Error: Framework App dead, unloading loaded TAs"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->deleteClient()V

    return-void
.end method

.method public setReceiver(Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->mReceiver:Landroid/os/IBinder;

    return-void
.end method
