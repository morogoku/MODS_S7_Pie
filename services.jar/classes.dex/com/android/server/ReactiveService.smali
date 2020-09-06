.class public final Lcom/android/server/ReactiveService;
.super Lcom/samsung/android/service/reactive/IReactiveService$Stub;
.source "ReactiveService.java"


# static fields
.field private static final CONNECT_AT_DISTRIBUTOR:I = 0x0

.field private static final CONNECT_DATA_DISTRIBUTOR:I = 0x1

.field public static final DIGEST_SIZE_BYTES:I = 0x20

.field private static final FLAG_ACTIVATED:I = 0x1

.field private static final FLAG_DEACTIVATED:I = 0x0

.field private static final FLAG_TRIGGERED:I = 0x2

.field private static final FRP_FLAG:I = 0x2

.field private static final FRP_SERIVCE_OPERATION_FAILED:I = -0x7

.field private static final JIG_STATE:Ljava/lang/String; = "SWITCH_NAME"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final REACTIVATION_FLAG:I = 0x0

.field private static final REACTIVE_SERVICE_OPERATION_FAILED:I = -0x6

.field private static final REACTIVE_SERVICE_RETURN_FLAG_IS_NOT_EXIST:I = -0x3

.field private static final REACTIVE_SERVICE_RETURN_NATIVE_ERROR:I = -0x1

.field private static final REACTIVE_SERVICE_RETURN_NO_ERROR:I = 0x0

.field private static final REACTIVE_SERVICE_RETURN_PERMISSION_DENIED:I = -0x5

.field private static final REACTIVE_SERVICE_RETURN_STRING_IS_NOT_EXIST:I = -0x4

.field private static final REACTIVE_SERVICE_RETURN_UNSUPPORTED_OPERATION:I = -0x2

.field private static final SERVICE_FLAG:I = 0x1

.field private static final SERVICE_GOOGLE_NWD_SUPPORTED:I = 0x4

.field private static final SERVICE_IS_NOT_SUPPORTED:I = 0x0

.field private static final SERVICE_SAMSUNG_NWD_SUPPORTED:I = 0x2

.field private static final SERVICE_SAMSUNG_SWD_SUPPORTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ReactiveService"

.field private static mContext:Landroid/content/Context;

.field private static final mLock:Ljava/lang/Object;

.field private static final mLockUEvent:Ljava/lang/Object;


# instance fields
.field private final mDataBlockFile:Ljava/lang/String;

.field private mErrorCode:I

.field private mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

.field private mServiceSupport:I

.field private mThreadUart:Ljava/lang/Thread;

.field private mThreadUartGoWait:Z

.field private mThreadUsb:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ReactiveService;->mLockUEvent:Ljava/lang/Object;

    const-string/jumbo v0, "terrier"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ReactiveService;->mThreadUartGoWait:Z

    sput-object p1, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    invoke-direct {p0}, Lcom/android/server/ReactiveService;->nativeInit()V

    invoke-direct {p0}, Lcom/android/server/ReactiveService;->nativeGetSystemSolution()I

    move-result v0

    iput v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ReactiveService;->mDataBlockFile:Ljava/lang/String;

    return-void
.end method

