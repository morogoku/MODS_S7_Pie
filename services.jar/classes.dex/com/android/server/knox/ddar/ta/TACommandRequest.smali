.class public Lcom/android/server/knox/ddar/ta/TACommandRequest;
.super Ljava/lang/Object;
.source "TACommandRequest.java"


# static fields
.field public static final HEADER_SIZE:I = 0x64

.field public static final MAX_BUFFER_SIZE:I = 0x500000

.field public static final MAX_DATA_TRANSACTION_SIZE:I = 0xc00

.field public static final PAYLOAD_SIZE:I = 0xb9c

.field private static final TAG:Ljava/lang/String; = "TACommandRequest"


# instance fields
.field public mCommandId:I

.field public mLength:I

.field public mMagicNum:[B

.field public mOffset:I

.field public mRequest:[B

.field public mVersion:I


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mVersion:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mMagicNum:[B

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mLength:I

    iput v2, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mOffset:I

    iput v0, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mCommandId:I

    iput-object v1, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mRequest:[B

    return-void
.end method


# virtual methods
.method public dump()V
    .registers 7

    const-string v0, "TACommandRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mCommandId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v0, "TACommandRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Length = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mRequest:[B

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mRequest:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    :goto_49
    iget-object v3, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mRequest:[B

    array-length v3, v3

    if-ge v1, v3, :cond_71

    const-string v3, "0x%02X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mRequest:[B

    aget-byte v5, v5, v1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mRequest:[B

    array-length v3, v3

    if-eq v1, v3, :cond_6e

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6e
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :cond_71
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TACommandRequest"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_84
    new-instance v4, Ljava/io/FileWriter;

    const-string v5, "/mnt/sdcard/sendbuf.txt"

    invoke-direct {v4, v5, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    move-object v1, v4

    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v3, v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_99} :catch_b3
    .catchall {:try_start_84 .. :try_end_99} :catchall_b1

    nop

    :try_start_9a
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    goto :goto_a2

    :catch_9e
    move-exception v2

    goto :goto_a7

    :catch_a0
    move-exception v2

    goto :goto_ac

    :goto_a2
    nop

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_a6} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_a6} :catch_9e

    goto :goto_b0

    :goto_a7
    nop

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c2

    :goto_ac
    nop

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_b0
    :goto_b0
    goto :goto_c2

    :catchall_b1
    move-exception v2

    goto :goto_c3

    :catch_b3
    move-exception v2

    :try_start_b4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_b1

    if-eqz v3, :cond_bc

    :try_start_b9
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    :cond_bc
    if-eqz v1, :cond_b0

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_c1} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_c1} :catch_9e

    goto :goto_b0

    :goto_c2
    return-void

    :goto_c3
    nop

    if-eqz v3, :cond_ce

    :try_start_c6
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    goto :goto_ce

    :catch_ca
    move-exception v4

    goto :goto_d4

    :catch_cc
    move-exception v4

    goto :goto_d9

    :cond_ce
    :goto_ce
    if-eqz v1, :cond_dd

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_d3} :catch_cc
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_d3} :catch_ca

    goto :goto_dd

    :goto_d4
    nop

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_dd

    :goto_d9
    nop

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_dd
    :goto_dd
    throw v2
.end method

.method public init(I[BI[B)V
    .registers 7

    iput p1, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mVersion:I

    iput-object p2, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mMagicNum:[B

    iput p3, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mCommandId:I

    iput-object p4, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mRequest:[B

    const/4 v0, 0x0

    if-eqz p4, :cond_f

    array-length v1, p4

    iput v1, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mLength:I

    goto :goto_11

    :cond_f
    iput v0, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mLength:I

    :goto_11
    iput v0, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mOffset:I

    return-void
.end method
