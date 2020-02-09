.class public Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;
.super Ljava/lang/Object;
.source "ProKioskManagerWrapper.java"


# instance fields
.field mContext:Landroid/content/Context;

.field final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

.field mProKioskOptionShown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    iput-object p2, p0, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iput-object p1, p0, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskOptionShown:Z

    return-void
.end method


# virtual methods
.method public getExitUI(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/custom/ProKioskManager;->getExitUI(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPowerDialogItems()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getPowerDialogItems()I

    move-result v0

    return v0
.end method

.method public getPowerDialogOptionMode()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getPowerDialogOptionMode()I

    move-result v0

    return v0
.end method

.method public getProKioskOptionShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskOptionShown:Z

    return v0
.end method

.method public getProKioskString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProkioskState()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v0

    return v0
.end method

.method public setProKioskOptionShown(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskOptionShown:Z

    return-void
.end method

.method public setProKioskState(ZLjava/lang/String;)I
    .locals 6

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/knox/custom/ProKioskManager;->setProKioskState(ZLjava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v3, "ProKioskManagerWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setProKioskState() : Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/globalactions/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0
.end method
