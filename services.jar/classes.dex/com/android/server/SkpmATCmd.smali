.class public Lcom/android/server/SkpmATCmd;
.super Ljava/lang/Object;
.source "SkpmATCmd.java"

# interfaces
.implements Lcom/android/server/IWorkOnAt;


# static fields
.field private static final AT_CMD_OCF_VERSION:Ljava/lang/String; = "01"

.field private static final AT_CMD_OCF_WRITING_END:Ljava/lang/String; = "FFF"

.field private static final AT_COMMAND_HEADER:Ljava/lang/String; = "AT"

.field private static final AT_COMMAND_SOCFIOTK:Ljava/lang/String; = "SOCFIOTK"

.field private static final AT_DATA_INDEX:I = 0x3

.field private static final AT_MAIN_INDEX:I = 0x0

.field private static final AT_MAIN_INDEX_READ_DATA:I = 0x1

.field private static final AT_MAIN_INDEX_VERIFY:I = 0x0

.field private static final AT_MAIN_INDEX_WRITE_DATA:I = 0x2

.field private static final AT_MID_INDEX:I = 0x1

.field private static final AT_MINOR_INDEX:I = 0x2

.field private static final AT_RESPNOSE_FAILED:Ljava/lang/String; = "NG_FAIL"

.field private static final AT_RESPNOSE_NO_KEY:Ljava/lang/String; = "NG_NONE"

.field private static final AT_RESPONSE_INVALID_PARAM:Ljava/lang/String; = "NG_FAIL(INVALID_PARAM)"

.field private static final AT_RESPONSE_MISSED_DATA:Ljava/lang/String; = "NG_FAIL(DATA MISSED)"

.field private static final AT_RESPONSE_OK:Ljava/lang/String; = "OK"

.field private static final AT_RESPONSE_WRONG_FORMAT:Ljava/lang/String; = "NG_FAIL(WRONG FORMAT)"

.field private static final ENCODING_TYPE_BASE64:B = 0x2t

.field private static final ENCODING_TYPE_BINARY:B = 0x1t

.field private static final ENCODING_TYPE_HEX:B = 0x4t

.field private static final INJECTION_TYPE_FACTORY:B = 0x1t

.field private static final INJECTION_TYPE_OTA_CSR:B = 0x2t

.field private static final INJECTION_TYPE_OTA_WB:B = 0x4t

.field private static final KEY_NOT_EXISTED:I = -0x14

.field private static final KEY_NOT_USABLE:I = -0x15

.field private static final KEY_TYPE_ECC_P256:B = 0x1t

.field private static final KEY_TYPE_RSA_2048:B = 0x2t

.field private static final NO_ERROR:I = 0x0

.field private static final OCF_SEQ_NO:I = 0x3

.field private static final OCF_VERSION:I = 0x2

.field private static final SAMSUNG_OCF_KEY_READ_UID:I = 0x1

.field private static final SAMSUNG_OCF_KEY_VERIFY:I = 0x0

.field private static final SAMSUNG_OCF_KEY_WRITE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SkpmATCmd"

.field private static final UID_BUF_SIZE:I = 0x24

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mSkpmManager:Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/SamsungKeyProvisioningManager;

.field private mTlvKeyBlob:Ljava/lang/String;

.field private mTlvKeyBlobCounter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/android/server/SkpmATCmd;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/SkpmATCmd;->initTlvKeyBlob()V

    new-instance v0, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/SamsungKeyProvisioningManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/SamsungKeyProvisioningManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SkpmATCmd;->mSkpmManager:Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/SamsungKeyProvisioningManager;

    iget-object v0, p0, Lcom/android/server/SkpmATCmd;->mSkpmManager:Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/SamsungKeyProvisioningManager;

    if-nez v0, :cond_1e

    const-string v0, "SkpmATCmd"

    const-string v1, "SamsungKeyProvisioningManager init. is failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return-void
.end method

