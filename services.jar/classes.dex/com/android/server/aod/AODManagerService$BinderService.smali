.class final Lcom/android/server/aod/AODManagerService$BinderService;
.super Lcom/samsung/android/aod/IAODManager$Stub;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/aod/AODManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/aod/AODManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0}, Lcom/samsung/android/aod/IAODManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService$BinderService;-><init>(Lcom/android/server/aod/AODManagerService;)V

    return-void
.end method


# virtual methods
.method public acquireDoze(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->checkSystemUidOrSystemUiUidOrSystemApp()V
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3800(Lcom/android/server/aod/AODManagerService;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    move-wide v8, v1

    :try_start_12
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, v0

    move v6, v7

    # invokes: Lcom/android/server/aod/AODManagerService;->acquireDozeInternal(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/aod/AODManagerService;->access$5200(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_21

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_21
    move-exception v1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public addLogText(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->checkSystemUidOrSystemUiUid()V
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3500(Lcom/android/server/aod/AODManagerService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->addLogTextInternal(Ljava/util/List;)V
    invoke-static {v2, p1}, Lcom/android/server/aod/AODManagerService;->access$4600(Lcom/android/server/aod/AODManagerService;Ljava/util/List;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_13

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$1800(Lcom/android/server/aod/AODManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump AODManagerService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_3d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_41
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->dumpInternal(Ljava/io/PrintWriter;)V
    invoke-static {v2, p2}, Lcom/android/server/aod/AODManagerService;->access$5500(Lcom/android/server/aod/AODManagerService;Ljava/io/PrintWriter;)V
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_4b

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_4b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getActiveImageInfo()Ljava/lang/String;
    .registers 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->getActiveImageInfoInternal()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->access$3300(Lcom/android/server/aod/AODManagerService;)Ljava/lang/String;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getSelfIconImageInfo()Ljava/lang/String;
    .registers 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->getSelfIconImageInfoInternal()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->access$3400(Lcom/android/server/aod/AODManagerService;)Ljava/lang/String;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isAODState()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;
    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->access$1300(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/aod/AODSettingHelper;->isAODShowState()Z

    move-result v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isSViewCoverBrightnessHigh()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->checkSystemUidOrSystemUiUid()V
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3500(Lcom/android/server/aod/AODManagerService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mCoverController:Lcom/android/server/aod/AODSCoverController;
    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->access$2000(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODSCoverController;

    move-result-object v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mCoverController:Lcom/android/server/aod/AODSCoverController;
    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->access$2000(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODSCoverController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/aod/AODSCoverController;->isSViewCoverBrightnessHigh()Z

    move-result v2
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_24

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_24
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public readyToScreenTurningOn()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->checkSystemUidOrSystemUiUid()V
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3500(Lcom/android/server/aod/AODManagerService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->readyToScreenTurningOnInternal()V
    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->access$4700(Lcom/android/server/aod/AODManagerService;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_13

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public registerAODDozeCallback(Landroid/os/IBinder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->checkSystemUidOrSystemUiUid()V
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3500(Lcom/android/server/aod/AODManagerService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->registerAODDozeCallbackInternal(Landroid/os/IBinder;)V
    invoke-static {v2, p1}, Lcom/android/server/aod/AODManagerService;->access$5000(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_13

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public registerAODListener(Landroid/os/IBinder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->checkSystemUidOrSystemUiUid()V
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3500(Lcom/android/server/aod/AODManagerService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->registerAODListenerInternal(Landroid/os/IBinder;)V
    invoke-static {v2, p1}, Lcom/android/server/aod/AODManagerService;->access$4800(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_13

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public releaseDoze(Landroid/os/IBinder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->checkSystemUidOrSystemUiUidOrSystemApp()V
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3800(Lcom/android/server/aod/AODManagerService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->releaseDozeInternal(Landroid/os/IBinder;)V
    invoke-static {v2, p1}, Lcom/android/server/aod/AODManagerService;->access$5300(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_13

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public requestAODToast(Ljava/lang/String;Lcom/samsung/android/aod/AODToast;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->checkSystemUidOrSystemUiUidOrSystemApp()V
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3800(Lcom/android/server/aod/AODManagerService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->requestAODToastInternal(Ljava/lang/String;Lcom/samsung/android/aod/AODToast;)V
    invoke-static {v2, p1, p2}, Lcom/android/server/aod/AODManagerService;->access$5400(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;Lcom/samsung/android/aod/AODToast;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_13

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public requestExpandNotificationPanel(Landroid/service/notification/StatusBarNotification;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->checkSystemUidOrSystemUiUid()V
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3500(Lcom/android/server/aod/AODManagerService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->requestExpandNotificationPanelInternal(Landroid/service/notification/StatusBarNotification;)V
    invoke-static {v2, p1}, Lcom/android/server/aod/AODManagerService;->access$4000(Lcom/android/server/aod/AODManagerService;Landroid/service/notification/StatusBarNotification;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_13

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setActiveImage(I[BLjava/lang/String;)I
    .registers 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, -0x1

    :try_start_5
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->setActiveImageInternal(I[BLjava/lang/String;)I
    invoke-static {v3, p1, p2, p3}, Lcom/android/server/aod/AODManagerService;->access$3200(Lcom/android/server/aod/AODManagerService;I[BLjava/lang/String;)I

    move-result v3
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_11

    move v2, v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v2

    :catchall_11
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setAnalogClockInfo(IIII)I
    .registers 9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, -0x1

    :try_start_5
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->setAnalogClockInfoInternal(IIII)I
    invoke-static {v3, p1, p2, p3, p4}, Lcom/android/server/aod/AODManagerService;->access$3000(Lcom/android/server/aod/AODManagerService;IIII)I

    move-result v3
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_11

    move v2, v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v2

    :catchall_11
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setAnalogClockInfoV4(IIIIII)I
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v0, -0x1

    move v3, v0

    move-object v4, p0

    :try_start_7
    iget-object v5, v4, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    move v6, p1

    move v7, p2

    move v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    # invokes: Lcom/android/server/aod/AODManagerService;->setAnalogClockInfoV4Internal(IIIIII)I
    invoke-static/range {v5 .. v11}, Lcom/android/server/aod/AODManagerService;->access$4200(Lcom/android/server/aod/AODManagerService;IIIIII)I

    move-result v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_1b

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :catchall_1b
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setCurrentTime(IIIIII)I
    .registers 19

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v0, -0x1

    move v3, v0

    move-object v4, p0

    :try_start_7
    iget-object v5, v4, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    move v6, p1

    move v7, p2

    move v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    # invokes: Lcom/android/server/aod/AODManagerService;->setCurrentTimeInternal(IIIIII)I
    invoke-static/range {v5 .. v11}, Lcom/android/server/aod/AODManagerService;->access$2700(Lcom/android/server/aod/AODManagerService;IIIIII)I

    move-result v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_1b

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :catchall_1b
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setDigitalClockInfo(IIIIIIIIIIIIIIIIIIII)I
    .registers 47

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v0, -0x1

    move v3, v0

    move-object/from16 v4, p0

    :try_start_8
    iget-object v5, v4, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    move/from16 v17, p12

    move/from16 v18, p13

    move/from16 v19, p14

    move/from16 v20, p15

    move/from16 v21, p16

    move/from16 v22, p17

    move/from16 v23, p18

    move/from16 v24, p19

    move/from16 v25, p20

    # invokes: Lcom/android/server/aod/AODManagerService;->setDigitalClockInfoInternal(IIIIIIIIIIIIIIIIIIII)I
    invoke-static/range {v5 .. v25}, Lcom/android/server/aod/AODManagerService;->access$3100(Lcom/android/server/aod/AODManagerService;IIIIIIIIIIIIIIIIIIII)I

    move-result v0
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_3b

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :catchall_3b
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setDigitalClockInfoV4(IIIIIIIIIIIIIIII)I
    .registers 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v0, -0x1

    move v3, v0

    move-object/from16 v4, p0

    :try_start_8
    iget-object v5, v4, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    move/from16 v17, p12

    move/from16 v18, p13

    move/from16 v19, p14

    move/from16 v20, p15

    move/from16 v21, p16

    # invokes: Lcom/android/server/aod/AODManagerService;->setDigitalClockInfoV4Internal(IIIIIIIIIIIIIIII)I
    invoke-static/range {v5 .. v21}, Lcom/android/server/aod/AODManagerService;->access$4300(Lcom/android/server/aod/AODManagerService;IIIIIIIIIIIIIIII)I

    move-result v0
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_33

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :catchall_33
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setLiveClockCommand(III[I)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, -0x1

    :try_start_5
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->setLiveClockCommandInternal(III[I)I
    invoke-static {v3, p1, p2, p3, p4}, Lcom/android/server/aod/AODManagerService;->access$4500(Lcom/android/server/aod/AODManagerService;III[I)I

    move-result v3
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_11

    move v2, v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v2

    :catchall_11
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setLiveClockImage(II[BLjava/lang/String;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, -0x1

    :try_start_5
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->setLiveClockImageInternal(II[BLjava/lang/String;)I
    invoke-static {v3, p1, p2, p3, p4}, Lcom/android/server/aod/AODManagerService;->access$4400(Lcom/android/server/aod/AODManagerService;II[BLjava/lang/String;)I

    move-result v3
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_11

    move v2, v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v2

    :catchall_11
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setLiveClockInfo(IJJJJJJJJ)I
    .registers 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v0, -0x1

    move v3, v0

    move-object/from16 v4, p0

    :try_start_8
    iget-object v5, v4, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    move/from16 v6, p1

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    move-wide/from16 v11, p6

    move-wide/from16 v13, p8

    move-wide/from16 v15, p10

    move-wide/from16 v17, p12

    move-wide/from16 v19, p14

    move-wide/from16 v21, p16

    # invokes: Lcom/android/server/aod/AODManagerService;->setLiveClockInfoInternal(IJJJJJJJJ)I
    invoke-static/range {v5 .. v22}, Lcom/android/server/aod/AODManagerService;->access$2300(Lcom/android/server/aod/AODManagerService;IJJJJJJJJ)I

    move-result v0
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :catchall_25
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setLiveClockNeedle([B)V
    .registers 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->setLiveClockNeedleInternal([B)V
    invoke-static {v2, p1}, Lcom/android/server/aod/AODManagerService;->access$2400(Lcom/android/server/aod/AODManagerService;[B)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setSelfGridInfo(IIIII)I
    .registers 15

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, -0x1

    :try_start_5
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    # invokes: Lcom/android/server/aod/AODManagerService;->setSelfGridInfoInternal(IIIII)I
    invoke-static/range {v3 .. v8}, Lcom/android/server/aod/AODManagerService;->access$2900(Lcom/android/server/aod/AODManagerService;IIIII)I

    move-result v3
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_16

    move v2, v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v2

    :catchall_16
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setSelfIconInfo(IIIIII)I
    .registers 19

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v0, -0x1

    move v3, v0

    move-object v4, p0

    :try_start_7
    iget-object v5, v4, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    move v6, p1

    move v7, p2

    move v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    # invokes: Lcom/android/server/aod/AODManagerService;->setSelfIconInfoInternal(IIIIII)I
    invoke-static/range {v5 .. v11}, Lcom/android/server/aod/AODManagerService;->access$2800(Lcom/android/server/aod/AODManagerService;IIIIII)I

    move-result v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_1b

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :catchall_1b
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setSelfPartialHLPMScan(IIIIIIIII)I
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v0, -0x1

    move v3, v0

    move-object v4, p0

    :try_start_7
    iget-object v5, v4, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    # invokes: Lcom/android/server/aod/AODManagerService;->setSelfPartialHLPMScanInternal(IIIIIIIII)I
    invoke-static/range {v5 .. v14}, Lcom/android/server/aod/AODManagerService;->access$4100(Lcom/android/server/aod/AODManagerService;IIIIIIIII)I

    move-result v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_24

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :catchall_24
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public turnOffSelfMove()I
    .registers 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, -0x1

    :try_start_5
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->turnOffSelfMoveInternal()I
    invoke-static {v3}, Lcom/android/server/aod/AODManagerService;->access$2600(Lcom/android/server/aod/AODManagerService;)I

    move-result v3
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_11

    move v2, v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v2

    :catchall_11
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public turnOnSelfMove()I
    .registers 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, -0x1

    :try_start_5
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->turnOnSelfMoveInternal()I
    invoke-static {v3}, Lcom/android/server/aod/AODManagerService;->access$2500(Lcom/android/server/aod/AODManagerService;)I

    move-result v3
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_11

    move v2, v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v2

    :catchall_11
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public unregisterAODDozeCallback(Landroid/os/IBinder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->checkSystemUidOrSystemUiUid()V
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3500(Lcom/android/server/aod/AODManagerService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->unregisterAODDozeCallbackInternal(Landroid/os/IBinder;)V
    invoke-static {v2, p1}, Lcom/android/server/aod/AODManagerService;->access$5100(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_13

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public unregisterAODListener(Landroid/os/IBinder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->checkSystemUidOrSystemUiUid()V
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3500(Lcom/android/server/aod/AODManagerService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->unregisterAODListenerInternal(Landroid/os/IBinder;)V
    invoke-static {v2, p1}, Lcom/android/server/aod/AODManagerService;->access$4900(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_13

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public updateAODTspRect(IIII)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->checkSystemUidOrSystemUiUidOrSystemApp()V
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3800(Lcom/android/server/aod/AODManagerService;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    move-wide v7, v1

    :try_start_e
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, v0

    # invokes: Lcom/android/server/aod/AODManagerService;->updateAODTspRectInternal(IIIII)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/aod/AODManagerService;->access$3900(Lcom/android/server/aod/AODManagerService;IIIII)V
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1d

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_1d
    move-exception v1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public writeAODCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->checkSystemUidOrSystemUiUid()V
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3500(Lcom/android/server/aod/AODManagerService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_a
    const-string v3, "/sys/class/sec/tsp/input/enabled"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v2, v3

    if-eqz v2, :cond_28

    const-string v3, "0"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/aod/AODManagerService;->mIsSingleTouchMode:Z
    invoke-static {v3, v4}, Lcom/android/server/aod/AODManagerService;->access$3602(Lcom/android/server/aod/AODManagerService;Z)Z

    goto :goto_28

    :cond_22
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/aod/AODManagerService;->mIsSingleTouchMode:Z
    invoke-static {v3, v4}, Lcom/android/server/aod/AODManagerService;->access$3602(Lcom/android/server/aod/AODManagerService;Z)Z

    :cond_28
    :goto_28
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    # invokes: Lcom/android/server/aod/AODManagerService;->writeAODCommandInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v3 .. v8}, Lcom/android/server/aod/AODManagerService;->access$3700(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_a .. :try_end_32} :catchall_37

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_37
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
