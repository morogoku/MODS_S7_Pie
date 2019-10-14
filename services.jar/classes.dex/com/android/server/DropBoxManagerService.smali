.class public final Lcom/android/server/DropBoxManagerService;
.super Lcom/android/server/SystemService;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DropBoxManagerService$EntryFile;,
        Lcom/android/server/DropBoxManagerService$FileList;
    }
.end annotation


# static fields
.field private static final DEFAULT_AGE_SECONDS:I = 0x13c680

.field private static final DEFAULT_MAX_FILES:I = 0x3e8

.field private static final DEFAULT_MAX_FILES_LOWRAM:I = 0x12c

.field private static final DEFAULT_QUOTA_KB:I = 0x1400

.field private static final DEFAULT_QUOTA_PERCENT:I = 0xa

.field private static final DEFAULT_RESERVE_PERCENT:I = 0xa

.field private static final MSG_SEND_BROADCAST:I = 0x1

.field private static final PROFILE_DUMP:Z = false

.field private static final QUOTA_RESCAN_MILLIS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "DropBoxManagerService"


# instance fields
.field private mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

.field private mBlockSize:I

.field private volatile mBooted:Z

.field private mCachedQuotaBlocks:I

.field private mCachedQuotaUptimeMillis:J

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mDropBoxDir:Ljava/io/File;

.field private mFilesByTag:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/DropBoxManagerService$FileList;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mMaxFiles:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatFs:Landroid/os/StatFs;

