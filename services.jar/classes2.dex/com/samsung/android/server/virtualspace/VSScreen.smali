.class Lcom/samsung/android/server/virtualspace/VSScreen;
.super Lcom/samsung/android/virtualspace/IVSScreen$Stub;
.source "VSScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/virtualspace/VSScreen$Value;
    }
.end annotation


# static fields
.field private static final MSG_APP_ORIENTATION_CHANGED:I = 0xb

.field private static final MSG_BOUNDS_CHANGED:I = 0x7

.field private static final MSG_CLOSED:I = 0xa

.field private static final MSG_HAS_CONTENT_CHANGED:I = 0x4

.field private static final MSG_IME_TARGET_CHANGED:I = 0xc

.field private static final MSG_LOST:I = 0x5

.field private static final MSG_ORIENTATION_CHANGED:I = 0x3

.field private static final MSG_READY:I = 0x9

.field private static final MSG_TOP_TASK_UPDATED:I = 0xd

.field private static sDisplayCount:I

.field private static sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private static sPointerCount:I

.field private static final sPointerLock:Ljava/lang/Object;

.field private static sPointerProps:[Landroid/view/MotionEvent$PointerProperties;


# instance fields
.field private final mAppOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/server/virtualspace/VSScreen$Value<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/server/virtualspace/VSScreen$Value<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/virtualspace/IVSScreenCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mClearPending:Z

.field private mDensity:I

.field private mDisplay:Landroid/view/Display;

.field private final mFlags:I

.field private final mHasContent:Lcom/samsung/android/server/virtualspace/VSScreen$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/server/virtualspace/VSScreen$Value<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private final mIMETarget:Lcom/samsung/android/server/virtualspace/VSScreen$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/server/virtualspace/VSScreen$Value<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mId:I

.field private mInputForwarder:Landroid/app/IInputForwarder;

.field private final mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

.field private mNonEmpty:Z

.field private final mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/server/virtualspace/VSScreen$Value<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPriority:I

.field private volatile mRotation:I

.field private final mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

.field private final mSession:Lcom/samsung/android/server/virtualspace/VSSession;

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private final mTopTask:Lcom/samsung/android/server/virtualspace/VSScreen$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/server/virtualspace/VSScreen$Value<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mValid:Z

.field private mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    sput-object v0, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/virtualspace/VSSession;IIII)V
    .registers 12

    invoke-direct {p0}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    const/16 v1, 0x64

    iput v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mPriority:I

    new-instance v1, Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    const-string v2, "HasContent"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {v1, p0, v2, v5, v4}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;Ljava/lang/String;ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHasContent:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    new-instance v1, Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    const-string v2, "Orientation"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v1, p0, v2, v5, v4}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;Ljava/lang/String;ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    new-instance v1, Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    const-string v2, "AppOrientation"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xb

    invoke-direct {v1, p0, v2, v5, v4}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;Ljava/lang/String;ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mAppOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    new-instance v1, Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    const-string v2, "Bounds"

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x7

    invoke-direct {v1, p0, v2, v5, v4}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;Ljava/lang/String;ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    new-instance v1, Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    const-string v2, "IMETarget"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/16 v5, 0xc

    invoke-direct {v1, p0, v2, v5, v4}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;Ljava/lang/String;ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mIMETarget:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    new-instance v1, Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    const-string v2, "TopTask"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v4, 0xd

    invoke-direct {v1, p0, v2, v4, v0}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;Ljava/lang/String;ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mTopTask:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mCallbacks:Landroid/os/RemoteCallbackList;

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getManager()Lcom/samsung/android/server/virtualspace/VSManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iput p2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mWidth:I

    iput p3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHeight:I

    iput p4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDensity:I

    iput v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRotation:I

    iput p5, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mFlags:I

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget-object v0, v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    new-instance v0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$kHFUM_-bxzQ6Cs4PkgsRNNVXyCk;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$kHFUM_-bxzQ6Cs4PkgsRNNVXyCk;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/server/virtualspace/VSScreen;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->assertRunOnHandlerThread()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/server/virtualspace/VSScreen;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/server/virtualspace/VSScreen;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->notifyCallbacks(I)V

    return-void
