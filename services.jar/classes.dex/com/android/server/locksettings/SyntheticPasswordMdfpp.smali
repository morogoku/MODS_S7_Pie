.class public Lcom/android/server/locksettings/SyntheticPasswordMdfpp;
.super Ljava/lang/Object;
.source "SyntheticPasswordMdfpp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;,
        Lcom/android/server/locksettings/SyntheticPasswordMdfpp$EmptySlotException;,
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

.field private static final mCredentialTypeCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mCredentialTypeCache:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cacheCredentialType(II)V
    .registers 5

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mCredentialTypeCache:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mCredentialTypeCache:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public static cacheSecureMode(II)V
    .registers 4

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mSecureModeCache:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static deleteCredentialType(I)V
    .registers 3

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mCredentialTypeCache:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mCredentialTypeCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->delete(I)V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
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

.method public static getCredentialType(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/SyntheticPasswordMdfpp$EmptySlotException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mCredentialTypeCache:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mCredentialTypeCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    monitor-exit v0

    return v2

    :cond_13
    new-instance v2, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$EmptySlotException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Empty credential type for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$EmptySlotException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
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

.method public static removeUser(I)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->deleteCredentialType(I)V

    return-void
.end method

.method public static validateCredentialType(I)Z
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_c

    if-eq p0, v0, :cond_c

    const/4 v1, -0x1

    if-ne p0, v1, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    nop

    :cond_c
    :goto_c
    return v0
.end method
