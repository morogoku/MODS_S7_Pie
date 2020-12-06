.class public Lcom/android/server/pm/ShortcutBitmapSaver;
.super Ljava/lang/Object;
.source "ShortcutBitmapSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;
    }
.end annotation


# static fields
.field private static final ADD_DELAY_BEFORE_SAVE_FOR_TEST:Z = false

.field private static final DEBUG:Z = false

.field private static final SAVE_DELAY_MS_FOR_TEST:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "ShortcutService"


# instance fields
.field private final SAVE_WAIT_TIMEOUT_MS:J

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mPendingItems:Ljava/util/Deque;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mPendingItems"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunnable:Ljava/lang/Runnable;

.field private final mService:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->SAVE_WAIT_TIMEOUT_MS:J

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x3c

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    new-instance v0, Lcom/android/server/pm/-$$Lambda$ShortcutBitmapSaver$AUDgG57FGyGDUVDAjL-7cuiE0pM;

    invoke-direct {v0, p0}, Lcom/android/server/pm/-$$Lambda$ShortcutBitmapSaver$AUDgG57FGyGDUVDAjL-7cuiE0pM;-><init>(Lcom/android/server/pm/ShortcutBitmapSaver;)V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mService:Lcom/android/server/pm/ShortcutService;

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/pm/ShortcutBitmapSaver;)V
    .registers 2

    :goto_0
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutBitmapSaver;->processPendingItems()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    return-void
.end method

