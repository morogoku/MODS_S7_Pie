.class public final Lcom/android/server/PinnerService;
.super Lcom/android/server/SystemService;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PinnerService$PinnerHandler;,
        Lcom/android/server/PinnerService$PinRange;,
        Lcom/android/server/PinnerService$PinnedFile;,
        Lcom/android/server/PinnerService$BinderService;,
        Lcom/android/server/PinnerService$PinRangeSourceStream;,
        Lcom/android/server/PinnerService$PinRangeSourceStatic;,
        Lcom/android/server/PinnerService$PinRangeSource;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_CAMERA_PIN_SIZE:I = 0x5000000

.field private static final PAGE_SIZE:I

.field private static final PIN_META_FILENAME:Ljava/lang/String; = "pinlist.meta"

.field private static final TAG:Ljava/lang/String; = "PinnerService"


# instance fields
.field private mBinderService:Lcom/android/server/PinnerService$BinderService;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mPinnedCameraFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/PinnerService$PinnedFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mPinnedFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/PinnerService$PinnedFile;",
            ">;"
        }
    .end annotation
.end field

.field private mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

.field private final mShouldPinCamera:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    new-instance v0, Lcom/android/server/PinnerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/PinnerService$1;-><init>(Lcom/android/server/PinnerService;)V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/PinnerService;->mShouldPinCamera:Z

    new-instance v0, Lcom/android/server/PinnerService$PinnerHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/PinnerService$PinnerHandler;-><init>(Lcom/android/server/PinnerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/PinnerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/PinnerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/PinnerService;)Ljava/util/ArrayList;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/PinnerService;->snapshotPinnedFiles()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/PinnerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->handlePinCamera(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/PinnerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/PinnerService;->handlePinOnStart()V

    return-void
.end method

.method private static clamp(III)I
    .registers 4

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getCameraInfo(I)Landroid/content/pm/ApplicationInfo;
    .registers 7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0xd0000

    invoke-virtual {v1, v0, v2, p1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_17

    return-object v3

    :cond_17
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v4}, Lcom/android/server/PinnerService;->isResolverActivity(Landroid/content/pm/ActivityInfo;)Z

    move-result v4

    if-eqz v4, :cond_20

    return-object v3

    :cond_20
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v3
.end method

.method private handlePinCamera(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/PinnerService;->mShouldPinCamera:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->pinCamera(I)Z

    return-void
.end method

.method private handlePinOnStart()V
    .registers 10

    iget-object v0, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_41

    aget-object v4, v0, v3

    const v5, 0x7fffffff

    invoke-static {v4, v5, v2}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v5

    if-nez v5, :cond_34

    const-string v6, "PinnerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to pin file = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    :cond_34
    monitor-enter p0

    :try_start_35
    iget-object v6, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    :goto_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :catchall_3e
    move-exception v1

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_35 .. :try_end_40} :catchall_3e

    throw v1

    :cond_41
    return-void
.end method

.method private isResolverActivity(Landroid/content/pm/ActivityInfo;)Z
    .registers 4

    const-class v0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static maybeOpenPinMetaInZip(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 9

    const-string/jumbo v0, "pinlist.meta"

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    :try_start_a
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_e} :catch_10

    move-object v1, v2

    goto :goto_23

    :catch_10
    move-exception v2

    const-string v3, "PinnerService"

    const-string/jumbo v4, "error reading pin metadata \"%s\": pinning as blob"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_23
    :goto_23
    return-object v1
.end method

.method private static maybeOpenZip(Ljava/lang/String;)Ljava/util/zip/ZipFile;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_8

    move-object v0, v1

    goto :goto_1a

    :catch_8
    move-exception v1

    const-string v2, "PinnerService"

    const-string v3, "could not open \"%s\" as zip: pinning as blob"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1a
    return-object v0
.end method

.method private pinCamera(I)Z
    .registers 15

    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->getCameraInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-direct {p0}, Lcom/android/server/PinnerService;->unpinCameraApp()V

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/high16 v3, 0x5000000

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v5

    if-nez v5, :cond_2d

    const-string v3, "PinnerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to pin "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2d
    monitor-enter p0

    :try_start_2e
    iget-object v6, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_9a

    const-string v6, "arm"

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v7, :cond_54

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v7}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "64"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_6f

    :cond_54
    sget-object v7, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-static {v7}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "64"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_6f
    :goto_6f
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    :try_start_74
    invoke-static {v7, v6}, Ldalvik/system/DexFile;->getDexFileOutputPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_78} :catch_7a

    move-object v8, v9

    goto :goto_7b

    :catch_7a
    move-exception v9

    :goto_7b
    if-nez v8, :cond_7e

    return v4

    :cond_7e
    array-length v9, v8

    move-object v10, v5

    move v5, v1

    :goto_81
    if-ge v5, v9, :cond_99

    aget-object v11, v8, v5

    invoke-static {v11, v3, v1}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v10

    if-eqz v10, :cond_96

    monitor-enter p0

    :try_start_8c
    iget-object v12, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    goto :goto_96

    :catchall_93
    move-exception v1

    monitor-exit p0
    :try_end_95
    .catchall {:try_start_8c .. :try_end_95} :catchall_93

    throw v1

    :cond_96
    :goto_96
    add-int/lit8 v5, v5, 0x1

    goto :goto_81

    :cond_99
    return v4

    :catchall_9a
    move-exception v1

    :try_start_9b
    monitor-exit p0
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    throw v1
.end method