.end method

.method private static addFlag(Ljava/lang/StringBuffer;IILjava/lang/String;)V
    .registers 5

    and-int v0, p1, p2

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, " | "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_f
    invoke-virtual {p0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_12
    return-void
.end method

.method private assertRunOnHandlerThread()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSSession;->assertRunOnHandlerThread()V

    return-void
.end method

.method private clearComplete()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mClearPending:Z

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mAppOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mute()V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mAppOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->update(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mute()V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SamsungWindowManagerService;->updateOrientation(I)V

    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mWidth:I

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHeight:I

    if-ge v0, v1, :cond_28

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->setRotation(I)V

    :cond_28
    return-void
.end method

.method private clearTask()V
    .registers 3

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->assertRunOnHandlerThread()V

    :cond_7
    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mClearPending:Z

    if-eqz v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHasContent:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->clearComplete()V

    goto :goto_21

    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mClearPending:Z

    :goto_21
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget-object v0, v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSAM:Lcom/android/server/am/SamsungActivityManagerService;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/SamsungActivityManagerService;->clearVSDisplay(I)V

    return-void
.end method

.method private closeTask()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->clearTask()V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/virtualspace/VSSession;->removeScreen(Lcom/samsung/android/server/virtualspace/VSScreen;)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    :cond_14
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mInputForwarder:Landroid/app/IInputForwarder;

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mInputForwarder:Landroid/app/IInputForwarder;

    :cond_1b
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->notifyCallbacks(I)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    return-void
.end method

.method private static flagsToString(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "FLAG_REDIRECT_MAIN_DISPLAY"

    const/16 v2, 0x10

    invoke-static {v0, p0, v2, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->addFlag(Ljava/lang/StringBuffer;IILjava/lang/String;)V

    const-string v1, "FLAG_CLEAR_MAIN_DISPLAY"

    const/16 v2, 0x20

    invoke-static {v0, p0, v2, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->addFlag(Ljava/lang/StringBuffer;IILjava/lang/String;)V

    const-string v1, "FLAG_ENABLE_HW_COMPOSITION"

    const/16 v2, 0x40

    invoke-static {v0, p0, v2, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->addFlag(Ljava/lang/StringBuffer;IILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initTask()V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "initTask"

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/virtualspace/VSSession;->addScreen(Lcom/samsung/android/server/virtualspace/VSScreen;)V

    const/16 v0, 0x4009

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mFlags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_23

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    :cond_23
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget-object v1, v1, Lcom/samsung/android/server/virtualspace/VSManagerService;->mDm:Landroid/hardware/display/DisplayManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VSScreen#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/android/server/virtualspace/VSScreen;->sDisplayCount:I

    const/4 v8, 0x1

    add-int/2addr v3, v8

    sput v3, Lcom/samsung/android/server/virtualspace/VSScreen;->sDisplayCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mWidth:I

    iget v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHeight:I

    iget v5, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDensity:I

    const/4 v6, 0x0

    move v7, v0

    invoke-virtual/range {v1 .. v7}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-nez v1, :cond_56

    const-string v1, "Failed to create virtual display"

    invoke-direct {p0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->loge(Ljava/lang/String;)V

    goto :goto_6a

    :cond_56
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDisplay:Landroid/view/Display;

    if-nez v1, :cond_6b

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    const-string v1, "Display not created"

    invoke-direct {p0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->loge(Ljava/lang/String;)V

    :goto_6a
    goto :goto_9e

    :cond_6b
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->createInputForwarder(I)Landroid/app/IInputForwarder;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mInputForwarder:Landroid/app/IInputForwarder;

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

    iget v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    iget v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRotation:I

    invoke-virtual {v1, v2, v3, v8}, Lcom/android/server/wm/SamsungWindowManagerService;->setDisplayRotation(IIZ)V

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    iget v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-virtual {v1, v2, p0}, Lcom/samsung/android/server/virtualspace/VSSession;->setScreen(ILcom/samsung/android/server/virtualspace/VSScreen;)V

    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->notifyCallbacks(I)V

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->onDisplayChanged()V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_97} :catch_98

    return-void

    :catch_98
    move-exception v0

    const-string v1, "Couldn\'t create activity container: "

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9e
    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->closeTask()V

    return-void
.end method

.method public static synthetic lambda$clear$5(Lcom/samsung/android/server/virtualspace/VSScreen;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->clearTask()V

    return-void
.end method

.method public static synthetic lambda$close$4(Lcom/samsung/android/server/virtualspace/VSScreen;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->closeTask()V

    return-void
.end method

.method public static synthetic lambda$launchActivity$9(Lcom/samsung/android/server/virtualspace/VSScreen;Landroid/content/Intent;Landroid/os/ConditionVariable;Landroid/util/MutableBoolean;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/virtualspace/VSScreen;->launchActivityTask(Landroid/content/Intent;Landroid/os/ConditionVariable;Landroid/util/MutableBoolean;)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/samsung/android/server/virtualspace/VSScreen;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->initTask()V

    return-void
.end method

.method public static synthetic lambda$redirectSystemWindows$12(Lcom/samsung/android/server/virtualspace/VSScreen;IZ)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v0, p1, p0, p2}, Lcom/samsung/android/server/virtualspace/VSSession;->redirectSystemWindows(ILcom/samsung/android/server/virtualspace/VSScreen;Z)V

    return-void
.end method

.method public static synthetic lambda$registerCallback$1(Lcom/samsung/android/server/virtualspace/VSScreen;Lcom/samsung/android/virtualspace/IVSScreenCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->resendStateTask()V

    return-void
.end method

.method public static synthetic lambda$releaseFocus$7(Lcom/samsung/android/server/virtualspace/VSScreen;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/SamsungWindowManagerService;->setFocusedDisplay(IZ)Z

    return-void
.end method

.method public static synthetic lambda$resendState$2(Lcom/samsung/android/server/virtualspace/VSScreen;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->resendStateTask()V

    return-void
.end method

.method public static synthetic lambda$setPriority$11(Lcom/samsung/android/server/virtualspace/VSScreen;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->setPriorityTask(I)V

    return-void
.end method

.method public static synthetic lambda$setRotation$8(Lcom/samsung/android/server/virtualspace/VSScreen;I)V
    .registers 5

    iput p1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRotation:I

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/SamsungWindowManagerService;->setDisplayRotation(IIZ)V

    return-void
.end method

.method public static synthetic lambda$setSurface$10(Lcom/samsung/android/server/virtualspace/VSScreen;Landroid/view/Surface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->updateSurfaceTask(Landroid/view/Surface;)V

    return-void
.end method

.method public static synthetic lambda$takeFocus$6(Lcom/samsung/android/server/virtualspace/VSScreen;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/SamsungWindowManagerService;->setFocusedDisplay(IZ)Z

    return-void
.end method

.method public static synthetic lambda$unregisterCallback$3(Lcom/samsung/android/server/virtualspace/VSScreen;Lcom/samsung/android/virtualspace/IVSScreenCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method private launchActivityTask(Landroid/content/Intent;Landroid/os/ConditionVariable;Landroid/util/MutableBoolean;)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_38

    const/high16 v0, 0x18010000

    :try_start_6
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_1d

    :cond_f
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    move-object v0, v1

    :goto_1d
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    invoke-virtual {v1}, Lcom/samsung/android/server/virtualspace/VSManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    const/4 v1, 0x1

    iput-boolean v1, p3, Landroid/util/MutableBoolean;->value:Z
    :try_end_29
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_29} :catch_31
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_29} :catch_2a

    goto :goto_37

    :catch_2a
    move-exception v0

    const-string v1, "Unexpected exception"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_38

    :catch_31
    move-exception v0

    const-string v1, "Activity not found"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_37
    nop

    :cond_38
    :goto_38
    invoke-virtual {p2}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .registers 4

    const-string v0, "VSManagerService"

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->makeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 4

    const-string v0, "VSManagerService"

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->makeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    const-string v0, "VSManagerService"

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->makeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .registers 4

    const-string v0, "VSManagerService"

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->makeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .registers 4

    const-string v0, "VSManagerService"

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->makeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    const-string v0, "VSManagerService"

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->makeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private makeMsg(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VSScreen("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private notifyCallbacks(I)V
    .registers 6

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->assertRunOnHandlerThread()V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_d
    if-lez v0, :cond_153

    :try_start_f
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mCallbacks:Landroid/os/RemoteCallbackList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/virtualspace/IVSScreenCallback;

    packed-switch p1, :pswitch_data_15a

    :pswitch_1c
    goto/16 :goto_151

    :pswitch_1e
    sget-boolean v2, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v2, :cond_39

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sending callback MSG_TOP_TASK_UPDATED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mTopTask:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_39
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mTopTask:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, p0, v2}, Lcom/samsung/android/virtualspace/IVSScreenCallback;->onTopTaskUpdated(Lcom/samsung/android/virtualspace/IVSScreen;I)V

    goto/16 :goto_151

    :pswitch_4a
    sget-boolean v2, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v2, :cond_65

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sending callback MSG_IME_TARGET_CHANGED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mIMETarget:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_65
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mIMETarget:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, p0, v2}, Lcom/samsung/android/virtualspace/IVSScreenCallback;->onIMETargetChanged(Lcom/samsung/android/virtualspace/IVSScreen;Z)V

    goto/16 :goto_151

    :pswitch_76
    sget-boolean v2, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v2, :cond_91

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sending callback MSG_APP_ORIENTATION_CHANGED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mAppOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_91
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mAppOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, p0, v2}, Lcom/samsung/android/virtualspace/IVSScreenCallback;->onAppOrientationChanged(Lcom/samsung/android/virtualspace/IVSScreen;I)V

    goto/16 :goto_151

    :pswitch_a2
    sget-boolean v2, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v2, :cond_ac

    const-string/jumbo v2, "sending callback MSG_CLOSED"

    invoke-direct {p0, v2}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_ac
    invoke-interface {v1, p0}, Lcom/samsung/android/virtualspace/IVSScreenCallback;->onClosed(Lcom/samsung/android/virtualspace/IVSScreen;)V

    goto/16 :goto_151

    :pswitch_b1
    sget-boolean v2, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v2, :cond_bb

    const-string/jumbo v2, "sending callback MSG_READY"

    invoke-direct {p0, v2}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_bb
    invoke-interface {v1, p0}, Lcom/samsung/android/virtualspace/IVSScreenCallback;->onReady(Lcom/samsung/android/virtualspace/IVSScreen;)V

    goto/16 :goto_151

    :pswitch_c0
    sget-boolean v2, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v2, :cond_db

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sending callback MSG_BOUNDS_CHANGED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_db
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-interface {v1, p0, v2}, Lcom/samsung/android/virtualspace/IVSScreenCallback;->onBoundsChanged(Lcom/samsung/android/virtualspace/IVSScreen;Landroid/graphics/Rect;)V

    goto :goto_151

    :pswitch_e7
    sget-boolean v2, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v2, :cond_f1

    const-string/jumbo v2, "sending callback MSG_LOST"

    invoke-direct {p0, v2}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_f1
    invoke-interface {v1, p0}, Lcom/samsung/android/virtualspace/IVSScreenCallback;->onLost(Lcom/samsung/android/virtualspace/IVSScreen;)V

    goto :goto_151

    :pswitch_f5
    sget-boolean v2, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v2, :cond_110

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sending callback MSG_HAS_CONTENT_CHANGED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHasContent:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_110
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHasContent:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, p0, v2}, Lcom/samsung/android/virtualspace/IVSScreenCallback;->onContentChanged(Lcom/samsung/android/virtualspace/IVSScreen;Z)V

    goto :goto_151

    :pswitch_120
    sget-boolean v2, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v2, :cond_13b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sending callback MSG_ORIENTATION_CHANGED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_13b
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, p0, v2}, Lcom/samsung/android/virtualspace/IVSScreenCallback;->onOrientationChanged(Lcom/samsung/android/virtualspace/IVSScreen;I)V
    :try_end_14a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14a} :catch_14b

    goto :goto_151

    :catch_14b
    move-exception v1

    const-string v2, "Exception while notifying callbacks:"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_151
    goto/16 :goto_d

    :cond_153
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    nop

    :pswitch_data_15a
    .packed-switch 0x3
        :pswitch_120
        :pswitch_f5
        :pswitch_e7
        :pswitch_1c
        :pswitch_c0
        :pswitch_1c
        :pswitch_b1
        :pswitch_a2
        :pswitch_76
        :pswitch_4a
        :pswitch_1e
    .end packed-switch
.end method

.method private resendStateTask()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_9

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->notifyCallbacks(I)V

    :cond_9
    return-void
.end method

.method private static rotateEvent(Landroid/view/MotionEvent;III)Landroid/view/MotionEvent;
    .registers 27

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v15

    sget-object v21, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerLock:Ljava/lang/Object;

    monitor-enter v21

    :try_start_d
    sget v0, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerCount:I
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_b1

    const/4 v4, 0x0

    if-le v15, v0, :cond_39

    :try_start_12
    sput v15, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerCount:I

    new-array v0, v15, [Landroid/view/MotionEvent$PointerCoords;

    sput-object v0, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-array v0, v15, [Landroid/view/MotionEvent$PointerProperties;

    sput-object v0, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    move v0, v4

    :goto_1d
    if-ge v0, v15, :cond_39

    sget-object v5, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v6, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v6}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v6, v5, v0

    sget-object v5, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v6, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v6}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :catchall_34
    move-exception v0

    move/from16 v22, v15

    goto/16 :goto_b4

    :cond_39
    move v0, v4

    :goto_3a
    if-ge v0, v15, :cond_70

    sget-object v5, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v0

    invoke-virtual {v1, v0, v5}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    invoke-virtual {v5, v4}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v8

    packed-switch p1, :pswitch_data_b8

    move v9, v6

    move v10, v8

    goto :goto_5f

    :pswitch_52
    int-to-float v9, v3

    sub-float/2addr v9, v8

    move v10, v6

    goto :goto_5f

    :pswitch_56
    int-to-float v9, v2

    sub-float/2addr v9, v6

    int-to-float v10, v3

    sub-float/2addr v10, v8

    goto :goto_5f

    :pswitch_5b
    move v9, v8

    int-to-float v10, v2

    sub-float/2addr v10, v6

    nop

    :goto_5f
    nop

    invoke-virtual {v5, v4, v9}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    invoke-virtual {v5, v7, v10}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    sget-object v7, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v7, v7, v0

    invoke-virtual {v1, v0, v7}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V
    :try_end_6d
    .catchall {:try_start_12 .. :try_end_6d} :catchall_34

    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    :cond_70
    :try_start_70
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    sget-object v10, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    sget-object v11, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->semGetDisplayId()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v20
    :try_end_a4
    .catchall {:try_start_70 .. :try_end_a4} :catchall_b1

    move v9, v15

    move/from16 v22, v15

    move v15, v0

    :try_start_a8
    invoke-static/range {v4 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    monitor-exit v21
    :try_end_ad
    .catchall {:try_start_a8 .. :try_end_ad} :catchall_b6

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->recycle()V

    return-object v0

    :catchall_b1
    move-exception v0

    move/from16 v22, v15

    :goto_b4
    :try_start_b4
    monitor-exit v21
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b6

    throw v0

    :catchall_b6
    move-exception v0

    goto :goto_b4

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_56
        :pswitch_52
    .end packed-switch
.end method

.method private runTask(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateBounds(IIII)V
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v1}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    monitor-exit v0

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private updateHasContent(Z)V
    .registers 4

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->assertRunOnHandlerThread()V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHasContent:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->update(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    if-nez p1, :cond_1d

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mClearPending:Z

    if-eqz v0, :cond_28

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->clearComplete()V

    goto :goto_28

    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mAppOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->unmute()V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->unmute(Z)V

    :cond_28
    :goto_28
    return-void
.end method

.method private updateSurfaceTask(Landroid/view/Surface;)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSurfaceWidth:I

    iput v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSurfaceHeight:I

    if-eqz p1, :cond_20

    :try_start_c
    invoke-virtual {p1}, Landroid/view/Surface;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSurfaceWidth:I

    invoke-virtual {p1}, Landroid/view/Surface;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSurfaceHeight:I
    :try_end_18
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_18} :catch_19

    goto :goto_20

    :catch_19
    move-exception v0

    const-string v1, "Surface has already been released"

    invoke-direct {p0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->loge(Ljava/lang/String;)V

    return-void

    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0, p1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSurfaceWidth:I

    if-lez v0, :cond_44

    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSurfaceHeight:I

    if-lez v0, :cond_44

    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSurfaceWidth:I

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mWidth:I

    if-ne v0, v1, :cond_39

    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSurfaceHeight:I

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHeight:I

    if-eq v0, v1, :cond_44

    :cond_39
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    iget v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSurfaceWidth:I

    iget v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/virtualspace/VSManagerService;->setScaledDisplaySize(III)V

    :cond_44
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_e

    const-string v0, "clear()"

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_e
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$0Dr3xEPXLYziGPX1sTC1SbZZcPo;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$0Dr3xEPXLYziGPX1sTC1SbZZcPo;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public close()V
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_e

    const-string v0, "close()"

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    new-instance v0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$uNsLrEFl01jj0dF1bVMCIWOgPM4;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$uNsLrEFl01jj0dF1bVMCIWOgPM4;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;)Z
    .registers 9

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mInputForwarder:Landroid/app/IInputForwarder;

    if-nez v0, :cond_b

    goto/16 :goto_93

    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_f
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

    iget v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/SamsungWindowManagerService;->setFocusedDisplay(IZ)Z

    move-result v0
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_8e

    if-nez v0, :cond_7a

    nop

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_23
    :try_start_23
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_7a

    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mNonEmpty:Z
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_8e

    if-nez v0, :cond_34

    nop

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_34
    :try_start_34
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    iget v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setDisplayId(I)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_57

    iget-object v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHasContent:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v4}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_57

    iget-object v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

    iget v5, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/SamsungWindowManagerService;->ensureFocusedDisplay(I)V

    :cond_57
    iget-object v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v4}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_7a

    iget-object v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v4}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mWidth:I

    iget v6, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHeight:I

    invoke-static {v0, v4, v5, v6}, Lcom/samsung/android/server/virtualspace/VSScreen;->rotateEvent(Landroid/view/MotionEvent;III)Landroid/view/MotionEvent;

    move-result-object v4
    :try_end_79
    .catchall {:try_start_34 .. :try_end_79} :catchall_8e

    move-object p1, v4

    :cond_7a
    move v0, v1

    :try_start_7b
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mInputForwarder:Landroid/app/IInputForwarder;

    invoke-interface {v1, p1}, Landroid/app/IInputForwarder;->forwardEvent(Landroid/view/InputEvent;)Z

    move-result v1
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_81} :catch_83
    .catchall {:try_start_7b .. :try_end_81} :catchall_8e

    move v0, v1

    goto :goto_89

    :catch_83
    move-exception v1

    :try_start_84
    const-string v4, ""

    invoke-direct {p0, v4, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_89
    .catchall {:try_start_84 .. :try_end_89} :catchall_8e

    :goto_89
    nop

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_8e
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_93
    :goto_93
    return v1
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  flags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mFlags:I

    invoke-static {v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  surface size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSurfaceWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSurfaceHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  rotation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v1}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  appOrientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mAppOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v1}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  hasContent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHasContent:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v1}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    monitor-enter v0

    :try_start_108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_123
    .catchall {:try_start_108 .. :try_end_123} :catchall_129

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_129
    move-exception v1

    :try_start_12a
    monitor-exit v0
    :try_end_12b
    .catchall {:try_start_12a .. :try_end_12b} :catchall_129

    throw v1
.end method

.method finish()V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->closeTask()V

    return-void
.end method

.method public getAppOrientation()I
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_6

    const/4 v0, -0x1

    return v0

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mAppOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .registers 4

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    monitor-enter v0

    :try_start_b
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v1}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    monitor-exit v0

    return-void

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_18

    throw v1
.end method

.method getDisplayId()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    return v0
.end method

.method public getOrientation()I
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "getOrientation()"

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPriority()I
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_6

    const/4 v0, -0x1

    return v0

    :cond_6
    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mPriority:I

    return v0
.end method

.method public getRotation()I
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "getRotation()"

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_f
    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRotation:I

    return v0
.end method

.method public getSize(Landroid/graphics/Point;)V
    .registers 3

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mWidth:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHeight:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method isValid()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    return v0
.end method

.method public launchActivity(Landroid/content/Intent;)Z
    .registers 6

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launchActivity("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_1d
    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    if-nez p1, :cond_25

    goto :goto_48

    :cond_25
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v1}, Landroid/util/MutableBoolean;-><init>(Z)V

    move-object v1, v2

    new-instance v2, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$WF3PF9arDeB2IKWuBNjV2oL7aSA;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$WF3PF9arDeB2IKWuBNjV2oL7aSA;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;Landroid/content/Intent;Landroid/os/ConditionVariable;Landroid/util/MutableBoolean;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v2

    if-nez v2, :cond_45

    const-string v2, "Timed out launching activity"

    invoke-direct {p0, v2}, Lcom/samsung/android/server/virtualspace/VSScreen;->loge(Ljava/lang/String;)V

    :cond_45
    iget-boolean v2, v1, Landroid/util/MutableBoolean;->value:Z

    return v2

    :cond_48
    :goto_48
    return v1
.end method

.method onAppOrientationUpdated(I)V
    .registers 4

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->assertRunOnHandlerThread()V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mAppOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->update(Ljava/lang/Object;)Z

    return-void
.end method

.method onBoundsUpdated(IIII)V
    .registers 8

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->assertRunOnHandlerThread()V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-ne v1, p3, :cond_20

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v1, p4, :cond_20

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ne v1, p1, :cond_20

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ne v1, p2, :cond_20

    return-void

    :cond_20
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/virtualspace/VSScreen;->updateBounds(IIII)V

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->notifyCallbackForce()V

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mNonEmpty:Z

    if-eqz v1, :cond_44

    iget-boolean v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mNonEmpty:Z

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHasContent:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->notifyCallback()V

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->notifyCallback()V

    :cond_44
    return-void
.end method

.method onDisplayChanged()V
    .registers 3

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->assertRunOnHandlerThread()V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDisplay:Landroid/view/Display;

    if-nez v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->update(Ljava/lang/Object;)Z

    return-void
.end method

.method onDisplayRemoved()V
    .registers 2

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->assertRunOnHandlerThread()V

    :cond_7
    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->notifyCallbacks(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    :cond_12
    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->closeTask()V

    return-void
.end method

.method onIMETargetChanged(Z)V
    .registers 4

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->assertRunOnHandlerThread()V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mIMETarget:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->update(Ljava/lang/Object;)Z

    return-void
.end method

.method onTopTaskUpdated(I)V
    .registers 4

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->assertRunOnHandlerThread()V

    :cond_7
    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->updateHasContent(Z)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mTopTask:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->update(Ljava/lang/Object;)Z

    return-void
.end method

.method public redirectSystemWindows(IZ)V
    .registers 4

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$pjSqEeR6Bxz4B6a5WZLqYqOTnuM;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$pjSqEeR6Bxz4B6a5WZLqYqOTnuM;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;IZ)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerCallback(Lcom/samsung/android/virtualspace/IVSScreenCallback;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_c

    :try_start_7
    invoke-interface {p1, p0}, Lcom/samsung/android/virtualspace/IVSScreenCallback;->onClosed(Lcom/samsung/android/virtualspace/IVSScreen;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_c

    :catch_b
    move-exception v0

    :cond_c
    :goto_c
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerCallback("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_2a
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$ngw0Bc5BAK_hjningEq5-y5nleo;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$ngw0Bc5BAK_hjningEq5-y5nleo;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;Lcom/samsung/android/virtualspace/IVSScreenCallback;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public releaseFocus()V
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string/jumbo v0, "releaseFocus()"

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_f
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$fIDotVwApEGtk8EwKv9XV__xTrw;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$fIDotVwApEGtk8EwKv9XV__xTrw;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resendState()V
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string/jumbo v0, "resendState()"

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_f
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$nO3Tsrdm4_DY58gqkuXEP2BOJL0;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$nO3Tsrdm4_DY58gqkuXEP2BOJL0;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method setDisplayId(I)V
    .registers 4

    iput p1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/server/virtualspace/VSSession;->setScreen(ILcom/samsung/android/server/virtualspace/VSScreen;)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSManagerService;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->onDisplayChanged()V

    return-void
.end method

.method public setPriority(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$rwcVJOuPLoB6IdtEILkla8cm-Go;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$rwcVJOuPLoB6IdtEILkla8cm-Go;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method setPriorityTask(I)V
    .registers 4

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->assertRunOnHandlerThread()V

    :cond_7
    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mPriority:I

    if-eq v0, p1, :cond_32

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPriority("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_29
    iput p1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mPriority:I

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget-object v0, v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSAM:Lcom/android/server/am/SamsungActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/SamsungActivityManagerService;->updateOomAdj()V

    :cond_32
    return-void
.end method

.method public setRotation(I)V
    .registers 4

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRotation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_23
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$pGms2oPv9SIe4Nj0Mi8RhDcnLSY;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$pGms2oPv9SIe4Nj0Mi8RhDcnLSY;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .registers 4

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSurface("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_23
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$lnN2tfCxUI5sqdHnI3_oF8NlleA;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$lnN2tfCxUI5sqdHnI3_oF8NlleA;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;Landroid/view/Surface;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public takeFocus()V
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string/jumbo v0, "takeFocus()"

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_f
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$EETke3v59s8IaYUejc-_GTNE9Ew;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$EETke3v59s8IaYUejc-_GTNE9Ew;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unregisterCallback(Lcom/samsung/android/virtualspace/IVSScreenCallback;)V
    .registers 4

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-eqz v0, :cond_2e

    if-nez p1, :cond_7

    goto :goto_2e

    :cond_7
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterCallback("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_25
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$HPCQRaTucvYw2nP9agPswET42Sw;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$HPCQRaTucvYw2nP9agPswET42Sw;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;Lcom/samsung/android/virtualspace/IVSScreenCallback;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void

    :cond_2e
    :goto_2e
    return-void
.end method
