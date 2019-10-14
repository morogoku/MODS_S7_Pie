.class public Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;
.super Ljava/lang/Object;
.source "ExecAccessMgr.java"

# interfaces
.implements Lcom/android/server/sepunion/friends/action/ActionBase;
.implements Lcom/android/server/sepunion/friends/action/ActionExecutable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;
    }
.end annotation


# static fields
.field private static final ANDROID_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final INDEX_OF_FRS_CMD_APP:I = 0x1

.field private static final MAX_PLATFORM_PKG_COUNT:I = 0xa

.field private static final PRIVILEGED_PACKAGES:[Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;

.field private static final RO_OFFICIAL:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ExecAccessMgr"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPlatformPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;

    new-instance v1, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;

    const-string v2, "com.samsung.android.mateagent"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;-><init>(Ljava/lang/String;Z[BLcom/android/server/sepunion/friends/executable/ExecAccessMgr$1;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;

    const-string v5, "com.samsung.android.friendscmder"

    const/16 v6, 0x20

    new-array v6, v6, [B

    fill-array-data v6, :array_2e

    invoke-direct {v1, v5, v2, v6, v4}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;-><init>(Ljava/lang/String;Z[BLcom/android/server/sepunion/friends/executable/ExecAccessMgr$1;)V

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->PRIVILEGED_PACKAGES:[Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;

    const-string/jumbo v0, "ro.build.official.release"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->RO_OFFICIAL:Ljava/lang/String;

    return-void

    :array_2e
    .array-data 1
        -0x7et
        0x5et
        0x20t
        -0x5bt
        0x5dt
        0x6bt
        -0x30t
        -0x44t
        0x1et
        -0x5et
        -0x11t
        -0x23t
        -0x22t
        -0x61t
        -0x4et
        0x16t
        -0x5ct
        -0x1et
        0x43t
        -0x7ct
        0x39t
        0x3ft
        -0x48t
        -0x3dt
        0x43t
        0x9t
        0x15t
        0x6ct
        0xft
        0x2dt
        -0x7et
        -0x3ct
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    return-void
.end method

.method private addPlatformPkg(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    monitor-enter v1

    :try_start_7
    iget-object v2, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    iget-object v3, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_24

    const-string v3, "ExecAccessMgr"

    const-string v4, "exceeds max count"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    monitor-exit v1

    return v0

    :cond_24
    if-nez v2, :cond_2b

    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method private static getPackageFingerprint(Landroid/content/Context;Ljava/lang/String;)[B
    .registers 12

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    const/4 v2, 0x0

    :try_start_7
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_19} :catch_51

    :try_start_19
    const-string v6, "X509"

    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_25} :catch_3c
    .catchall {:try_start_19 .. :try_end_25} :catchall_39

    move-object v6, v7

    :try_start_26
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    move-object v5, v6

    const-string v6, "SHA-256"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_38} :catch_51

    return-object v6

    :catchall_39
    move-exception v6

    move-object v7, v2

    goto :goto_42

    :catch_3c
    move-exception v6

    :try_start_3d
    throw v6
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception v7

    move-object v9, v7

    move-object v7, v6

    move-object v6, v9

    :goto_42
    if-eqz v7, :cond_4d

    :try_start_44
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_50

    :catch_48
    move-exception v8

    :try_start_49
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_50

    :cond_4d
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :goto_50
    throw v6
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_51} :catch_51

    :catch_51
    move-exception v1

    invoke-static {v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    return-object v2
.end method

.method private getRegisteredPlatformPkgs()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private hasPlatformPkg(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    monitor-enter v0

    if-eqz p1, :cond_11

    :try_start_5
    iget-object v1, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :catchall_f
    move-exception v1

    goto :goto_14

    :cond_11
    const/4 v1, 0x0

    :goto_12
    monitor-exit v0

    return v1

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_f

    throw v1
.end method

.method public static isCmdAppAccessible(Landroid/content/Context;)Z
    .registers 7

    sget-object v0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->PRIVILEGED_PACKAGES:[Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    # getter for: Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPkgName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->access$100(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->PRIVILEGED_PACKAGES:[Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;

    aget-object v2, v2, v1

    # getter for: Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mFingerprint:[B
    invoke-static {v2}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->access$200(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;)[B

    move-result-object v2

    sget-object v3, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->PRIVILEGED_PACKAGES:[Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;

    aget-object v3, v3, v1

    # getter for: Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPlatformKeyOnly:Z
    invoke-static {v3}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->access$300(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;)Z

    move-result v3

    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->isRoDebugLevelMid()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android"

    invoke-virtual {v4, v5, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_39

    :cond_2b
    if-nez v3, :cond_3a

    if-eqz v2, :cond_3a

    invoke-static {p0, v0}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->getPackageFingerprint(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_3a

    :cond_39
    goto :goto_3b

    :cond_3a
    const/4 v1, 0x0

    :goto_3b
    return v1
.end method

.method private isPrivilegedPkg(I)Z
    .registers 15

    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7a

    array-length v3, v1

    if-nez v3, :cond_12

    goto/16 :goto_7a

    :cond_12
    array-length v3, v1

    move v4, v2

    :goto_14
    const/4 v5, 0x1

    if-ge v4, v3, :cond_36

    aget-object v6, v1, v4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_33

    sget-object v7, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->PRIVILEGED_PACKAGES:[Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;

    array-length v8, v7

    move v9, v2

    :goto_23
    if-ge v9, v8, :cond_33

    aget-object v10, v7, v9

    if-eqz v10, :cond_30

    # invokes: Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->isCachedGranted(Ljava/lang/String;I)Z
    invoke-static {v10, v6, p1}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->access$400(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_30

    return v5

    :cond_30
    add-int/lit8 v9, v9, 0x1

    goto :goto_23

    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_36
    array-length v3, v1

    move v4, v2

    :goto_38
    if-ge v4, v3, :cond_6a

    aget-object v6, v1, v4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_67

    iget-object v7, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->getPackageFingerprint(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v7

    sget-object v8, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->PRIVILEGED_PACKAGES:[Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;

    array-length v9, v8

    move v10, v2

    :goto_4c
    if-ge v10, v9, :cond_67

    aget-object v11, v8, v10

    # getter for: Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPkgName:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->access$100(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_64

    # invokes: Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->isGranted(Landroid/content/pm/PackageManager;Ljava/lang/String;[B)Z
    invoke-static {v11, v0, v6, v7}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->access$500(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;Landroid/content/pm/PackageManager;Ljava/lang/String;[B)Z

    move-result v12

    if-eqz v12, :cond_64

    # invokes: Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->setCachedGranted(I)V
    invoke-static {v11, p1}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->access$600(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;I)V

    return v5

    :cond_64
    add-int/lit8 v10, v10, 0x1

    goto :goto_4c

    :cond_67
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    :cond_6a
    const-string v3, "ExecAccessMgr"

    const-string v4, "isPrivilegedPkg uid[%d] is invalid"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v2

    :cond_7a
    :goto_7a
    return v2
.end method

.method private isRegisteredPlatformPkg(I)Z
    .registers 11

    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3a

    array-length v4, v1

    if-lez v4, :cond_3a

    aget-object v4, v1, v3

    if-eqz v4, :cond_3a

    invoke-direct {p0, v4}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->hasPlatformPkg(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3a

    const-string v5, "android"

    invoke-virtual {v0, v5, v4}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3a

    const-string v5, "ExecAccessMgr"

    const-string v6, "isRegisteredPlatformPkg pkg[%s] uid[%s] is valid"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-static {v5, v6, v7}, Lcom/android/server/sepunion/friends/util/LogFrs;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v2

    :cond_3a
    const-string v4, "ExecAccessMgr"

    const-string v5, "isRegisteredPlatformPkg uid[%d] is invalid"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-static {v4, v5, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v3
.end method

.method private static isValidAgentSvcActionFormat(I)Z
    .registers 8

    const/4 v0, 0x0

    const/high16 v1, 0xf0000

    const/high16 v2, 0x200000

    and-int/2addr v2, p0

    if-nez v2, :cond_9

    goto :goto_14

    :cond_9
    and-int v2, p0, v1

    if-nez v2, :cond_e

    goto :goto_14

    :cond_e
    and-int/lit16 v2, p0, 0xfff

    if-nez v2, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x1

    :goto_14
    if-nez v0, :cond_27

    const-string v2, "ExecAccessMgr"

    const-string v3, "invalid action [0x%x]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/server/sepunion/friends/util/LogFrs;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_27
    return v0
.end method

.method private static isValidSysSvcActionFormat(I)Z
    .registers 11

    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_44

    new-array v0, v0, [I

    fill-array-data v0, :array_52

    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v1

    const/4 v5, 0x0

    move v6, v3

    move v3, v2

    move v2, v5

    :goto_12
    if-ge v2, v4, :cond_3c

    aget v7, v1, v2

    const/4 v8, 0x2

    if-eq v3, v8, :cond_2e

    const/4 v8, 0x4

    if-eq v3, v8, :cond_25

    aget v8, v0, v3

    and-int v9, p0, v7

    if-ne v8, v9, :cond_37

    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    :cond_25
    and-int v8, p0, v7

    aget v9, v0, v3

    if-le v8, v9, :cond_37

    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    :cond_2e
    aget v8, v0, v3

    and-int v9, p0, v7

    and-int/2addr v8, v9

    if-eqz v8, :cond_37

    add-int/lit8 v6, v6, 0x1

    :cond_37
    :goto_37
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_3c
    add-int/lit8 v2, v6, 0x1

    array-length v4, v1

    if-ne v2, v4, :cond_43

    const/4 v5, 0x1

    nop

    :cond_43
    return v5

    :array_44
    .array-data 4
        -0x1000000
        -0x10000000
        0xf0000
        0xf000
        0xfff
    .end array-data

    :array_52
    .array-data 4
        0x0
        0x100000
        0x70000
        0x0
        0x0
    .end array-data
.end method

.method private removePlatformPkg(Ljava/lang/String;Z)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x1

    if-eqz p2, :cond_f

    :try_start_6
    iget-object v2, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    monitor-exit v0

    return v1

    :catchall_d
    move-exception v1

    goto :goto_2c

    :cond_f
    if-eqz p1, :cond_20

    iget-object v2, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return v1

    :cond_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_d

    const-string v0, "ExecAccessMgr"

    const-string v1, "failed to remove platform pkg"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v2

    :goto_2c
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_d

    throw v1
.end method

.method public static throwSecurityException(ILjava/lang/String;)V
    .registers 10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    if-eqz p1, :cond_24

    move-object v3, p1

    goto :goto_26

    :cond_24
    const-string v3, ""

    :goto_26
    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-string v3, "ExecAccessMgr"

    const-string v7, "illegal access: uid[%d] / pid[%d] / %d / %s"

    invoke-static {v3, v7, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v2, Ljava/lang/SecurityException;

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "%s: reason(%d)"

    invoke-static {v4, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .registers 8

    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_58

    goto :goto_56

    :pswitch_5
    if-eqz p1, :cond_56

    const-string/jumbo v1, "paramStr0"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "paramBool0"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->removePlatformPkg(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_56

    :pswitch_1f
    invoke-static {}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v1

    const-string/jumbo v2, "paramList0"

    invoke-direct {p0}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->getRegisteredPlatformPkgs()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;Ljava/util/List;)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_56

    :pswitch_33
    if-eqz p1, :cond_56

    const-string/jumbo v1, "paramStr0"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->addPlatformPkg(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_56

    :pswitch_45
    invoke-static {}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v1

    const-string/jumbo v2, "paramInt0"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;I)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v0

    nop

    :cond_56
    :goto_56
    return-object v0

    nop

    :pswitch_data_58
    .packed-switch 0x120006
        :pswitch_45
        :pswitch_33
        :pswitch_1f
        :pswitch_5
    .end packed-switch
.end method

.method public isAccessible(I)Z
    .registers 11

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {p1}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->isValidSysSvcActionFormat(I)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_17

    invoke-static {p1}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->isValidAgentSvcActionFormat(I)Z

    move-result v3

    if-eqz v3, :cond_58

    :cond_17
    const/high16 v3, 0x10000

    and-int/2addr v3, p1

    if-eqz v3, :cond_31

    invoke-static {}, Lcom/android/server/sepunion/friends/common/FwDependency;->getProcessSystemUid()I

    move-result v3

    if-ne v1, v3, :cond_24

    move v3, v4

    goto :goto_25

    :cond_24
    move v3, v5

    :goto_25
    move v0, v3

    const-string v3, "ExecAccessMgr"

    const-string/jumbo v6, "system uid"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_58

    :cond_31
    const/high16 v3, 0x20000

    and-int/2addr v3, p1

    if-eqz v3, :cond_45

    invoke-direct {p0, v1}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->isPrivilegedPkg(I)Z

    move-result v0

    const-string v3, "ExecAccessMgr"

    const-string/jumbo v6, "privileged uid"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_58

    :cond_45
    const/high16 v3, 0x40000

    and-int/2addr v3, p1

    if-eqz v3, :cond_58

    invoke-direct {p0, v1}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->isRegisteredPlatformPkg(I)Z

    move-result v0

    const-string v3, "ExecAccessMgr"

    const-string/jumbo v6, "platform key signed pkg"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_58
    :goto_58
    if-nez v0, :cond_77

    const-string v3, "ExecAccessMgr"

    const-string v6, "isAccessible returns false / action[0x%x], uid [%d], pid[%d]"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    const/4 v4, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-static {v3, v6, v7}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_77
    return v0
.end method
