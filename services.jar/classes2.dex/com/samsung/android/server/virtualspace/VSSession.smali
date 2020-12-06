.class public Lcom/samsung/android/server/virtualspace/VSSession;
.super Lcom/samsung/android/virtualspace/IVSSession$Stub;
.source "VSSession.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field private mActivityToken:Landroid/os/IBinder;

.field private mClientToken:Landroid/os/IBinder;

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mIMEDisplayId:I

.field private mIMETargetDisplayId:I

.field private mKeyboardMode:I

.field private final mMainDisplayInfo:Landroid/view/DisplayInfo;

.field private final mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

.field private final mRedirects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/server/virtualspace/VSScreen;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/virtualspace/VSScreen;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreensMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/server/virtualspace/VSScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mValid:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/server/virtualspace/VSManagerService;Landroid/os/IBinder;)V
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/virtualspace/IVSSession$Stub;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreensMap:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Ljava/util/ArrayList;

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayInfo:Landroid/view/DisplayInfo;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirects:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mKeyboardMode:I

    iput v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mIMEDisplayId:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mIMETargetDisplayId:I

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iput-object p2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mActivityToken:Landroid/os/IBinder;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "VSSessionHandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/samsung/android/server/virtualspace/VSSession$1;

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/virtualspace/VSSession$1;-><init>(Lcom/samsung/android/server/virtualspace/VSSession;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$bOILEyyUrT_J5twV7xEF1HfoOuU;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$bOILEyyUrT_J5twV7xEF1HfoOuU;-><init>(Lcom/samsung/android/server/virtualspace/VSSession;)V

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    :try_start_4d
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget-object v1, v1, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSAM:Lcom/android/server/am/SamsungActivityManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/am/SamsungActivityManagerService;->getApplicationToken(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mClientToken:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mClientToken:Landroid/os/IBinder;

    if-eqz v1, :cond_62

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mClientToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_62} :catch_63

    :cond_62
    goto :goto_64

    :catch_63
    move-exception v1

    :goto_64
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget-object v1, v1, Lcom/samsung/android/server/virtualspace/VSManagerService;->mDm:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    invoke-virtual {v2}, Lcom/samsung/android/server/virtualspace/VSManagerService;->getServiceHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/virtualspace/VSManagerService;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_7e

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    :cond_7e
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mValid:Z

    return-void
.end method

.method private closeScreens()V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSSession;->assertRunOnHandlerThread()V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/samsung/android/server/virtualspace/VSScreen;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/server/virtualspace/VSScreen;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_23

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/samsung/android/server/virtualspace/VSScreen;->finish()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_23
    return-void
.end method

.method private closeTask()V
    .registers 3

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSSession;->assertRunOnHandlerThread()V

    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSSession;->closeScreens()V

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSSession;->removeAllRedirects()V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget-object v0, v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mDm:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSManagerService;->sessionClosed()V

    return-void
.end method

.method private createScreenInternal(IIII)Lcom/samsung/android/server/virtualspace/VSScreen;
    .registers 12

    new-instance v6, Lcom/samsung/android/server/virtualspace/VSScreen;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/virtualspace/VSScreen;-><init>(Lcom/samsung/android/server/virtualspace/VSSession;IIII)V

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->isValid()Z

    move-result v1

    if-nez v1, :cond_13

    const/4 v1, 0x0

    return-object v1

    :cond_13
    return-object v0
.end method

.method private getScreen(I)Lcom/samsung/android/server/virtualspace/VSScreen;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreensMap:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreensMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/virtualspace/VSScreen;

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public static synthetic lambda$close$1(Lcom/samsung/android/server/virtualspace/VSSession;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSManagerService;->sessionClosing()V

    return-void
.end method

.method public static synthetic lambda$close$2(Lcom/samsung/android/server/virtualspace/VSSession;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSSession;->closeTask()V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/samsung/android/server/virtualspace/VSSession;)V
    .registers 3

    const-string v0, "VSManagerService"

    const-string v1, "VSSession: The client application died! Closing down the VS session..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSSession;->close()V

    return-void
.end method

.method public static synthetic lambda$onAppOrientationUpdated$5(Lcom/samsung/android/server/virtualspace/VSSession;II)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getScreen(I)Lcom/samsung/android/server/virtualspace/VSScreen;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/virtualspace/VSScreen;->onAppOrientationUpdated(I)V

    :cond_9
    return-void
.end method

.method public static synthetic lambda$onDisplayBoundsUpdated$3(Lcom/samsung/android/server/virtualspace/VSSession;IIIII)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getScreen(I)Lcom/samsung/android/server/virtualspace/VSScreen;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/samsung/android/server/virtualspace/VSScreen;->onBoundsUpdated(IIII)V

    :cond_9
    return-void
.end method

.method public static synthetic lambda$onDisplayChanged$7(Lcom/samsung/android/server/virtualspace/VSSession;I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getScreen(I)Lcom/samsung/android/server/virtualspace/VSScreen;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->onDisplayChanged()V

    :cond_9
    return-void
.end method

.method public static synthetic lambda$onDisplayRemoved$8(Lcom/samsung/android/server/virtualspace/VSSession;I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getScreen(I)Lcom/samsung/android/server/virtualspace/VSScreen;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->onDisplayRemoved()V

    :cond_9
    return-void
.end method

.method public static synthetic lambda$onShowVirtualKeyboard$6(Lcom/samsung/android/server/virtualspace/VSSession;I)V
    .registers 4

    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mIMETargetDisplayId:I

    if-eq v0, p1, :cond_1c

    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mIMETargetDisplayId:I

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSSession;->getScreen(I)Lcom/samsung/android/server/virtualspace/VSScreen;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->onIMETargetChanged(Z)V

    :cond_10
    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getScreen(I)Lcom/samsung/android/server/virtualspace/VSScreen;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->onIMETargetChanged(Z)V

    :cond_1a
    iput p1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mIMETargetDisplayId:I

    :cond_1c
    return-void
.end method

.method public static synthetic lambda$onTopTaskUpdated$4(Lcom/samsung/android/server/virtualspace/VSSession;II)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getScreen(I)Lcom/samsung/android/server/virtualspace/VSScreen;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/virtualspace/VSScreen;->onTopTaskUpdated(I)V

    :cond_9
    return-void
.end method

.method private removeAllRedirects()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirects:Landroid/util/SparseArray;

    monitor-enter v0

    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirects:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_3

    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private removeMapping(Lcom/samsung/android/server/virtualspace/VSScreen;)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreensMap:Landroid/util/SparseArray;

    monitor-enter v0

    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreensMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    move v2, v1

    if-ltz v1, :cond_12

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreensMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_3

    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private removeRedirects(Lcom/samsung/android/server/virtualspace/VSScreen;)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirects:Landroid/util/SparseArray;

    monitor-enter v0

    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirects:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    move v2, v1

    if-ltz v1, :cond_12

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirects:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_3

    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method


# virtual methods
.method addScreen(Lcom/samsung/android/server/virtualspace/VSScreen;)V
    .registers 3

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSSession;->assertRunOnHandlerThread()V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method assertRunOnHandlerThread()V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mHandlerThread:Landroid/os/HandlerThread;

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Must run on VS handler thread"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public declared-synchronized close()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mValid:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_35

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_12

    const-string v0, "VSManagerService"

    const-string v1, "VSSession: close()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$Eh7NGd5gi39s2qmVeihGujLAJYs;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$Eh7NGd5gi39s2qmVeihGujLAJYs;-><init>(Lcom/samsung/android/server/virtualspace/VSSession;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    new-instance v0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$8gn4facRxOKAw7xkto5I7joRZqs;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$8gn4facRxOKAw7xkto5I7joRZqs;-><init>(Lcom/samsung/android/server/virtualspace/VSSession;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/virtualspace/VSSession;->runTask(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mValid:Z

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mClientToken:Landroid/os/IBinder;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mClientToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mClientToken:Landroid/os/IBinder;
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_35

    :cond_33
    monitor-exit p0

    return-void

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createScreen(IIII)Lcom/samsung/android/virtualspace/IVSScreen;
    .registers 10

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mValid:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_34

    const-string v0, "VSManagerService"

    const-string v1, "VSSession: createScreen(%d, %d, %d, %x)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/virtualspace/VSSession;->createScreenInternal(IIII)Lcom/samsung/android/server/virtualspace/VSScreen;

    move-result-object v0

    return-object v0
.end method

.method public createScreenDefault(I)Lcom/samsung/android/virtualspace/IVSScreen;
    .registers 5

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mValid:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_25

    const-string v0, "VSManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VSSession: createScreen("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->createScreenInternal(IIII)Lcom/samsung/android/server/virtualspace/VSScreen;

    move-result-object v0

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mValid:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_20

    const-string v0, "VSManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VSSession: dispatchKeyEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_24
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget-object v0, v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mIm:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/input/InputManagerService;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v0
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_30

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_30
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 6

    const-string/jumbo v0, "screens:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/samsung/android/server/virtualspace/VSScreen;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/server/virtualspace/VSScreen;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_22

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_22
    return-void
.end method

.method getClientActivity()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mActivityToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public getDisplayForWindow(I)I
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirects:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirects:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_13

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirects:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    move v1, v3

    :cond_13
    if-ltz v1, :cond_25

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirects:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/virtualspace/VSScreen;

    if-eqz v3, :cond_25

    invoke-virtual {v3}, Lcom/samsung/android/server/virtualspace/VSScreen;->getDisplayId()I

    move-result v2

    monitor-exit v0

    return v2

    :cond_25
    monitor-exit v0

    return v2

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public getIMEDisplayId(I)I
    .registers 4

    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mKeyboardMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return p1

    :cond_6
    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mIMEDisplayId:I

    return v0
.end method

.method getManager()Lcom/samsung/android/server/virtualspace/VSManagerService;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    return-object v0
.end method

.method public getPriority(I)I
    .registers 4

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getScreen(I)Lcom/samsung/android/server/virtualspace/VSScreen;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->getPriority()I

    move-result v1

    goto :goto_c

    :cond_b
    const/4 v1, -0x1

    :goto_c
    return v1
.end method

.method public isVSScreen(I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getScreen(I)Lcom/samsung/android/server/virtualspace/VSScreen;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public onAppOrientationUpdated(II)V
    .registers 4

    new-instance v0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$NWweRys3pIBwCWZWjBqmzs-loVE;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$NWweRys3pIBwCWZWjBqmzs-loVE;-><init>(Lcom/samsung/android/server/virtualspace/VSSession;II)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/virtualspace/VSSession;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDisplayAdded(I)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_1f

    const-string v0, "VSManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VSSession: onDisplayAdded("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void
.end method

.method public onDisplayBoundsUpdated(ILandroid/graphics/Rect;)V
    .registers 15

    iget v7, p2, Landroid/graphics/Rect;->left:I

    iget v8, p2, Landroid/graphics/Rect;->top:I

    iget v9, p2, Landroid/graphics/Rect;->right:I

    iget v10, p2, Landroid/graphics/Rect;->bottom:I

    new-instance v11, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$-z056sa-mCXdk8FArj01mFyFsI4;

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$-z056sa-mCXdk8FArj01mFyFsI4;-><init>(Lcom/samsung/android/server/virtualspace/VSSession;IIIII)V

    invoke-virtual {p0, v11}, Lcom/samsung/android/server/virtualspace/VSSession;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_1f

    const-string v0, "VSManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VSSession: onDisplayChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$79EV3N8eK42rmG9MIHqhgwss3pM;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$79EV3N8eK42rmG9MIHqhgwss3pM;-><init>(Lcom/samsung/android/server/virtualspace/VSSession;I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/virtualspace/VSSession;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_1f

    const-string v0, "VSManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VSSession: onDisplayRemoved("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$Ipxju9uYQR2ahdx_-TV5sFAJSeI;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$Ipxju9uYQR2ahdx_-TV5sFAJSeI;-><init>(Lcom/samsung/android/server/virtualspace/VSSession;I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/virtualspace/VSSession;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onShowVirtualKeyboard(I)Z
    .registers 4

    new-instance v0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$xniqJyK8RQE90l9oBPxANzh8F8g;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$xniqJyK8RQE90l9oBPxANzh8F8g;-><init>(Lcom/samsung/android/server/virtualspace/VSSession;I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/virtualspace/VSSession;->runTask(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mKeyboardMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public onTopTaskUpdated(II)V
    .registers 6

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_22

    const-string v0, "VSManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VSSession: onTopTaskUpdated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$Ongtw8xwpIgHiaz1f91lVx4ac5I;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$Ongtw8xwpIgHiaz1f91lVx4ac5I;-><init>(Lcom/samsung/android/server/virtualspace/VSSession;II)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/virtualspace/VSSession;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method redirectIME(Lcom/samsung/android/server/virtualspace/VSScreen;Z)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->getDisplayId()I

    move-result v1

    if-eqz p2, :cond_b

    move v0, v1

    goto :goto_12

    :cond_b
    if-nez p2, :cond_12

    iget v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mIMEDisplayId:I

    if-eq v2, v0, :cond_12

    return-void

    :cond_12
    :goto_12
    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mIMEDisplayId:I

    if-eq v1, v0, :cond_1f

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mIMEDisplayId:I

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/server/virtualspace/VSManagerService;->redirectIME(II)V

    iput v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mIMEDisplayId:I

    :cond_1f
    return-void
.end method

.method redirectSystemWindows(ILcom/samsung/android/server/virtualspace/VSScreen;Z)V
    .registers 9

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSSession;->assertRunOnHandlerThread()V

    :cond_7
    const/16 v0, 0x7db

    if-ne p1, v0, :cond_f

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/server/virtualspace/VSSession;->redirectIME(Lcom/samsung/android/server/virtualspace/VSScreen;Z)V

    return-void

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirects:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_12
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirects:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_1c

    const/4 v2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    if-eqz v2, :cond_28

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirects:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/virtualspace/VSScreen;

    goto :goto_29

    :cond_28
    const/4 v3, 0x0

    :goto_29
    if-eqz p3, :cond_37

    if-eqz v2, :cond_31

    if-ne v3, p2, :cond_31

    monitor-exit v0

    return-void

    :cond_31
    iget-object v4, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirects:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_41

    :cond_37
    if-eqz v2, :cond_43

    if-eq v3, p2, :cond_3c

    goto :goto_43

    :cond_3c
    iget-object v4, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirects:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_41
    monitor-exit v0

    return-void

    :cond_43
    :goto_43
    monitor-exit v0

    return-void

    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_12 .. :try_end_47} :catchall_45

    throw v1
.end method

.method removeScreen(Lcom/samsung/android/server/virtualspace/VSScreen;)V
    .registers 4

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSSession;->assertRunOnHandlerThread()V

    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->getDisplayId()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mIMEDisplayId:I

    if-ne v0, v1, :cond_18

    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mIMEDisplayId:I

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/virtualspace/VSSession;->redirectIME(Lcom/samsung/android/server/virtualspace/VSScreen;Z)V

    :cond_18
    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->removeRedirects(Lcom/samsung/android/server/virtualspace/VSScreen;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->removeMapping(Lcom/samsung/android/server/virtualspace/VSScreen;)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method runTask(Ljava/lang/Runnable;)V
    .registers 4

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mValid:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mHandlerThread:Landroid/os/HandlerThread;

    if-eq v0, v1, :cond_13

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_16

    :cond_13
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_16
    return-void
.end method

.method public setMouseCursorVisibility(Z)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_1a

    const-string v0, "VSManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VSSession: setMouseCursorVisibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return-void
.end method

.method setScreen(ILcom/samsung/android/server/virtualspace/VSScreen;)V
    .registers 5

    invoke-direct {p0, p2}, Lcom/samsung/android/server/virtualspace/VSSession;->removeMapping(Lcom/samsung/android/server/virtualspace/VSScreen;)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreensMap:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreensMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public setVirtualKeyboardMode(I)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_1a

    const-string v0, "VSManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VSSession: setVirtualKeyboardMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iput p1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mKeyboardMode:I

    return-void
.end method
