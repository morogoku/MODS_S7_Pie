.class final Lcom/android/server/wm/AccessibilityController;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;,
        Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
    }
.end annotation


# static fields
.field private static mDisplayType:I

.field private static final sTempFloats:[F


# instance fields
.field private mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x9

    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    const/4 v0, 0x0

    sput v0, Lcom/android/server/wm/AccessibilityController;->mDisplayType:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method static synthetic access$1600()I
    .registers 1

    sget v0, Lcom/android/server/wm/AccessibilityController;->mDisplayType:I

    return v0
.end method

.method static synthetic access$1602(I)I
    .registers 1

    sput p0, Lcom/android/server/wm/AccessibilityController;->mDisplayType:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/AccessibilityController;->populateTransformationMatrixLocked(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V

    return-void
.end method

.method private static populateTransformationMatrixLocked(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V
    .registers 3

    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowState;->getTransformationMatrix([FLandroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public drawMagnifiedRegionBorderIfNeededLocked()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->drawMagnifiedRegionBorderIfNeededLocked()V

    :cond_9
    return-void
.end method

.method public getMagnificationRegionLocked(Landroid/graphics/Region;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->getMagnificationRegionLocked(Landroid/graphics/Region;)V

    :cond_9
    return-void
.end method

.method public getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasCallbacksLocked()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public onAppWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onAppWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    :cond_9
    return-void
.end method

.method public onRectangleOnScreenRequestedLocked(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onRectangleOnScreenRequestedLocked(Landroid/graphics/Rect;)V

    :cond_9
    return-void
.end method

.method public onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;)V

    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    :cond_12
    return-void
.end method

.method public onSomeWindowResizedOrMovedLocked()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    :cond_9
    return-void
.end method

.method public onWindowFocusChangedNotLocked()V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    move-object v0, v2

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_e

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->performComputeChangedWindowsNotLocked()V

    :cond_d
    return-void

    :catchall_e
    move-exception v2

    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v2
.end method

.method public onWindowLayersChangedLocked()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onWindowLayersChangedLocked()V

    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    :cond_12
    return-void
.end method

.method public onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    :cond_12
    return-void
.end method

.method public performComputeChangedWindowsNotLocked()V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    move-object v0, v2

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_e

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->performComputeChangedWindowsNotLocked()V

    :cond_d
    return-void

    :catchall_e
    move-exception v2

    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v2
.end method

.method public setForceShowMagnifiableBoundsLocked(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->setForceShowMagnifiableBoundsLocked(Z)V

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->showMagnificationBoundsIfNeeded()V

    :cond_e
    return-void
.end method

.method public setMagnificationCallbacksLocked(Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)V
    .registers 4

    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-nez v0, :cond_10

    new-instance v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    goto :goto_24

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Magnification callbacks already set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->destroyLocked()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    :goto_24
    return-void

    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Magnification callbacks already cleared!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    :cond_12
    return-void
.end method

.method public setWindowsForAccessibilityCallback(Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V
    .registers 4

    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-nez v0, :cond_10

    new-instance v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    goto :goto_1f

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Windows for accessibility callback already set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    :goto_1f
    return-void

    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Windows for accessibility callback already cleared!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
