.class Lcom/android/server/vr/GearVrManagerService$2;
.super Lcom/samsung/android/vr/IGearVrManagerService$Stub;
.source "GearVrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/GearVrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/GearVrManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vr/GearVrManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireVrClocks(Landroid/os/IBinder;Ljava/lang/String;II)[I
    .registers 6

    const-string v0, "acquireVrClocks"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$2;->enforceCallingSelfPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->acquireVrClocks(Landroid/os/IBinder;Ljava/lang/String;II)[I
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/vr/GearVrManagerService;->access$2200(Lcom/android/server/vr/GearVrManagerService;Landroid/os/IBinder;Ljava/lang/String;II)[I

    move-result-object v0

    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->access$4700(Lcom/android/server/vr/GearVrManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public enforceCallingPermission(IILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingPermission(IILjava/lang/String;)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->access$2900(Lcom/android/server/vr/GearVrManagerService;IILjava/lang/String;)V

    return-void
.end method

.method public enforceCallingSelfPermission(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$3000(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    return-void
.end method

.method public getDeviceType()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->getDeviceType()I

    move-result v0

    return v0
.end method

.method public getPowerLevelState()I
    .registers 2

    const-string v0, "getPowerLevelState"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$2;->enforceCallingSelfPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->getPowerLevelState()I
    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$2700(Lcom/android/server/vr/GearVrManagerService;)I

    move-result v0

    return v0
.end method

.method public getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "getSystemOption"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$2;->enforceCallingSelfPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$2500(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThreadId(ILjava/lang/String;I)[I
    .registers 6

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string v1, "getThreadId"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->getThreadId(ILjava/lang/String;I)[I
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->access$3700(Lcom/android/server/vr/GearVrManagerService;ILjava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method public getVrRecentsMode()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string v1, "getVrRecentsMode"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->getVrRecentsMode()I
    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$1300(Lcom/android/server/vr/GearVrManagerService;)I

    move-result v0

    return v0
.end method

.method public getVrSystemUiMode()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->getVrSystemUiMode()I
    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$1400(Lcom/android/server/vr/GearVrManagerService;)I

    move-result v0

    return v0
.end method

.method public isDock()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->isDock()Z

    move-result v0

    return v0
.end method

.method public isMount()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->isMount()Z

    move-result v0

    return v0
.end method

.method public isPersistentVrMode()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string v1, "isPersistentVrMode"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->isPersistentVrMode()Z

    move-result v0

    return v0
.end method

.method public isVrMode()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->isVrMode()Z

    move-result v0

    return v0
.end method

.method public notifyDeviceEventChanged(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "notifyDeviceEventChanged"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->notifyDeviceEventChanged(I)V
    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$200(Lcom/android/server/vr/GearVrManagerService;I)V

    return-void
.end method

.method public readSysNode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "readSysNode"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->readSysNode(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$3800(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "registerVrStateListener"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->addStateCallback(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$300(Lcom/android/server/vr/GearVrManagerService;Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    return-void
.end method

.method public releaseVrClocks(Landroid/os/IBinder;Ljava/lang/String;)Z
    .registers 4

    const-string/jumbo v0, "releaseVrClocks"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$2;->enforceCallingSelfPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->releaseVrClocks(Landroid/os/IBinder;Ljava/lang/String;)Z
    invoke-static {v0, p1, p2}, Lcom/android/server/vr/GearVrManagerService;->access$2300(Lcom/android/server/vr/GearVrManagerService;Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeSysNode(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "removeSysNode"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->removeSysNode(Ljava/lang/String;)Z
    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$4000(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public retrieveEnableFrequencyLevels()[I
    .registers 2

    const-string/jumbo v0, "retrieveEnableFrequencyLevels"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$2;->enforceCallingSelfPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->retrieveEnableFrequencyLevels()[I
    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$2600(Lcom/android/server/vr/GearVrManagerService;)[I

    move-result-object v0

    return-object v0
.end method

.method public setHomeKeyBlocked(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setHomeKeyBlocked"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->setHomeKeyBlocked(Z)V
    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$3300(Lcom/android/server/vr/GearVrManagerService;Z)V

    return-void
.end method

.method public setOverlayRestriction(Z[Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setOverlayRestriction"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->setOverlayRestriction(Z[Ljava/lang/String;I)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->access$3400(Lcom/android/server/vr/GearVrManagerService;Z[Ljava/lang/String;I)V

    return-void
.end method

.method public setPermissions(Ljava/lang/String;III)I
    .registers 7

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setPermissions"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->setPermissions(Ljava/lang/String;III)I
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/vr/GearVrManagerService;->access$4100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public setPersistentVrMode(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setPersistentVrMode"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->setPersistentVrMode(Z)V
    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$1800(Lcom/android/server/vr/GearVrManagerService;Z)V

    return-void
.end method

.method public setReadyForVrMode(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setReadyForVrMode"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->setReadyForVrMode(Z)V
    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$3500(Lcom/android/server/vr/GearVrManagerService;Z)V

    return-void
.end method

.method public setSystemMouseControlType(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setSystemMouseControlType"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->setSystemMouseControlType(I)V
    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$4400(Lcom/android/server/vr/GearVrManagerService;I)V

    return-void
.end method

.method public setSystemMouseShowMouseEnabled(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setSystemMouseShowMouseEnabled"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->setSystemMouseShowMouseEnabled(Z)V
    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$4500(Lcom/android/server/vr/GearVrManagerService;Z)V

    return-void
.end method

.method public setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "setSystemOption"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$2;->enforceCallingSelfPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/android/server/vr/GearVrManagerService;->access$2400(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setThreadAffinity(I[I)I
    .registers 5

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setThreadAffinity"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->setThreadAffinity(I[I)I
    invoke-static {v0, p1, p2}, Lcom/android/server/vr/GearVrManagerService;->access$3600(Lcom/android/server/vr/GearVrManagerService;I[I)I

    move-result v0

    return v0
.end method

.method public setThreadGroup(II)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setThreadGroup"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->setThreadGroup(II)Z
    invoke-static {v0, p1, p2}, Lcom/android/server/vr/GearVrManagerService;->access$4200(Lcom/android/server/vr/GearVrManagerService;II)Z

    move-result v0

    return v0
.end method

.method public setThreadSchedFifo(Ljava/lang/String;III)Z
    .registers 6

    const-string/jumbo v0, "setThreadSchedFifo"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$2;->enforceCallingSelfPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->setThreadSchedFifo(Ljava/lang/String;III)Z
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/vr/GearVrManagerService;->access$2800(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;III)Z

    move-result v0

    return v0
.end method

.method public setThreadScheduler(III)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setThreadScheduler"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->setThreadScheduler(III)Z
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->access$4300(Lcom/android/server/vr/GearVrManagerService;III)Z

    move-result v0

    return v0
.end method

.method public setVr2dSurface(Landroid/view/Surface;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setVr2dSurface"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->setVr2dSurface(Landroid/view/Surface;)V
    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$4600(Lcom/android/server/vr/GearVrManagerService;Landroid/view/Surface;)V

    return-void
.end method

.method public setVrMode(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setVrMode"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->setVrMode(Z)V
    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$3200(Lcom/android/server/vr/GearVrManagerService;Z)V

    return-void
.end method

.method public unregisterVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "unregisterVrStateListener"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->removeStateCallback(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$400(Lcom/android/server/vr/GearVrManagerService;Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    return-void
.end method

.method public writeSysNode(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "writeSysNode"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->writeSysNode(Ljava/lang/String;Ljava/lang/String;Z)Z
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->access$3900(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