.method static synthetic lambda$waitForAllSavesLocked$0(Ljava/util/concurrent/CountDownLatch;)V
    .registers 1

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private processPendingItems()Z
    .registers 9

    const/4 v0, 0x0

    move-object v1, v0

    const/16 v2, 0x800

    :try_start_4
    iget-object v3, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9e

    :try_start_7
    iget-object v4, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->size()I

    move-result v4

    if-nez v4, :cond_20

    const/4 v0, 0x0

    monitor-exit v3
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_9b

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1c

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    :cond_1c
    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    :cond_1f
    return v0

    :cond_20
    :try_start_20
    iget-object v4, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_9b

    :try_start_29
    iget-object v3, v4, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;->shortcut:Landroid/content/pm/ShortcutInfo;

    move-object v1, v3

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isIconPendingSave()Z

    move-result v3
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_9e

    const/4 v5, 0x1

    if-nez v3, :cond_43

    nop

    if-eqz v1, :cond_42

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3f

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    :cond_3f
    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    :cond_42
    return v5

    :cond_43
    nop

    :try_start_44
    iget-object v3, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v6

    invoke-virtual {v3, v6, v1}, Lcom/android/server/pm/ShortcutService;->openIconFileForWrite(ILandroid/content/pm/ShortcutInfo;)Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;->getFile()Ljava/io/File;

    move-result-object v6
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_52} :catch_78
    .catch Ljava/lang/RuntimeException; {:try_start_44 .. :try_end_52} :catch_78
    .catchall {:try_start_44 .. :try_end_52} :catchall_9e

    move-object v0, v6

    :try_start_53
    iget-object v6, v4, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;->bytes:[B

    invoke-virtual {v3, v6}, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;->write([B)V
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_73

    :try_start_58
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/pm/ShortcutInfo;->setBitmapPath(Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_63} :catch_78
    .catch Ljava/lang/RuntimeException; {:try_start_58 .. :try_end_63} :catch_78
    .catchall {:try_start_58 .. :try_end_63} :catchall_9e

    nop

    if-eqz v1, :cond_72

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6f

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    :cond_6f
    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    :cond_72
    return v5

    :catchall_73
    move-exception v6

    :try_start_74
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v6
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_78} :catch_78
    .catch Ljava/lang/RuntimeException; {:try_start_74 .. :try_end_78} :catch_78
    .catchall {:try_start_74 .. :try_end_78} :catchall_9e

    :catch_78
    move-exception v3

    :try_start_79
    const-string v6, "ShortcutService"

    const-string v7, "Unable to write bitmap to file"

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v0, :cond_8b

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_8b

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_8b
    .catchall {:try_start_79 .. :try_end_8b} :catchall_9e

    :cond_8b
    nop

    if-eqz v1, :cond_9a

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_97

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    :cond_97
    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    :cond_9a
    return v5

    :catchall_9b
    move-exception v0

    :try_start_9c
    monitor-exit v3
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    :try_start_9d
    throw v0
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9e

    :catchall_9e
    move-exception v0

    if-eqz v1, :cond_ad

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_aa

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    :cond_aa
    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    :cond_ad
    throw v0
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending saves: Num="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Executor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_30

    :cond_48
    monitor-exit v0

    return-void

    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method public getBitmapPathMayWaitLocked(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutBitmapSaver;->waitForAllSavesLocked()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method public removeIcon(Landroid/content/pm/ShortcutInfo;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->setIconResourceId(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->setIconResName(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->setBitmapPath(Ljava/lang/String;)V

    const/16 v0, 0xa0c

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    return-void
.end method

.method public saveBitmapLocked(Landroid/content/pm/ShortcutInfo;ILandroid/graphics/Bitmap$CompressFormat;I)V
    .registers 13

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_24

    const-string v2, "ShortcutService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing icon: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_24
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    :try_start_28
    new-instance v3, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v3, v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitCustomSlowCalls()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    iget-object v3, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-static {v1, p2}, Lcom/android/server/pm/ShortcutService;->shrinkBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_3e} :catch_b2
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_3e} :catch_b2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_28 .. :try_end_3e} :catch_b2
    .catchall {:try_start_28 .. :try_end_3e} :catchall_b0

    :try_start_3e
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    const/high16 v5, 0x10000

    invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_a9

    const/4 v5, 0x0

    :try_start_46
    invoke-virtual {v3, p3, p4, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v6

    if-nez v6, :cond_53

    const-string v6, "ShortcutService"

    const-string v7, "Unable to compress bitmap"

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_5d} :catch_98
    .catchall {:try_start_46 .. :try_end_5d} :catchall_96

    :try_start_5d
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_a9

    move-object v4, v6

    if-eq v3, v1, :cond_66

    :try_start_63
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_b2
    .catch Ljava/lang/RuntimeException; {:try_start_63 .. :try_end_66} :catch_b2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_63 .. :try_end_66} :catch_b2
    .catchall {:try_start_63 .. :try_end_66} :catchall_b0

    :cond_66
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    nop

    const/16 v3, 0x808

    invoke-virtual {p1, v3}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v3

    const/4 v6, 0x5

    if-ne v3, v6, :cond_7c

    const/16 v3, 0x200

    invoke-virtual {p1, v3}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    :cond_7c
    new-instance v3, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;

    invoke-direct {v3, p1, v4, v5}, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;-><init>(Landroid/content/pm/ShortcutInfo;[BLcom/android/server/pm/ShortcutBitmapSaver$1;)V

    move-object v5, v3

    iget-object v6, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    monitor-enter v6

    :try_start_85
    iget-object v3, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {v3, v5}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    monitor-exit v6
    :try_end_8b
    .catchall {:try_start_85 .. :try_end_8b} :catchall_93

    iget-object v3, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v3, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_93
    move-exception v3

    :try_start_94
    monitor-exit v6
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw v3

    :catchall_96
    move-exception v6

    goto :goto_9a

    :catch_98
    move-exception v5

    :try_start_99
    throw v5
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_96

    :goto_9a
    if-eqz v5, :cond_a5

    :try_start_9c
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_9f} :catch_a0
    .catchall {:try_start_9c .. :try_end_9f} :catchall_a9

    goto :goto_a8

    :catch_a0
    move-exception v7

    :try_start_a1
    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a8

    :cond_a5
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    :goto_a8
    throw v6
    :try_end_a9
    .catchall {:try_start_a1 .. :try_end_a9} :catchall_a9

    :catchall_a9
    move-exception v4

    if-eq v3, v1, :cond_af

    :try_start_ac
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_af
    throw v4
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_b0} :catch_b2
    .catch Ljava/lang/RuntimeException; {:try_start_ac .. :try_end_b0} :catch_b2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_ac .. :try_end_b0} :catch_b2
    .catchall {:try_start_ac .. :try_end_b0} :catchall_b0

    :catchall_b0
    move-exception v3

    goto :goto_be

    :catch_b2
    move-exception v3

    :try_start_b3
    const-string v4, "ShortcutService"

    const-string v5, "Unable to write bitmap to file"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ba
    .catchall {:try_start_b3 .. :try_end_ba} :catchall_b0

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :goto_be
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v3
.end method

.method public waitForAllSavesLocked()Z
    .registers 6

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/server/pm/-$$Lambda$ShortcutBitmapSaver$xgjvZfaiKXavxgGCSta_eIdVBnk;

    invoke-direct {v3, v0}, Lcom/android/server/pm/-$$Lambda$ShortcutBitmapSaver$xgjvZfaiKXavxgGCSta_eIdVBnk;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x7530

    :try_start_12
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_1b

    return v1

    :cond_1b
    iget-object v1, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mService:Lcom/android/server/pm/ShortcutService;

    const-string v2, "Timed out waiting on saving bitmaps."

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_22} :catch_23

    goto :goto_2b

    :catch_23
    move-exception v1

    const-string v2, "ShortcutService"

    const-string v3, "interrupted"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b
    const/4 v1, 0x0

    return v1
.end method
