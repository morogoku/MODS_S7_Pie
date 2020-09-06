.class public Lcom/android/server/sdp/engine/SdpPolicy;
.super Ljava/lang/Object;
.source "SdpPolicy.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mOwner:Lcom/samsung/android/knox/sdp/core/SdpDomain;

.field private mPrivilegedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/sdp/core/SdpDomain;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/samsung/android/knox/sdp/core/SdpDomain;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;",
            "Lcom/samsung/android/knox/sdp/core/SdpDomain;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/sdp/core/SdpDomain;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mAlias:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mOwner:Lcom/samsung/android/knox/sdp/core/SdpDomain;

    iput-object p3, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    return-void
.end method

.method private matches(Lcom/samsung/android/knox/sdp/core/SdpDomain;Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z
    .registers 5

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    return v0

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addPrivilegedApp(Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z
    .registers 9

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_42

    iget-object v3, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mAlias:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    :try_start_17
    iget-object v3, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    invoke-virtual {v4}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    const/4 v3, 0x0

    return v3

    :cond_35
    goto :goto_1d

    :cond_36
    iget-object v3, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_3c} :catch_3e

    move v0, v3

    goto :goto_42

    :catch_3e
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_42
    :goto_42
    return v0
.end method

.method public getAlias()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lcom/samsung/android/knox/sdp/core/SdpDomain;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mOwner:Lcom/samsung/android/knox/sdp/core/SdpDomain;

    return-object v0
.end method

.method public getPrivilegedApps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/sdp/core/SdpDomain;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    return-object v0
.end method

.method public isAuthorized(Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    invoke-direct {p0, p1, v1}, Lcom/android/server/sdp/engine/SdpPolicy;->matches(Lcom/samsung/android/knox/sdp/core/SdpDomain;Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    goto :goto_6

    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public isOwner(Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mOwner:Lcom/samsung/android/knox/sdp/core/SdpDomain;

    invoke-direct {p0, v0, p1}, Lcom/android/server/sdp/engine/SdpPolicy;->matches(Lcom/samsung/android/knox/sdp/core/SdpDomain;Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z

    move-result v0

    return v0
.end method

.method public removePrivilegedApp(Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z
    .registers 9

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_41

    iget-object v3, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mAlias:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    :try_start_17
    iget-object v3, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    invoke-virtual {v4}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    iget-object v3, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_39} :catch_3d

    move v0, v3

    goto :goto_3c

    :cond_3b
    goto :goto_1d

    :cond_3c
    :goto_3c
    goto :goto_41

    :catch_3d
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_41
    :goto_41
    return v0
.end method

.method public serialize()[B
    .registers 5

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_2
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v3

    invoke-interface {v1, p0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_14} :catch_15

    return-object v3

    :catch_15
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SdpPolicy {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alias:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mOwner:Lcom/samsung/android/knox/sdp/core/SdpDomain;

    if-eqz v1, :cond_48

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOwner:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mOwner:Lcom/samsung/android/knox/sdp/core/SdpDomain;

    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_48
    iget-object v1, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPrivilegedApps:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4e

    :cond_79
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