.method private hasPermission(ILjava/lang/String;)Z
    .registers 15

    const-string v0, "com.osp.app.signin"

    new-instance v1, Landroid/content/pm/Signature;

    const-string v2, "308201c13082012aa00302010202044e5cba90300d06092a864886f70d010105050030243110300e060355040b130773616d73756e673110300e0603550403130773616d73756e673020170d3131303833303130323532305a180f32313131303830363130323532305a30243110300e060355040b130773616d73756e673110300e0603550403130773616d73756e6730819f300d06092a864886f70d010101050003818d0030818902818100d80c410cec5799bb3607d27e0c992c9c35238c42e8726a5ecbb190f6dfb59aee9fa3b1a8812620bafb25b24ce4fc777d4b98da1f7fda95f4a7788a70c635fca893e022a676ae40c906ee83a63d953a310da47d3789af59219621aafb551ebe866f977298c70a9d60e5251270db0d35869cb7c5522b7a82c951189cb5d2b9b19d0203010001300d06092a864886f70d0101050500038181007f6820e6cfd72e67afeba80043da6eccc5ec5b0b994974669d2d7c8876f7e1fa9767dbc930549f875c1604cd8a6ea7d84b66ec500c7bf11526ee4ff77d0720036d61454e9354f5291c0545a43ddf26f9d09e64226239cbd0b98945578d596aa9f9ff7a05c140a2f05fe0260f574bfce94f50273558101f896a9c70be6b05496b"

    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    const/4 v3, 0x0

    sget-object v4, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    const/4 v5, 0x0

    if-nez v4, :cond_21

    const-string v6, "ReactiveService"

    const-string v7, "ActivityManager is null, something wrong in framework"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_21
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_30

    const-string v6, "ReactiveService"

    const-string/jumbo v7, "getRunningAppProcesses return null List. Cannot check permision"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_30
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_38
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v8, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v8, p1, :cond_4b

    iget-object v2, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_4c

    :cond_4b
    goto :goto_38

    :cond_4c
    :goto_4c
    sget-object v6, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x40

    :try_start_54
    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    if-eq v8, v9, :cond_8e

    const-string v5, "ReactiveService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NOT Allowed : pkg does not match uid("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ba

    :cond_8e
    const-string v8, "android"

    invoke-virtual {v6, v8, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_9c

    invoke-direct {p0, v2, p2}, Lcom/android/server/ReactiveService;->nativeHasPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    move v3, v5

    goto :goto_ba

    :cond_9c
    const-string v8, "com.osp.app.signin"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ba

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v9, v8

    :goto_a7
    if-ge v5, v9, :cond_ba

    aget-object v10, v8, v5

    invoke-virtual {v1, v10}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b7

    invoke-direct {p0, v2, p2}, Lcom/android/server/ReactiveService;->nativeHasPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_b5} :catch_bb

    move v3, v5

    goto :goto_ba

    :cond_b7
    add-int/lit8 v5, v5, 0x1

    goto :goto_a7

    :cond_ba
    :goto_ba
    goto :goto_c6

    :catch_bb
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    const-string v7, "ReactiveService"

    const-string v8, "Fail to get packageinfo."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c6
    if-eqz v3, :cond_e4

    const-string v5, "ReactiveService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Requested package name = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ff

    :cond_e4
    const-string v5, "ReactiveService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission denied. Package name = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ff
    return v3
.end method

.method private native nativeFinishedSetupWizard()Z
.end method

.method private native nativeGetFlag(I)I
.end method