.method private appendKeyBlob(ILjava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    iput p1, p0, Lcom/android/server/SkpmATCmd;->mTlvKeyBlobCounter:I

    iput-object p2, p0, Lcom/android/server/SkpmATCmd;->mTlvKeyBlob:Ljava/lang/String;

    goto :goto_3e

    :cond_8
    const/4 v1, -0x1

    if-ne p1, v1, :cond_24

    iget v1, p0, Lcom/android/server/SkpmATCmd;->mTlvKeyBlobCounter:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/SkpmATCmd;->mTlvKeyBlobCounter:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/SkpmATCmd;->mTlvKeyBlob:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SkpmATCmd;->mTlvKeyBlob:Ljava/lang/String;

    goto :goto_3e

    :cond_24
    iget v1, p0, Lcom/android/server/SkpmATCmd;->mTlvKeyBlobCounter:I

    add-int/2addr v1, v0

    if-ne p1, v1, :cond_3f

    iput p1, p0, Lcom/android/server/SkpmATCmd;->mTlvKeyBlobCounter:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/SkpmATCmd;->mTlvKeyBlob:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SkpmATCmd;->mTlvKeyBlob:Ljava/lang/String;

    :goto_3e
    return v0

    :cond_3f
    invoke-direct {p0}, Lcom/android/server/SkpmATCmd;->initTlvKeyBlob()V

    const/4 v0, 0x0

    return v0
.end method

.method private getKeyBlobIndex()I
    .registers 2

    iget v0, p0, Lcom/android/server/SkpmATCmd;->mTlvKeyBlobCounter:I

    return v0
.end method

.method private getTotalKeyBlob()[B
    .registers 2

    iget-object v0, p0, Lcom/android/server/SkpmATCmd;->mTlvKeyBlob:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private initTlvKeyBlob()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/SkpmATCmd;->mTlvKeyBlobCounter:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/SkpmATCmd;->mTlvKeyBlob:Ljava/lang/String;

    return-void
.end method

.method private parsingParam(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_12

    move-object v0, v2

    goto :goto_17

    :catch_12
    move-exception v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_17
    return-object v0
.end method


# virtual methods
.method public getCmd()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    const-string v0, "SOCFIOTK"

    return-object v0
.end method

.method public processCmd(Ljava/lang/String;)Ljava/lang/String;
    .registers 18

    move-object/from16 v1, p0

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    move-object v3, v0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/SkpmATCmd;->parsingParam(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_12

    const-string v0, "NG_FAIL(INVALID_PARAM)"

    return-object v0

    :cond_12
    iget-object v0, v1, Lcom/android/server/SkpmATCmd;->mSkpmManager:Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/SamsungKeyProvisioningManager;

    if-nez v0, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SkpmATCmd;->rebindSkpmManager()Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "NG_FAIL"

    return-object v0

    :cond_1f
    :try_start_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    aget-object v6, v4, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    const/4 v0, 0x1

    const-string/jumbo v6, "ro.product_ship"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "false"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_48

    const/4 v0, 0x0

    :cond_48
    aget-object v6, v4, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, -0x15

    const/16 v8, -0x14

    const/4 v9, 0x1

    packed-switch v6, :pswitch_data_25e

    new-instance v5, Ljava/lang/StringBuilder;

    goto/16 :goto_237

    :pswitch_5a
    if-eqz v0, :cond_70

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "NG_FAIL(INVALID_PARAM)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    goto/16 :goto_247

    :cond_70
    const/4 v5, 0x3

    aget-object v6, v4, v5

    const/4 v7, 0x2

    const/4 v8, 0x5

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "FFF"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_fd

    const/4 v7, -0x1

    aget-object v8, v4, v5

    aget-object v10, v4, v5

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v10, v9

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v8, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v7, v5}, Lcom/android/server/SkpmATCmd;->appendKeyBlob(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e1

    iget-object v10, v1, Lcom/android/server/SkpmATCmd;->mSkpmManager:Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/SamsungKeyProvisioningManager;

    const/4 v11, 0x1

    const/4 v12, 0x1

    const-string v13, "OCF"

    invoke-direct/range {p0 .. p0}, Lcom/android/server/SkpmATCmd;->getTotalKeyBlob()[B

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual/range {v10 .. v15}, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/SamsungKeyProvisioningManager;->writeKey(BBLjava/lang/String;[BB)I

    move-result v5

    move v2, v5

    invoke-direct/range {p0 .. p0}, Lcom/android/server/SkpmATCmd;->initTlvKeyBlob()V

    if-nez v2, :cond_ca

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "OK"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    goto/16 :goto_247

    :cond_ca
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "NG_FAIL "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    goto/16 :goto_247

    :cond_e1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "NG_FAIL(DATA MISSED) SN-FFF TB-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/SkpmATCmd;->getKeyBlobIndex()I

    move-result v7

    add-int/2addr v7, v9

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    goto/16 :goto_247

    :cond_fd
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v8, v4, v5

    aget-object v10, v4, v5

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v10, v9

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v8, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v7, v5}, Lcom/android/server/SkpmATCmd;->appendKeyBlob(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_134

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "OK"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    goto/16 :goto_247

    :cond_134
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "NG_FAIL(DATA MISSED) SN-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " TB-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/SkpmATCmd;->getKeyBlobIndex()I

    move-result v8

    add-int/2addr v8, v9

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    goto/16 :goto_247

    :pswitch_158
    const/16 v6, 0x24

    new-array v10, v6, [B

    iget-object v11, v1, Lcom/android/server/SkpmATCmd;->mSkpmManager:Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/SamsungKeyProvisioningManager;

    const-string v12, "OCF"

    invoke-virtual {v11, v9, v9, v12, v10}, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/SamsungKeyProvisioningManager;->getKeyUid(BBLjava/lang/String;[B)I

    move-result v9

    move v2, v9

    if-ne v2, v6, :cond_1bc

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v10, v5, v2}, Ljava/lang/String;-><init>([BII)V

    move-object v5, v6

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_1a5

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_1a5

    const/16 v6, 0x12

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_1a5

    const/16 v6, 0x17

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_1a5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "OK,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    goto :goto_1ba

    :cond_1a5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "NG_FAIL(WRONG FORMAT),"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    :goto_1ba
    goto/16 :goto_247

    :cond_1bc
    if-eq v2, v8, :cond_1d8

    if-ne v2, v7, :cond_1c1

    goto :goto_1d8

    :cond_1c1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "NG_FAIL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    goto/16 :goto_247

    :cond_1d8
    :goto_1d8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "NG_NONE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    goto :goto_247

    :pswitch_1eb
    iget-object v5, v1, Lcom/android/server/SkpmATCmd;->mSkpmManager:Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/SamsungKeyProvisioningManager;

    const-string v6, "OCF"

    invoke-virtual {v5, v9, v9, v6}, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/SamsungKeyProvisioningManager;->verifyKey(BBLjava/lang/String;)I

    move-result v5

    move v2, v5

    if-nez v2, :cond_209

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "OK"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    goto :goto_247

    :cond_209
    if-eq v2, v8, :cond_224

    if-ne v2, v7, :cond_20e

    goto :goto_224

    :cond_20e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "NG_FAIL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    goto :goto_247

    :cond_224
    :goto_224
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "NG_NONE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    goto :goto_247

    :goto_237
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "NG_FAIL(INVALID_PARAM)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_246
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_246} :catch_248

    move-object v3, v5

    :goto_247
    goto :goto_25d

    :catch_248
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "NG_FAIL(INVALID_PARAM)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_25d
    return-object v3

    :pswitch_data_25e
    .packed-switch 0x0
        :pswitch_1eb
        :pswitch_158
        :pswitch_5a
    .end packed-switch
.end method

.method public rebindSkpmManager()Z
    .registers 3

    new-instance v0, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/SamsungKeyProvisioningManager;

    sget-object v1, Lcom/android/server/SkpmATCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/SamsungKeyProvisioningManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SkpmATCmd;->mSkpmManager:Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/SamsungKeyProvisioningManager;

    iget-object v0, p0, Lcom/android/server/SkpmATCmd;->mSkpmManager:Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/SamsungKeyProvisioningManager;

    if-nez v0, :cond_1a

    const-string v0, "SkpmATCmd"

    const-string v1, "SamsungKeyProvisioningManager init. is failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_1a
    const/4 v0, 0x1

    return v0
.end method