.method private static pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_c

    :try_start_4
    invoke-static {p0}, Lcom/android/server/PinnerService;->maybeOpenZip(Ljava/lang/String;)Ljava/util/zip/ZipFile;

    move-result-object v2

    move-object v0, v2

    goto :goto_c

    :catchall_a
    move-exception v2

    goto :goto_46

    :cond_c
    :goto_c
    if-eqz v0, :cond_13

    invoke-static {v0, p0}, Lcom/android/server/PinnerService;->maybeOpenPinMetaInZip(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    :cond_13
    const-string v2, "PinnerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pinRangeStream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_32

    new-instance v2, Lcom/android/server/PinnerService$PinRangeSourceStream;

    invoke-direct {v2, v1}, Lcom/android/server/PinnerService$PinRangeSourceStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_3b

    :cond_32
    new-instance v2, Lcom/android/server/PinnerService$PinRangeSourceStatic;

    const/4 v3, 0x0

    const v4, 0x7fffffff

    invoke-direct {v2, v3, v4}, Lcom/android/server/PinnerService$PinRangeSourceStatic;-><init>(II)V

    :goto_3b
    invoke-static {p0, p1, v2}, Lcom/android/server/PinnerService;->pinFileRanges(Ljava/lang/String;ILcom/android/server/PinnerService$PinRangeSource;)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v3
    :try_end_3f
    .catchall {:try_start_4 .. :try_end_3f} :catchall_a

    invoke-static {v1}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    return-object v3

    :goto_46
    invoke-static {v1}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    throw v2
.end method

.method private static pinFileRanges(Ljava/lang/String;ILcom/android/server/PinnerService$PinRangeSource;)Lcom/android/server/PinnerService$PinnedFile;
    .registers 24

    move-object/from16 v7, p0

    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    move-object v2, v0

    const-wide/16 v3, -0x1

    const/4 v0, 0x0

    move v5, v0

    :try_start_c
    sget v6, Landroid/system/OsConstants;->O_RDONLY:I

    sget v10, Landroid/system/OsConstants;->O_CLOEXEC:I

    or-int/2addr v6, v10

    sget v10, Landroid/system/OsConstants;->O_NOFOLLOW:I

    or-int/2addr v10, v6

    invoke-static {v7, v10, v0}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v6
    :try_end_18
    .catch Landroid/system/ErrnoException; {:try_start_c .. :try_end_18} :catch_10f
    .catchall {:try_start_c .. :try_end_18} :catchall_109

    :try_start_18
    invoke-static {v6}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v2

    iget-wide v11, v2, Landroid/system/StructStat;->st_size:J

    const-wide/32 v13, 0x7fffffff

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11
    :try_end_25
    .catch Landroid/system/ErrnoException; {:try_start_18 .. :try_end_25} :catch_103
    .catchall {:try_start_18 .. :try_end_25} :catchall_fd

    long-to-int v5, v11

    const-wide/16 v11, 0x0

    int-to-long v13, v5

    :try_start_29
    sget v15, Landroid/system/OsConstants;->PROT_READ:I

    sget v16, Landroid/system/OsConstants;->MAP_SHARED:I

    const-wide/16 v18, 0x0

    move-object/from16 v17, v6

    invoke-static/range {v11 .. v19}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v11
    :try_end_35
    .catch Landroid/system/ErrnoException; {:try_start_29 .. :try_end_35} :catch_f6
    .catchall {:try_start_29 .. :try_end_35} :catchall_ef

    :try_start_35
    new-instance v2, Lcom/android/server/PinnerService$PinRange;

    invoke-direct {v2}, Lcom/android/server/PinnerService$PinRange;-><init>()V

    move-object v13, v2

    const/4 v2, 0x0

    sget v3, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v3, p1, v3
    :try_end_40
    .catch Landroid/system/ErrnoException; {:try_start_35 .. :try_end_40} :catch_e7
    .catchall {:try_start_35 .. :try_end_40} :catchall_e1

    if-eqz v3, :cond_56

    :try_start_42
    sget v3, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v3, p1, v3
    :try_end_46
    .catch Landroid/system/ErrnoException; {:try_start_42 .. :try_end_46} :catch_4f
    .catchall {:try_start_42 .. :try_end_46} :catchall_4a

    sub-int v1, p1, v3

    move v15, v1

    goto :goto_58

    :catchall_4a
    move-exception v0

    move/from16 v15, p1

    goto/16 :goto_139

    :catch_4f
    move-exception v0

    move/from16 v15, p1

    :goto_52
    move-object v2, v6

    :goto_53
    move-wide v3, v11

    goto/16 :goto_112

    :cond_56
    move/from16 v15, p1

    :goto_58
    move v14, v2

    :goto_59
    if-ge v14, v15, :cond_b0

    move-object/from16 v4, p2

    :try_start_5d
    invoke-virtual {v4, v13}, Lcom/android/server/PinnerService$PinRangeSource;->read(Lcom/android/server/PinnerService$PinRange;)Z

    move-result v1

    if-eqz v1, :cond_b2

    iget v1, v13, Lcom/android/server/PinnerService$PinRange;->start:I

    iget v2, v13, Lcom/android/server/PinnerService$PinRange;->length:I

    invoke-static {v0, v1, v5}, Lcom/android/server/PinnerService;->clamp(III)I

    move-result v3

    move v1, v3

    sub-int v3, v5, v1

    invoke-static {v0, v2, v3}, Lcom/android/server/PinnerService;->clamp(III)I

    move-result v3

    move v2, v3

    sub-int v3, v15, v14

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v2, v3

    sget v3, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v3, v1, v3

    add-int/2addr v2, v3

    sget v3, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v3, v1, v3

    sub-int/2addr v1, v3

    sget v3, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v3, v2, v3

    if-eqz v3, :cond_93

    sget v3, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    sget v16, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v16, v2, v16

    sub-int v3, v3, v16

    add-int/2addr v2, v3

    :cond_93
    sub-int v3, v15, v14

    invoke-static {v0, v2, v3}, Lcom/android/server/PinnerService;->clamp(III)I

    move-result v3

    move v2, v3

    if-lez v2, :cond_a5

    int-to-long v8, v1

    add-long/2addr v8, v11

    move/from16 v20, v1

    int-to-long v0, v2

    invoke-static {v8, v9, v0, v1}, Landroid/system/Os;->mlock(JJ)V
    :try_end_a4
    .catch Landroid/system/ErrnoException; {:try_start_5d .. :try_end_a4} :catch_ae
    .catchall {:try_start_5d .. :try_end_a4} :catchall_ab

    goto :goto_a7

    :cond_a5
    move/from16 v20, v1

    :goto_a7
    add-int/2addr v14, v2

    nop

    const/4 v0, 0x0

    goto :goto_59

    :catchall_ab
    move-exception v0

    goto/16 :goto_139

    :catch_ae
    move-exception v0

    goto :goto_52

    :cond_b0
    move-object/from16 v4, p2

    :cond_b2
    :try_start_b2
    new-instance v0, Lcom/android/server/PinnerService$PinnedFile;
    :try_end_b4
    .catch Landroid/system/ErrnoException; {:try_start_b2 .. :try_end_b4} :catch_dd
    .catchall {:try_start_b2 .. :try_end_b4} :catchall_d9

    move-object v1, v0

    move-wide v2, v11

    move v4, v5

    move v8, v5

    move-object v5, v7

    move-object v9, v6

    move v6, v14

    :try_start_bb
    invoke-direct/range {v1 .. v6}, Lcom/android/server/PinnerService$PinnedFile;-><init>(JILjava/lang/String;I)V
    :try_end_be
    .catch Landroid/system/ErrnoException; {:try_start_bb .. :try_end_be} :catch_d4
    .catchall {:try_start_bb .. :try_end_be} :catchall_cf

    const-wide/16 v1, -0x1

    nop

    invoke-static {v9}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/FileDescriptor;)V

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_ce

    int-to-long v3, v8

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    :cond_ce
    return-object v0

    :catchall_cf
    move-exception v0

    move v5, v8

    move-object v6, v9

    goto/16 :goto_139

    :catch_d4
    move-exception v0

    move v5, v8

    move-object v2, v9

    goto/16 :goto_53

    :catchall_d9
    move-exception v0

    move v8, v5

    move-object v9, v6

    goto :goto_f5

    :catch_dd
    move-exception v0

    move v8, v5

    move-object v9, v6

    goto :goto_ec

    :catchall_e1
    move-exception v0

    move v8, v5

    move-object v9, v6

    move/from16 v15, p1

    goto :goto_f5

    :catch_e7
    move-exception v0

    move v8, v5

    move-object v9, v6

    move/from16 v15, p1

    :goto_ec
    move-object v2, v9

    move-wide v3, v11

    goto :goto_fc

    :catchall_ef
    move-exception v0

    move v8, v5

    move-object v9, v6

    move/from16 v15, p1

    move-wide v11, v3

    :goto_f5
    goto :goto_139

    :catch_f6
    move-exception v0

    move v8, v5

    move-object v9, v6

    move/from16 v15, p1

    move-object v2, v9

    :goto_fc
    goto :goto_112

    :catchall_fd
    move-exception v0

    move-object v9, v6

    move/from16 v15, p1

    move-wide v11, v3

    goto :goto_139

    :catch_103
    move-exception v0

    move-object v9, v6

    move/from16 v15, p1

    move-object v2, v9

    goto :goto_112

    :catchall_109
    move-exception v0

    move/from16 v15, p1

    :goto_10c
    move-object v6, v2

    move-wide v11, v3

    goto :goto_139

    :catch_10f
    move-exception v0

    move/from16 v15, p1

    :goto_112
    :try_start_112
    const-string v1, "PinnerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not pin file "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_128
    .catchall {:try_start_112 .. :try_end_128} :catchall_137

    const/4 v1, 0x0

    invoke-static {v2}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/FileDescriptor;)V

    const-wide/16 v8, 0x0

    cmp-long v6, v3, v8

    if-ltz v6, :cond_136

    int-to-long v8, v5

    invoke-static {v3, v4, v8, v9}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    :cond_136
    return-object v1

    :catchall_137
    move-exception v0

    goto :goto_10c

    :goto_139
    invoke-static {v6}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/FileDescriptor;)V

    const-wide/16 v1, 0x0

    cmp-long v1, v11, v1

    if-ltz v1, :cond_146

    int-to-long v1, v5

    invoke-static {v11, v12, v1, v2}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    :cond_146
    throw v0
