.class final Lcom/android/server/am/Pageboost$BigDataProxy;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BigDataProxy"
.end annotation


# static fields
.field private static CNT_INFO:I = 0x0

.field private static ENABLED:Z = false

.field private static final FILENAME:Ljava/lang/String; = "/data/misc/pageboost/last_bigdata_string"

.field private static cnt_DLRH:I

.field private static cnt_DMLH:I

.field private static cnt_DPDC:I

.field private static cnt_LRH:I

.field private static cnt_MLH:I

.field private static cnt_TPDC:I

.field private static final lock:Ljava/lang/Object;

.field private static mSemHqmManager:Landroid/os/SemHqmManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/Pageboost$BigDataProxy;->mSemHqmManager:Landroid/os/SemHqmManager;

    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_TPDC:I

    sput v0, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_LRH:I

    sput v0, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_MLH:I

    sput v0, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DPDC:I

    sput v0, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DLRH:I

    sput v0, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DMLH:I

    const/4 v1, 0x6

    sput v1, Lcom/android/server/am/Pageboost$BigDataProxy;->CNT_INFO:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/server/am/Pageboost$BigDataProxy;->lock:Ljava/lang/Object;

    sput-boolean v0, Lcom/android/server/am/Pageboost$BigDataProxy;->ENABLED:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InitBigDataProxy()V
    .registers 7

    sget-object v0, Lcom/android/server/am/Pageboost$BigDataProxy;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    # getter for: Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$3000()Landroid/content/Context;

    move-result-object v1

    const-string v2, "HqmManagerService"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SemHqmManager;

    sput-object v1, Lcom/android/server/am/Pageboost$BigDataProxy;->mSemHqmManager:Landroid/os/SemHqmManager;

    sget-object v1, Lcom/android/server/am/Pageboost$BigDataProxy;->mSemHqmManager:Landroid/os/SemHqmManager;

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    sput-boolean v2, Lcom/android/server/am/Pageboost$BigDataProxy;->ENABLED:Z

    :cond_18
    sget-boolean v1, Lcom/android/server/am/Pageboost$BigDataProxy;->ENABLED:Z

    if-eqz v1, :cond_8c

    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v3, "bigdata init started"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_8e

    :try_start_25
    new-instance v1, Ljava/lang/String;

    const-string v3, "/data/misc/pageboost/last_bigdata_string"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/String;

    invoke-static {v3, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    sget v6, Lcom/android/server/am/Pageboost$BigDataProxy;->CNT_INFO:I

    if-ne v5, v6, :cond_77

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_TPDC:I

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_LRH:I

    const/4 v2, 0x2

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_MLH:I

    const/4 v2, 0x3

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DPDC:I

    const/4 v2, 0x4

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DLRH:I

    const/4 v2, 0x5

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DMLH:I

    goto :goto_81

    :cond_77
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "invalid bigdata file data"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_81} :catch_82
    .catchall {:try_start_25 .. :try_end_81} :catchall_8e

    :goto_81
    goto :goto_8c

    :catch_82
    move-exception v1

    :try_start_83
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Bigdata File is not found.."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8c
    :goto_8c
    monitor-exit v0

    return-void

    :catchall_8e
    move-exception v1

    monitor-exit v0
    :try_end_90
    .catchall {:try_start_83 .. :try_end_90} :catchall_8e

    throw v1
.end method

