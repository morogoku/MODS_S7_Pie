.class public Lcom/android/server/enterprise/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final BLACKLIST:Ljava/lang/String; = "BLACKLIST"

.field private static final CUSTOM_PERMISSION:I = 0x3

.field private static final CUSTOM_PREMIUM_PERMISSION:I = 0x4

.field private static final ENCRYPTION_TYPE_MD5:Ljava/lang/String; = "MD5"

.field private static final ENCRYPTION_TYPE_SHA256:Ljava/lang/String; = "SHA-256"

.field private static final ENCRYPTION_TYPE_X509:Ljava/lang/String; = "X.509"

.field private static final NO_PERMISSION:I = 0x0

.field private static final PREMIUM_PERMISSION:I = 0x2

.field private static final STANDARD_PERMISSION:I = 0x1

.field public static TAG:Ljava/lang/String; = null

.field public static final WHITELIST:Ljava/lang/String; = "WHITELIST"

.field private static customPermissions:[Ljava/lang/String;

.field private static premiumPermissions:[Ljava/lang/String;

.field private static standardPermissions:[Ljava/lang/String;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3

    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method static constructor <clinit>()V
    .registers 33

    const-string v0, "com.samsung.android.knox.permission.KNOX_APN"

    const-string v1, "com.samsung.android.knox.permission.KNOX_INVENTORY"

    const-string v2, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    const-string v3, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE"

    const-string v4, "com.samsung.android.knox.permission.KNOX_BLUETOOTH"

    const-string v5, "com.samsung.android.knox.permission.KNOX_LDAP"

    const-string v6, "com.samsung.android.knox.permission.KNOX_BLUETOOTH_SECUREMODE"

    const-string v7, "com.samsung.android.knox.permission.KNOX_LOCATION"

    const-string v8, "com.samsung.android.knox.permission.KNOX_BROWSER_PROXY"

    const-string v9, "com.samsung.android.knox.permission.KNOX_LOCKSCREEN"

    const-string v10, "com.samsung.android.knox.permission.KNOX_BROWSER_SETTINGS"

    const-string v11, "com.samsung.android.knox.permission.KNOX_MULTI_USER_MGMT"

    const-string v12, "com.samsung.android.knox.permission.KNOX_CERT_PROVISIONING"

    const-string v13, "com.samsung.android.knox.permission.KNOX_PHONE_RESTRICTION"

    const-string v14, "com.samsung.android.knox.permission.KNOX_CLIPBOARD"

    const-string v15, "com.samsung.android.knox.permission.KNOX_REMOTE_ATTESTATION"

    const-string v16, "com.samsung.android.knox.permission.KNOX_DATE_TIME"

    const-string v17, "com.samsung.android.knox.permission.KNOX_REMOTE_CONTROL"

    const-string v18, "com.samsung.android.knox.permission.KNOX_DEX"

    const-string v19, "com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT"

    const-string v20, "com.samsung.android.knox.permission.KNOX_EMAIL"

    const-string v21, "com.samsung.android.knox.permission.KNOX_ROAMING"

    const-string v22, "com.samsung.android.knox.permission.KNOX_ENTERPRISE_DEVICE_ADMIN"

    const-string v23, "com.samsung.android.knox.permission.KNOX_SECURITY"

    const-string v24, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    const-string v25, "com.samsung.android.knox.permission.KNOX_SENSITIVE_DATA_PROTECTION"

    const-string v26, "com.samsung.android.knox.permission.KNOX_FIREWALL"

    const-string v27, "com.samsung.android.knox.permission.KNOX_SPDCONTROL"

    const-string v28, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    const-string v29, "com.samsung.android.knox.permission.KNOX_VPN"

    const-string v30, "com.samsung.android.knox.permission.KNOX_GLOBALPROXY"

    const-string v31, "com.samsung.android.knox.permission.KNOX_WIFI"

    const-string v32, "com.samsung.android.knox.permission.KNOX_HW_CONTROL"

    filled-new-array/range {v0 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/utils/Utils;->standardPermissions:[Ljava/lang/String;

    const-string v1, "com.samsung.android.knox.permission.KNOX_ADVANCED_APP_MGMT"

    const-string v2, "com.samsung.android.knox.permission.KNOX_DLP_MGMT"

    const-string v3, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    const-string v4, "com.samsung.android.knox.permission.KNOX_EBILLING"

    const-string v5, "com.samsung.android.knox.permission.KNOX_ADVANCED_SECURITY"

    const-string v6, "com.samsung.android.knox.permission.KNOX_NPA"

    const-string v7, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    const-string v8, "com.samsung.android.knox.permission.KNOX_SEAMS_MGMT"

    const-string v9, "com.samsung.android.knox.permission.KNOX_CCM_KEYSTORE"

    const-string v10, "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE"

    const-string v11, "com.samsung.android.knox.permission.KNOX_CERTIFICATE"

    const-string v12, "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE_PER_APP"

    const-string v13, "com.samsung.android.knox.permission.KNOX_CERTIFICATE_ENROLLMENT"

    const-string v14, "com.samsung.android.knox.permission.KNOX_UCM_MGMT"

    const-string v15, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    const-string v16, "com.samsung.android.knox.permission.KNOX_VPN_CONTAINER"

    const-string v17, "com.samsung.android.knox.permission.KNOX_CONTAINER_RCP"

    const-string v18, "com.samsung.android.knox.permission.KNOX_VPN_GENERIC"

    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/utils/Utils;->premiumPermissions:[Ljava/lang/String;

    const-string v0, "com.samsung.android.knox.permission.CUSTOM_PROKIOSK"

    const-string v1, "com.samsung.android.knox.permission.CUSTOM_SETTING"

    const-string v2, "com.samsung.android.knox.permission.CUSTOM_SYSTEM"

    const-string v3, "com.samsung.android.knox.permission.KNOX_CUSTOM_DEX"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/utils/Utils;->customPermissions:[Ljava/lang/String;

    const-string v0, "EnterpriseUtils"

    sput-object v0, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byte2HexFormatted([B)Ljava/lang/String;
    .registers 9

    if-eqz p0, :cond_4c

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_b
    array-length v3, p0

    if-ge v1, v3, :cond_47

    aget-byte v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2c
    if-le v4, v2, :cond_34

    add-int/lit8 v6, v4, -0x2

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_34
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, p0

    sub-int/2addr v6, v5

    if-ge v1, v6, :cond_44

    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_4c
    const-string v0, ""

    return-object v0
.end method

.method private static checkPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_23

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_23

    if-eqz p2, :cond_23

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_23

    :cond_14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {v1, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_22

    const/4 v0, 0x1

    return v0

    :cond_22
    return v0

    :cond_23
    :goto_23
    return v0
.end method

.method public static convertListToString(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_d

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_d

    invoke-static {p1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    const-string v0, ""

    return-object v0
.end method

.method public static convertStringToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static deserializeObject([B)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_12} :catch_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_13

    return-object v2

    :catch_13
    move-exception v1

    return-object v0

    :catch_15
    move-exception v1

    return-object v0
.end method

.method public static deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_e} :catch_68
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_e} :catch_50

    nop

    :try_start_f
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_14} :catch_46
    .catchall {:try_start_f .. :try_end_14} :catchall_43

    nop

    :try_start_15
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1a} :catch_39
    .catchall {:try_start_15 .. :try_end_1a} :catchall_36

    nop

    :try_start_1b
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1f} :catch_2c
    .catchall {:try_start_1b .. :try_end_1f} :catchall_29

    :try_start_1f
    invoke-static {v0, v3}, Lcom/android/server/enterprise/utils/Utils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_22} :catch_39
    .catchall {:try_start_1f .. :try_end_22} :catchall_36

    :try_start_22
    invoke-static {v0, v2}, Lcom/android/server/enterprise/utils/Utils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_25} :catch_46
    .catchall {:try_start_22 .. :try_end_25} :catchall_43

    :try_start_25
    invoke-static {v0, v1}, Lcom/android/server/enterprise/utils/Utils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_28
    .catch Ljava/lang/ClassNotFoundException; {:try_start_25 .. :try_end_28} :catch_68
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_50

    return-object v4

    :catchall_29
    move-exception v4

    move-object v5, v0

    goto :goto_32

    :catch_2c
    move-exception v4

    :try_start_2d
    throw v4
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception v5

    move-object v6, v5

    move-object v5, v4

    move-object v4, v6

    :goto_32
    :try_start_32
    invoke-static {v5, v3}, Lcom/android/server/enterprise/utils/Utils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v4
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_36} :catch_39
    .catchall {:try_start_32 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception v3

    move-object v4, v0

    goto :goto_3f

    :catch_39
    move-exception v3

    :try_start_3a
    throw v3
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_3f
    :try_start_3f
    invoke-static {v4, v2}, Lcom/android/server/enterprise/utils/Utils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_43} :catch_46
    .catchall {:try_start_3f .. :try_end_43} :catchall_43

    :catchall_43
    move-exception v2

    move-object v3, v0

    goto :goto_4c

    :catch_46
    move-exception v2

    :try_start_47
    throw v2
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    :goto_4c
    :try_start_4c
    invoke-static {v3, v1}, Lcom/android/server/enterprise/utils/Utils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_50
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4c .. :try_end_50} :catch_68
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_50} :catch_50

    :catch_50
    move-exception v1

    sget-object v2, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException to Deserialize Object from String: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_68
    move-exception v1

    sget-object v2, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClassNotFoundException to Deserialize Object from String: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static digestBytes([BLjava/lang/String;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    if-eqz p0, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    :cond_5
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    return-object v1

    :cond_e
    :goto_e
    const/4 v0, 0x0

    return-object v0
.end method

.method private static encodeToString([B)Ljava/lang/String;
    .registers 2

    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getApplicationPubKeyMD5(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    if-eqz p1, :cond_35

    if-nez p0, :cond_5

    goto :goto_35

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/Utils;->getApplicationPubKeys(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_34

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "MD5"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->digestBytes([BLjava/lang/String;)[B

    move-result-object v4

    if-eqz v4, :cond_33

    invoke-static {v4}, Lcom/android/server/enterprise/utils/Utils;->encodeToString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    goto :goto_14

    :cond_34
    return-object v0

    :cond_35
    :goto_35
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getApplicationPubKeys(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p0, :cond_35

    if-nez p1, :cond_5

    goto :goto_35

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_34

    const/4 v2, 0x0

    :goto_1b
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-ge v2, v3, :cond_34

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/android/server/enterprise/utils/Utils;->getEncodedPubKey(Landroid/content/pm/Signature;)[B

    move-result-object v3

    if-eqz v3, :cond_31

    invoke-static {v3}, Lcom/android/server/enterprise/utils/Utils;->encodeToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_34
    return-object v0

    :cond_35
    :goto_35
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getApplicationSignaturesSHA256(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p0, :cond_3d

    if-nez p1, :cond_5

    goto :goto_3d

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_3c

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_3c

    const/4 v2, 0x0

    :goto_1b
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-ge v2, v3, :cond_3c

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/android/server/enterprise/utils/Utils;->getEncodedPubKey(Landroid/content/pm/Signature;)[B

    move-result-object v3

    if-eqz v3, :cond_39

    const-string v4, "SHA-256"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/utils/Utils;->digestBytes([BLjava/lang/String;)[B

    move-result-object v4

    if-eqz v4, :cond_39

    invoke-static {v4}, Lcom/android/server/enterprise/utils/Utils;->byte2HexFormatted([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_3c
    return-object v0

    :cond_3d
    :goto_3d
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getEncodedPubKey(Landroid/content/pm/Signature;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    if-eqz v4, :cond_25

    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    :cond_25
    return-object v1
.end method

.method public static getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, "com.android.mms"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    return-object v0

    :cond_13
    :try_start_13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_1b} :catch_1c

    goto :goto_1e

    :catch_1c
    move-exception v2

    move-object v1, v0

    :goto_1e
    return-object v1
.end method

.method private static getNumWildcardSets(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/util/Set<",
            "TT;>;TT;)I"
        }
    .end annotation

    if-eqz p2, :cond_14

    const/4 v0, 0x0

    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    add-int/lit8 v0, v0, 0x1

    :cond_b
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    add-int/lit8 v0, v0, 0x1

    :cond_13
    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public static getPermissionType(Landroid/content/Context;Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/Utils;->hasStandardPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/Utils;->hasCustomPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/Utils;->hasPremiumPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_23

    if-eqz v1, :cond_1d

    if-nez v2, :cond_17

    if-nez v3, :cond_15

    const/4 v0, 0x1

    goto :goto_22

    :cond_15
    const/4 v0, 0x2

    goto :goto_22

    :cond_17
    if-nez v3, :cond_1b

    const/4 v0, 0x3

    goto :goto_22

    :cond_1b
    const/4 v0, 0x4

    goto :goto_22

    :cond_1d
    if-nez v2, :cond_22

    if-nez v3, :cond_22

    const/4 v0, 0x0

    :cond_22
    :goto_22
    goto :goto_2b

    :catch_23
    move-exception v1

    sget-object v2, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    const-string v3, "NameNotFoundException"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2b
    return v0
.end method

.method private static hasCustomPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/utils/Utils;->customPermissions:[Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/utils/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static hasPermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p2, v2

    invoke-static {p0, p1, v3}, Lcom/android/server/enterprise/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    return v1
.end method

.method private static hasPremiumPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/utils/Utils;->premiumPermissions:[Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/utils/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static hasStandardPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/utils/Utils;->standardPermissions:[Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/utils/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isBlacklisted(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "TT;>;>;TT;TT;)Z"
        }
    .end annotation

    const-string v0, "WHITELIST"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    return v1

    :cond_10
    const-string v0, "BLACKLIST"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "BLACKLIST"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_2e

    :cond_2d
    return v1

    :cond_2e
    :goto_2e
    const/4 v0, 0x1

    return v0
.end method

.method public static isInteger(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_4} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_4} :catch_7

    nop

    const/4 v0, 0x1

    return v0

    :catch_7
    move-exception v1

    return v0

    :catch_9
    move-exception v1

    return v0
.end method

.method private static isNonWildcardSet(Ljava/util/Set;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;TT;)Z"
        }
    .end annotation

    if-eqz p1, :cond_a

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public static isSystemApplication(Landroid/content/pm/PackageInfo;[Landroid/content/pm/Signature;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_33

    if-nez p0, :cond_6

    goto :goto_33

    :cond_6
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_32

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    if-eqz v1, :cond_32

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_32

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    array-length v2, p1

    if-ne v1, v2, :cond_32

    move v1, v0

    :goto_1d
    array-length v2, p1

    if-ge v1, v2, :cond_30

    aget-object v2, p1, v1

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    return v0

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_30
    const/4 v0, 0x1

    return v0

    :cond_32
    return v0

    :cond_33
    :goto_33
    sget-object v1, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "invalid param, pkgInfo or signature null"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static makeEffectiveLists(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "TT;>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "TT;>;>;TT;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "WHITELIST"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-object p1

    :cond_f
    const-string v0, "WHITELIST"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    return-object p0

    :cond_1e
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "BLACKLIST"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "WHITELIST"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BLACKLIST"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    const-string v2, "WHITELIST"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const-string v1, "BLACKLIST"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    const-string v2, "WHITELIST"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const-string v1, "BLACKLIST"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    const-string v2, "BLACKLIST"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v1, "WHITELIST"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    const-string v2, "WHITELIST"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v1, "BLACKLIST"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    const-string v2, "BLACKLIST"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-static {v1, v2, p2}, Lcom/android/server/enterprise/utils/Utils;->getNumWildcardSets(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b9

    const-string v2, "WHITELIST"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    const-string v3, "WHITELIST"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    const-string v2, "WHITELIST"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    goto :goto_114

    :cond_b9
    const/4 v2, 0x1

    if-ne v1, v2, :cond_ee

    const-string v2, "BLACKLIST"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-static {v2, p2}, Lcom/android/server/enterprise/utils/Utils;->isNonWildcardSet(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cd

    move-object v2, v0

    move-object v3, p1

    goto :goto_cf

    :cond_cd
    move-object v2, p1

    move-object v3, v0

    :goto_cf
    const-string v4, "WHITELIST"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    const-string v4, "WHITELIST"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_114

    :cond_ee
    const-string v2, "WHITELIST"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    const-string v3, "BLACKLIST"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const-string v2, "WHITELIST"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    const-string v3, "BLACKLIST"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    :goto_114
    const-string v2, "BLACKLIST"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    const-string v3, "BLACKLIST"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v2, "WHITELIST"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    const-string v3, "WHITELIST"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_23

    sget-object v1, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File Not Found : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_23
    :try_start_23
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_28} :catch_be

    nop

    nop

    new-instance v3, Ljava/io/BufferedReader;

    const/16 v4, 0x200

    invoke-direct {v3, v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v4, v2

    :cond_32
    :try_start_32
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    if-eqz v5, :cond_78

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_56

    const/4 v6, 0x1

    aget-object v6, v5, v6

    goto :goto_58

    :cond_56
    const-string v6, ""

    :goto_58
    const-string/jumbo v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_5f} :catch_8f
    .catchall {:try_start_32 .. :try_end_5f} :catchall_8d

    if-eqz v7, :cond_62

    const/4 v6, 0x0

    :cond_62
    nop

    nop

    :try_start_64
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    const/4 v1, 0x0

    goto :goto_6b

    :catch_69
    move-exception v2

    goto :goto_71

    :goto_6b
    nop

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_6f} :catch_69

    const/4 v3, 0x0

    goto :goto_76

    :goto_71
    nop

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_77

    :goto_76
    nop

    :goto_77
    return-object v6

    :cond_78
    nop

    :try_start_79
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    const/4 v1, 0x0

    goto :goto_80

    :catch_7e
    move-exception v4

    goto :goto_86

    :goto_80
    nop

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_84} :catch_7e

    const/4 v3, 0x0

    goto :goto_8b

    :goto_86
    nop

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8c

    :goto_8b
    nop

    :goto_8c
    return-object v2

    :catchall_8d
    move-exception v2

    goto :goto_a9

    :catch_8f
    move-exception v4

    :try_start_90
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_8d

    nop

    nop

    :try_start_95
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    const/4 v1, 0x0

    goto :goto_9c

    :catch_9a
    move-exception v5

    goto :goto_a2

    :goto_9c
    nop

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_a0} :catch_9a

    const/4 v3, 0x0

    goto :goto_a7

    :goto_a2
    nop

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a8

    :goto_a7
    nop

    :goto_a8
    return-object v2

    :goto_a9
    nop

    nop

    :try_start_ab
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    const/4 v1, 0x0

    goto :goto_b2

    :catch_b0
    move-exception v4

    goto :goto_b8

    :goto_b2
    nop

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_b6} :catch_b0

    const/4 v3, 0x0

    goto :goto_bd

    :goto_b8
    nop

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    nop

    :goto_bd
    throw v2

    :catch_be
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-object v3, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File access error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static serializeObject(Ljava/lang/Object;)[B
    .registers 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_5
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {v1, p0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/io/ObjectOutput;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_14} :catch_15

    return-object v2

    :catch_15
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const/4 v2, 0x0

    return-object v2
.end method

.method public static serializeObjectToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_5b

    nop

    :try_start_a
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_f} :catch_51
    .catchall {:try_start_a .. :try_end_f} :catchall_4e

    nop

    :try_start_10
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_15} :catch_44
    .catchall {:try_start_10 .. :try_end_15} :catchall_41

    nop

    :try_start_16
    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_2a} :catch_37
    .catchall {:try_start_16 .. :try_end_2a} :catchall_34

    :try_start_2a
    invoke-static {v0, v3}, Lcom/android/server/enterprise/utils/Utils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2d} :catch_44
    .catchall {:try_start_2a .. :try_end_2d} :catchall_41

    :try_start_2d
    invoke-static {v0, v2}, Lcom/android/server/enterprise/utils/Utils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_30} :catch_51
    .catchall {:try_start_2d .. :try_end_30} :catchall_4e

    :try_start_30
    invoke-static {v0, v1}, Lcom/android/server/enterprise/utils/Utils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_5b

    return-object v4

    :catchall_34
    move-exception v4

    move-object v5, v0

    goto :goto_3d

    :catch_37
    move-exception v4

    :try_start_38
    throw v4
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_3d
    :try_start_3d
    invoke-static {v5, v3}, Lcom/android/server/enterprise/utils/Utils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v4
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_41} :catch_44
    .catchall {:try_start_3d .. :try_end_41} :catchall_41

    :catchall_41
    move-exception v3

    move-object v4, v0

    goto :goto_4a

    :catch_44
    move-exception v3

    :try_start_45
    throw v3
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception v4

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    :goto_4a
    :try_start_4a
    invoke-static {v4, v2}, Lcom/android/server/enterprise/utils/Utils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4e} :catch_51
    .catchall {:try_start_4a .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception v2

    move-object v3, v0

    goto :goto_57

    :catch_51
    move-exception v2

    :try_start_52
    throw v2
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_53

    :catchall_53
    move-exception v3

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    :goto_57
    :try_start_57
    invoke-static {v3, v1}, Lcom/android/server/enterprise/utils/Utils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5b} :catch_5b

    :catch_5b
    move-exception v1

    sget-object v2, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException to Serialize Object to String: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_4
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1d

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    nop

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1a4

    const/4 v7, -0x1

    invoke-static {v5, v6, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_1d
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v2, v5

    new-instance v5, Ljava/io/BufferedReader;

    const/16 v6, 0x200

    invoke-direct {v5, v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v3, v5

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    move v7, v6

    :goto_34
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    if-eqz v8, :cond_6d

    const-string v8, "="

    invoke-virtual {v9, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v6

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5f

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    :cond_5f
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v8, "line.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_34

    :cond_6d
    if-nez v7, :cond_90

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v6, "line.separator"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_90
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    const/4 v3, 0x0

    new-instance v6, Ljava/io/PrintStream;

    invoke-direct {v6, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/File;)V

    move-object v1, v6

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a1} :catch_ba
    .catchall {:try_start_4 .. :try_end_a1} :catchall_b8

    const/4 v0, 0x1

    nop

    :try_start_a3
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    const/4 v2, 0x0

    goto :goto_aa

    :catch_a8
    move-exception v4

    goto :goto_b1

    :goto_aa
    if-eqz v3, :cond_b6

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_af} :catch_a8

    const/4 v3, 0x0

    goto :goto_b6

    :goto_b1
    nop

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b7

    :cond_b6
    :goto_b6
    nop

    :goto_b7
    goto :goto_d6

    :catchall_b8
    move-exception v4

    goto :goto_db

    :catch_ba
    move-exception v4

    :try_start_bb
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_b8

    if-eqz v2, :cond_c7

    :try_start_c0
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    const/4 v2, 0x0

    goto :goto_c7

    :catch_c5
    move-exception v4

    goto :goto_ce

    :cond_c7
    :goto_c7
    if-eqz v3, :cond_d3

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_cc} :catch_c5

    const/4 v3, 0x0

    goto :goto_d3

    :goto_ce
    nop

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d4

    :cond_d3
    :goto_d3
    nop

    :goto_d4
    if-eqz v1, :cond_da

    :goto_d6
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    const/4 v1, 0x0

    :cond_da
    return v0

    :goto_db
    nop

    if-eqz v2, :cond_e5

    :try_start_de
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    const/4 v2, 0x0

    goto :goto_e5

    :catch_e3
    move-exception v5

    goto :goto_ec

    :cond_e5
    :goto_e5
    if-eqz v3, :cond_f1

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_ea} :catch_e3

    const/4 v3, 0x0

    goto :goto_f1

    :goto_ec
    nop

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f2

    :cond_f1
    :goto_f1
    nop

    :goto_f2
    if-eqz v1, :cond_f8

    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    const/4 v1, 0x0

    :cond_f8
    throw v4
.end method