.end method

.method private static safeClose(Ljava/io/Closeable;)V
    .registers 5

    if-eqz p0, :cond_1e

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_1e

    :catch_6
    move-exception v0

    const-string v1, "PinnerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ignoring error closing resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    :goto_1e
    return-void
.end method

.method private static safeClose(Ljava/io/FileDescriptor;)V
    .registers 4

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_1a

    :try_start_8
    invoke-static {p0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_b
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_1a

    :catch_c
    move-exception v0

    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->EBADF:I

    if-eq v1, v2, :cond_14

    goto :goto_1a

    :cond_14
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_1a
    :goto_1a
    return-void
.end method

.method private static safeMunmap(JJ)V
    .registers 7

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Landroid/system/Os;->munmap(JJ)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_d

    :catch_4
    move-exception v0

    const-string v1, "PinnerService"

    const-string/jumbo v2, "ignoring error in unmap"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d
    return-void
.end method

.method private declared-synchronized snapshotPinnedFiles()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/PinnerService$PinnedFile;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-object v1

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private unpinCameraApp()V
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_23

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PinnerService$PinnedFile;

    invoke-virtual {v2}, Lcom/android/server/PinnerService$PinnedFile;->close()V

    goto :goto_12

    :cond_22
    return-void

    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method


# virtual methods
.method public onStart()V
    .registers 4

    new-instance v0, Lcom/android/server/PinnerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/PinnerService$BinderService;-><init>(Lcom/android/server/PinnerService;Lcom/android/server/PinnerService$1;)V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mBinderService:Lcom/android/server/PinnerService$BinderService;

    const-string/jumbo v0, "pinner"

    iget-object v1, p0, Lcom/android/server/PinnerService;->mBinderService:Lcom/android/server/PinnerService$BinderService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PinnerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v0, Lcom/android/server/PinnerService;

    invoke-virtual {p0, v0, p0}, Lcom/android/server/PinnerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    const/16 v1, 0xfa1

    invoke-virtual {v0, v1}, Lcom/android/server/PinnerService$PinnerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    const/4 v1, 0x0

    const/16 v2, 0xfa0

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/PinnerService$PinnerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSwitchUser(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    const/16 v1, 0xfa0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/PinnerService$PinnerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public update(Landroid/util/ArraySet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/PinnerService;->getCameraInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_21

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const-string v2, "PinnerService"

    const-string v3, "Updating pinned files."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    const/16 v3, 0xfa0

    invoke-virtual {v2, v3, v0, v0}, Lcom/android/server/PinnerService$PinnerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_21
    return-void
.end method
