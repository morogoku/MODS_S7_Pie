.class public Lcom/samsung/android/knox/ucm/plugin/service/SecureRandom;
.super Ljava/lang/Object;
.source "SecureRandom.java"


# static fields
.field private static final SERVICE:Ljava/lang/String; = "SecureRandom"


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSecureRandomSpi;


# direct methods
.method private constructor <init>(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/knox/ucm/plugin/service/SecureRandom;->provider:Ljava/security/Provider;

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/service/SecureRandom;->spiImpl:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSecureRandomSpi;

    iput-object p3, p0, Lcom/samsung/android/knox/ucm/plugin/service/SecureRandom;->algorithm:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/SecureRandom;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    if-eqz p1, :cond_20

    if-eqz p0, :cond_18

    const-string v0, "SecureRandom"

    const-class v1, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSecureRandomSpi;

    invoke-static {v0, v1, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/knox/ucm/plugin/service/SecureRandom;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSecureRandomSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Lcom/samsung/android/knox/ucm/plugin/service/SecureRandom;-><init>(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1

    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "algorithm == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "provider == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public generateSeed(I)[B
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/plugin/service/SecureRandom;->spiImpl:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSecureRandomSpi;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSecureRandomSpi;->engineGenerateSeed(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getErrorStatus()I
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/plugin/service/SecureRandom;->spiImpl:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSecureRandomSpi;

    invoke-virtual {v0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSecureRandomSpi;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public setProperty(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/plugin/service/SecureRandom;->spiImpl:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSecureRandomSpi;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSecureRandomSpi;->setProperty(Landroid/os/Bundle;)V

    return-void
.end method
