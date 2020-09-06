.class public Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;
.super Ljava/security/Provider;
.source "UcmKeystoreProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;
    }
.end annotation


# static fields
.field private static final KEYSTORE:Ljava/lang/String; = "KeyStore"

.field public static final PROVIDER_DESC:Ljava/lang/String; = "Samsung KNOX-based Keystore Provider"

.field public static final PROVIDER_NAME:Ljava/lang/String; = "KNOX"

.field public static final PROVIDER_VERSION:D = 1.0


# instance fields
.field private mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const-string v0, "KNOX"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 11

    const-string v0, "Samsung KNOX-based Keystore Provider"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p1, v1, v2, v0}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->mSource:Ljava/lang/String;

    if-eqz p2, :cond_e

    invoke-direct {p0, p2}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->setBundle(Landroid/os/Bundle;)V

    :cond_e
    new-instance v7, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;

    const-string v2, "KeyStore"

    const-string v3, "KNOX"

    const-class v0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystore;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->mSource:Ljava/lang/String;

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->putService(Ljava/security/Provider$Service;)V

    new-instance v7, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;

    const-string v2, "KeyPairGenerator"

    const-string v3, "RSA"

    const-class v0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->mSource:Ljava/lang/String;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->putService(Ljava/security/Provider$Service;)V

    new-instance v7, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;

    const-string v2, "SecureRandom"

    const-string v3, "SHA1PRNG"

    const-class v0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmSecureRandom;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->mSource:Ljava/lang/String;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->putService(Ljava/security/Provider$Service;)V

    return-void
.end method

.method private setBundle(Landroid/os/Bundle;)V
    .registers 5

    const-string/jumbo v0, "uniqueId"

    const-string/jumbo v1, "uniqueId"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "id"

    const-string v1, "id"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "summary"

    const-string/jumbo v1, "summary"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "title"

    const-string/jumbo v1, "title"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "vendorId"

    const-string/jumbo v1, "vendorId"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "isDetachable"

    const-string v1, "isDetachable"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "reqUserVerification"

    const-string/jumbo v1, "reqUserVerification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "isHardwareBacked"

    const-string v1, "isHardwareBacked"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "isReadOnly"

    const-string v1, "isReadOnly"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "packageName"

    const-string/jumbo v1, "packageName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "isManageable"

    const-string v1, "isManageable"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "enforceManagement"

    const-string v1, "enforceManagement"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "configuratorList"

    const-string v1, "configuratorList"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "isGeneratePasswordAvailable"

    const-string v1, "isGeneratePasswordAvailable"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "isPUKSupported"

    const-string v1, "isPUKSupported"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
