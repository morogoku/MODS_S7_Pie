.class public Lcom/samsung/android/dapservice/MlDapService;
.super Lcom/samsung/android/dapmanager/IMlDapService$Stub;
.source "MlDapService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MlDapService"


# instance fields
.field private DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private omldap:Lcom/samsung/android/dapservice/MlDap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/dapmanager/IMlDapService$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/dapservice/MlDapService;->DEBUG:Z

    new-instance v0, Lcom/samsung/android/dapservice/MlDap;

    invoke-direct {v0}, Lcom/samsung/android/dapservice/MlDap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/dapservice/MlDapService;->omldap:Lcom/samsung/android/dapservice/MlDap;

    iput-object p1, p0, Lcom/samsung/android/dapservice/MlDapService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/dapservice/MlDapService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1a

    const-string v0, "MlDapService"

    const-string v1, "context not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const-string v0, "MlDapService"

    const-string v1, "MlDapService is created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/dapservice/MlDapService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/dapservice/MlDapService$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/dapservice/MlDapService$1;-><init>(Lcom/samsung/android/dapservice/MlDapService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "MlDapService"

    const-string/jumbo v2, "receiver is registered "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/dapservice/MlDapService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/dapservice/MlDapService;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public checkDeviceCertificate()I
    .registers 3

    const-string v0, "MlDapService"

    const-string v1, "checkDeviceCert enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/samsung/android/dapservice/MlDapService;->omldap:Lcom/samsung/android/dapservice/MlDap;

    invoke-virtual {v0}, Lcom/samsung/android/dapservice/MlDap;->jcheckDeviceCert()I

    move-result v0

    return v0

    :cond_16
    const-string v0, "MlDapService"

    const-string v1, "dapservice was accessed by non privileged user"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "dapservice was accessed by non privileged user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteDeviceKey()I
    .registers 3

    const-string v0, "MlDapService"

    const-string v1, "deleteDeviceKey enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/samsung/android/dapservice/MlDapService;->omldap:Lcom/samsung/android/dapservice/MlDap;

    invoke-virtual {v0}, Lcom/samsung/android/dapservice/MlDap;->jdeleteDeviceKey()I

    move-result v0

    return v0

    :cond_16
    const-string v0, "MlDapService"

    const-string v1, "dapservice was accessed by non privileged user"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "dapservice was accessed by non privileged user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finalizeOta()I
    .registers 3

    const-string v0, "MlDapService"

    const-string v1, "MlOta_DeInitialize enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/samsung/android/dapservice/MlDapService;->omldap:Lcom/samsung/android/dapservice/MlDap;

    invoke-virtual {v0}, Lcom/samsung/android/dapservice/MlDap;->jotaDeInitialize()I

    move-result v0

    return v0

    :cond_16
    const-string v0, "MlDapService"

    const-string v1, "dapservice was accessed by non privileged user"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "dapservice was accessed by non privileged user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateSignature([BI)Lcom/samsung/android/dapmanager/BufferData;
    .registers 5

    const-string v0, "MlDapService"

    const-string v1, "generateSignature enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/samsung/android/dapservice/MlDapService;->omldap:Lcom/samsung/android/dapservice/MlDap;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/dapservice/MlDap;->jgenerateSignature([BI)Lcom/samsung/android/dapmanager/BufferData;

    move-result-object v0

    return-object v0

    :cond_16
    const-string v0, "MlDapService"

    const-string v1, "dapservice was accessed by non privileged user"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "dapservice was accessed by non privileged user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCaCertificate(I[B)[B
    .registers 7

    const-string v0, "MlDapService"

    const-string v1, "getCACertificate enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_38

    iget-object v0, p0, Lcom/samsung/android/dapservice/MlDapService;->omldap:Lcom/samsung/android/dapservice/MlDap;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/dapservice/MlDap;->jgetCACertificate(I[B)[B

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/dapservice/MlDapService;->DEBUG:Z

    if-eqz v1, :cond_37

    if-eqz v0, :cond_37

    const-string v1, "MlDapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "result"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    return-object v0

    :cond_38
    const-string v0, "MlDapService"

    const-string v1, "dapservice was accessed by non privileged user"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "dapservice was accessed by non privileged user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDeviceCertificate()Lcom/samsung/android/dapmanager/BufferData;
    .registers 3

    const-string v0, "MlDapService"

    const-string v1, "getDeviceCertificate enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/samsung/android/dapservice/MlDapService;->omldap:Lcom/samsung/android/dapservice/MlDap;

    invoke-virtual {v0}, Lcom/samsung/android/dapservice/MlDap;->jgetDeviceCertificate()Lcom/samsung/android/dapmanager/BufferData;

    move-result-object v0

    return-object v0

    :cond_16
    const-string v0, "MlDapService"

    const-string v1, "dapservice was accessed by non privileged user"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "dapservice was accessed by non privileged user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExtendPcr([BI)Lcom/samsung/android/dapmanager/BufferData;
    .registers 5

    const-string v0, "MlDapService"

    const-string v1, "getExtendPCR enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/samsung/android/dapservice/MlDapService;->omldap:Lcom/samsung/android/dapservice/MlDap;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/dapservice/MlDap;->jgetExtendPCR([BI)Lcom/samsung/android/dapmanager/BufferData;

    move-result-object v0

    return-object v0

    :cond_16
    const-string v0, "MlDapService"

    const-string v1, "dapservice was accessed by non privileged user"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "dapservice was accessed by non privileged user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getManufacturerCertificate()Lcom/samsung/android/dapmanager/IoBufferData;
    .registers 3

    const-string v0, "MlDapService"

    const-string v1, "getManufacturerCertificate enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/samsung/android/dapservice/MlDapService;->omldap:Lcom/samsung/android/dapservice/MlDap;

    invoke-virtual {v0}, Lcom/samsung/android/dapservice/MlDap;->jgetManufacturerCertificate()Lcom/samsung/android/dapmanager/IoBufferData;

    move-result-object v0

    return-object v0

    :cond_16
    const-string v0, "MlDapService"

    const-string v1, "dapservice was accessed by non privileged user"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "dapservice was accessed by non privileged user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPcr()Lcom/samsung/android/dapmanager/BufferData;
    .registers 3

    const-string v0, "MlDapService"

    const-string v1, "getPCR enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/samsung/android/dapservice/MlDapService;->omldap:Lcom/samsung/android/dapservice/MlDap;

    invoke-virtual {v0}, Lcom/samsung/android/dapservice/MlDap;->jgetPCR()Lcom/samsung/android/dapmanager/BufferData;

    move-result-object v0

    return-object v0

    :cond_16
    const-string v0, "MlDapService"

    const-string v1, "dapservice was accessed by non privileged user"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "dapservice was accessed by non privileged user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initializeOta()I
    .registers 3

    const-string v0, "MlDapService"

    const-string v1, "MlOta_Initialize enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/samsung/android/dapservice/MlDapService;->omldap:Lcom/samsung/android/dapservice/MlDap;

    invoke-virtual {v0}, Lcom/samsung/android/dapservice/MlDap;->jotaInitialize()I

    move-result v0

    return v0

    :cond_16
    const-string v0, "MlDapService"

    const-string v1, "dapservice was accessed by non privileged user"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "dapservice was accessed by non privileged user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public storeDeviceCertificate([B[B[BIII)I
    .registers 16

    const-string v0, "MlDapService"

    const-string/jumbo v1, "saveDeviceCert enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1d

    iget-object v2, p0, Lcom/samsung/android/dapservice/MlDapService;->omldap:Lcom/samsung/android/dapservice/MlDap;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/dapservice/MlDap;->jsaveDeviceCert([B[B[BIII)I

    move-result v0

    return v0

    :cond_1d
    const-string v0, "MlDapService"

    const-string v1, "dapservice was accessed by non privileged user"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "dapservice was accessed by non privileged user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
