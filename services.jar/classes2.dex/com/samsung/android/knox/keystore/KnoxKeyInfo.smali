.class public Lcom/samsung/android/knox/keystore/KnoxKeyInfo;
.super Ljava/lang/Object;
.source "KnoxKeyInfo.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final USER_ID_POS:I

.field private final mAccessorIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdministratorIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAttestationRoot:Ljava/lang/String;

.field private final mCreator:Ljava/lang/String;

.field private final mExtendedKeyUsage:[Ljava/lang/String;

.field private final mKeyInfo:Landroid/security/keystore/KeyInfo;

.field private final mKeyUsage:[Z

.field private final mKnoxCsrResponseRequired:Z

.field private final mKnoxObjectProtectionRequired:Z

.field private final mSubjectAlternativeName:[B


# direct methods
.method public constructor <init>(Landroid/security/keystore/KeyInfo;ZLjava/util/List;Ljava/lang/String;Ljava/util/List;[Z[Ljava/lang/String;Ljava/lang/String;Z[B)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/keystore/KeyInfo;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[Z[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z[B)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mAccessorIds:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mAdministratorIds:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->USER_ID_POS:I

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mKeyInfo:Landroid/security/keystore/KeyInfo;

    iput-boolean p2, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mKnoxObjectProtectionRequired:Z

    iput-object p4, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mCreator:Ljava/lang/String;

    if-eqz p3, :cond_59

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/knox/keystore/KnoxSecurityUtils;->isPrintable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mAccessorIds:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_20

    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accessor ids must be printable characters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_59
    if-eqz p5, :cond_98

    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_98

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/knox/keystore/KnoxSecurityUtils;->isPrintable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_81

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mAdministratorIds:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5f

    :cond_81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "administrator ids must be printable characters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_98
    iput-object p6, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mKeyUsage:[Z

    iput-object p7, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mExtendedKeyUsage:[Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mAttestationRoot:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mKnoxCsrResponseRequired:Z

    iput-object p10, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mSubjectAlternativeName:[B

    return-void
.end method


# virtual methods
.method public getAccessorIdentities()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/AccessorIdentity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mAccessorIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_24

    const-string v4, "0"

    move-object v5, v2

    goto :goto_34

    :cond_24
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :goto_34
    new-instance v6, Lcom/samsung/android/knox/keystore/AccessorIdentity;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7, v4}, Lcom/samsung/android/knox/keystore/AccessorIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_3e
    return-object v0
.end method

.method public getAccessorIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mAccessorIds:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdministratorIdentities()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/AccessorIdentity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mAdministratorIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_24

    const-string v4, "0"

    move-object v5, v2

    goto :goto_34

    :cond_24
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :goto_34
    new-instance v6, Lcom/samsung/android/knox/keystore/AccessorIdentity;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7, v4}, Lcom/samsung/android/knox/keystore/AccessorIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_3e
    return-object v0
.end method

.method public getAdministratorIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mAdministratorIds:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAttestationRoot()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mAttestationRoot:Ljava/lang/String;

    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mCreator:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendedKeyUsage()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mExtendedKeyUsage:[Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/knox/keystore/KnoxSecurityUtils;->cloneIfNotNull([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyInfo()Landroid/security/keystore/KeyInfo;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mKeyInfo:Landroid/security/keystore/KeyInfo;

    return-object v0
.end method

.method public getKeyUsage()[Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mKeyUsage:[Z

    invoke-static {v0}, Lcom/samsung/android/knox/keystore/KnoxSecurityUtils;->cloneIfNotNull([Z)[Z

    move-result-object v0

    return-object v0
.end method

.method public getSubjectAlternativeName()[B
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mSubjectAlternativeName:[B

    invoke-static {v0}, Lcom/samsung/android/knox/keystore/KnoxSecurityUtils;->cloneIfNotNull([B)[B

    move-result-object v0

    return-object v0
.end method

.method public isKnoxCsrResponseRequired()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mKnoxCsrResponseRequired:Z

    return v0
.end method

.method public isKnoxObjectProtectionRequired()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mKnoxObjectProtectionRequired:Z

    return v0
.end method
