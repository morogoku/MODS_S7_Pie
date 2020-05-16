.class public Lcom/android/server/knox/ddar/ta/TACommandResponse;
.super Ljava/lang/Object;
.source "TACommandResponse.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TACommandResponse"


# instance fields
.field public mErrorMsg:Ljava/lang/String;

.field public mResponse:[B

.field public mResponseCode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/knox/ddar/ta/TACommandResponse;->mResponseCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/knox/ddar/ta/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/knox/ddar/ta/TACommandResponse;->mResponse:[B

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/knox/ddar/ta/TACommandResponse;->mResponseCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/knox/ddar/ta/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/knox/ddar/ta/TACommandResponse;->mResponse:[B

    iput p1, p0, Lcom/android/server/knox/ddar/ta/TACommandResponse;->mResponseCode:I

    iput-object p2, p0, Lcom/android/server/knox/ddar/ta/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/knox/ddar/ta/TACommandResponse;->mResponse:[B

    return-void
.end method


# virtual methods
.method public dump()V
    .registers 7

    const-string v0, "TACommandResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/knox/ddar/ta/TACommandResponse;->mResponse:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/knox/ddar/ta/TACommandResponse;->mResponse:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, v2

    :goto_29
    iget-object v3, p0, Lcom/android/server/knox/ddar/ta/TACommandResponse;->mResponse:[B

    array-length v3, v3

    if-ge v1, v3, :cond_5c

    if-lez v1, :cond_43

    iget-object v3, p0, Lcom/android/server/knox/ddar/ta/TACommandResponse;->mResponse:[B

    aget-byte v3, v3, v1

    if-eqz v3, :cond_43

    iget-object v3, p0, Lcom/android/server/knox/ddar/ta/TACommandResponse;->mResponse:[B

    add-int/lit8 v4, v1, -0x1

    aget-byte v3, v3, v4

    if-nez v3, :cond_43

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_43
    const-string v3, "%02X "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/knox/ddar/ta/TACommandResponse;->mResponse:[B

    aget-byte v5, v5, v1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_5c
    const-string v1, "TACommandResponse"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_69
    new-instance v4, Ljava/io/FileWriter;

    const-string v5, "/mnt/sdcard/respbuf.txt"

    invoke-direct {v4, v5, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    move-object v1, v4

    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v3, v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_7e} :catch_98
    .catchall {:try_start_69 .. :try_end_7e} :catchall_96

    nop

    :try_start_7f
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    goto :goto_87

    :catch_83
    move-exception v2

    goto :goto_8c

    :catch_85
    move-exception v2

    goto :goto_91

    :goto_87
    nop

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_8b} :catch_85
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_8b} :catch_83

    goto :goto_95

    :goto_8c
    nop

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a7

    :goto_91
    nop

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_95
    :goto_95
    goto :goto_a7

    :catchall_96
    move-exception v2

    goto :goto_a8

    :catch_98
    move-exception v2

    :try_start_99
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_96

    if-eqz v3, :cond_a1

    :try_start_9e
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    :cond_a1
    if-eqz v1, :cond_95

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a6} :catch_85
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a6} :catch_83

    goto :goto_95

    :goto_a7
    return-void

    :goto_a8
    nop

    if-eqz v3, :cond_b3

    :try_start_ab
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    goto :goto_b3

    :catch_af
    move-exception v4

    goto :goto_b9

    :catch_b1
    move-exception v4

    goto :goto_be

    :cond_b3
    :goto_b3
    if-eqz v1, :cond_c2

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_b8} :catch_b1
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_b8} :catch_af

    goto :goto_c2

    :goto_b9
    nop

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c2

    :goto_be
    nop

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_c2
    :goto_c2
    throw v2
.end method
