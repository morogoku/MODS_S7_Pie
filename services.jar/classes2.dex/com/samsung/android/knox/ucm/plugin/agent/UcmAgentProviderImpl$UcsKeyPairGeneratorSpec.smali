.class public final Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcsKeyPairGeneratorSpec;
.super Ljava/lang/Object;
.source "UcmAgentProviderImpl.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UcsKeyPairGeneratorSpec"
.end annotation


# instance fields
.field private final mKeySize:I

.field private final mKeystoreAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcsKeyPairGeneratorSpec;->mKeystoreAlias:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcsKeyPairGeneratorSpec;->mKeySize:I

    return-void
.end method


# virtual methods
.method public getKeySize()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcsKeyPairGeneratorSpec;->mKeySize:I

    return v0
.end method

.method public getKeystoreAlias()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcsKeyPairGeneratorSpec;->mKeystoreAlias:Ljava/lang/String;

    return-object v0
.end method
