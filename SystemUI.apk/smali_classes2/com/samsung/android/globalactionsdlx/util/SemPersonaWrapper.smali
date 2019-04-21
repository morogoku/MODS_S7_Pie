.class public Lcom/samsung/android/globalactionsdlx/util/SemPersonaWrapper;
.super Ljava/lang/Object;
.source "SemPersonaWrapper.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/util/SemPersonaWrapper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SemPersonaWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SemPersonaWrapper;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-void
.end method


# virtual methods
.method public getKeyguardShowState()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SemPersonaWrapper;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKeyguardShowState()Z

    move-result v0

    return v0
.end method

.method public isCOMContainerMode()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SemPersonaWrapper;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SemPersonaWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isDOProvisioningMode()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SemPersonaWrapper;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isValidVersion()Z
    .registers 4

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_17

    const-string v1, "2.0"

    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return v1
.end method
