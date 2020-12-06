.class public Lcom/samsung/ucm/ucmservice/EFSProperties;
.super Ljava/lang/Object;
.source "EFSProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;,
        Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    }
.end annotation


# static fields
.field private static final CONFIG_FILE_PATH:Ljava/lang/String; = "/efs/sec_efs"

.field private static final KEYGUARD_CONFIG_NAME:Ljava/lang/String; = "keyguardConfig"

.field private static final ODE_CONFIG_NAME:Ljava/lang/String; = "odeConfig"

.field public static final SCP_NONE:Ljava/lang/String; = "NONE"

.field public static final SCP_TYPES:[Ljava/lang/String;

.field public static final SCP_TYPE_A:Ljava/lang/String; = "SCP11a"

.field public static final SCP_TYPE_B:Ljava/lang/String; = "SCP11b"

.field public static final SCP_TYPE_CUSTOM:Ljava/lang/String; = "SCPCustom"

.field public static final STORAGE_TYPES:[Ljava/lang/String;

.field public static final STORAGE_TYPE_ESE:I = 0x0

.field public static final STORAGE_TYPE_ESE_1:I = 0x3

.field public static final STORAGE_TYPE_ESE_1_NAME:Ljava/lang/String; = "eSE1"

.field public static final STORAGE_TYPE_ESE_2:I = 0x6

.field public static final STORAGE_TYPE_ESE_2_NAME:Ljava/lang/String; = "eSE2"

.field public static final STORAGE_TYPE_ESE_NAME:Ljava/lang/String; = "eSE"

.field public static final STORAGE_TYPE_ETC:I = 0x9

.field public static final STORAGE_TYPE_ETC_NAME:Ljava/lang/String; = "ETC"

.field public static final STORAGE_TYPE_MAX:I = 0xa

.field public static final STORAGE_TYPE_MICROSD:I = 0x2

.field public static final STORAGE_TYPE_MICROSD_1:I = 0x5

.field public static final STORAGE_TYPE_MICROSD_1_NAME:Ljava/lang/String; = "SD1"

.field public static final STORAGE_TYPE_MICROSD_2:I = 0x8

.field public static final STORAGE_TYPE_MICROSD_2_NAME:Ljava/lang/String; = "SD2"

.field public static final STORAGE_TYPE_MICROSD_NAME:Ljava/lang/String; = "SD"

.field public static final STORAGE_TYPE_NONE:I = -0x1

.field public static final STORAGE_TYPE_UICC:I = 0x1

.field public static final STORAGE_TYPE_UICC_1:I = 0x4

.field public static final STORAGE_TYPE_UICC_1_NAME:Ljava/lang/String; = "SIM1"

.field public static final STORAGE_TYPE_UICC_2:I = 0x7

.field public static final STORAGE_TYPE_UICC_2_NAME:Ljava/lang/String; = "SIM2"

.field public static final STORAGE_TYPE_UICC_NAME:Ljava/lang/String; = "SIM"

.field private static final TAG:Ljava/lang/String; = "EFSProperties"


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const-string v0, "eSE"

    const-string v1, "SIM"

    const-string v2, "SD"

    const-string v3, "eSE1"

    const-string v4, "SIM1"

    const-string v5, "SD1"

    const-string v6, "eSE2"

    const-string v7, "SIM2"

    const-string v8, "SD2"

    const-string v9, "ETC"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    const-string v0, "NONE"

    const-string v1, "SCP11a"

    const-string v2, "SCP11b"

    const-string v3, "SCPCustom"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .registers 9

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_36

    if-nez p0, :cond_b

    const/4 v1, 0x0

    return-object v1

    :cond_b
    array-length v1, p0

    shl-int/lit8 v2, v1, 0x1

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_12
    if-ge v3, v1, :cond_2f

    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0xf0

    aget-byte v7, p0, v3

    and-int/2addr v6, v7

    ushr-int/lit8 v6, v6, 0x4

    aget-char v6, v0, v6

    aput-char v6, v2, v4

    add-int/lit8 v4, v5, 0x1

    const/16 v6, 0xf

    aget-byte v7, p0, v3

    and-int/2addr v6, v7

    aget-char v6, v0, v6

    aput-char v6, v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_2f
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    return-object v3

    nop

    :array_36
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private static checkKeyguardProperty(Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;)Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public static deleteKeyguardConfig()Z
    .registers 4

    const/4 v0, 0x1

    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/sec_efs"

    const-string v3, "keyguardConfig"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v3, "failed to delete the existing keyguard config file"

    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1c
    return v0
.end method

.method public static deleteODEConfig()Z
    .registers 4

    const/4 v0, 0x1

    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/sec_efs"

    const-string/jumbo v3, "odeConfig"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v3, "failed to delete the existing ODE config file"

    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1d
    return v0
.end method

.method public static loadKeyguardConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    .registers 11

    const-string v0, "load Keyguard config"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs"

    const-string v2, "keyguardConfig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1b

    const-string v3, "Keyguard config file does not exist"

    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    return-object v2

    :cond_1b
    const/4 v3, 0x0

    move-object v4, v2

    :try_start_1d
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    new-instance v5, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;

    invoke-direct {v5}, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;-><init>()V

    move-object v4, v5

    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v5

    if-lez v5, :cond_cb

    new-array v6, v5, [B

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    if-eq v8, v5, :cond_4a

    const-string v7, "EFSProperties"

    const-string v9, "csTemp length is not proper"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_3f} :catch_f4
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3f} :catch_df
    .catchall {:try_start_1d .. :try_end_3f} :catchall_dd

    nop

    nop

    :try_start_41
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_49

    :catch_45
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    :goto_49
    return-object v2

    :cond_4a
    :try_start_4a
    iput-object v6, v4, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->csName:[B

    nop

    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v6

    if-lez v6, :cond_b9

    new-array v8, v6, [B

    iput-object v8, v4, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    iget-object v8, v4, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    invoke-virtual {v3, v8, v7, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    if-eq v7, v6, :cond_89

    const-string v8, "EFSProperties"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "read side mismatched, lengthAID : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", readByteSize : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_7e} :catch_f4
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_7e} :catch_df
    .catchall {:try_start_4a .. :try_end_7e} :catchall_dd

    nop

    nop

    :try_start_80
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84

    goto :goto_88

    :catch_84
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    :goto_88
    return-object v2

    :cond_89
    nop

    :try_start_8a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v7

    iput v7, v4, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->storageType:I

    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v8

    iput v8, v4, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->enabledSCP:I

    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v8

    iput v8, v4, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMinLength:I

    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v8

    iput v8, v4, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMaxLength:I

    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v8

    iput v8, v4, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMinLength:I

    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v8

    iput v8, v4, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMaxLength:I
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_ae} :catch_f4
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_ae} :catch_df
    .catchall {:try_start_8a .. :try_end_ae} :catchall_dd

    nop

    :try_start_af
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_b3

    :goto_b2
    goto :goto_b8

    :catch_b3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b2

    :goto_b8
    return-object v4

    :cond_b9
    :try_start_b9
    const-string v7, "EFSProperties"

    const-string v8, "AID length is not proper"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_c0} :catch_f4
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_c0} :catch_df
    .catchall {:try_start_b9 .. :try_end_c0} :catchall_dd

    nop

    nop

    :try_start_c2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_c6

    goto :goto_ca

    :catch_c6
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    :goto_ca
    return-object v2

    :cond_cb
    :try_start_cb
    const-string v6, "EFSProperties"

    const-string v7, "CS Name length is not proper"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_d2} :catch_f4
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_d2} :catch_df
    .catchall {:try_start_cb .. :try_end_d2} :catchall_dd

    nop

    nop

    :try_start_d4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_d8

    goto :goto_dc

    :catch_d8
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    :goto_dc
    return-object v2

    :catchall_dd
    move-exception v2

    goto :goto_109

    :catch_df
    move-exception v5

    :try_start_e0
    const-string v6, "loadKeyguardConfig : Exception"

    invoke-static {v6}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e8
    .catchall {:try_start_e0 .. :try_end_e8} :catchall_dd

    nop

    if-eqz v3, :cond_f3

    :try_start_eb
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_ee} :catch_ef

    goto :goto_f3

    :catch_ef
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    :cond_f3
    :goto_f3
    return-object v2

    :catch_f4
    move-exception v5

    :try_start_f5
    const-string v6, "loadKeyguardConfig : IOException"

    invoke-static {v6}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_fd
    .catchall {:try_start_f5 .. :try_end_fd} :catchall_dd

    nop

    if-eqz v3, :cond_108

    :try_start_100
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_103} :catch_104

    goto :goto_108

    :catch_104
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    :cond_108
    :goto_108
    return-object v2

    :goto_109
    if-eqz v3, :cond_113

    :try_start_10b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_10e
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_10e} :catch_10f

    goto :goto_113

    :catch_10f
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    :cond_113
    :goto_113
    throw v2
