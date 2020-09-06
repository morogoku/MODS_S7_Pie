.class public Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;
.super Ljava/lang/Object;
.source "CoverInfo.java"


# instance fields
.field private HexDecimalTable:[Ljava/lang/String;

.field private chip_id:[B

.field private color:I

.field private cover_id:[B

.field private id:Ljava/lang/String;

.field private idVersion:I

.field private model:I

.field private month:I

.field private reserved:B

.field private serial:Ljava/lang/String;

.field private smapp:I

.field private sn:[B

.field private type:I

.field private url:I

.field private valid:Z

.field private vendorInfo:[B

.field private year:I


# direct methods
.method public constructor <init>([B)V
    .registers 42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x17

    new-array v3, v2, [B

    iput-object v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    const/16 v3, 0xe

    new-array v3, v3, [B

    iput-object v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->sn:[B

    const/16 v3, 0x9

    new-array v3, v3, [B

    iput-object v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->cover_id:[B

    const/4 v3, 0x2

    new-array v3, v3, [B

    iput-object v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->vendorInfo:[B

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->valid:Z

    const-string v4, "0"

    const-string v5, "1"

    const-string v6, "2"

    const-string v7, "3"

    const-string v8, "4"

    const-string v9, "5"

    const-string v10, "6"

    const-string v11, "7"

    const-string v12, "8"

    const-string v13, "9"

    const-string v14, "A"

    const-string v15, "B"

    const-string v16, "C"

    const-string v17, "D"

    const-string v18, "E"

    const-string v19, "F"

    const-string v20, "G"

    const-string v21, "H"

    const-string v22, "J"

    const-string v23, "K"

    const-string v24, "L"

    const-string v25, "M"

    const-string v26, "N"

    const-string v27, "P"

    const-string v28, "Q"

    const-string v29, "R"

    const-string v30, "S"

    const-string v31, "T"

    const-string v32, "V"

    const-string v33, "W"

    const-string v34, "X"

    const-string v35, "Y"

    const-string v36, "Z"

    const-string v37, "I"

    const-string v38, "O"

    const-string v39, "U"

    filled-new-array/range {v4 .. v39}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->HexDecimalTable:[Ljava/lang/String;

    if-eqz v1, :cond_82

    array-length v3, v1

    if-ne v3, v2, :cond_82

    invoke-virtual/range {p1 .. p1}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    invoke-direct/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->setId()V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->valid:Z

    :cond_82
    return-void
.end method

.method private convertHexStringTo33Hexdecimal(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    if-eqz p1, :cond_49

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_49

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_44

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    :try_start_1d
    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_2b

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    :cond_2b
    if-ltz v3, :cond_3a

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->HexDecimalTable:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_3a

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->HexDecimalTable:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    :cond_3a
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_3f} :catch_40

    :goto_3f
    goto :goto_41

    :catch_40
    move-exception v3

    :goto_41
    nop

    move v1, v2

    goto :goto_f

    :cond_44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_49
    :goto_49
    const/4 v0, 0x0

    return-object v0
.end method

.method private setId()V
    .registers 6

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->sn:[B

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->cover_id:[B

    const/16 v4, 0x9

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->sn:[B

    invoke-virtual {p0, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->convertHexStringTo33Hexdecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->serial:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->cover_id:[B

    invoke-virtual {p0, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->convertHexStringTo33Hexdecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->id:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->year:I

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->month:I

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->model:I

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    const/16 v1, 0xf

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->smapp:I

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    const/16 v1, 0x10

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->color:I

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    const/16 v1, 0x11

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    const/16 v1, 0x12

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->idVersion:I

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->vendorInfo:[B

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    const/16 v2, 0x13

    aget-byte v1, v1, v2

    aput-byte v1, v0, v3

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->vendorInfo:[B

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    const/16 v2, 0x14

    aget-byte v1, v1, v2

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    const/16 v1, 0x15

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->url:I

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    const/16 v1, 0x16

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->reserved:B

    return-void
.end method


# virtual methods
.method public byteArrayToString([B)Ljava/lang/String;
    .registers 8

    if-eqz p1, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    array-length v3, p1

    if-ge v2, v3, :cond_23

    const-string v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p1, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_28
    const-string/jumbo v0, "null"

    return-object v0
.end method

.method public getColor()I
    .registers 2

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->color:I

    return v0
.end method

.method public getCoverId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getId()[B
    .registers 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    return-object v0
.end method

.method public getIdVersion()I
    .registers 2

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->idVersion:I

    return v0
.end method

.method public getModel()I
    .registers 2

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->model:I

    return v0
.end method

.method public getMonth()I
    .registers 2

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->month:I

    return v0
.end method

.method public getReserved()B
    .registers 2

    iget-byte v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->reserved:B

    return v0
.end method

.method public getSmapp()I
    .registers 2

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->smapp:I

    return v0
.end method

.method public getSn()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->serial:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    return v0
.end method

.method public getUrl()I
    .registers 2

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->url:I

    return v0
.end method

.method public getVendorInfo()[B
    .registers 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->vendorInfo:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getYear()I
    .registers 2

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->year:I

    return v0
.end method

.method public isValid()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->valid:Z

    return v0
.end method
