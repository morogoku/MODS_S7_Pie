.class public Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;
.super Ljava/lang/Object;
.source "ProxyAgentInfo.java"


# instance fields
.field public mCompName:Landroid/content/ComponentName;

.field public mName:Ljava/lang/String;

.field public mUserId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/content/ComponentName;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mUserId:I

    iput-object p3, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_34

    :try_start_7
    move-object v2, p1

    check-cast v2, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    iget v3, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mUserId:I

    iget v4, v2, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mUserId:I

    if-ne v3, v4, :cond_2d

    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2a
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_2a} :catch_2f

    if-eqz v3, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, v1

    :goto_2e
    return v0

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_35

    :cond_34
    nop

    :goto_35
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProxyAgentInfo {mName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mCompName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mUserId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