.field private final mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/dropbox"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    iput-boolean v0, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    new-instance v0, Lcom/android/server/DropBoxManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DropBoxManagerService$1;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/DropBoxManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/DropBoxManagerService$2;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    iput-object p2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/server/DropBoxManagerService$3;

    invoke-direct {v0, p0, p3}, Lcom/android/server/DropBoxManagerService$3;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/android/server/DropBoxManagerService;J)J
    .registers 3

    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/server/DropBoxManagerService;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/DropBoxManagerService;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/server/DropBoxManagerService;)Landroid/content/BroadcastReceiver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private declared-synchronized createEntry(Ljava/io/File;Ljava/lang/String;I)J
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v4, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v5, 0x2710

    add-long/2addr v5, v2

    invoke-direct {v4, v5, v6}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2e

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/server/DropBoxManagerService$EntryFile;

    invoke-interface {v0, v5}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object v4, v5

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    :cond_2e
    iget-object v5, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v5

    const-wide/16 v6, 0x1

    if-nez v5, :cond_4c

    iget-object v5, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-wide v8, v5, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    add-long/2addr v8, v6

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    move-wide v2, v8

    :cond_4c
    if-eqz v4, :cond_c0

    array-length v5, v4

    const/4 v8, 0x0

    move-wide v13, v2

    :goto_51
    if-ge v8, v5, :cond_bd

    aget-object v2, v4, v8

    iget-object v3, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v10, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v9, v10

    iput v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget-object v3, v1, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v9, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DropBoxManagerService$FileList;

    if-eqz v3, :cond_79

    iget-object v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v9, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_79

    iget v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v10, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v9, v10

    iput v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    :cond_79
    iget v9, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_a4

    new-instance v15, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v9, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v2, v9}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v12, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    add-long v17, v13, v6

    iget v9, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    iget v6, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move v7, v9

    move-object v9, v15

    move-object/from16 v19, v0

    move-object v0, v15

    move v15, v7

    move/from16 v16, v6

    invoke-direct/range {v9 .. v16}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    invoke-direct {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    move-wide/from16 v13, v17

    const-wide/16 v9, 0x1

    goto :goto_b7

    :cond_a4
    move-object/from16 v19, v0

    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v6, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v7, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    const-wide/16 v9, 0x1

    add-long v11, v13, v9

    invoke-direct {v0, v6, v7, v13, v14}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    move-wide v13, v11

    :goto_b7
    add-int/lit8 v8, v8, 0x1

    move-wide v6, v9

    move-object/from16 v0, v19

    goto :goto_51

    :cond_bd
    move-object/from16 v19, v0

    goto :goto_c3

    :cond_c0
    move-object/from16 v19, v0

    move-wide v13, v2

    :goto_c3
    if-nez p1, :cond_d2

    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v3, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v5, p2

    invoke-direct {v2, v3, v5, v13, v14}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {v1, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    goto :goto_ee

    :cond_d2
    move-object/from16 v5, p2

    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v3, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget v6, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move-object/from16 v20, v2

    move-object/from16 v21, p1

    move-object/from16 v22, v3

    move-object/from16 v23, v5

    move-wide/from16 v24, v13

    move/from16 v26, p3

    move/from16 v27, v6

    invoke-direct/range {v20 .. v27}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    invoke-direct {v1, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_ee
    .catchall {:try_start_3 .. :try_end_ee} :catchall_f0

    :goto_ee
    monitor-exit p0

    return-wide v13

    :catchall_f0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    invoke-virtual {p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v0

    if-eqz v0, :cond_45

    iget v0, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    if-lez v0, :cond_45

    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    if-nez v0, :cond_39

    new-instance v1, Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$1;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_39
    iget-object v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_47

    :cond_45
    monitor-exit p0

    return-void

    :catchall_47
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized init()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    if-nez v0, :cond_5f

    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_2f

    :cond_16
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t mkdir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_d4

    :cond_2f
    :goto_2f
    :try_start_2f
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_44} :catch_45
    .catchall {:try_start_2f .. :try_end_44} :catchall_d4

    goto :goto_5f

    :catch_45
    move-exception v0

    :try_start_46
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t statfs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5f
    :goto_5f
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    if-nez v0, :cond_d2

    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_b9

    new-instance v1, Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_7c
    if-ge v2, v1, :cond_d2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a6

    const-string v4, "DropBoxManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cleaning temp file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_b6

    :cond_a6
    new-instance v4, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget v5, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    invoke-direct {v4, v3, v5}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;I)V

    invoke-virtual {v4}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v5

    if-eqz v5, :cond_b6

    invoke-direct {p0, v4}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    :cond_b6
    :goto_b6
    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    :cond_b9
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t list files: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_d2
    .catchall {:try_start_46 .. :try_end_d2} :catchall_d4

    :cond_d2
    monitor-exit p0

    return-void

    :catchall_d4
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized trimToFit()J
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_3
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "dropbox_age_seconds"

    const v3, 0x13c680

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v2, v0

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "dropbox_max_files"

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v4

    if-eqz v4, :cond_1e

    const/16 v4, 0x12c

    goto :goto_20

    :cond_1e
    const/16 v4, 0x3e8

    :goto_20
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    mul-int/lit16 v0, v2, 0x3e8

    int-to-long v5, v0

    sub-long/2addr v3, v5

    :goto_2e
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_89

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-wide v5, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    cmp-long v5, v5, v3

    if-lez v5, :cond_55

    iget-object v5, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->size()I

    move-result v5

    iget v6, v1, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    if-ge v5, v6, :cond_55

    goto :goto_89

    :cond_55
    iget-object v5, v1, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v6, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/DropBoxManagerService$FileList;

    if-eqz v5, :cond_70

    iget-object v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v6, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    iget v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v7, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    :cond_70
    iget-object v6, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v6, v6, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v6, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_83

    iget-object v6, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v7, v6, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v8, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    :cond_83
    iget-object v6, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0, v6}, Lcom/android/server/DropBoxManagerService$EntryFile;->deleteFile(Ljava/io/File;)V

    goto :goto_2e

    :cond_89
    :goto_89
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    const-wide/16 v9, 0x1388

    add-long/2addr v7, v9

    cmp-long v0, v5, v7

    if-lez v0, :cond_107

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v7, "dropbox_quota_percent"

    const/16 v8, 0xa

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v7, v0

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v9, "dropbox_reserve_percent"

    invoke-static {v0, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v8, v0

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v9, "dropbox_quota_kb"

    const/16 v10, 0x1400

    invoke-static {v0, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v9, v0

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0
    :try_end_be
    .catchall {:try_start_3 .. :try_end_be} :catchall_1df

    move-object v10, v0

    :try_start_bf
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v0, v10}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V
    :try_end_c4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_bf .. :try_end_c4} :catch_ed
    .catchall {:try_start_bf .. :try_end_c4} :catchall_1df

    nop

    :try_start_c5
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    iget-object v11, v1, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockCount()I

    move-result v11

    mul-int/2addr v11, v8

    div-int/lit8 v11, v11, 0x64

    sub-int v11, v0, v11

    mul-int/lit16 v12, v9, 0x400

    iget v13, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    div-int/2addr v12, v13

    const/4 v13, 0x0

    mul-int v14, v11, v7

    div-int/lit8 v14, v14, 0x64

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    iput v13, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    iput-wide v5, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    goto :goto_107

    :catch_ed
    move-exception v0

    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can\'t restat: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_107
    :goto_107
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v7, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    if-le v0, v7, :cond_1d3

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    const/4 v7, 0x0

    new-instance v8, Ljava/util/TreeSet;

    iget-object v9, v1, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v10, v7

    move v7, v0

    :goto_125
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_142

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    if-lez v10, :cond_13c

    iget v11, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v12, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    sub-int/2addr v12, v7

    div-int/2addr v12, v10

    if-gt v11, v12, :cond_13c

    goto :goto_142

    :cond_13c
    iget v11, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    sub-int/2addr v7, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_125

    :cond_142
    :goto_142
    iget v0, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    sub-int/2addr v0, v7

    div-int/2addr v0, v10

    move v9, v0

    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_14b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    move-object v12, v0

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v13, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    if-ge v0, v13, :cond_166

    move/from16 v16, v2

    move-wide/from16 v17, v3

    goto/16 :goto_1d7

    :cond_166
    :goto_166
    iget v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    if-le v0, v9, :cond_1c9

    iget-object v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c9

    iget-object v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object v13, v0

    iget-object v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0, v13}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18a

    iget v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v14, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v0, v14

    iput v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    :cond_18a
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0, v13}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19d

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v14, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v15, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v14, v15

    iput v14, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_19d
    .catchall {:try_start_c5 .. :try_end_19d} :catchall_1df

    :cond_19d
    :try_start_19d
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v13, v0}, Lcom/android/server/DropBoxManagerService$EntryFile;->deleteFile(Ljava/io/File;)V

    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v14, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v15, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;
    :try_end_1a8
    .catch Ljava/io/IOException; {:try_start_19d .. :try_end_1a8} :catch_1b7
    .catchall {:try_start_19d .. :try_end_1a8} :catchall_1df

    move/from16 v16, v2

    move-wide/from16 v17, v3

    :try_start_1ac
    iget-wide v2, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {v0, v14, v15, v2, v3}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_1b4
    .catch Ljava/io/IOException; {:try_start_1ac .. :try_end_1b4} :catch_1b5
    .catchall {:try_start_1ac .. :try_end_1b4} :catchall_1df

    goto :goto_1c3

    :catch_1b5
    move-exception v0

    goto :goto_1bc

    :catch_1b7
    move-exception v0

    move/from16 v16, v2

    move-wide/from16 v17, v3

    :goto_1bc
    :try_start_1bc
    const-string v2, "DropBoxManagerService"

    const-string v3, "Can\'t write tombstone file"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c3
    nop

    move/from16 v2, v16

    move-wide/from16 v3, v17

    goto :goto_166

    :cond_1c9
    move/from16 v16, v2

    move-wide/from16 v17, v3

    move/from16 v2, v16

    move-wide/from16 v3, v17

    goto/16 :goto_14b

    :cond_1d3
    move/from16 v16, v2

    move-wide/from16 v17, v3

    :goto_1d7
    iget v0, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    iget v2, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_1db
    .catchall {:try_start_1bc .. :try_end_1db} :catchall_1df

    mul-int/2addr v0, v2

    int-to-long v2, v0

    monitor-exit p0

    return-wide v2

    :catchall_1df
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public add(Landroid/os/DropBoxManager$Entry;)V
    .registers 30

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :try_start_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getFlags()I

    move-result v0

    and-int/lit8 v6, v0, 0x1

    if-nez v6, :cond_15d

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V

    invoke-virtual {v1, v5}, Lcom/android/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z

    move-result v6
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_19} :catch_165
    .catchall {:try_start_a .. :try_end_19} :catchall_163

    if-nez v6, :cond_2a

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    if-eqz v2, :cond_29

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_29
    return-void

    :cond_2a
    :try_start_2a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget v10, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    new-array v10, v10, [B

    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    move-object v3, v11

    const/4 v12, 0x0

    :goto_3c
    array-length v13, v10

    if-ge v12, v13, :cond_4a

    array-length v13, v10

    sub-int/2addr v13, v12

    invoke-virtual {v3, v10, v12, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v13

    if-gtz v13, :cond_48

    goto :goto_4a

    :cond_48
    add-int/2addr v12, v13

    goto :goto_3c

    :cond_4a
    :goto_4a
    new-instance v13, Ljava/io/File;

    iget-object v14, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "drop"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    move-wide/from16 v17, v6

    invoke-virtual {v11}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ".tmp"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v13, v14, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v13

    iget v6, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    const/16 v7, 0x1000

    if-le v6, v7, :cond_7b

    const/16 v6, 0x1000

    :cond_7b
    const/16 v7, 0x200

    if-ge v6, v7, :cond_81

    const/16 v6, 0x200

    :cond_81
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v11, Ljava/io/BufferedOutputStream;

    invoke-direct {v11, v7, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v4, v11

    array-length v11, v10

    if-ne v12, v11, :cond_9b

    and-int/lit8 v11, v0, 0x4

    if-nez v11, :cond_9b

    new-instance v11, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v11, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v11

    or-int/lit8 v0, v0, 0x4

    :cond_9b
    :goto_9b
    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11, v12}, Ljava/io/OutputStream;->write([BII)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long v15, v13, v8

    const-wide/16 v19, 0x7530

    cmp-long v15, v15, v19

    if-lez v15, :cond_b6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v15

    move-wide v8, v13

    move-wide/from16 v26, v8

    move-wide v8, v15

    move-wide/from16 v15, v26

    goto :goto_b9

    :cond_b6
    move-wide v15, v8

    move-wide/from16 v8, v17

    :goto_b9
    invoke-virtual {v3, v10}, Ljava/io/InputStream;->read([B)I

    move-result v17

    move/from16 v12, v17

    if-gtz v12, :cond_c9

    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    const/4 v4, 0x0

    goto :goto_cc

    :cond_c9
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    :goto_cc
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v17

    cmp-long v19, v17, v8

    if-lez v19, :cond_10e

    const-string v11, "DropBoxManagerService"

    move/from16 v21, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v7

    const-string v7, "Dropping: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v23, v13

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v13

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " bytes)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v2, 0x0

    goto :goto_114

    :cond_10e
    move/from16 v21, v6

    move-object/from16 v22, v7

    if-gtz v12, :cond_152

    :goto_114
    invoke-direct {v1, v2, v5, v0}, Lcom/android/server/DropBoxManagerService;->createEntry(Ljava/io/File;Ljava/lang/String;I)J

    move-result-wide v6

    const/4 v2, 0x0

    new-instance v11, Landroid/content/Intent;

    const-string v13, "android.intent.action.DROPBOX_ENTRY_ADDED"

    invoke-direct {v11, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v13, "tag"

    invoke-virtual {v11, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v13, "time"

    invoke-virtual {v11, v13, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-boolean v13, v1, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    if-nez v13, :cond_135

    const/high16 v13, 0x40000000    # 2.0f

    invoke-virtual {v11, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_135
    iget-object v13, v1, Lcom/android/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    iget-object v14, v1, Lcom/android/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    move/from16 v25, v0

    const/4 v0, 0x1

    invoke-virtual {v14, v0, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_143} :catch_165
    .catchall {:try_start_2a .. :try_end_143} :catchall_163

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    if-eqz v2, :cond_188

    :goto_14e
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_188

    :cond_152
    move/from16 v25, v0

    move-wide/from16 v17, v8

    move-wide v8, v15

    move/from16 v6, v21

    move-object/from16 v7, v22

    goto/16 :goto_9b

    :cond_15d
    :try_start_15d
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6
    :try_end_163
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_163} :catch_165
    .catchall {:try_start_15d .. :try_end_163} :catchall_163

    :catchall_163
    move-exception v0

    goto :goto_189

    :catch_165
    move-exception v0

    :try_start_166
    const-string v6, "DropBoxManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t write: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17c
    .catchall {:try_start_166 .. :try_end_17c} :catchall_163

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    if-eqz v2, :cond_188

    goto :goto_14e

    :cond_188
    :goto_188
    return-void

    :goto_189
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    if-eqz v2, :cond_197

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_197
    throw v0
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 38

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    monitor-enter p0

    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "DropBoxManagerService"

    invoke-static {v0, v4, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_38a

    if-nez v0, :cond_15

    monitor-exit p0

    return-void

    :cond_15
    :try_start_15
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_36b
    .catchall {:try_start_15 .. :try_end_18} :catchall_38a

    nop

    :try_start_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    const/4 v0, 0x0

    const/4 v5, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v8, v5

    move v5, v0

    const/4 v0, 0x0

    :goto_29
    if-eqz v3, :cond_b4

    array-length v9, v3

    if-ge v0, v9, :cond_b4

    aget-object v9, v3, v0

    const-string v10, "-p"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_af

    aget-object v9, v3, v0

    const-string v10, "--print"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_43

    goto :goto_af

    :cond_43
    aget-object v9, v3, v0

    const-string v10, "-f"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_ad

    aget-object v9, v3, v0

    const-string v10, "--file"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_58

    goto :goto_ad

    :cond_58
    aget-object v9, v3, v0

    const-string v10, "-h"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8d

    aget-object v9, v3, v0

    const-string v10, "--help"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6d

    goto :goto_8d

    :cond_6d
    aget-object v9, v3, v0

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_87

    const-string v9, "Unknown argument: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v3, v0

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b0

    :cond_87
    aget-object v9, v3, v0

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b0

    :cond_8d
    :goto_8d
    const-string v7, "Dropbox (dropbox) dump options:"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "  [-h|--help] [-p|--print] [-f|--file] [timestamp]"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "    -h|--help: print this help"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "    -p|--print: print full contents of each entry"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "    -f|--file: print path of each entry\'s file"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "  [timestamp] optionally filters to only those entries."

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_ab
    .catchall {:try_start_19 .. :try_end_ab} :catchall_38a

    monitor-exit p0

    return-void

    :cond_ad
    :goto_ad
    const/4 v8, 0x1

    goto :goto_b0

    :cond_af
    :goto_af
    const/4 v5, 0x1

    :goto_b0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_29

    :cond_b4
    :try_start_b4
    const-string v0, "Drop box contents: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " entries\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Max entries: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_101

    const-string v0, "Searching for:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_fc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, " "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e7

    :cond_fc
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_101
    const/4 v0, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    const-string v11, "\n"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v11, v11, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v11}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_118
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_342

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-wide v13, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-virtual {v10, v13, v14}, Landroid/text/format/Time;->set(J)V

    const-string v13, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v10, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    move v15, v14

    const/4 v14, 0x0

    :goto_132
    const/16 v16, 0x1

    if-ge v14, v9, :cond_15f

    if-eqz v15, :cond_15f

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v18, v17

    move-object/from16 v7, v18

    invoke-virtual {v13, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_156

    move-object/from16 v19, v6

    iget-object v6, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_153

    goto :goto_158

    :cond_153
    const/16 v16, 0x0

    goto :goto_158

    :cond_156
    move-object/from16 v19, v6

    :goto_158
    move/from16 v15, v16

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v6, v19

    goto :goto_132

    :cond_15f
    move-object/from16 v19, v6

    if-nez v15, :cond_166

    move-object/from16 v6, v19

    goto :goto_118

    :cond_166
    add-int/lit8 v6, v0, 0x1

    if-eqz v5, :cond_16f

    const-string v0, "========================================\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16f
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v0, :cond_17e

    const-string v0, "(no tag)"

    goto :goto_180

    :cond_17e
    iget-object v0, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    :goto_180
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v12, v0}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    move-object v7, v0

    if-nez v7, :cond_19c

    const-string v0, " (no file)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_192
    move/from16 v30, v6

    move/from16 v28, v8

    move/from16 v26, v9

    move-object/from16 v27, v10

    goto/16 :goto_336

    :cond_19c
    iget v0, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1a8

    const-string v0, " (contents lost)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_192

    :cond_1a8
    const-string v0, " ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1b8

    const-string v0, "compressed "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b8
    iget v0, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1c2

    const-string/jumbo v0, "text"

    goto :goto_1c4

    :cond_1c2
    const-string v0, "data"

    :goto_1c4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v26, v9

    move-object/from16 v27, v10

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v8, :cond_1e6

    if-eqz v5, :cond_1f9

    iget v0, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1f9

    :cond_1e6
    if-nez v5, :cond_1ed

    const-string v0, "    "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1ed
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f9
    iget v0, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I
    :try_end_1fb
    .catchall {:try_start_b4 .. :try_end_1fb} :catchall_38a

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_32a

    if-nez v5, :cond_20a

    if-nez v8, :cond_204

    goto :goto_20a

    :cond_204
    move/from16 v30, v6

    move/from16 v28, v8

    goto/16 :goto_32e

    :cond_20a
    :goto_20a
    const/4 v9, 0x0

    const/4 v0, 0x0

    move-object v10, v0

    :try_start_20d
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v14, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;
    :try_end_211
    .catch Ljava/io/IOException; {:try_start_20d .. :try_end_211} :catch_2e0
    .catchall {:try_start_20d .. :try_end_211} :catchall_2d7

    move/from16 v28, v8

    move-object/from16 v29, v9

    :try_start_215
    iget-wide v8, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J
    :try_end_217
    .catch Ljava/io/IOException; {:try_start_215 .. :try_end_217} :catch_2d1
    .catchall {:try_start_215 .. :try_end_217} :catchall_2ca

    move/from16 v30, v6

    :try_start_219
    iget v6, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move-object/from16 v20, v0

    move-object/from16 v21, v14

    move-wide/from16 v22, v8

    move-object/from16 v24, v7

    move/from16 v25, v6

    invoke-direct/range {v20 .. v25}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_228
    .catch Ljava/io/IOException; {:try_start_219 .. :try_end_228} :catch_2c6
    .catchall {:try_start_219 .. :try_end_228} :catchall_2c1

    move-object v9, v0

    const/16 v0, 0xa

    if-eqz v5, :cond_27a

    :try_start_22d
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v10, v6

    const/16 v6, 0x1000

    new-array v6, v6, [C

    const/4 v8, 0x0

    :goto_23c
    invoke-virtual {v10, v6}, Ljava/io/InputStreamReader;->read([C)I

    move-result v14

    if-gtz v14, :cond_24b

    if-nez v8, :cond_249

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_249
    goto/16 :goto_2b8

    :cond_24b
    move/from16 v31, v8

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8, v14}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v14, -0x1

    aget-char v8, v6, v8

    if-ne v8, v0, :cond_25a

    move/from16 v8, v16

    goto :goto_25b

    :cond_25a
    const/4 v8, 0x0

    :goto_25b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    move-object/from16 v32, v6

    const/high16 v6, 0x10000

    if-le v0, v6, :cond_271

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_272

    :cond_271
    const/4 v6, 0x0

    :goto_272
    move-object/from16 v6, v32

    const/16 v0, 0xa

    goto :goto_23c

    :catch_277
    move-exception v0

    goto/16 :goto_2e7

    :cond_27a
    const/4 v6, 0x0

    const/16 v0, 0x46

    invoke-virtual {v9, v0}, Landroid/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    move-result-object v8

    const-string v14, "    "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v8, :cond_290

    const-string v0, "[null]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v33, v8

    goto :goto_2b3

    :cond_290
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    if-ne v14, v0, :cond_297

    goto :goto_299

    :cond_297
    move/from16 v16, v6

    :goto_299
    move/from16 v0, v16

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const/16 v6, 0x2f

    move-object/from16 v33, v8

    const/16 v8, 0xa

    invoke-virtual {v14, v8, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2b3

    const-string v6, " ..."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b3
    :goto_2b3
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2b8
    .catch Ljava/io/IOException; {:try_start_22d .. :try_end_2b8} :catch_277
    .catchall {:try_start_22d .. :try_end_2b8} :catchall_31b

    :goto_2b8
    :try_start_2b8
    invoke-virtual {v9}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_2bb
    .catchall {:try_start_2b8 .. :try_end_2bb} :catchall_38a

    if-eqz v10, :cond_32e

    :try_start_2bd
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_2c0
    .catch Ljava/io/IOException; {:try_start_2bd .. :try_end_2c0} :catch_319
    .catchall {:try_start_2bd .. :try_end_2c0} :catchall_38a

    goto :goto_318

    :catchall_2c1
    move-exception v0

    move-object v6, v0

    move-object/from16 v9, v29

    goto :goto_31d

    :catch_2c6
    move-exception v0

    move-object/from16 v9, v29

    goto :goto_2e7

    :catchall_2ca
    move-exception v0

    move/from16 v30, v6

    move-object v6, v0

    move-object/from16 v9, v29

    goto :goto_31d

    :catch_2d1
    move-exception v0

    move/from16 v30, v6

    move-object/from16 v9, v29

    goto :goto_2e7

    :catchall_2d7
    move-exception v0

    move/from16 v30, v6

    move/from16 v28, v8

    move-object/from16 v29, v9

    move-object v6, v0

    goto :goto_31d

    :catch_2e0
    move-exception v0

    move/from16 v30, v6

    move/from16 v28, v8

    move-object/from16 v29, v9

    :goto_2e7
    :try_start_2e7
    const-string v6, "*** "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "DropBoxManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Can\'t read: "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30e
    .catchall {:try_start_2e7 .. :try_end_30e} :catchall_31b

    if-eqz v9, :cond_313

    :try_start_310
    invoke-virtual {v9}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_313
    .catchall {:try_start_310 .. :try_end_313} :catchall_38a

    :cond_313
    if-eqz v10, :cond_32e

    :try_start_315
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_318
    .catch Ljava/io/IOException; {:try_start_315 .. :try_end_318} :catch_319
    .catchall {:try_start_315 .. :try_end_318} :catchall_38a

    :goto_318
    goto :goto_32e

    :catch_319
    move-exception v0

    goto :goto_318

    :catchall_31b
    move-exception v0

    move-object v6, v0

    :goto_31d
    if-eqz v9, :cond_322

    :try_start_31f
    invoke-virtual {v9}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_322
    .catchall {:try_start_31f .. :try_end_322} :catchall_38a

    :cond_322
    if-eqz v10, :cond_329

    :try_start_324
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_327
    .catch Ljava/io/IOException; {:try_start_324 .. :try_end_327} :catch_328
    .catchall {:try_start_324 .. :try_end_327} :catchall_38a

    goto :goto_329

    :catch_328
    move-exception v0

    :cond_329
    :goto_329
    :try_start_329
    throw v6

    :cond_32a
    move/from16 v30, v6

    move/from16 v28, v8

    :cond_32e
    :goto_32e
    if-eqz v5, :cond_335

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_335
    nop

    :goto_336
    move-object/from16 v6, v19

    move/from16 v9, v26

    move-object/from16 v10, v27

    move/from16 v8, v28

    move/from16 v0, v30

    goto/16 :goto_118

    :cond_342
    move-object/from16 v19, v6

    move/from16 v28, v8

    move/from16 v26, v9

    move-object/from16 v27, v10

    if-nez v0, :cond_351

    const-string v6, "(No entries found.)\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_351
    if-eqz v3, :cond_356

    array-length v6, v3

    if-nez v6, :cond_362

    :cond_356
    if-nez v5, :cond_35d

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_35d
    const-string v6, "Usage: dumpsys dropbox [--print|--file] [YYYY-mm-dd] [HH:MM:SS] [tag]\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_362
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_369
    .catchall {:try_start_329 .. :try_end_369} :catchall_38a

    monitor-exit p0

    return-void

    :catch_36b
    move-exception v0

    move-object v4, v0

    :try_start_36d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t initialize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "DropBoxManagerService"

    const-string v5, "Can\'t init"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_388
    .catchall {:try_start_36d .. :try_end_388} :catchall_38a

    monitor-exit p0

    return-void

    :catchall_38a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    .registers 16

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_LOGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_98

    if-nez v0, :cond_90

    const/4 v0, 0x0

    :try_start_e
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_86
    .catchall {:try_start_e .. :try_end_11} :catchall_98

    nop

    if-nez p1, :cond_17

    :try_start_14
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    goto :goto_1f

    :cond_17
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DropBoxManagerService$FileList;
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_98

    :goto_1f
    if-nez v1, :cond_23

    monitor-exit p0

    return-object v0

    :cond_23
    :try_start_23
    iget-object v2, v1, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v3, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v4, 0x1

    add-long/2addr v4, p2

    invoke-direct {v3, v4, v5}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_84

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v4, v3, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v4, :cond_46

    goto :goto_35

    :cond_46
    iget v4, v3, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_57

    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v2, v3, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v4, v3, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {v0, v2, v4, v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J)V
    :try_end_55
    .catchall {:try_start_23 .. :try_end_55} :catchall_98

    monitor-exit p0

    return-object v0

    :cond_57
    :try_start_57
    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v3, v4}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v4
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_98

    :try_start_5d
    new-instance v11, Landroid/os/DropBoxManager$Entry;

    iget-object v6, v3, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v7, v3, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget v10, v3, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move-object v5, v11

    move-object v9, v4

    invoke-direct/range {v5 .. v10}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_6a} :catch_6c
    .catchall {:try_start_5d .. :try_end_6a} :catchall_98

    monitor-exit p0

    return-object v11

    :catch_6c
    move-exception v5

    :try_start_6d
    const-string v6, "DropBoxManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t read: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_83
    .catchall {:try_start_6d .. :try_end_83} :catchall_98

    goto :goto_35

    :cond_84
    monitor-exit p0

    return-object v0

    :catch_86
    move-exception v1

    :try_start_87
    const-string v2, "DropBoxManagerService"

    const-string v3, "Can\'t init"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8e
    .catchall {:try_start_87 .. :try_end_8e} :catchall_98

    monitor-exit p0

    return-object v0

    :cond_90
    :try_start_90
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "READ_LOGS permission required"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_98
    .catchall {:try_start_90 .. :try_end_98} :catchall_98

    :catchall_98
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getServiceStub()Lcom/android/internal/os/IDropBoxManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    return-object v0
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .registers 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    const-string/jumbo v2, "disabled"

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dropbox:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_29

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_29
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onBootPhase(I)V
    .registers 8

    const/16 v0, 0x1f4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_d

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_a

    goto :goto_32

    :cond_a
    iput-boolean v1, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    goto :goto_32

    :cond_d
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Lcom/android/server/DropBoxManagerService$4;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/server/DropBoxManagerService$4;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Handler;)V

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    nop

    :goto_32
    return-void
.end method

.method public onStart()V
    .registers 3

    const-string/jumbo v0, "dropbox"

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DropBoxManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
