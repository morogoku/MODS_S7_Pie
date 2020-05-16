.class public Lcom/att/iqi/AppUtil;
.super Ljava/lang/Object;
.source "AppUtil.java"


# static fields
.field private static final MESSAGE_DIGEST:Ljava/security/MessageDigest;

.field public static final defaultVersion:Ljava/lang/String; = "Unknown"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_b

    nop

    nop

    sput-object v0, Lcom/att/iqi/AppUtil;->MESSAGE_DIGEST:Ljava/security/MessageDigest;

    return-void

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateLongAppInstanceId(Ljava/lang/String;Landroid/content/pm/PackageManager;)J
    .registers 11

    invoke-static {p1, p0}, Lcom/att/iqi/AppUtil;->getAppVersion(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_13
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_13 .. :try_end_19} :catch_65

    nop

    nop

    sget-object v3, Lcom/att/iqi/AppUtil;->MESSAGE_DIGEST:Ljava/security/MessageDigest;

    monitor-enter v3

    :try_start_1e
    sget-object v4, Lcom/att/iqi/AppUtil;->MESSAGE_DIGEST:Ljava/security/MessageDigest;

    invoke-virtual {v4}, Ljava/security/MessageDigest;->reset()V

    sget-object v4, Lcom/att/iqi/AppUtil;->MESSAGE_DIGEST:Ljava/security/MessageDigest;

    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->update([B)V

    sget-object v4, Lcom/att/iqi/AppUtil;->MESSAGE_DIGEST:Ljava/security/MessageDigest;

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_1e .. :try_end_2f} :catchall_62

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_61

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LongAppID for:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " version:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_61
    return-wide v5

    :catchall_62
    move-exception v4

    :try_start_63
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v4

    :catch_65
    move-exception v2

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static getAppVersion(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "Unknown"

    if-eqz p0, :cond_10

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_d} :catch_f

    move-object v0, v2

    :cond_e
    goto :goto_10

    :catch_f
    move-exception v1

    :cond_10
    :goto_10
    return-object v0
.end method
