.class public abstract Lcom/android/server/security/VerityUtils;
.super Ljava/lang/Object;
.source "VerityUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;,
        Lcom/android/server/security/VerityUtils$SetupResult;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "VerityUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateApkVerityIntoSharedMemory(Ljava/lang/String;[B)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Landroid/util/Pair<",
            "Landroid/os/SharedMemory;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;,
            Ljava/security/DigestException;,
            Ljava/security/NoSuchAlgorithmException;,
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;-><init>(Lcom/android/server/security/VerityUtils$1;)V

    invoke-static {p0, v0}, Landroid/util/apk/ApkSignatureVerifier;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {v0}, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->getBufferLimit()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->releaseSharedMemory()Landroid/os/SharedMemory;

    move-result-object v3

    if-eqz v3, :cond_33

    sget v4, Landroid/system/OsConstants;->PROT_READ:I

    invoke-virtual {v3, v4}, Landroid/os/SharedMemory;->setProtect(I)Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4

    :cond_2b
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Failed to set up shared memory correctly"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_33
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Failed to generate verity tree into shared memory"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3b
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Locally generated verity root hash does not match"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static generateApkVeritySetupData(Ljava/lang/String;)Lcom/android/server/security/VerityUtils$SetupResult;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Landroid/util/apk/ApkSignatureVerifier;->getVerityRootHash(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_11

    invoke-static {}, Lcom/android/server/security/VerityUtils$SetupResult;->skipped()Lcom/android/server/security/VerityUtils$SetupResult;

    move-result-object v2
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_49
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_b} :catch_49
    .catch Ljava/security/DigestException; {:try_start_1 .. :try_end_b} :catch_49
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_b} :catch_49
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_1 .. :try_end_b} :catch_49
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_b} :catch_49
    .catchall {:try_start_1 .. :try_end_b} :catchall_47

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    :cond_10
    return-object v2

    :cond_11
    :try_start_11
    invoke-static {p0, v1}, Lcom/android/server/security/VerityUtils;->generateApkVerityIntoSharedMemory(Ljava/lang/String;[B)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/os/SharedMemory;

    move-object v0, v3

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Landroid/os/SharedMemory;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    if-eqz v4, :cond_3d

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->valid()Z

    move-result v5

    if-nez v5, :cond_2f

    goto :goto_3d

    :cond_2f
    invoke-static {v4}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/server/security/VerityUtils$SetupResult;->ok(Ljava/io/FileDescriptor;I)Lcom/android/server/security/VerityUtils$SetupResult;

    move-result-object v5
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_37} :catch_49
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_37} :catch_49
    .catch Ljava/security/DigestException; {:try_start_11 .. :try_end_37} :catch_49
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11 .. :try_end_37} :catch_49
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_11 .. :try_end_37} :catch_49
    .catch Landroid/system/ErrnoException; {:try_start_11 .. :try_end_37} :catch_49
    .catchall {:try_start_11 .. :try_end_37} :catchall_47

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    :cond_3c
    return-object v5

    :cond_3d
    :goto_3d
    :try_start_3d
    invoke-static {}, Lcom/android/server/security/VerityUtils$SetupResult;->failed()Lcom/android/server/security/VerityUtils$SetupResult;

    move-result-object v5
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_41} :catch_49
    .catch Ljava/lang/SecurityException; {:try_start_3d .. :try_end_41} :catch_49
    .catch Ljava/security/DigestException; {:try_start_3d .. :try_end_41} :catch_49
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3d .. :try_end_41} :catch_49
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_3d .. :try_end_41} :catch_49
    .catch Landroid/system/ErrnoException; {:try_start_3d .. :try_end_41} :catch_49
    .catchall {:try_start_3d .. :try_end_41} :catchall_47

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    :cond_46
    return-object v5

    :catchall_47
    move-exception v1

    goto :goto_5b

    :catch_49
    move-exception v1

    :try_start_4a
    const-string v2, "VerityUtils"

    const-string v3, "Failed to set up apk verity: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/android/server/security/VerityUtils$SetupResult;->failed()Lcom/android/server/security/VerityUtils$SetupResult;

    move-result-object v2
    :try_end_55
    .catchall {:try_start_4a .. :try_end_55} :catchall_47

    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    :cond_5a
    return-object v2

    :goto_5b
    if-eqz v0, :cond_60

    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    :cond_60
    throw v1
.end method

.method public static generateFsverityRootHash(Ljava/lang/String;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Landroid/util/apk/ApkSignatureVerifier;->generateFsverityRootHash(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getVerityRootHash(Ljava/lang/String;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-static {p0}, Landroid/util/apk/ApkSignatureVerifier;->getVerityRootHash(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