.end method

.method public static loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .registers 19

    const-string v0, "load ODE config"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs"

    const-string/jumbo v2, "odeConfig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_21

    const-string v0, "ODE config file does not exist"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    invoke-direct {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;-><init>()V

    return-object v0

    :cond_21
    const/4 v3, 0x0

    const/4 v0, 0x0

    move-object v4, v0

    :try_start_24
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v4, v0

    new-instance v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    invoke-direct {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;-><init>()V

    move-object v3, v0

    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v0

    iput v0, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v0
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_3a} :catch_26c

    const/4 v5, 0x0

    if-eqz v0, :cond_6e

    :try_start_3d
    new-array v6, v0, [B

    iput-object v6, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    iget-object v6, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    invoke-virtual {v4, v6, v5, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    if-eq v6, v0, :cond_6e

    const-string v7, "EFSProperties"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "read side mismatched, lengthAID : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", readByteSize : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_68} :catch_69

    goto :goto_6e

    :catch_69
    move-exception v0

    move-object/from16 v18, v1

    goto/16 :goto_26f

    :cond_6e
    :goto_6e
    :try_start_6e
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v6

    iput v6, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v6

    iput v6, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v6

    iput v6, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v6

    iput v6, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMinLength:I

    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v6

    iput v6, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMaxLength:I

    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v6

    iput v6, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMode:I

    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v6

    iput v6, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMaxCnt:I

    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v6

    iput v6, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMinLength:I

    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v6

    iput v6, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMaxLength:I

    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v6
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_a8} :catch_26c

    if-eqz v6, :cond_d5

    :try_start_aa
    new-array v7, v6, [B

    iput-object v7, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    iget-object v7, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    invoke-virtual {v4, v7, v5, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    if-eq v7, v6, :cond_d5

    const-string v8, "EFSProperties"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "read side mismatched, lengthCsName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", readByteSize : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_d5} :catch_69

    :cond_d5
    :try_start_d5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v7

    iput v7, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAdminID:I

    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v7

    iput v7, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertUserID:I

    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v7
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_e5} :catch_26c

    if-eqz v7, :cond_112

    :try_start_e7
    new-array v8, v7, [B

    iput-object v8, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    iget-object v8, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    invoke-virtual {v4, v8, v5, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    if-eq v8, v7, :cond_112

    const-string v9, "EFSProperties"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "read side mismatched, lenCertAlias : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", readByteSize : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_112
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_112} :catch_69

    :cond_112
    :try_start_112
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v8
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_116} :catch_26c

    if-eqz v8, :cond_143

    :try_start_118
    new-array v9, v8, [B

    iput-object v9, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    iget-object v9, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    invoke-virtual {v4, v9, v5, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v9

    if-eq v9, v8, :cond_143

    const-string v10, "EFSProperties"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "read side mismatched, lenCertLocation : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", readByteSize : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_143} :catch_69

    :cond_143
    :try_start_143
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v9
    :try_end_147
    .catch Ljava/io/IOException; {:try_start_143 .. :try_end_147} :catch_26c

    if-eqz v9, :cond_174

    :try_start_149
    new-array v10, v9, [B

    iput-object v10, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    iget-object v10, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    invoke-virtual {v4, v10, v5, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v10

    if-eq v10, v9, :cond_174

    const-string v11, "EFSProperties"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "read side mismatched, lenConfiguratorPkgLen : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", readByteSize : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_174
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_174} :catch_69

    :cond_174
    :try_start_174
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v10
    :try_end_178
    .catch Ljava/io/IOException; {:try_start_174 .. :try_end_178} :catch_26c

    if-eqz v10, :cond_1a5

    :try_start_17a
    new-array v11, v10, [B

    iput-object v11, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    iget-object v11, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    invoke-virtual {v4, v11, v5, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v11

    if-eq v11, v10, :cond_1a5

    const-string v12, "EFSProperties"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "read side mismatched, lenConfiguratorDigestLen : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", readByteSize : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a5
    .catch Ljava/io/IOException; {:try_start_17a .. :try_end_1a5} :catch_69

    :cond_1a5
    const/4 v11, 0x2

    :try_start_1a6
    new-array v12, v11, [B

    invoke-virtual {v4, v12, v5, v11}, Ljava/io/FileInputStream;->read([BII)I

    const/4 v11, 0x0

    aget-byte v13, v12, v5

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v11, v13

    const/4 v13, 0x1

    aget-byte v14, v12, v13
    :try_end_1b6
    .catch Ljava/io/IOException; {:try_start_1a6 .. :try_end_1b6} :catch_26c

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v11, v14

    if-eqz v11, :cond_1e6

    :try_start_1bb
    new-array v14, v11, [B

    iput-object v14, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    iget-object v14, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    invoke-virtual {v4, v14, v5, v11}, Ljava/io/FileInputStream;->read([BII)I

    move-result v14

    if-eq v14, v11, :cond_1e6

    const-string v15, "EFSProperties"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "read side mismatched, lenScpParamLen : "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", readByteSize : "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e6
    .catch Ljava/io/IOException; {:try_start_1bb .. :try_end_1e6} :catch_69

    :cond_1e6
    :try_start_1e6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v5
    :try_end_1ea
    .catch Ljava/io/IOException; {:try_start_1e6 .. :try_end_1ea} :catch_26c

    if-lez v5, :cond_21b

    :try_start_1ec
    new-array v13, v5, [B

    iput-object v13, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    iget-object v13, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v13

    if-eq v13, v5, :cond_21b

    const-string v14, "EFSProperties"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v0

    const-string/jumbo v0, "read side mismatched, lenPluginSignatureHash : "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", readByteSize : "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21a
    .catch Ljava/io/IOException; {:try_start_1ec .. :try_end_21a} :catch_69

    goto :goto_21d

    :cond_21b
    move/from16 v16, v0

    :goto_21d
    :try_start_21d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v0
    :try_end_221
    .catch Ljava/io/IOException; {:try_start_21d .. :try_end_221} :catch_26c

    const/4 v13, -0x1

    if-ne v0, v13, :cond_22a

    const/4 v13, 0x1

    :try_start_225
    iput v13, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->version:I
    :try_end_227
    .catch Ljava/io/IOException; {:try_start_225 .. :try_end_227} :catch_69

    :goto_227
    move-object/from16 v18, v1

    goto :goto_26b

    :cond_22a
    const/4 v13, 0x1

    :try_start_22b
    iput v0, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->version:I

    if-gt v0, v13, :cond_230

    goto :goto_227

    :cond_230
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v13

    if-lez v13, :cond_269

    new-array v14, v13, [B

    iput-object v14, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    iget-object v14, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15, v13}, Ljava/io/FileInputStream;->read([BII)I

    move-result v14

    if-eq v14, v13, :cond_269

    const-string v15, "EFSProperties"

    move/from16 v17, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_24c
    .catch Ljava/io/IOException; {:try_start_22b .. :try_end_24c} :catch_26c

    move-object/from16 v18, v1

    :try_start_24e
    const-string/jumbo v1, "read side mismatched, lenDefaultLanguage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", readByteSize : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_266
    .catch Ljava/io/IOException; {:try_start_24e .. :try_end_266} :catch_267

    goto :goto_26b

    :catch_267
    move-exception v0

    goto :goto_26f

    :cond_269
    move-object/from16 v18, v1

    :goto_26b
    goto :goto_273

    :catch_26c
    move-exception v0

    move-object/from16 v18, v1

    :goto_26f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v3, 0x0

    :goto_273
    if-eqz v4, :cond_27e

    :try_start_275
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_278
    .catch Ljava/io/IOException; {:try_start_275 .. :try_end_278} :catch_279

    goto :goto_27e

    :catch_279
    move-exception v0

    move-object v1, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_27e
    :goto_27e
    return-object v3
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    const-string v0, "EFSProperties"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static saveKeyguardConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;)Z
    .registers 9

    const-string/jumbo v0, "save Keyguard config"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p0, :cond_f

    const-string v1, "KeyguardProperties is null"

    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    return v0

    :cond_f
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->checkKeyguardProperty(Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "checkKeyguardProperty false"

    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    return v0

    :cond_1b
    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/sec_efs"

    const-string v3, "keyguardConfig"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_36

    const-string v4, "failed to delete the existing Keyguard ODE config file"

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    return v0

    :cond_36
    const/4 v3, 0x0

    :try_start_37
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->csName:[B

    array-length v5, v4

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    if-eqz v7, :cond_5c

    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    array-length v7, v7

    if-lez v7, :cond_5c

    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    array-length v6, v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_5f

    :cond_5c
    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write(I)V

    :goto_5f
    iget v6, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->storageType:I

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write(I)V

    iget v6, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->enabledSCP:I

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write(I)V

    iget v6, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMinLength:I

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write(I)V

    iget v6, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMaxLength:I

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write(I)V

    iget v6, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMinLength:I

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write(I)V

    iget v6, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMaxLength:I

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_7d} :catch_95
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_7d} :catch_85
    .catchall {:try_start_37 .. :try_end_7d} :catchall_83

    const/4 v0, 0x1

    nop

    :try_start_7f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_a5

    goto :goto_aa

    :catchall_83
    move-exception v4

    goto :goto_ac

    :catch_85
    move-exception v4

    :try_start_86
    const-string/jumbo v5, "saveKeyguardConfig : Exception"

    invoke-static {v5}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8f
    .catchall {:try_start_86 .. :try_end_8f} :catchall_83

    if-eqz v3, :cond_ab

    :try_start_91
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_a5

    goto :goto_aa

    :catch_95
    move-exception v4

    :try_start_96
    const-string/jumbo v5, "saveKeyguardConfig : IOException"

    invoke-static {v5}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9f
    .catchall {:try_start_96 .. :try_end_9f} :catchall_83

    if-eqz v3, :cond_ab

    :try_start_a1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_a5

    goto :goto_aa

    :catch_a5
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_aa
    nop

    :cond_ab
    return v0

    :goto_ac
    if-eqz v3, :cond_b7

    :try_start_ae
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_b2

    goto :goto_b7

    :catch_b2
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    :cond_b7
    :goto_b7
    throw v4
.end method

.method public static saveODEConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;)Z
    .registers 9

    const-string/jumbo v0, "save ODE config"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p0, :cond_f

    const-string v1, "ODEProperties is null"

    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    return v0

    :cond_f
    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/sec_efs"

    const-string/jumbo v3, "odeConfig"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2b

    const-string v4, "failed to delete the existing ODE config file"

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    return v0

    :cond_2b
    const/4 v3, 0x0

    :try_start_2c
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    const/4 v5, 0x0

    if-eqz v4, :cond_4d

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    array-length v4, v4

    if-lez v4, :cond_4d

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_50

    :cond_4d
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V

    :goto_50
    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMinLength:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMaxLength:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMode:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMaxCnt:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMinLength:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMaxLength:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    if-eqz v4, :cond_92

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    array-length v4, v4

    if-lez v4, :cond_92

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_95

    :cond_92
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V

    :goto_95
    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAdminID:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertUserID:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    if-eqz v4, :cond_b4

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    array-length v4, v4

    if-lez v4, :cond_b4

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_b7

    :cond_b4
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V

    :goto_b7
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    if-eqz v4, :cond_cc

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    array-length v4, v4

    if-lez v4, :cond_cc

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_cf

    :cond_cc
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V

    :goto_cf
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    if-eqz v4, :cond_e4

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    array-length v4, v4

    if-lez v4, :cond_e4

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_e7

    :cond_e4
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V

    :goto_e7
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    if-eqz v4, :cond_fc

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    array-length v4, v4

    if-lez v4, :cond_fc

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_ff

    :cond_fc
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V

    :goto_ff
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    if-eqz v4, :cond_129

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    array-length v4, v4

    if-lez v4, :cond_129

    const/4 v4, 0x2

    new-array v4, v4, [B

    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    array-length v6, v6

    const v7, 0xff00

    and-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    array-length v7, v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_12f

    :cond_129
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V

    :goto_12f
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    if-eqz v4, :cond_144

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    array-length v4, v4

    if-lez v4, :cond_144

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_147

    :cond_144
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V

    :goto_147
    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->version:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    if-eqz v4, :cond_160

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    array-length v4, v4

    if-lez v4, :cond_160

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_160
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_160} :catch_16b
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_160} :catch_162

    :cond_160
    const/4 v0, 0x1

    goto :goto_173

    :catch_162
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    goto :goto_174

    :catch_16b
    move-exception v4

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    :goto_173
    nop

    :goto_174
    if-eqz v3, :cond_17f

    :try_start_176
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_179
    .catch Ljava/io/IOException; {:try_start_176 .. :try_end_179} :catch_17a

    goto :goto_17f

    :catch_17a
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    :cond_17f
    :goto_17f
    return v0
.end method
