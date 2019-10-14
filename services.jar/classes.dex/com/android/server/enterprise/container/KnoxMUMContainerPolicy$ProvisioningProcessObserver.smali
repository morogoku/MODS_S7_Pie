.class Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;
.super Landroid/app/IProcessObserver$Stub;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProvisioningProcessObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    return-void
.end method


# virtual methods
.method maybeUnregister()Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$3000(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    move-result-object v1

    if-nez v1, :cond_4f

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "maybeUnregister() unregistering process observer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_52

    :try_start_19
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;

    move-result-object v1

    if-eqz v1, :cond_3e

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;
    invoke-static {v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2502(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "provisioning observer unregistered"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_3e} :catch_3f
    .catchall {:try_start_19 .. :try_end_3e} :catchall_52

    :cond_3e
    goto :goto_4c

    :catch_3f
    move-exception v1

    :try_start_40
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Can\'t unregisterProcessObserver"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4c
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_4f
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_40 .. :try_end_54} :catchall_52

    throw v1
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->maybeUnregister()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    return-void
.end method

.method public onProcessDied(II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->maybeUnregister()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_15
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$3000(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->getState()I

    move-result v2

    const/16 v3, 0xc

    packed-switch v2, :pswitch_data_8a

    goto :goto_84

    :pswitch_25
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;
    invoke-static {v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$3000(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    move-result-object v4

    const-string v5, "com.samsung.android.knox.containercore"

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->getProcessId(Ljava/lang/String;)I

    move-result v4

    if-ne v4, p1, :cond_84

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "KnoxCore died.."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "state"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$3000(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->update(Landroid/os/Bundle;)Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->maybeUnregister()Z

    goto :goto_84

    :pswitch_54
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;
    invoke-static {v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$3000(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    move-result-object v4

    const-string v5, "com.android.managedprovisioning"

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->getProcessId(Ljava/lang/String;)I

    move-result v4

    if-ne v4, p1, :cond_84

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "managedprovisioning died.."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "state"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$3000(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->update(Landroid/os/Bundle;)Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->maybeUnregister()Z

    nop

    :cond_84
    :goto_84
    monitor-exit v1

    return-void

    :catchall_86
    move-exception v2

    monitor-exit v1
    :try_end_88
    .catchall {:try_start_15 .. :try_end_88} :catchall_86

    throw v2

    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_54
        :pswitch_54
        :pswitch_25
    .end packed-switch
.end method
