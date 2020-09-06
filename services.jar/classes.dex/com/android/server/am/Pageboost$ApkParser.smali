.class final Lcom/android/server/am/Pageboost$ApkParser;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ApkParser"
.end annotation


# static fields
.field private static final LOCAL_FILE_SIGNATURE:I = 0x4034b50

.field private static final PAGE_SIZE:I = 0x1000

.field private static final UINT16_MAX_VALUE:I = 0xffff

.field private static final ZIP_CENTRAL_DIR_COMPRESSED_SIZE_OFFSET:I = 0x14

.field private static final ZIP_CENTRAL_DIR_EXTRA_FIELD_LENGTH_OFFSET:I = 0x1e

.field private static final ZIP_CENTRAL_DIR_FILE_COMMENT_LENGTH_OFFSET:I = 0x20

.field private static final ZIP_CENTRAL_DIR_FILE_NAME_LENGTH_OFFSET:I = 0x1c

.field private static final ZIP_CENTRAL_DIR_FILE_NAME_OFFSET:I = 0x2e

.field private static final ZIP_CENTRAL_DIR_OFFSET_OF_LOCAL_FILE_OFFSET:I = 0x2a

.field private static final ZIP_CENTRAL_DIR_SIGNATURE:I = 0x2014b50

.field private static final ZIP_CENTRAL_DIR_SIGNATURE_OFFSET:I = 0x0

.field private static final ZIP_CENTRAL_DIR_SIZE:I = 0x2e

.field private static final ZIP_CENTRAL_DIR_UNCOMPRESSED_SIZE_OFFSET:I = 0x18

.field private static final ZIP_EOCD_CENTRAL_DIR_OFFSET_FIELD_OFFSET:I = 0x10

.field private static final ZIP_EOCD_CENTRAL_DIR_SIZE_FIELD_OFFSET:I = 0xc

.field private static final ZIP_EOCD_COMMENT_LENGTH_FIELD_OFFSET:I = 0x14

.field private static final ZIP_EOCD_REC_MIN_SIZE:I = 0x16

.field private static final ZIP_EOCD_REC_SIG:I = 0x6054b50

.field private static final dexName:Ljava/lang/String; = ".dex"

.field private static final libName:Ljava/lang/String; = "lib/"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCentralDirectorySignature(Ljava/nio/ByteBuffer;)Z
    .registers 5

    invoke-static {p0}, Lcom/android/server/am/Pageboost$ApkParser;->getZipCentralDirectorySignature(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    const-wide/32 v2, 0x2014b50    # 1.6619997E-316

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    return v0

    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method private static checkLocalFileSignature(Ljava/io/RandomAccessFile;)Z
    .registers 7

    const/4 v0, 0x4

    const/4 v1, 0x0

    :try_start_2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    invoke-static {v0, v1}, Lcom/android/server/am/Pageboost$ApkParser;->getUnsignedInt32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1e} :catch_28

    const-wide/32 v4, 0x4034b50

    cmp-long v2, v2, v4

    if-eqz v2, :cond_26

    return v1

    :cond_26
    const/4 v1, 0x1

    return v1

    :catch_28
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method private static findZipEndOfCentralDirectoryRecord(Ljava/nio/ByteBuffer;)I
    .registers 9

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x16

    if-ge v0, v2, :cond_a

    return v1

    :cond_a
    add-int/lit8 v2, v0, -0x16

    const v3, 0xffff

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v3, v0, -0x16

    const/4 v4, 0x0

    :goto_16
    if-gt v4, v2, :cond_2f

    sub-int v5, v3, v4

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    const v7, 0x6054b50

    if-ne v6, v7, :cond_2c

    add-int/lit8 v6, v5, 0x14

    invoke-static {p0, v6}, Lcom/android/server/am/Pageboost$ApkParser;->getUnsignedInt16(Ljava/nio/ByteBuffer;I)I

    move-result v6

    if-ne v6, v4, :cond_2c

    return v5

    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_2f
    return v1
.end method

.method static findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x16

    cmp-long v2, v0, v2

    if-gez v2, :cond_c

    const/4 v2, 0x0

    return-object v2

    :cond_c
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/server/am/Pageboost$ApkParser;->findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;I)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_14

    return-object v2

    :cond_14
    const v3, 0xffff

    invoke-static {p0, v3}, Lcom/android/server/am/Pageboost$ApkParser;->findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;I)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method

