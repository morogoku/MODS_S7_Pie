.class public final Lcom/samsung/android/authnrservice/service/SemAuthnrService;
.super Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;
.source "SemAuthnrService.java"


# static fields
.field private static final MAJOR_VERSION:I = 0x1

.field private static final MINOR_VERSION:I = 0x0

.field private static final PERMISSION_REQUEST_AUTHNR_SERVICE:Ljava/lang/String; = "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

.field private static final TAG:Ljava/lang/String; = "SAS"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public deleteFile(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string v2, "df denied"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    invoke-static {}, Lcom/samsung/android/authnrservice/service/FileOperation;->getInstance()Lcom/samsung/android/authnrservice/service/FileOperation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/authnrservice/service/FileOperation;->deleteFile(Ljava/lang/String;)Z

    move-result v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_12

    return v0

    :catch_12
    move-exception v0

    const-string v1, "SAS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFile failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getDrkKeyHandle()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string v2, "gdkh denied"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    invoke-static {}, Lcom/samsung/android/authnrservice/service/DrkOperation;->getInstance()Lcom/samsung/android/authnrservice/service/DrkOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/authnrservice/service/DrkOperation;->getDrkKeyHandle()[B

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    move-exception v0

    const-string v1, "SAS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDrkKeyHandle failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string v2, "gf denied"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    invoke-static {}, Lcom/samsung/android/authnrservice/service/FileOperation;->getInstance()Lcom/samsung/android/authnrservice/service/FileOperation;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/authnrservice/service/FileOperation;->getFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    move-exception v0

    const-string v1, "SAS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFiles failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMatchedFilePaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string v2, "gmfp denied"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    invoke-static {}, Lcom/samsung/android/authnrservice/service/FileOperation;->getInstance()Lcom/samsung/android/authnrservice/service/FileOperation;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/authnrservice/service/FileOperation;->getMatchedFilePaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    move-exception v0

    const-string v1, "SAS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMatchedFilePaths failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string v2, "gv denied"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    or-int/lit16 v0, v0, 0x100

    or-int/lit8 v0, v0, 0x0

    const-string v1, "SAS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "version :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getWrappedObject([B)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string v2, "gwo denied"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->getInstance(Landroid/content/Context;)Lcom/samsung/android/authnrservice/service/FingerprintOperation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->getWrappedObject([B)[B

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    move-exception v0

    const-string v1, "SAS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWrappedObject failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public initialize(Landroid/os/ParcelFileDescriptor;JJ)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string v2, "i denied"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_a
    invoke-static {}, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->getInstance()Lcom/samsung/android/authnrservice/service/AuthnrOperation;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->initialize(Landroid/os/ParcelFileDescriptor;JJ)Z

    move-result v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_17

    move v0, v1

    goto :goto_32

    :catch_17
    move-exception v1

    const-string v2, "SAS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialize failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_32
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_4a

    if-eqz p1, :cond_4a

    :try_start_3e
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_4a

    :catch_42
    move-exception v1

    const-string v2, "SAS"

    const-string v3, "failed to close"

    invoke-static {v2, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    :goto_4a
    return v0
.end method

.method public initializeDrk()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string v2, "id denied"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    invoke-static {}, Lcom/samsung/android/authnrservice/service/DrkOperation;->getInstance()Lcom/samsung/android/authnrservice/service/DrkOperation;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/authnrservice/service/DrkOperation;->initialize(Landroid/content/Context;)Z

    move-result v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_14

    return v0

    :catch_14
    move-exception v0

    const-string v1, "SAS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeDrk failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public initializePreloadedTa(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "SAS"

    const-string/jumbo v1, "public boolean initializePreloadedTa(int trustedAppType) throws RemoteException"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string v2, "ipt denied"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_11
    invoke-static {}, Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;->getInstance()Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;->initialize(I)Z

    move-result v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_19} :catch_1a

    return v0

    :catch_1a
    move-exception v0

    const-string v1, "SAS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "p initialize failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public initializeWithPreloadedTa()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string v2, "iwpt denied"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->getInstance(Landroid/content/Context;)Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->initialize()Z

    move-result v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_14

    return v0

    :catch_14
    move-exception v0

    const-string v1, "SAS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "p initialize failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public process([B)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v2, "p denied"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_a
    invoke-static {}, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->getInstance()Lcom/samsung/android/authnrservice/service/AuthnrOperation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->process([B)[B

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_13

    return-object v0

    :catch_13
    move-exception v0

    const-string v1, "SAS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "process failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public processPreloadedTa(I[B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "SAS"

    const-string/jumbo v1, "processPreloadedTa(int trustedAppType, byte[] data) throws RemoteException"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v2, "ppt denied"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_12
    invoke-static {}, Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;->getInstance()Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;->process(I[B)[B

    move-result-object v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1a} :catch_1b

    return-object v0

    :catch_1b
    move-exception v0

    const-string v1, "SAS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "p process failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public processWithPreloadedTa([BLjava/lang/String;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v2, "pwpt denied"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_a
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->getInstance(Landroid/content/Context;)Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->process([BLjava/lang/String;)[B

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception v0

    const-string v1, "SAS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "p process failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public readFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v2, "rf denied"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_a
    invoke-static {}, Lcom/samsung/android/authnrservice/service/FileOperation;->getInstance()Lcom/samsung/android/authnrservice/service/FileOperation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/authnrservice/service/FileOperation;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_13

    return-object v0

    :catch_13
    move-exception v0

    const-string v1, "SAS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readFile failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public setChallenge([B)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v2, "sc denied"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_a
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->getInstance(Landroid/content/Context;)Lcom/samsung/android/authnrservice/service/FingerprintOperation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->setChallenge([B)Z

    move-result v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_15

    return v0

    :catch_15
    move-exception v0

    const-string v1, "SAS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setChallenge failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public terminate()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v2, "t denied"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_a
    invoke-static {}, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->getInstance()Lcom/samsung/android/authnrservice/service/AuthnrOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->terminate()Z

    move-result v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_13

    return v0

    :catch_13
    move-exception v0

    const-string v1, "SAS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "terminate failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public terminateDrk()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v2, "td denied"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_a
    invoke-static {}, Lcom/samsung/android/authnrservice/service/DrkOperation;->getInstance()Lcom/samsung/android/authnrservice/service/DrkOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/authnrservice/service/DrkOperation;->terminate()Z

    move-result v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_13

    return v0

    :catch_13
    move-exception v0

    const-string v1, "SAS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "terminateDrk failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public terminatePreloadedTa(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "SAS"

    const-string/jumbo v1, "public boolean terminatePreloadedTa(int trustedAppType) throws RemoteException"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v2, "tpt denied"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_12
    invoke-static {}, Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;->getInstance()Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;->terminate(I)Z

    move-result v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1a} :catch_1b

    return v0

    :catch_1b
    move-exception v0

    const-string v1, "SAS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "p terminate failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public terminateWithPreloadedTa()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v2, "twpt denied"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_a
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->getInstance(Landroid/content/Context;)Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->terminate()Z

    move-result v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_15

    return v0

    :catch_15
    move-exception v0

    const-string v1, "SAS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "p terminate failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public writeFile([BLjava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v2, "wf denied"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_a
    invoke-static {}, Lcom/samsung/android/authnrservice/service/FileOperation;->getInstance()Lcom/samsung/android/authnrservice/service/FileOperation;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/authnrservice/service/FileOperation;->writeFile([BLjava/lang/String;)Z

    move-result v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_13

    return v0

    :catch_13
    move-exception v0

    const-string v1, "SAS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeFile failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
