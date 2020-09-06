.class public Lcom/samsung/accessory/manager/authentication/msg/Message;
.super Ljava/lang/Object;
.source "Message.java"


# instance fields
.field private final INF_SIZE:I

.field private final RES_ATQS:I

.field private apdu:[B

.field private data:[B

.field private inf:[B


# direct methods
.method public constructor <init>(BBBBB)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->INF_SIZE:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->RES_ATQS:I

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    invoke-direct/range {p0 .. p5}, Lcom/samsung/accessory/manager/authentication/msg/Message;->setInf(BBBBB)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/msg/Message;->setApdu()V

    return-void
.end method

.method public constructor <init>(BBBBB[B)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->INF_SIZE:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->RES_ATQS:I

    array-length v1, p6

    add-int/2addr v1, v0

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    invoke-direct/range {p0 .. p5}, Lcom/samsung/accessory/manager/authentication/msg/Message;->setInf(BBBBB)V

    invoke-virtual {p6}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/msg/Message;->setApdu()V

    return-void
.end method

.method public constructor <init>(I[B)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->INF_SIZE:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->RES_ATQS:I

    array-length v1, p2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/msg/Message;->parseMessage(I)V

    return-void
.end method

.method private parseMessage(I)V
    .registers 7

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_17

    add-int/lit8 v2, v0, -0x2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    add-int/lit8 v4, v0, -0x2

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_26

    :cond_17
    add-int/lit8 v2, v0, -0x3

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    add-int/lit8 v4, v0, -0x3

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    :goto_26
    return-void
.end method

.method private setApdu()V
    .registers 6

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    array-length v2, v2

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    array-length v4, v4

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_1c
    return-void
.end method

.method private setInf(BBBBB)V
    .registers 8

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    const/4 v1, 0x1

    aput-byte p2, v0, v1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    const/4 v1, 0x2

    aput-byte p3, v0, v1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    const/4 v1, 0x3

    aput-byte p4, v0, v1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    const/4 v1, 0x4

    aput-byte p5, v0, v1

    return-void
.end method


# virtual methods
.method public getApdu()[B
    .registers 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getData()[B
    .registers 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getInf(I)B
    .registers 3

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    aget-byte v0, v0, p1

    return v0
.end method
