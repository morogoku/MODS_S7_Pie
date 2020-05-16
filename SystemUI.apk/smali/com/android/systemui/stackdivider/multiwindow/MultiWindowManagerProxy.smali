.class public Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;
.super Ljava/lang/Object;
.source "MultiWindowManagerProxy.java"


# static fields
.field private static final sInstance:Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;


# instance fields
.field private final mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private final mSideScreenModeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/systemui/sidescreen/ISideScreenMenuModeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    invoke-direct {v0}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;-><init>()V

    sput-object v0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->sInstance:Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mSideScreenModeListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;
    .locals 1

    sget-object v0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->sInstance:Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    return-object v0
.end method


# virtual methods
.method public getTaskIdFromPackageName(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getTaskIdFromPackageName(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTopRecentTaskInfo(I)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getTopRecentTaskInfo(I)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method public isFullscreenSupportsSplitScreenWindowingMode()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isFullscreenSupportsSplitScreenWindowingMode()I

    move-result v0

    return v0
.end method

.method public putSideScreenMenuTouchableRegion(Landroid/graphics/Rect;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->putSideScreenMenuTouchableRegion(Landroid/graphics/Rect;I)V

    return-void
.end method

.method public registerDividerCloseEventListener(Lcom/samsung/android/multiwindow/IDividerCloseEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->registerDividerCloseEventListener(Lcom/samsung/android/multiwindow/IDividerCloseEventListener;)V

    return-void
.end method

.method public registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V

    return-void
.end method

.method public removeFocusedTask()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->removeFocusedTask()Z

    move-result v0

    return v0
.end method

.method public resizeSideScreenStackWithScale(IZ)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->resizeSideScreenStackWithScale(IZ)Z

    move-result v0

    return v0
.end method

.method public setMultiResumeEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setMultiResumeEnabledForMultiStar(Z)V

    return-void
.end method

.method public setSideScreenMenuMode(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mSideScreenModeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/systemui/sidescreen/ISideScreenMenuModeListener;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/systemui/sidescreen/ISideScreenMenuModeListener;->onSideScreenMenuModeChanged(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setSideScreenMenuMode(II)V

    return-void
.end method

.method public setSnapWindow(ZLandroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setSnapWindow(ZLandroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSnapWindowEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setSnapWindowEnabled(Z)V

    return-void
.end method

.method public setStayFocusActivityEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setStayFocusActivityEnabledForMultiStar(Z)V

    return-void
.end method

.method public showSideScreen()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->showSideScreen()Z

    move-result v0

    return v0
.end method

.method public showSideScreenRecentsActivity(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->showSideScreenRecentsActivity(IZ)V

    return-void
.end method

.method public startMovingSideScreen(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->startMovingSideScreen(II)V

    return-void
.end method

.method public startMovingTopTask(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/multiwindow/MultiWindowManager;->startMovingTopTask(IIII)V

    return-void
.end method

.method public swapTaskWindowingModeFromSubWindowHandler(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->swapTaskWindowingModeFromSubWindowHandler(II)V

    return-void
.end method