.method static synthetic access$3600()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/android/server/am/Pageboost$BigDataProxy;->makeString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static keepLastData()V
    .registers 8

    # getter for: Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$3000()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_dc

    sget-boolean v0, Lcom/android/server/am/Pageboost$BigDataProxy;->ENABLED:Z

    if-nez v0, :cond_c

    goto/16 :goto_dc

    :cond_c
    sget-object v0, Lcom/android/server/am/Pageboost$BigDataProxy;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_11
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/misc/pageboost/last_bigdata_string"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v4

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_TPDC:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_LRH:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_MLH:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DPDC:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DLRH:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DMLH:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "write : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v4}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_88} :catch_99
    .catchall {:try_start_11 .. :try_end_88} :catchall_97

    nop

    :try_start_89
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    goto :goto_8f

    :catch_8d
    move-exception v3

    goto :goto_b8

    :goto_8f
    nop

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_96} :catch_8d
    .catchall {:try_start_89 .. :try_end_96} :catchall_c7

    goto :goto_bd

    :catchall_97
    move-exception v3

    goto :goto_c0

    :catch_99
    move-exception v3

    :try_start_9a
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "invalid bigdata file data"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a7
    .catchall {:try_start_9a .. :try_end_a7} :catchall_97

    if-eqz v2, :cond_af

    :try_start_a9
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    goto :goto_af

    :catch_ad
    move-exception v3

    goto :goto_b8

    :cond_af
    :goto_af
    if-eqz v1, :cond_bd

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_b7} :catch_ad
    .catchall {:try_start_a9 .. :try_end_b7} :catchall_c7

    goto :goto_bd

    :goto_b8
    nop

    :try_start_b9
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_be

    :cond_bd
    :goto_bd
    nop

    :goto_be
    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_b9 .. :try_end_bf} :catchall_c7

    return-void

    :goto_c0
    nop

    if-eqz v2, :cond_cb

    :try_start_c3
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    goto :goto_cb

    :catchall_c7
    move-exception v1

    goto :goto_da

    :catch_c9
    move-exception v4

    goto :goto_d4

    :cond_cb
    :goto_cb
    if-eqz v1, :cond_d9

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_d3} :catch_c9
    .catchall {:try_start_c3 .. :try_end_d3} :catchall_c7

    goto :goto_d9

    :goto_d4
    nop

    :try_start_d5
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    nop

    :cond_d9
    :goto_d9
    throw v3

    :goto_da
    monitor-exit v0
    :try_end_db
    .catchall {:try_start_d5 .. :try_end_db} :catchall_c7

    throw v1

    :cond_dc
    :goto_dc
    return-void
.end method

.method private static makeString()Ljava/lang/String;
    .registers 5

    sget v0, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_TPDC:I

    const/4 v1, 0x0

    if-lez v0, :cond_d

    sget v0, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_LRH:I

    mul-int/lit8 v0, v0, 0x64

    sget v2, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_TPDC:I

    div-int/2addr v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    sget v2, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_TPDC:I

    if-lez v2, :cond_1a

    sget v1, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_MLH:I

    mul-int/lit8 v1, v1, 0x64

    sget v2, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_TPDC:I

    div-int/2addr v1, v2

    nop

    :cond_1a
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"TPDC\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_TPDC:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"LRHR\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"MLHR\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"DPDC\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DPDC:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"DLRH\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DLRH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"DMLH\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DMLH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static sendData()V
    .registers 11

    sget-boolean v0, Lcom/android/server/am/Pageboost$BigDataProxy;->ENABLED:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/android/server/am/Pageboost$BigDataProxy;->makeString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/Pageboost$BigDataProxy;->lock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_d
    sput v2, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DPDC:I

    sput v2, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DLRH:I

    sput v2, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DMLH:I

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_2c

    sget-object v1, Lcom/android/server/am/Pageboost$BigDataProxy;->mSemHqmManager:Landroid/os/SemHqmManager;

    const/4 v2, 0x0

    const-string v3, "Sluggish"

    const-string v4, "VRDK"

    const-string/jumbo v5, "ph"

    const-string v6, "0.0"

    const-string/jumbo v7, "sec"

    const-string v8, ""

    const-string v10, ""

    move-object v9, v0

    invoke-virtual/range {v1 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :catchall_2c
    move-exception v2

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v2
.end method

.method public static updatePrefetchResult(ZI)V
    .registers 5

    sget-boolean v0, Lcom/android/server/am/Pageboost$BigDataProxy;->ENABLED:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prefetch Judgement : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/am/Pageboost$BigDataProxy;->lock:Ljava/lang/Object;

    monitor-enter v0

    packed-switch p1, :pswitch_data_5a

    goto :goto_55

    :pswitch_2c
    if-eqz p0, :cond_55

    :try_start_2e
    sget v1, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_MLH:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_MLH:I

    sget v1, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DMLH:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DMLH:I

    goto :goto_55

    :pswitch_3b
    sget v1, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_TPDC:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_TPDC:I

    sget v1, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DPDC:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DPDC:I

    if-eqz p0, :cond_55

    sget v1, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_LRH:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_LRH:I

    sget v1, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DLRH:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DLRH:I

    :cond_55
    :goto_55
    monitor-exit v0

    return-void

    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_2e .. :try_end_59} :catchall_57

    throw v1

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_2c
    .end packed-switch
.end method
