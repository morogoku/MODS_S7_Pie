.class public Lcom/android/server/MdfService;
.super Lcom/samsung/android/security/mdf/MdfService/IMdfService$Stub;
.source "MdfService.java"


# instance fields
.field private mdfPolicy:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/IMdfService$Stub;-><init>()V

    new-instance v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    invoke-direct {v0, p1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/MdfService;->mdfPolicy:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    iget-object v0, p0, Lcom/android/server/MdfService;->mdfPolicy:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    if-nez v0, :cond_17

    const-string v0, "MdfService"

    const-string/jumbo v1, "mdfService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    :cond_17
    iget-object v0, p0, Lcom/android/server/MdfService;->mdfPolicy:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->isCCModeSupport()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4c

    const/4 v0, 0x0

    :try_start_21
    iget-object v1, p0, Lcom/android/server/MdfService;->mdfPolicy:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    invoke-virtual {v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->initCCMode()I

    move-result v1

    move v0, v1

    if-eqz v0, :cond_45

    const-string v1, "MdfService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initCCMode res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/SecurityException; {:try_start_21 .. :try_end_45} :catch_47

    :cond_45
    nop

    goto :goto_53

    :catch_47
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    throw v1

    :cond_4c
    const-string v0, "MdfService"

    const-string v1, "This device does not support the MDF"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_53
    return-void
.end method


# virtual methods
.method public initCCMode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/server/MdfService;->mdfPolicy:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    if-nez v0, :cond_6

    const/4 v0, -0x2

    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/MdfService;->mdfPolicy:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->initCCMode()I

    move-result v0
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    throw v0
.end method
