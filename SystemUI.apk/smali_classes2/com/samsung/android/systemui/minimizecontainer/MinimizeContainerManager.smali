.class public Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;
.super Ljava/lang/Object;
.source "MinimizeContainerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$Utils;,
        Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$MinimizeContainerCallback;,
        Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;
    }
.end annotation


# static fields
.field public static final DEBUG:Z


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private final mCallBacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$MinimizeContainerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

.field private mContext:Landroid/content/Context;

.field private mDisplayFrame:Landroid/graphics/Rect;

.field public mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

.field private mIWindowManager:Landroid/view/IWindowManager;

.field private mItemLoadQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field mMinimizeMaxCount:I

.field private mMinimizeTaskItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiWindowCallback:Lcom/samsung/android/multiwindow/IMultiWindowCallback$Stub;

.field private mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private mNonDecorDisplayFrame:Landroid/graphics/Rect;

.field private mPendingTaskItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

.field private mRotation:I

.field private mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

.field private mThread:Landroid/os/HandlerThread;

.field private mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mRotation:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mDisplayFrame:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mNonDecorDisplayFrame:Landroid/graphics/Rect;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mCallBacks:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mPendingTaskItemList:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mMinimizeTaskItemList:Ljava/util/ArrayList;

    const-string v1, "MinimizeContainer"

    const-string v2, "[Manager] Create MinimizeContainerManager, cores=1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MinimizeContainerThread"

    invoke-direct {v1, v2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mItemLoadQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v8, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mItemLoadQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mWindowManager:Landroid/view/WindowManager;

    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    new-instance v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    new-instance v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$1;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)V

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mMultiWindowCallback:Lcom/samsung/android/multiwindow/IMultiWindowCallback$Stub;

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->updateDisplayFrame(Z)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mRotation:I

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->createRotationWatcherIfNeeded()V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mMultiWindowCallback:Lcom/samsung/android/multiwindow/IMultiWindowCallback$Stub;

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->registerMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mMinimizeMaxCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->loadMinimizeTaskInfo(Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->rebuildAllMinimizeTaskItems()V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->addMinimizeTaskItem(Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->removePendingTaskItem(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;I)Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->getMinimizeTaskItemByTaskId(I)Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->removeMinimizeTaskItem(Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mPendingTaskItemList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->publishItemIfNeeded(Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mRotation:I

    return v0
.end method

.method static synthetic access$1702(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mRotation:I

    return p1
.end method

.method static synthetic access$1800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->forceCompleteAnimationOfAllPendingItems()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mDisplayFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;IILandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->notifyRotationChanged(IILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->savePositionToSharedPreferences(FF)V

    return-void
.end method

.method static synthetic access$2400(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->notifyFlipFolderStateChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)Lcom/samsung/android/multiwindow/MultiWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->updateDisplayFrame(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->removeWindow()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)Lcom/samsung/android/multiwindow/IMultiWindowCallback$Stub;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mMultiWindowCallback:Lcom/samsung/android/multiwindow/IMultiWindowCallback$Stub;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;Ljava/util/concurrent/ThreadPoolExecutor;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p1
.end method

.method static synthetic access$800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)Landroid/os/HandlerThread;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$802(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$900(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->addWindow()V

    return-void
.end method

.method private addMinimizeTaskItem(Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V
    .locals 5

    iget v0, p1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->taskId:I

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->hasMinimizeTaskItem(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MinimizeContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Manager] addItem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mMinimizeTaskItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->notifyItemAdded(Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mMinimizeTaskItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mMinimizeMaxCount:I

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mMinimizeTaskItemList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mMinimizeMaxCount:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;

    iget v2, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->taskId:I

    invoke-direct {p0, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->removePendingTaskItem(I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->removeMinimizeTaskItem(Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mActivityManager:Landroid/app/ActivityManager;

    iget v3, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->taskId:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/ActivityManager;->setTaskWindowingMode(IIZ)V

    :cond_2
    return-void
.end method

.method private addWindow()V
    .locals 6

    const-string v0, "MinimizeContainer"

    const-string v1, "[Manager] Add Window"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->generateLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const v2, 0x7f0d0114

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->init(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    const v2, 0x7f0a0323

    invoke-virtual {v0, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->init(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)V

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0d0115

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;

    invoke-virtual {v1, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->init(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)V

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-virtual {v2, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->addView(Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_0

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->getSafeInsetTop()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    iget-object v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-virtual {v3, p0, v4, v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->init(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;)V

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->createRotationWatcherIfNeeded()V

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    iget-object v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private createRotationWatcherIfNeeded()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$2;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    :cond_0
    return-void
.end method

.method private forceCompleteAnimationOfAllPendingItems()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mPendingTaskItemList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mPendingTaskItemList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->animationCompleted()V

    invoke-direct {p0, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->publishItemIfNeeded(Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private generateLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const-string v1, "MinimizeContainer"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0xa2c

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const v1, 0x1000328

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    return-object v0
.end method

.method private getMinimizeTaskItemByTaskId(I)Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mMinimizeTaskItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;

    iget v2, v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->taskId:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSafeInsetTop()I
    .locals 3

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    const/4 v1, 0x0

    iget-object v2, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    :cond_0
    return v1
.end method

.method private hasMinimizeTaskItem(I)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mMinimizeTaskItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;

    iget v2, v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->taskId:I

    if-ne v2, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private loadMinimizeTaskInfo(Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    invoke-virtual {v1, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->sendMessage(Landroid/os/Message;)Z

    new-instance v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$3;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private notifyFlipFolderStateChanged()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mCallBacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$MinimizeContainerCallback;

    sget-boolean v3, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MinimizeContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Manager] onFolderStateChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$MinimizeContainerCallback;->onFlipFolderStateChanged()V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyItemAdded(Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mCallBacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$MinimizeContainerCallback;

    sget-boolean v3, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MinimizeContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Manager] onItemAdded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$MinimizeContainerCallback;->onItemAdded(Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyItemRemoved(Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mCallBacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$MinimizeContainerCallback;

    sget-boolean v3, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MinimizeContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Manager] onItemRemoved: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$MinimizeContainerCallback;->onItemRemoved(Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyRotationChanged(IILandroid/graphics/Rect;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mCallBacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$MinimizeContainerCallback;

    sget-boolean v3, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MinimizeContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Manager] onRotationChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$MinimizeContainerCallback;->onRotationChanged(IILandroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyWindowRemoved()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mCallBacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$MinimizeContainerCallback;

    sget-boolean v3, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MinimizeContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Manager] onWindowRemoved: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$MinimizeContainerCallback;->onWindowRemoved()V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private publishItemIfNeeded(Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->readyToAddItem()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MinimizeContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Manager] Publish "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mPendingTaskItemList:Landroid/util/SparseArray;

    iget v1, p1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    const/16 v1, 0x15

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    invoke-virtual {v1, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private rebuildAllMinimizeTaskItems()V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mPendingTaskItemList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mMinimizeTaskItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getFreeformTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    new-instance v10, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;

    const/4 v4, 0x0

    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iget-object v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    iget v7, v2, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;-><init>(Landroid/graphics/Rect;ILandroid/content/ComponentName;IZZ)V

    invoke-direct {p0, v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->loadMinimizeTaskInfo(Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V

    const-string v4, "MinimizeContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Manager] Make MinimizeTaskItem : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeMinimizeTaskItem(Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MinimizeContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Manager] removeMinimizeTaskItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mMinimizeTaskItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->notifyItemRemoved(Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V

    return-void
.end method

.method private removePendingTaskItem(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mPendingTaskItemList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;

    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MinimizeContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Manager] removePendingTaskItem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->removeMessages(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mPendingTaskItemList:Landroid/util/SparseArray;

    iget v2, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->taskId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    return-void
.end method

.method private removeWindow()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "MinimizeContainer"

    const-string v2, "[Manager] Remove Window"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->notifyWindowRemoved()V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mCallBacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    invoke-interface {v0, v2}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private savePositionToSharedPreferences(FF)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mContext:Landroid/content/Context;

    const-string v1, "minimize_container_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "position_x"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v2, "position_y"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private scalePositionToSharedPreferences(FF)V
    .locals 4

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->loadPositionFromSharedPreferences(FF)Landroid/graphics/PointF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    iget v1, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget v1, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    sget-boolean v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MinimizeContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scalePositionToSharedPreferences, new position=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ") scale=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->savePositionToSharedPreferences(FF)V

    :cond_1
    return-void
.end method

.method private updateDisplayFrame(Z)V
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mNonDecorDisplayFrame:Landroid/graphics/Rect;

    iget v3, v1, Landroid/view/DisplayInfo;->appWidth:I

    iget v4, v1, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->scalePositionToSharedPreferences(FF)V

    :cond_0
    return-void
.end method


# virtual methods
.method enableBlurEffect(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->enableBlurEffect(ZZ)V

    return-void
.end method

.method enableBlurEffect(ZZ)V
    .locals 3

    const v0, 0x3e4ccccd    # 0.2f

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v2, v2, -0x41

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getDisplayFrame()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method getMinimizeTaskItem(I)Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mMinimizeTaskItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;

    return-object v0
.end method

.method getMinimizeTasksCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mMinimizeTaskItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getNonDecorDisplayFrame()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mNonDecorDisplayFrame:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method getPolicyController()Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    return-object v0
.end method

.method loadPositionFromSharedPreferences(FF)Landroid/graphics/PointF;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mContext:Landroid/content/Context;

    const-string v1, "minimize_container_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "position_x"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    const-string v2, "position_y"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    sget-boolean v3, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MinimizeContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Manager] loadPositionFromSharedPreferences, position=("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ") default=("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v3
.end method

.method public moveTaskToFront(Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V
    .locals 4

    iget v0, p1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->taskId:I

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->hasMinimizeTaskItem(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MinimizeContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Manager] moveTaskToFront: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mActivityManager:Landroid/app/ActivityManager;

    iget v1, p1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->taskId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    const/16 v1, 0x16

    iget v3, p1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->taskId:I

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    invoke-virtual {v1, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public registerCallback(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$MinimizeContainerCallback;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mCallBacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MinimizeContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Manager] registerCallback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeAllMinimizeTasks()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MinimizeContainer"

    const-string v1, "[Manager] removeAllMinimizeTasks"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$5;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeTask(I)V
    .locals 2

    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$4;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$4;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;I)V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method reportMinimizeContainerBounds(Landroid/graphics/Rect;)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    const/16 v1, 0x21

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    invoke-virtual {v1, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->sendMessage(Landroid/os/Message;)Z

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iget v3, v1, Landroid/graphics/Point;->y:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x3

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x61

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mContext:Landroid/content/Context;

    const-string v5, "2203"

    const-string v6, "Move icon"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method setFocusable(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x9

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "MinimizeContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Manager] setFocusable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
