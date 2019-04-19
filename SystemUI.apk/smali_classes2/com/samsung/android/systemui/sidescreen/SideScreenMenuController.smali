.class public Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;
.super Ljava/lang/Object;
.source "SideScreenMenuController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController$H;
    }
.end annotation


# static fields
.field private static final LONGPRESS_TIMEOUT:I


# instance fields
.field final mContext:Landroid/content/Context;

.field final mController:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

.field private final mDefaultIcon:Landroid/graphics/Bitmap;

.field private mDockSide:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mH:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController$H;

.field private mHandlerButtonsController:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;

.field private mMode:I

.field private mMoving:Z

.field private mOutlineView:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuOutlineView;

.field private mSideScreenMode:I

.field private mStartX:I

.field private mStartY:I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTouchSlop:D

.field private mType:I

.field mView:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;

.field private mWindowTitle:Ljava/lang/String;

.field private mWindowingMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->LONGPRESS_TIMEOUT:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;)Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mHandlerButtonsController:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;

    return-object v0
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private getIcon(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/graphics/Bitmap;
    .locals 5

    iget-object v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mDefaultIcon:Landroid/graphics/Bitmap;

    return-object v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x400000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v1

    const-string v2, "SideScreenMenuController"

    const-string v3, "Could not find icon drawable from resource"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mDefaultIcon:Landroid/graphics/Bitmap;

    return-object v1
.end method

.method private handleSwipe(II)V
    .locals 5

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mStartX:I

    sub-int/2addr v0, p1

    int-to-double v0, v0

    iget v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mStartY:I

    sub-int/2addr v2, p2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_4

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mWindowingMode:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mController:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->getStableInset()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mDockSide:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mController:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->getDisplayHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mStartY:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mController:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->getDisplayWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mStartX:I

    :goto_0
    if-ge v2, v1, :cond_1

    const/16 v3, 0x64

    const/4 v4, 0x1

    :goto_1
    goto :goto_2

    :cond_1
    mul-int/lit8 v3, v1, 0x3

    if-ge v2, v3, :cond_2

    const/16 v3, 0x64

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/16 v3, 0x65

    const/4 v4, 0x1

    :goto_2
    move v0, v4

    goto :goto_3

    :cond_3
    const/16 v3, 0x65

    const/4 v0, 0x0

    :goto_3
    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->showSideScreenRecentsActivity(IZ)V

    :cond_4
    return-void
.end method

.method private isTouchInsideFromBorder()Z
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mOutlineView:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuOutlineView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuOutlineView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mDockSide:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mStartX:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x32

    if-lt v1, v3, :cond_1

    :cond_0
    iget v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mDockSide:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mStartY:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x32

    if-ge v1, v3, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private logModeChange(IILjava/lang/String;)V
    .locals 3

    const-string v0, "SideScreenMenuController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mWindowTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " change mode from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->menuModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->menuModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setOutlineVisibility(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->setVisibility(II)V

    :cond_0
    return-void
.end method

.method private setShadowVisibility(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->setVisibility(II)V

    :cond_0
    return-void
.end method

.method private updateTouchable(I)V
    .locals 0

    return-void
.end method

.method private updateVisibilityStatus()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mSideScreenMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->setOutlineVisibility(I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->setShadowVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->setOutlineVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public enabledTouchEventForMenuView()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mSideScreenMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mSideScreenMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method enterFocusMode()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->isInStandby()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mWindowingMode:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->resizeSideScreenStackWithScale(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mMode:I

    const-string v1, "enterFocusMode()"

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->setMenuMode(IILjava/lang/String;)V

    iput v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mMode:I

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mWindowingMode:I

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->updateTouchable(I)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->setRoundedCornerOutline(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->setShadowVisibility(I)V

    :cond_0
    return-void
.end method

.method exitEditMode()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->exitEditMode()V

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mMode:I

    const-string v1, "exitEditMode()"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->setMenuMode(IILjava/lang/String;)V

    iput v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mMode:I

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mWindowingMode:I

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->updateTouchable(I)V

    :cond_0
    return-void
.end method

.method exitFocusMode()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->isInFocusMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mMode:I

    const-string v1, "exitFocusMode()"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->setMenuMode(IILjava/lang/String;)V

    iput v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mMode:I

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mWindowingMode:I

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->updateTouchable(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->setRoundedCornerOutline(Z)V

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->setShadowVisibility(I)V

    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mWindowingMode:I

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->resizeSideScreenStackWithScale(IZ)Z

    :cond_0
    return-void
.end method

.method public getButtonsController()Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mHandlerButtonsController:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;

    return-object v0
.end method

.method isInEditMode()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isInFocusMode()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isInStandby()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method onLongPress()V
    .locals 0

    return-void
.end method

.method onSideScreenDockSideChanged(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mDockSide:I

    return-void
.end method

.method onSideScreenModeChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mHandlerButtonsController:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;->setSideScreenMode(I)V

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mSideScreenMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mSideScreenMode:I

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->updateVisibilityStatus()V

    :cond_0
    return-void
.end method

.method onTouch(Landroid/view/MotionEvent;)Z
    .locals 11

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->enabledTouchEventForMenuView()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->exitEditMode()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mHandlerButtonsController:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;->hide()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->showDim(Z)V

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->exitEditMode()V

    iget-object v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mHandlerButtonsController:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;

    invoke-virtual {v3}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;->hide()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->showDim(Z)V

    goto :goto_0

    :pswitch_1
    iget-boolean v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mMoving:Z

    if-nez v3, :cond_5

    iget v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mStartY:I

    sub-int v3, v2, v3

    int-to-double v5, v3

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mStartX:I

    sub-int v3, v0, v3

    int-to-double v9, v3

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    iget-wide v7, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mTouchSlop:D

    cmpl-double v3, v5, v7

    if-lez v3, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mStartX:I

    iget v5, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mStartY:I

    invoke-virtual {p0, v3, v5, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->startMovingTopTask(III)V

    :cond_2
    iput-boolean v4, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mMoving:Z

    iget-object v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mH:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController$H;

    invoke-virtual {v3, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController$H;->removeMessages(I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->isTouchInsideFromBorder()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->isInStandby()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->enterFocusMode()V

    iput-boolean v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mMoving:Z

    :cond_3
    :pswitch_3
    iget-boolean v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mMoving:Z

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->isTouchInsideFromBorder()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->handleSwipe(II)V

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mH:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController$H;

    invoke-virtual {v3, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController$H;->removeMessages(I)V

    iput-boolean v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mMoving:Z

    goto :goto_0

    :pswitch_4
    iput v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mStartX:I

    iput v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mStartY:I

    iput-boolean v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mMoving:Z

    iget-object v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mH:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController$H;

    invoke-virtual {v3, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController$H;->removeMessages(I)V

    iget-object v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mH:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController$H;

    sget v5, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->LONGPRESS_TIMEOUT:I

    int-to-long v5, v5

    invoke-virtual {v3, v1, v5, v6}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController$H;->sendEmptyMessageDelayed(IJ)Z

    nop

    :cond_5
    :goto_0
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public putFullTouchableRegion()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mTmpRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mWindowingMode:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->putTouchableRegion(Landroid/graphics/Rect;I)V

    :cond_0
    return-void
.end method

.method putHandlerTouchableRegion()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->getHandlerTouchableRegion(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mTmpRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mWindowingMode:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->putTouchableRegion(Landroid/graphics/Rect;I)V

    :cond_0
    return-void
.end method

.method putTouchableRegion(Landroid/graphics/Rect;I)V
    .locals 1

    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->putSideScreenMenuTouchableRegion(Landroid/graphics/Rect;I)V

    return-void
.end method

.method setMenuMode(IILjava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->logModeChange(IILjava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mWindowingMode:I

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->setSideScreenMenuMode(II)V

    return-void
.end method

.method setRoundedCornerOutline(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mOutlineView:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuOutlineView;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mContext:Landroid/content/Context;

    const v2, 0x7f0807d7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuOutlineView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mOutlineView:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuOutlineView;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mContext:Landroid/content/Context;

    const v2, 0x7f0807d6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuOutlineView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method showDim(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;

    const v1, 0x7f0a051a

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method showDragAndDropGuide(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mWindowingMode:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getTopRecentTaskInfo(I)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->getIcon(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController$2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController$2;-><init>(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;Landroid/app/ActivityManager$RecentTaskInfo;)V

    const/4 v3, 0x3

    invoke-static {p1, v1, v2, v3}, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->create(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/systemui/shared/dnd/DragAndDropHelper$DragClientListener;I)Lcom/android/systemui/shared/dnd/DragAndDropHelper;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mWindowingMode:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->setWindowingMode(I)Lcom/android/systemui/shared/dnd/DragAndDropHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->show()V

    return-void
.end method

.method startMovingTopTask(III)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->mType:I

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->startMovingTopTask(IIII)V

    return-void
.end method