.method private native nativeGetRandom()[B
.end method

.method private native nativeGetString()Ljava/lang/String;
.end method

.method private native nativeGetSystemSolution()I
.end method

.method private native nativeHasPermission(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeInit()V
.end method

.method private native nativeRemoveString()I
.end method

.method private native nativeSessionAccept([B)[B
.end method

.method private native nativeSessionComplete([B)I
.end method

.method private native nativeSetFlag(IILjava/lang/String;)I
.end method

.method private native nativeSetString(Ljava/lang/String;)I
.end method

.method private native nativeVerify(Ljava/lang/String;I)I
.end method

.method private native nativeisCsUnlockRequest()Z
.end method

.method private wipeLength()V
    .registers 6

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/ReactiveService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_c} :catch_47

    nop

    nop

    const-string v1, "ReactiveService"

    const-string v2, "Wipe length of data for Persistent partition."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    new-array v1, v1, [B

    :try_start_18
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    const-wide/16 v3, 0x24

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_2f} :catch_36
    .catchall {:try_start_18 .. :try_end_2f} :catchall_34

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void

    :catchall_34
    move-exception v2

    goto :goto_43

    :catch_36
    move-exception v2

    :try_start_37
    const-string v3, "ReactiveService"

    const-string/jumbo v4, "failed to reset length"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catchall {:try_start_37 .. :try_end_3f} :catchall_34

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :goto_43
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    :catch_47
    move-exception v0

    const-string v1, "ReactiveService"

    const-string/jumbo v2, "partition not available?"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return v0
.end method

.method public getFlag(I)I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eqz p1, :cond_56

    if-eq p1, v1, :cond_c

    const/4 v0, -0x3

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return v0

    :cond_c
    iget v2, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_54

    sget-object v2, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persistent_data_block"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/persistentdata/PersistentDataBlockManager;

    iput-object v2, p0, Lcom/android/server/ReactiveService;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    iget-object v2, p0, Lcom/android/server/ReactiveService;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    if-nez v2, :cond_2c

    const-string v0, "ReactiveService"

    const-string v1, "Failed to load FRP Manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x7

    return v0

    :cond_2c
    :try_start_2c
    iget-object v2, p0, Lcom/android/server/ReactiveService;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v2}, Landroid/service/persistentdata/PersistentDataBlockManager;->isEnabled()Z

    move-result v2
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_32} :catch_4a

    nop

    nop

    if-eqz v2, :cond_47

    sget-object v3, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_39
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->nativeFinishedSetupWizard()Z

    move-result v4

    if-eqz v4, :cond_41

    const/4 v1, 0x1

    goto :goto_42

    :cond_41
    nop

    :goto_42
    monitor-exit v3

    goto :goto_49

    :catchall_44
    move-exception v0

    monitor-exit v3
    :try_end_46
    .catchall {:try_start_39 .. :try_end_46} :catchall_44

    throw v0

    :cond_47
    nop

    move v1, v0

    :goto_49
    goto :goto_6d

    :catch_4a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, -0x6

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return v1

    :cond_54
    const/4 v1, -0x2

    goto :goto_6d

    :cond_56
    iget v2, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/lit8 v2, v2, 0x1

    if-gtz v2, :cond_64

    iget v2, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/2addr v1, v2

    if-lez v1, :cond_62

    goto :goto_64

    :cond_62
    const/4 v1, -0x2

    goto :goto_6d

    :cond_64
    :goto_64
    sget-object v1, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_67
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveService;->nativeGetFlag(I)I

    move-result v2

    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_67 .. :try_end_6c} :catchall_99

    move v1, v2

    :goto_6d
    if-gez v1, :cond_72

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_74

    :cond_72
    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :goto_74
    const-string v0, "ReactiveService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFlag() : flag=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], ret=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catchall_99
    move-exception v0

    :try_start_9a
    monitor-exit v1
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw v0
.end method

.method public getRandom()[B
    .registers 5

    iget v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return-object v1

    :cond_9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/ReactiveService;->hasPermission(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, -0x5

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return-object v1

    :cond_26
    sget-object v0, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_29
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->nativeGetRandom()[B

    move-result-object v2

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_35

    if-nez v2, :cond_34

    const/4 v0, -0x4

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return-object v1

    :cond_34
    return-object v2

    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public getServiceSupport()I
    .registers 2

    iget v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return-object v1

    :cond_9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/ReactiveService;->hasPermission(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, -0x5

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return-object v1

    :cond_26
    sget-object v0, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_29
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->nativeGetString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_34

    if-nez v1, :cond_33

    const/4 v0, -0x4

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :cond_33
    return-object v1

    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public removeString()I
    .registers 4

    iget v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v0, :cond_a

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return v0

    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/ReactiveService;->hasPermission(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    const/4 v0, -0x5

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return v0

    :cond_29
    sget-object v0, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2c
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->nativeRemoveString()I

    move-result v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_36

    if-eqz v1, :cond_35

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :cond_35
    return v1

    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public sessionAccept([B)[B
    .registers 7

    iget v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v0, :cond_9

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    const/4 v0, 0x0

    return-object v0

    :cond_9
    sget-object v0, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveService;->nativeSessionAccept([B)[B

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_13
    .catchall {:try_start_c .. :try_end_10} :catchall_11

    goto :goto_1f

    :catchall_11
    move-exception v1

    goto :goto_27

    :catch_13
    move-exception v1

    const/4 v2, 0x0

    :try_start_15
    const-string v3, "ReactiveService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_11

    move-object v0, v1

    if-nez v0, :cond_26

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :cond_26
    return-object v0

    :goto_27
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_11

    throw v1
.end method

.method public sessionComplete([B)I
    .registers 7

    iget v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v0, :cond_a

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return v0

    :cond_a
    sget-object v0, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveService;->nativeSessionComplete([B)I

    move-result v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_11} :catch_14
    .catchall {:try_start_d .. :try_end_11} :catchall_12

    goto :goto_20

    :catchall_12
    move-exception v1

    goto :goto_5a

    :catch_14
    move-exception v1

    const/4 v2, -0x1

    :try_start_16
    const-string v3, "ReactiveService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_12

    move v0, v1

    iget v1, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_57

    if-nez v0, :cond_57

    invoke-direct {p0}, Lcom/android/server/ReactiveService;->nativeisCsUnlockRequest()Z

    move-result v1

    if-eqz v1, :cond_57

    sget-object v1, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persistent_data_block"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/persistentdata/PersistentDataBlockManager;

    iput-object v1, p0, Lcom/android/server/ReactiveService;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    iget-object v1, p0, Lcom/android/server/ReactiveService;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    if-nez v1, :cond_4a

    const-string v1, "ReactiveService"

    const-string v2, "Failed to load FRP Manager"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x7

    return v1

    :cond_4a
    :try_start_4a
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->wipeLength()V

    iget-object v1, p0, Lcom/android/server/ReactiveService;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v1}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_57
    :goto_57
    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return v0

    :goto_5a
    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_12

    throw v1
.end method

.method public setFlag(IILjava/lang/String;)I
    .registers 8

    if-eqz p1, :cond_8

    const/4 v0, -0x3

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return v0

    :cond_8
    const/4 v0, 0x2

    if-nez p1, :cond_1c

    iget v1, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/lit8 v1, v1, 0x1

    if-gtz v1, :cond_1c

    iget v1, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/2addr v1, v0

    if-gtz v1, :cond_1c

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return v0

    :cond_1c
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/server/ReactiveService;->hasPermission(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    const/4 v0, -0x5

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return v0

    :cond_3a
    sget-object v0, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3d
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ReactiveService;->nativeSetFlag(IILjava/lang/String;)I

    move-result v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_77

    if-gez v1, :cond_47

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_4a

    :cond_47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :goto_4a
    const-string v0, "ReactiveService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFlag() : flag=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], value=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], ret=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catchall_77
    move-exception v1

    :try_start_78
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw v1
.end method

.method public setString(Ljava/lang/String;)I
    .registers 5

    iget v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v0, :cond_a

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return v0

    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/ReactiveService;->hasPermission(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    const/4 v0, -0x5

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return v0

    :cond_29
    sget-object v0, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2c
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveService;->nativeSetString(Ljava/lang/String;)I

    move-result v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_36

    if-eqz v1, :cond_35

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :cond_35
    return v1

    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public verify(Ljava/lang/String;I)I
    .registers 6

    iget v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v0, :cond_a

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return v0

    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/ReactiveService;->hasPermission(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    const/4 v0, -0x5

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return v0

    :cond_29
    sget-object v0, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2c
    invoke-direct {p0, p1, p2}, Lcom/android/server/ReactiveService;->nativeVerify(Ljava/lang/String;I)I

    move-result v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_36

    if-eqz v1, :cond_35

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :cond_35
    return v1

    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method
