.class public Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;
.super Ljava/security/Provider;
.source "UcmAgentProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSpiProperty;,
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSecureRandomSpi;,
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcsKeyPairGeneratorSpec;,
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyPairGeneratorSpi;,
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentCipherSpi;,
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyStoreSpi;,
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$AbstractProviderService;
    }
.end annotation


# static fields
.field public static final CIPHER:Ljava/lang/String; = "Cipher"

.field public static final CIPHER_RSA_ECB_NOPADDING:Ljava/lang/String; = "RSA/ECB/NoPadding"

.field public static final CIPHER_RSA_ECB_PKCS1PADDING:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field public static final KEYPAIRGENERATOR:Ljava/lang/String; = "KeyPairGenerator"

.field public static final KEYPAIRGENERATOR_RSA:Ljava/lang/String; = "RSA"

.field public static final KEYSTORE:Ljava/lang/String; = "KeyStore"

.field public static final KEYSTORE_TYPE:Ljava/lang/String; = "KNOX"

.field private static final PROVIDER_DESC:Ljava/lang/String; = "Samsung Extension Keystore Provider Impl"

.field private static final PROVIDER_NAME:Ljava/lang/String; = "AgentProviderImpl"

.field private static final PROVIDER_VERSION:D = 1.0

.field public static final SECURERANDOM:Ljava/lang/String; = "SecureRandom"

.field public static final SECURERANDOM_SHA1PRNG:Ljava/lang/String; = "SHA1PRNG"


# direct methods
.method public constructor <init>()V
    .registers 5

    const-string v0, "AgentProviderImpl"

    const-string v1, "Samsung Extension Keystore Provider Impl"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public putServiceImpl(Ljava/security/Provider$Service;)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->putService(Ljava/security/Provider$Service;)V

    :cond_5
    return-void
.end method

.method public removeServiceImpl(Ljava/security/Provider$Service;)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->removeService(Ljava/security/Provider$Service;)V

    :cond_5
    return-void
.end method
