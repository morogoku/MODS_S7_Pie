.class public abstract Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyPairGeneratorSpi;
.super Ljava/security/KeyPairGeneratorSpi;
.source "UcmAgentProviderImpl.java"

# interfaces
.implements Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSpiProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UcmAgentKeyPairGeneratorSpi"
.end annotation


# instance fields
.field private errorStatus:I

.field private mProperty:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyPairGeneratorSpi;->errorStatus:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyPairGeneratorSpi;->errorStatus:I

    return v0
.end method

.method public getProperty()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyPairGeneratorSpi;->mProperty:Landroid/os/Bundle;

    return-object v0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setErrorCode(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyPairGeneratorSpi;->errorStatus:I

    return-void
.end method

.method public setProperty(Landroid/os/Bundle;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyPairGeneratorSpi;->mProperty:Landroid/os/Bundle;

    return-void
.end method
