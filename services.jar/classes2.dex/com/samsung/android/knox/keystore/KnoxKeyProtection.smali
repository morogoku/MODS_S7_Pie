.class public final Lcom/samsung/android/knox/keystore/KnoxKeyProtection;
.super Ljava/lang/Object;
.source "KnoxKeyProtection.java"

# interfaces
.implements Ljava/security/KeyStore$ProtectionParameter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;
    }
.end annotation


# instance fields
.field private final mAccessorIdentities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/AccessorIdentity;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessorIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdministratorIdentities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/AccessorIdentity;",
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

.field private final mKeyProtection:Landroid/security/keystore/KeyProtection;

.field private final mKnoxObjectProtectionRequired:Z


# direct methods
.method private constructor <init>(Landroid/security/keystore/KeyProtection;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/keystore/KeyProtection;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/AccessorIdentity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/AccessorIdentity;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;->mKeyProtection:Landroid/security/keystore/KeyProtection;

    iput-boolean p2, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;->mKnoxObjectProtectionRequired:Z

    iput-object p3, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;->mAccessorIds:Ljava/util/List;

    iput-object p4, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;->mAdministratorIds:Ljava/util/List;

    iput-object p5, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;->mAccessorIdentities:Ljava/util/List;

    iput-object p6, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;->mAdministratorIdentities:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Landroid/security/keystore/KeyProtection;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/knox/keystore/KnoxKeyProtection$1;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;-><init>(Landroid/security/keystore/KeyProtection;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getAccessorIdentities()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/AccessorIdentity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;->mAccessorIdentities:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

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

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;->mAccessorIds:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdministratorIdentities()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/AccessorIdentity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;->mAdministratorIdentities:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

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

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;->mAdministratorIds:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKeyProtection()Landroid/security/keystore/KeyProtection;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;->mKeyProtection:Landroid/security/keystore/KeyProtection;

    return-object v0
.end method

.method public isKnoxObjectProtectionRequired()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;->mKnoxObjectProtectionRequired:Z

    return v0
.end method