.method private static findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;I)Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_5f

    const v0, 0xffff

    if-gt p1, v0, :cond_5f

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x16

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-gez v4, :cond_13

    return-object v5

    :cond_13
    int-to-long v6, p1

    sub-long v2, v0, v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p1, v2

    const/16 v2, 0x16

    add-int/2addr v2, p1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    int-to-long v3, v3

    sub-long v3, v0, v3

    invoke-virtual {p0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Ljava/io/RandomAccessFile;->readFully([BII)V

    invoke-static {v2}, Lcom/android/server/am/Pageboost$ApkParser;->findZipEndOfCentralDirectoryRecord(Ljava/nio/ByteBuffer;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_48

    return-object v5

    :cond_48
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    int-to-long v7, v6

    add-long/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    return-object v7

    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maxCommentSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getApkInfo(Ljava/lang/String;)Landroid/util/Pair;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_2
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apk : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "r"

    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    invoke-static {v1}, Lcom/android/server/am/Pageboost$ApkParser;->getEOCD(Ljava/io/RandomAccessFile;)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_2d

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-object v0

    :cond_2d
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/nio/ByteBuffer;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/android/server/am/Pageboost$ApkParser;->getZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    invoke-static {v3}, Lcom/android/server/am/Pageboost$ApkParser;->getZipEocdCentralDirectorySizeBytes(Ljava/nio/ByteBuffer;)J

    move-result-wide v8

    invoke-static {v1, v6, v7, v8, v9}, Lcom/android/server/am/Pageboost$ApkParser;->parseCentralDirectory(Ljava/io/RandomAccessFile;JJ)Landroid/util/Pair;

    move-result-object v10

    if-nez v10, :cond_50

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-object v0

    :cond_50
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "size : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " info : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7a} :catch_7b

    return-object v10

    :catch_7b
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v1, :cond_8a

    :try_start_81
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_84} :catch_85

    goto :goto_8a

    :catch_85
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8b

    :cond_8a
    :goto_8a
    nop

    :goto_8b
    return-object v0
.end method

.method private static getEOCD(Ljava/io/RandomAccessFile;)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/android/server/am/Pageboost$ApkParser;->checkLocalFileSignature(Ljava/io/RandomAccessFile;)Z

    move-result v1

    if-nez v1, :cond_8

    return-object v0

    :cond_8
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x16

    cmp-long v3, v1, v3

    if-gez v3, :cond_13

    return-object v0

    :cond_13
    invoke-static {p0}, Lcom/android/server/am/Pageboost$ApkParser;->findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;)Landroid/util/Pair;

    move-result-object v3
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_19

    move-object v0, v3

    return-object v0

    :catch_19
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private static getUnsignedInt16(Ljava/nio/ByteBuffer;I)I
    .registers 4

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private static getUnsignedInt32(Ljava/nio/ByteBuffer;I)J
    .registers 6

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static getZipCentralDirectoryCompressedSize(Ljava/nio/ByteBuffer;)J
    .registers 3

    nop

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    invoke-static {p0, v0}, Lcom/android/server/am/Pageboost$ApkParser;->getUnsignedInt32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getZipCentralDirectoryExtraFieldLength(Ljava/nio/ByteBuffer;)J
    .registers 3

    nop

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x1e

    invoke-static {p0, v0}, Lcom/android/server/am/Pageboost$ApkParser;->getUnsignedInt16(Ljava/nio/ByteBuffer;I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private static getZipCentralDirectoryFileCommentLength(Ljava/nio/ByteBuffer;)J
    .registers 3

    nop

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    invoke-static {p0, v0}, Lcom/android/server/am/Pageboost$ApkParser;->getUnsignedInt16(Ljava/nio/ByteBuffer;I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private static getZipCentralDirectoryFileName(Ljava/nio/ByteBuffer;J)Ljava/lang/String;
    .registers 7

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x2e

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    long-to-int v2, p1

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    return-object v2

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method private static getZipCentralDirectoryFileNameLength(Ljava/nio/ByteBuffer;)J
    .registers 3

    nop

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x1c

    invoke-static {p0, v0}, Lcom/android/server/am/Pageboost$ApkParser;->getUnsignedInt16(Ljava/nio/ByteBuffer;I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private static getZipCentralDirectoryOffsetOfLocalFile(Ljava/nio/ByteBuffer;)J
    .registers 3

    nop

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x2a

    invoke-static {p0, v0}, Lcom/android/server/am/Pageboost$ApkParser;->getUnsignedInt32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getZipCentralDirectorySignature(Ljava/nio/ByteBuffer;)J
    .registers 3

    nop

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/am/Pageboost$ApkParser;->getUnsignedInt32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getZipCentralDirectoryUncompressedSize(Ljava/nio/ByteBuffer;)J
    .registers 3

    nop

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x18

    invoke-static {p0, v0}, Lcom/android/server/am/Pageboost$ApkParser;->getUnsignedInt32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;)J
    .registers 3

    nop

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    invoke-static {p0, v0}, Lcom/android/server/am/Pageboost$ApkParser;->getUnsignedInt32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getZipEocdCentralDirectorySizeBytes(Ljava/nio/ByteBuffer;)J
    .registers 3

    nop

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    invoke-static {p0, v0}, Lcom/android/server/am/Pageboost$ApkParser;->getUnsignedInt32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static isCompressedDexOrLib(Ljava/lang/String;Z)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    return v0

    :cond_4
    const-string/jumbo v1, "lib/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_f

    return v2

    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v3, ".dex"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1c

    return v0

    :cond_1c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v3, ".dex"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, ".dex"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    return v2

    :cond_34
    return v0
.end method

.method private static parseCentralDirectory(Ljava/io/RandomAccessFile;JJ)Landroid/util/Pair;
    .registers 47
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "JJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    add-long v6, p1, p3

    cmp-long v6, v4, v6

    const/4 v7, 0x0

    if-gez v6, :cond_c

    return-object v7

    :cond_c
    invoke-static/range {p0 .. p4}, Lcom/android/server/am/Pageboost$ApkParser;->readCentralDirectory(Ljava/io/RandomAccessFile;JJ)Ljava/nio/ByteBuffer;

    move-result-object v6

    if-nez v6, :cond_13

    return-object v7

    :cond_13
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, -0x1

    const-wide/16 v14, -0x1

    const/16 v16, 0x0

    const-string v17, ""

    :goto_20
    move-object/from16 v18, v17

    int-to-long v0, v7

    cmp-long v0, v0, p3

    const-wide/16 v19, 0x1

    const-wide/16 v21, 0x1000

    const-wide/16 v23, -0x1000

    const-wide/16 v25, -0x1

    if-gez v0, :cond_145

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v6}, Lcom/android/server/am/Pageboost$ApkParser;->checkCentralDirectorySignature(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-nez v0, :cond_52

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1,0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    :cond_52
    invoke-static {v6}, Lcom/android/server/am/Pageboost$ApkParser;->getZipCentralDirectoryCompressedSize(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-static {v6}, Lcom/android/server/am/Pageboost$ApkParser;->getZipCentralDirectoryUncompressedSize(Ljava/nio/ByteBuffer;)J

    move-result-wide v27

    invoke-static {v6}, Lcom/android/server/am/Pageboost$ApkParser;->getZipCentralDirectoryFileNameLength(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-static {v6}, Lcom/android/server/am/Pageboost$ApkParser;->getZipCentralDirectoryExtraFieldLength(Ljava/nio/ByteBuffer;)J

    move-result-wide v29

    invoke-static {v6}, Lcom/android/server/am/Pageboost$ApkParser;->getZipCentralDirectoryFileCommentLength(Ljava/nio/ByteBuffer;)J

    move-result-wide v31

    invoke-static {v6}, Lcom/android/server/am/Pageboost$ApkParser;->getZipCentralDirectoryOffsetOfLocalFile(Ljava/nio/ByteBuffer;)J

    move-result-wide v33

    move-wide/from16 v35, v4

    invoke-static {v6, v2, v3}, Lcom/android/server/am/Pageboost$ApkParser;->getZipCentralDirectoryFileName(Ljava/nio/ByteBuffer;J)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9c

    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v37, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v38, v2

    const-string v2, "cur : "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " can not find fileName"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move-object/from16 v6, v18

    goto/16 :goto_14b

    :cond_9c
    move-wide/from16 v38, v2

    move-object/from16 v37, v6

    const-wide/16 v2, 0x0

    cmp-long v5, v33, v2

    if-nez v5, :cond_a9

    const/4 v5, 0x1

    move/from16 v16, v5

    :cond_a9
    if-eqz v16, :cond_12d

    cmp-long v5, v0, v27

    if-nez v5, :cond_b1

    const/4 v5, 0x1

    goto :goto_b2

    :cond_b1
    const/4 v5, 0x0

    :goto_b2
    invoke-static {v4, v5}, Lcom/android/server/am/Pageboost$ApkParser;->isCompressedDexOrLib(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_d6

    cmp-long v5, v12, v25

    if-eqz v5, :cond_d1

    cmp-long v5, v14, v25

    if-nez v5, :cond_d1

    rem-long v5, v33, v21

    cmp-long v2, v5, v2

    if-eqz v2, :cond_ce

    add-long v21, v33, v21

    and-long v2, v21, v23

    :goto_ca
    move-wide/from16 v40, v0

    move-wide v14, v2

    goto :goto_df

    :cond_ce
    move-wide/from16 v2, v33

    goto :goto_ca

    :cond_d1
    move-wide/from16 v40, v0

    move-object/from16 v6, v18

    goto :goto_131

    :cond_d6
    cmp-long v2, v12, v25

    if-nez v2, :cond_e2

    and-long v2, v33, v23

    move-wide/from16 v40, v0

    move-wide v12, v2

    :goto_df
    move-object/from16 v17, v18

    goto :goto_133

    :cond_e2
    cmp-long v2, v14, v25

    if-eqz v2, :cond_12d

    and-long v2, v33, v23

    cmp-long v5, v12, v2

    if-gtz v5, :cond_f6

    cmp-long v5, v2, v14

    if-gtz v5, :cond_f6

    const-wide/16 v5, -0x1

    move-wide/from16 v40, v0

    move-wide v14, v5

    goto :goto_df

    :cond_f6
    sub-long v5, v14, v12

    add-long/2addr v8, v5

    add-long v10, v10, v19

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v18

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v40, v0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v0, v14, v12

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-wide v5, v2

    const-wide/16 v1, -0x1

    move-object/from16 v17, v0

    move-wide v14, v1

    move-wide v12, v5

    goto :goto_133

    :cond_12d
    move-wide/from16 v40, v0

    move-object/from16 v6, v18

    :goto_131
    move-object/from16 v17, v6

    :goto_133
    int-to-long v0, v7

    const-wide/16 v2, 0x2e

    add-long v2, v2, v38

    add-long v2, v2, v29

    add-long v2, v2, v31

    add-long/2addr v0, v2

    long-to-int v7, v0

    nop

    move-wide/from16 v4, v35

    move-object/from16 v6, v37

    goto/16 :goto_20

    :cond_145
    move-wide/from16 v35, v4

    move-object/from16 v37, v6

    move-object/from16 v6, v18

    :goto_14b
    cmp-long v0, v12, v25

    if-eqz v0, :cond_184

    cmp-long v0, v14, v25

    if-eqz v0, :cond_184

    sub-long v0, v14, v12

    add-long/2addr v8, v0

    add-long v10, v10, v19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v1, v14, v12

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-wide/16 v12, -0x1

    const-wide/16 v14, -0x1

    move-object/from16 v6, v18

    :cond_184
    cmp-long v0, v12, v25

    if-nez v0, :cond_18a

    and-long v12, p1, v23

    :cond_18a
    add-long v4, v35, v21

    and-long v2, v4, v23

    sub-long v4, v2, v12

    add-long/2addr v8, v4

    add-long v10, v10, v19

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v14, v2, v12

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5
.end method

.method private static readCentralDirectory(Ljava/io/RandomAccessFile;JJ)Ljava/nio/ByteBuffer;
    .registers 9

    long-to-int v0, p3

    :try_start_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1d

    return-object v0

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method
