.class public Lcom/android/server/locksettings/SyntheticPasswordMdfpp;
.super Ljava/lang/Object;
.source "SyntheticPasswordMdfpp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;,
        Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;,
        Lcom/android/server/locksettings/SyntheticPasswordMdfpp$SecureMode;
    }
.end annotation


# static fields
.field public static final AES256_KEY_LENGTH:I = 0x20

.field public static final CONTEXT_AAD:Ljava/lang/String; = "ForAuthenticationData"

.field public static final CONTEXT_APP:Ljava/lang/String; = "ForApplicationId"

.field public static final CONTEXT_AUTH:Ljava/lang/String; = "ForUserAuthentication"

.field public static final CONTEXT_FS:Ljava/lang/String; = "ForFileSystem"

.field public static final CONTEXT_GK:Ljava/lang/String; = "ForGateKeeper"

.field public static final CONTEXT_KS:Ljava/lang/String; = "ForKeyStore"

.field public static final CONTEXT_SDP:Ljava/lang/String; = "ForSdpMasterKey"

.field public static final DEFAULT_ITERATION_CNT:I = 0x4000

.field public static final DEFAULT_KEY_LENGTH:I = 0x20

.field public static final LABEL_KEK:Ljava/lang/String; = "KeyEncryptionKey"

.field public static final MAX_CONTEXT_SIZE:I = 0x40

.field public static final MAX_LABEL_SIZE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "SyntheticPasswordMdfpp"

.field private static final TAG_SDP:Ljava/lang/String; = "SyntheticPasswordMdfpp.SDP"

.field private static final mSecureModeCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mSecureModeCache:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cacheSecureMode(II)V
    .registers 4

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mSecureModeCache:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static deleteSecureMode(I)V
    .registers 2

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mSecureModeCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public static generateAAD([BI)[B
    .registers 4

    const-string v0, "KeyEncryptionKey"

    const-string v1, "ForAuthenticationData"

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalise([BILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static generateAppId([BI)[B
    .registers 4

    const-string v0, "KeyEncryptionKey"

    const-string v1, "ForApplicationId"

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalise([BILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static generateFileSystemKey([BI)[B
    .registers 4

    const-string v0, "KeyEncryptionKey"

    const-string v1, "ForFileSystem"

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalise([BILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static generateGatekeeperPassword([BI)[B
    .registers 4

    const-string v0, "KeyEncryptionKey"

    const-string v1, "ForGateKeeper"

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalise([BILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static generateGkInput([BI)[B
    .registers 4

    const-string v0, "KeyEncryptionKey"

    const-string v1, "ForUserAuthentication"

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalise([BILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static generateKeystorePassword([BI)[B
    .registers 4

    const-string v0, "KeyEncryptionKey"

    const-string v1, "ForKeyStore"

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalise([BILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static generateSdpMasterKey([BI)[B
    .registers 4

    const-string v0, "KeyEncryptionKey"

    const-string v1, "ForSdpMasterKey"

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalise([BILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getSecureMode(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, -0x1

    sget-object v1, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mSecureModeCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16

    sget-object v1, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mSecureModeCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_16
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need to update secure mode cache"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
