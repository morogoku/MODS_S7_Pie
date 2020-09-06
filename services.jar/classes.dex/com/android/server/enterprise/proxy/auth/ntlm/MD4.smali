.class public Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;
.super Ljava/security/MessageDigest;
.source "MD4.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final BLOCK_LENGTH:I = 0x40


# instance fields
.field private X:[I

.field private buffer:[B

.field private context:[I

.field private count:J


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "MD4"

    invoke-direct {p0, v0}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->context:[I

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->buffer:[B

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->engineReset()V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;-><init>()V

    iget-object v0, p1, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->context:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->context:[I

    iget-object v0, p1, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->buffer:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->buffer:[B

    iget-wide v0, p1, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->count:J

    iput-wide v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->count:J

    return-void
.end method

.method private FF(IIIIII)I
    .registers 10

    and-int v0, p2, p3

    not-int v1, p2

    and-int/2addr v1, p4

    or-int/2addr v0, v1

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    shl-int v1, v0, p6

    rsub-int/lit8 v2, p6, 0x20

    ushr-int v2, v0, v2

    or-int/2addr v1, v2

    return v1
.end method

.method private GG(IIIIII)I
    .registers 10

    or-int v0, p3, p4

    and-int/2addr v0, p2

    and-int v1, p3, p4

    or-int/2addr v0, v1

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x5a827999

    add-int/2addr v0, v1

    shl-int v1, v0, p6

    rsub-int/lit8 v2, p6, 0x20

    ushr-int v2, v0, v2

    or-int/2addr v1, v2

    return v1
.end method

.method private HH(IIIIII)I
    .registers 10

    xor-int v0, p2, p3

    xor-int/2addr v0, p4

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x6ed9eba1

    add-int/2addr v0, v1

    shl-int v1, v0, p6

    rsub-int/lit8 v2, p6, 0x20

    ushr-int v2, v0, v2

    or-int/2addr v1, v2

    return v1
.end method

.method private transform([BI)V
    .registers 30

    move-object/from16 v7, p0

    const/4 v8, 0x0

    move/from16 v9, p2

    move v0, v8

    :goto_6
    const/16 v1, 0x10

    const/16 v10, 0x8

    if-ge v0, v1, :cond_33

    iget-object v1, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    add-int/lit8 v2, v9, 0x1

    aget-byte v3, p1, v9

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v10

    or-int/2addr v2, v3

    add-int/lit8 v3, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    add-int/lit8 v9, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_33
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->context:[I

    aget v11, v0, v8

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->context:[I

    const/4 v12, 0x1

    aget v13, v0, v12

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->context:[I

    const/4 v14, 0x2

    aget v15, v0, v14

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->context:[I

    const/16 v16, 0x3

    aget v17, v0, v16

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v8

    const/4 v6, 0x3

    move-object v0, v7

    move v1, v11

    move v2, v13

    move v3, v15

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->FF(IIIIII)I

    move-result v11

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v12

    const/4 v6, 0x7

    move-object v0, v7

    move/from16 v1, v17

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->FF(IIIIII)I

    move-result v17

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v14

    const/16 v6, 0xb

    move-object v0, v7

    move v1, v15

    move/from16 v2, v17

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->FF(IIIIII)I

    move-result v15

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v16

    const/16 v6, 0x13

    move-object v0, v7

    move v1, v13

    move v2, v15

    move/from16 v3, v17

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->FF(IIIIII)I

    move-result v13

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    const/16 v18, 0x4

    aget v5, v0, v18

    const/4 v6, 0x3

    move-object v0, v7

    move v1, v11

    move v2, v13

    move v3, v15

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->FF(IIIIII)I

    move-result v11

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    const/16 v19, 0x5

    aget v5, v0, v19

    const/4 v6, 0x7

    move-object v0, v7

    move/from16 v1, v17

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->FF(IIIIII)I

    move-result v17

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    const/16 v20, 0x6

    aget v5, v0, v20

    const/16 v6, 0xb

    move-object v0, v7

    move v1, v15

    move/from16 v2, v17

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->FF(IIIIII)I

    move-result v15

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    const/16 v21, 0x7

    aget v5, v0, v21

    const/16 v6, 0x13

    move-object v0, v7

    move v1, v13

    move v2, v15

    move/from16 v3, v17

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->FF(IIIIII)I

    move-result v13

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v10

    const/4 v6, 0x3

    move-object v0, v7

    move v1, v11

    move v2, v13

    move v3, v15

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->FF(IIIIII)I

    move-result v11

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    const/16 v22, 0x9

    aget v5, v0, v22

    const/4 v6, 0x7

    move-object v0, v7

    move/from16 v1, v17

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->FF(IIIIII)I

    move-result v17

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    const/16 v23, 0xa

    aget v5, v0, v23

    const/16 v6, 0xb

    move-object v0, v7

    move v1, v15

    move/from16 v2, v17

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->FF(IIIIII)I

    move-result v15

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    const/16 v24, 0xb

    aget v5, v0, v24

    const/16 v6, 0x13

    move-object v0, v7

    move v1, v13

    move v2, v15

    move/from16 v3, v17

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->FF(IIIIII)I

    move-result v13

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    const/16 v25, 0xc

    aget v5, v0, v25

    const/4 v6, 0x3

    move-object v0, v7

    move v1, v11

    move v2, v13

    move v3, v15

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->FF(IIIIII)I

    move-result v11

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    const/16 v26, 0xd

    aget v5, v0, v26

    const/4 v6, 0x7

    move-object v0, v7

    move/from16 v1, v17

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->FF(IIIIII)I

    move-result v17

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    const/16 v1, 0xe

    aget v5, v0, v1

    const/16 v6, 0xb

    move-object v0, v7

    move v1, v15

    move/from16 v2, v17

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->FF(IIIIII)I

    move-result v15

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    const/16 v1, 0xf

    aget v5, v0, v1

    const/16 v6, 0x13

    move-object v0, v7

    move v1, v13

    move v2, v15

    move/from16 v3, v17

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->FF(IIIIII)I

    move-result v13

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v8

    const/4 v6, 0x3

    move-object v0, v7

    move v1, v11

    move v2, v13

    move v3, v15

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->GG(IIIIII)I

    move-result v11

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v18

    const/4 v6, 0x5

    move-object v0, v7

    move/from16 v1, v17

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->GG(IIIIII)I

    move-result v17

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v10

    const/16 v6, 0x9

    move-object v0, v7

    move v1, v15

    move/from16 v2, v17

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->GG(IIIIII)I

    move-result v15

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v25

    const/16 v6, 0xd

    move-object v0, v7

    move v1, v13

    move v2, v15

    move/from16 v3, v17

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->GG(IIIIII)I

    move-result v13

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v12

    const/4 v6, 0x3

    move-object v0, v7

    move v1, v11

    move v2, v13

    move v3, v15

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->GG(IIIIII)I

    move-result v11

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v19

    const/4 v6, 0x5

    move-object v0, v7

    move/from16 v1, v17

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->GG(IIIIII)I

    move-result v17

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v22

    const/16 v6, 0x9

    move-object v0, v7

    move v1, v15

    move/from16 v2, v17

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->GG(IIIIII)I

    move-result v15

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v26

    const/16 v6, 0xd

    move-object v0, v7

    move v1, v13

    move v2, v15

    move/from16 v3, v17

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->GG(IIIIII)I

    move-result v13

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v14

    const/4 v6, 0x3

    move-object v0, v7

    move v1, v11

    move v2, v13

    move v3, v15

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->GG(IIIIII)I

    move-result v11

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v20

    const/4 v6, 0x5

    move-object v0, v7

    move/from16 v1, v17

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->GG(IIIIII)I

    move-result v17

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v23

    const/16 v6, 0x9

    move-object v0, v7

    move v1, v15

    move/from16 v2, v17

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->GG(IIIIII)I

    move-result v15

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    const/16 v1, 0xe

    aget v5, v0, v1

    const/16 v6, 0xd

    move-object v0, v7

    move v1, v13

    move v2, v15

    move/from16 v3, v17

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->GG(IIIIII)I

    move-result v13

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v16

    const/4 v6, 0x3

    move-object v0, v7

    move v1, v11

    move v2, v13

    move v3, v15

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->GG(IIIIII)I

    move-result v11

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v21

    const/4 v6, 0x5

    move-object v0, v7

    move/from16 v1, v17

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->GG(IIIIII)I

    move-result v17

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v24

    const/16 v6, 0x9

    move-object v0, v7

    move v1, v15

    move/from16 v2, v17

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->GG(IIIIII)I

    move-result v15

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    const/16 v1, 0xf

    aget v5, v0, v1

    const/16 v6, 0xd

    move-object v0, v7

    move v1, v13

    move v2, v15

    move/from16 v3, v17

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->GG(IIIIII)I

    move-result v13

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v8

    const/4 v6, 0x3

    move-object v0, v7

    move v1, v11

    move v2, v13

    move v3, v15

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->HH(IIIIII)I

    move-result v11

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v10

    const/16 v6, 0x9

    move-object v0, v7

    move/from16 v1, v17

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->HH(IIIIII)I

    move-result v10

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v18

    const/16 v6, 0xb

    move-object v0, v7

    move v1, v15

    move v2, v10

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->HH(IIIIII)I

    move-result v15

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v25

    const/16 v6, 0xf

    move-object v0, v7

    move v1, v13

    move v2, v15

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->HH(IIIIII)I

    move-result v13

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v14

    const/4 v6, 0x3

    move-object v0, v7

    move v1, v11

    move v2, v13

    move v3, v15

    move v4, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->HH(IIIIII)I

    move-result v11

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v23

    const/16 v6, 0x9

    move-object v0, v7

    move v1, v10

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->HH(IIIIII)I

    move-result v10

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v20

    const/16 v6, 0xb

    move-object v0, v7

    move v1, v15

    move v2, v10

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->HH(IIIIII)I

    move-result v15

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    const/16 v1, 0xe

    aget v5, v0, v1

    const/16 v6, 0xf

    move-object v0, v7

    move v1, v13

    move v2, v15

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->HH(IIIIII)I

    move-result v13

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v12

    const/4 v6, 0x3

    move-object v0, v7

    move v1, v11

    move v2, v13

    move v3, v15

    move v4, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->HH(IIIIII)I

    move-result v11

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v22

    const/16 v6, 0x9

    move-object v0, v7

    move v1, v10

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->HH(IIIIII)I

    move-result v10

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v19

    const/16 v6, 0xb

    move-object v0, v7

    move v1, v15

    move v2, v10

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->HH(IIIIII)I

    move-result v15

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v26

    const/16 v6, 0xf

    move-object v0, v7

    move v1, v13

    move v2, v15

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->HH(IIIIII)I

    move-result v13

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v16

    const/4 v6, 0x3

    move-object v0, v7

    move v1, v11

    move v2, v13

    move v3, v15

    move v4, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->HH(IIIIII)I

    move-result v11

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v24

    const/16 v6, 0x9

    move-object v0, v7

    move v1, v10

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->HH(IIIIII)I

    move-result v10

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v21

    const/16 v6, 0xb

    move-object v0, v7

    move v1, v15

    move v2, v10

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->HH(IIIIII)I

    move-result v15

    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    const/16 v1, 0xf

    aget v5, v0, v1

    const/16 v6, 0xf

    move-object v0, v7

    move v1, v13

    move v2, v15

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->HH(IIIIII)I

    move-result v0

    iget-object v1, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->context:[I

    aget v2, v1, v8

    add-int/2addr v2, v11

    aput v2, v1, v8

    iget-object v1, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->context:[I

    aget v2, v1, v12

    add-int/2addr v2, v0

    aput v2, v1, v12

    iget-object v1, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->context:[I

    aget v2, v1, v14

    add-int/2addr v2, v15

    aput v2, v1, v14

    iget-object v1, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->context:[I

    aget v2, v1, v16

    add-int/2addr v2, v10

    aput v2, v1, v16

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;-><init>(Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;)V

    return-object v0
.end method

.method public engineDigest()[B
    .registers 13

    iget-wide v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->count:J

    const-wide/16 v2, 0x40

    rem-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x38

    if-ge v0, v1, :cond_c

    sub-int/2addr v1, v0

    goto :goto_e

    :cond_c
    rsub-int/lit8 v1, v0, 0x78

    :goto_e
    add-int/lit8 v2, v1, 0x8

    new-array v2, v2, [B

    const/16 v3, -0x80

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    move v3, v4

    :goto_18
    const/16 v5, 0x8

    if-ge v3, v5, :cond_2c

    add-int v6, v1, v3

    iget-wide v7, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->count:J

    const-wide/16 v9, 0x8

    mul-long/2addr v7, v9

    mul-int/2addr v5, v3

    ushr-long/2addr v7, v5

    long-to-int v5, v7

    int-to-byte v5, v5

    aput-byte v5, v2, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_2c
    array-length v3, v2

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->engineUpdate([BII)V

    const/16 v3, 0x10

    new-array v3, v3, [B

    move v6, v4

    :goto_35
    const/4 v7, 0x4

    if-ge v6, v7, :cond_4e

    move v8, v4

    :goto_39
    if-ge v8, v7, :cond_4b

    mul-int/lit8 v9, v6, 0x4

    add-int/2addr v9, v8

    iget-object v10, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->context:[I

    aget v10, v10, v6

    mul-int v11, v5, v8

    ushr-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v3, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_39

    :cond_4b
    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    :cond_4e
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->engineReset()V

    return-object v3
.end method

.method public engineReset()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->context:[I

    const/4 v1, 0x0

    const v2, 0x67452301

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->context:[I

    const/4 v2, 0x1

    const v3, -0x10325477

    aput v3, v0, v2

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->context:[I

    const/4 v2, 0x2

    const v3, -0x67452302

    aput v3, v0, v2

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->context:[I

    const/4 v2, 0x3

    const v3, 0x10325476

    aput v3, v0, v2

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->count:J

    move v0, v1

    :goto_25
    const/16 v2, 0x40

    if-ge v0, v2, :cond_30

    iget-object v2, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->buffer:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_30
    return-void
.end method

.method public engineUpdate(B)V
    .registers 7

    iget-wide v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->count:J

    const-wide/16 v2, 0x40

    rem-long/2addr v0, v2

    long-to-int v0, v0

    iget-wide v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->count:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->count:J

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->buffer:[B

    aput-byte p1, v1, v0

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->buffer:[B

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->transform([BI)V

    :cond_1b
    return-void
.end method

.method public engineUpdate([BII)V
    .registers 10

    if-ltz p2, :cond_45

    if-ltz p3, :cond_45

    int-to-long v0, p2

    int-to-long v2, p3

    add-long/2addr v0, v2

    array-length v2, p1

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_45

    iget-wide v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->count:J

    const-wide/16 v2, 0x40

    rem-long/2addr v0, v2

    long-to-int v0, v0

    iget-wide v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->count:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->count:J

    rsub-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-lt p3, v1, :cond_39

    iget-object v3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->buffer:[B

    invoke-static {p1, p2, v3, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->buffer:[B

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->transform([BI)V

    move v2, v1

    :goto_2a
    add-int/lit8 v3, v2, 0x40

    add-int/lit8 v3, v3, -0x1

    if-ge v3, p3, :cond_38

    add-int v3, p2, v2

    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->transform([BI)V

    add-int/lit8 v2, v2, 0x40

    goto :goto_2a

    :cond_38
    const/4 v0, 0x0

    :cond_39
    if-ge v2, p3, :cond_44

    add-int v3, p2, v2

    iget-object v4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->buffer:[B

    sub-int v5, p3, v2

    invoke-static {p1, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_44
    return-void

    :cond_45
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method
