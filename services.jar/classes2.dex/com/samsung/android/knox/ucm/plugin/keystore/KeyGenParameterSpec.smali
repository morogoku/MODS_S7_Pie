.class public Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;
.super Ljava/lang/Object;
.source "KeyGenParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final mAlgorithm:Ljava/lang/String;

.field private final mIsManaged:Z

.field private final mKeySize:I

.field private final mKeystoreAlias:Ljava/lang/String;

.field private final mOptions:Landroid/os/Bundle;

.field private final mOwnerUid:I

.field private final mResourceId:I

.field private final mSourceUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZIILjava/lang/String;Landroid/os/Bundle;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mKeystoreAlias:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mKeySize:I

    iput p3, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mSourceUid:I

    iput-boolean p4, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mIsManaged:Z

    iput p5, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mResourceId:I

    iput p6, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mOwnerUid:I

    iput-object p7, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mAlgorithm:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mOptions:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getKeySize()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mKeySize:I

    return v0
.end method

.method public getKeystoreAlias()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mKeystoreAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mOptions:Landroid/os/Bundle;

    return-object v0
.end method

.method public getOwnerUid()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mOwnerUid:I

    return v0
.end method

.method public getResourceId()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mResourceId:I

    return v0
.end method

.method public getSourceUid()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mSourceUid:I

    return v0
.end method

.method public isManaged()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mIsManaged:Z

    return v0
.end method
