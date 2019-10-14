.class final Lcom/android/server/display/MagnifierDisplayPolicy;
.super Ljava/lang/Object;
.source "MagnifierPolicy.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;,
        Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MagnifierDisplayPolicy"


# instance fields
.field private mBorderPadding:F

.field private mContext:Landroid/content/Context;

.field private mCropHeight:F

.field private mCropWidth:F

.field private mCurrentFollowingStatus:Z

.field private mDefaultDisplay:Landroid/view/Display;

.field private mDefaultDisplayInfo:Landroid/view/DisplayInfo;

.field private mDefaultHeight:I

.field private mDefaultRotation:I

.field private mDefaultWidth:I

.field mDm:Landroid/hardware/display/IDisplayManager;

.field private mFixedHeight:I

.field private mFixedWidth:I

.field private mHasSoftwareNaviBar:Z

.field private mIsPeekViewMode:Z

.field private mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

.field private final mMagnifierPolicyObserver:Landroid/database/ContentObserver;

.field private mNavigationBarGestureWhileHidden:Z

.field private mNavigationBarHeightButtonP:I

.field private mNavigationBarHeightGesture:I

.field private mOnSizeChangeListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPointerMargin:F

.field private mScale:F

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    invoke-direct {v0, p0}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;-><init>(Lcom/android/server/display/MagnifierDisplayPolicy;)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultHeight:I

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultRotation:I

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mNavigationBarHeightButtonP:I

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mNavigationBarHeightGesture:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    iput v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    iput v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    iput v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerMargin:F

    iput-boolean v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCurrentFollowingStatus:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mHasSoftwareNaviBar:Z

    iput-boolean v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mNavigationBarGestureWhileHidden:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mOnSizeChangeListener:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/display/MagnifierDisplayPolicy$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/display/MagnifierDisplayPolicy$1;-><init>(Lcom/android/server/display/MagnifierDisplayPolicy;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mMagnifierPolicyObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "navigation_bar_gesture_while_hidden"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mMagnifierPolicyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11200ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mHasSoftwareNaviBar:Z

    iget-object v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105018c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mNavigationBarHeightButtonP:I

    iget-object v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105018e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mNavigationBarHeightGesture:I

    iget-object v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "navigation_bar_gesture_while_hidden"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_90

    move v0, v1

    nop

    :cond_90
    iput-boolean v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mNavigationBarGestureWhileHidden:Z

    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/display/MagnifierDisplayPolicy;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mNavigationBarGestureWhileHidden:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/display/MagnifierDisplayPolicy;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setPointMargin()V
    .registers 3

    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const v1, 0x3d4ccccd    # 0.05f

    add-float/2addr v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerMargin:F

    return-void
.end method

.method private updateDisplayInfo(Landroid/view/DisplayInfo;)Z
    .registers 4

    if-eqz p1, :cond_34

    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    iget v1, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ne v0, v1, :cond_f

    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultHeight:I

    iget v1, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ne v0, v1, :cond_f

    goto :goto_34

    :cond_f
    iget v0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    iget v0, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultHeight:I

    iget v0, p1, Landroid/view/DisplayInfo;->rotation:I

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultRotation:I

    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    invoke-virtual {p0}, Lcom/android/server/display/MagnifierDisplayPolicy;->setPrecision()V

    const/4 v0, 0x1

    return v0

    :cond_34
    :goto_34
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addOnSizeChanageListener(Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mOnSizeChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkUpdateDisplayInfo()Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplay:Landroid/view/Display;

    const-string/jumbo v0, "display"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDm:Landroid/hardware/display/IDisplayManager;

    :cond_26
    const/4 v0, 0x0

    :try_start_27
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, v0}, Landroid/hardware/display/IDisplayManager;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2f} :catch_30

    goto :goto_34

    :catch_30
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_34
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    invoke-direct {p0, v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->updateDisplayInfo(Landroid/view/DisplayInfo;)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mOnSizeChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;->onSizeChanged(Z)V

    goto :goto_42

    :cond_53
    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultRotation:I

    iget-object v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    if-eq v1, v2, :cond_61

    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    iput v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultRotation:I

    :cond_61
    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/display/MagnifierDisplayPolicy;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getDefaultDisplay()Landroid/view/Display;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplay:Landroid/view/Display;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/display/MagnifierDisplayPolicy;->checkUpdateDisplayInfo()Z

    :cond_7
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public getDefaultDisplayInfo()Landroid/view/DisplayInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/display/MagnifierDisplayPolicy;->checkUpdateDisplayInfo()Z

    :cond_7
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method public getDisplayInfo(Landroid/view/MagnificationSpec;)Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, v1, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int v3, v3

    int-to-float v3, v3

    iget v4, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    iget v5, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float v5, v2, v5

    iget v7, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    div-float/2addr v7, v6

    sub-float v7, v3, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    iget v14, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultHeight:I

    iget-boolean v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCurrentFollowingStatus:Z

    if-eqz v15, :cond_46

    const/4 v15, 0x0

    iget-boolean v6, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mHasSoftwareNaviBar:Z

    if-eqz v6, :cond_3c

    iget v6, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultRotation:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_3c

    iget-boolean v6, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mNavigationBarGestureWhileHidden:Z

    if-eqz v6, :cond_39

    iget v6, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mNavigationBarHeightGesture:I

    goto :goto_3b

    :cond_39
    iget v6, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mNavigationBarHeightButtonP:I

    :goto_3b
    move v15, v6

    :cond_3c
    iget-object v6, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerInternal;->getInputMethodWindowVisibleHeight()I

    move-result v6

    sub-int v6, v14, v6

    sub-int v14, v6, v15

    :cond_46
    iget v6, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    mul-float/2addr v6, v4

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v6, v15

    cmpg-float v6, v2, v6

    if-gez v6, :cond_66

    const/4 v6, 0x0

    cmpg-float v6, v5, v6

    if-gez v6, :cond_5a

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v16, 0x40000000    # 2.0f

    goto :goto_62

    :cond_5a
    iget v6, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v6, v6, v16

    sub-float/2addr v6, v2

    mul-float/2addr v6, v4

    :goto_62
    const/4 v8, 0x0

    move/from16 v15, v16

    goto :goto_a9

    :cond_66
    const/high16 v16, 0x40000000    # 2.0f

    int-to-float v6, v13

    iget v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    mul-float/2addr v15, v4

    div-float v15, v15, v16

    sub-float/2addr v6, v15

    cmpl-float v6, v2, v6

    if-lez v6, :cond_9a

    int-to-float v6, v13

    iget v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    sub-float/2addr v6, v15

    cmpl-float v6, v5, v6

    if-lez v6, :cond_88

    int-to-float v6, v13

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float v17, v15, v4

    mul-float v6, v6, v17

    int-to-float v8, v13

    iget v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    sub-float/2addr v8, v15

    move v5, v8

    goto :goto_92

    :cond_88
    int-to-float v6, v13

    iget v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    add-float/2addr v15, v2

    mul-float/2addr v15, v4

    sub-float/2addr v6, v15

    :goto_92
    int-to-float v8, v13

    iget v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    mul-float/2addr v15, v4

    sub-float/2addr v8, v15

    const/high16 v15, 0x40000000    # 2.0f

    goto :goto_a9

    :cond_9a
    neg-float v6, v2

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float v17, v4, v15

    mul-float v6, v6, v17

    iget v8, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    mul-float/2addr v8, v4

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v8, v15

    sub-float v8, v2, v8

    :goto_a9
    iget v10, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    mul-float/2addr v10, v4

    div-float/2addr v10, v15

    add-float/2addr v10, v12

    cmpg-float v10, v3, v10

    if-gez v10, :cond_c9

    cmpg-float v10, v7, v12

    if-gez v10, :cond_bd

    move v7, v12

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v15, v10, v4

    mul-float/2addr v15, v12

    :goto_bc
    goto :goto_c7

    :cond_bd
    iget v10, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v10, v15

    sub-float/2addr v10, v3

    mul-float/2addr v10, v4

    add-float v15, v12, v10

    goto :goto_bc

    :goto_c7
    move v9, v12

    goto :goto_109

    :cond_c9
    int-to-float v10, v14

    iget v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    mul-float/2addr v15, v4

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    sub-float/2addr v10, v15

    cmpl-float v10, v3, v10

    if-lez v10, :cond_fb

    int-to-float v10, v14

    iget v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    sub-float/2addr v10, v15

    cmpl-float v10, v7, v10

    if-lez v10, :cond_ea

    int-to-float v10, v14

    iget v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    sub-float/2addr v10, v15

    int-to-float v7, v14

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v4

    mul-float/2addr v7, v15

    move v15, v7

    move v7, v10

    goto :goto_f5

    :cond_ea
    int-to-float v10, v14

    iget v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    add-float/2addr v15, v3

    mul-float/2addr v15, v4

    sub-float/2addr v10, v15

    move v15, v10

    :goto_f5
    int-to-float v9, v14

    iget v10, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    mul-float/2addr v10, v4

    sub-float/2addr v9, v10

    goto :goto_109

    :cond_fb
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v10, v4, v10

    mul-float/2addr v10, v3

    neg-float v15, v10

    iget v9, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    mul-float/2addr v9, v4

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float v9, v3, v9

    :goto_109
    iget-object v10, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceOffset:Landroid/graphics/Point;
    invoke-static {v10}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$000(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v10

    float-to-int v11, v6

    iput v11, v10, Landroid/graphics/Point;->x:I

    iget-object v10, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceOffset:Landroid/graphics/Point;
    invoke-static {v10}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$000(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v10

    float-to-int v11, v15

    iput v11, v10, Landroid/graphics/Point;->y:I

    iget-object v10, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mAbsOffset:Landroid/graphics/Point;
    invoke-static {v10}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$100(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v10

    float-to-int v11, v8

    iput v11, v10, Landroid/graphics/Point;->x:I

    iget-object v10, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mAbsOffset:Landroid/graphics/Point;
    invoke-static {v10}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$100(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v10

    float-to-int v11, v9

    iput v11, v10, Landroid/graphics/Point;->y:I

    iget v10, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mBorderPadding:F

    add-float/2addr v10, v5

    iget v11, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mBorderPadding:F

    add-float/2addr v11, v7

    iget v1, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    add-float/2addr v1, v5

    move/from16 v18, v2

    iget v2, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mBorderPadding:F

    sub-float/2addr v1, v2

    iget v2, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    add-float/2addr v2, v7

    move/from16 v19, v3

    iget v3, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mBorderPadding:F

    sub-float/2addr v2, v3

    iget-object v3, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceCropRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$200(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Rect;

    move-result-object v3

    move/from16 v20, v5

    float-to-int v5, v10

    move/from16 v21, v6

    float-to-int v6, v11

    const v16, 0x3d4ccccd    # 0.05f

    move/from16 v22, v7

    add-float v7, v1, v16

    float-to-int v7, v7

    move/from16 v23, v1

    add-float v1, v2, v16

    float-to-int v1, v1

    invoke-virtual {v3, v5, v6, v7, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceOffset:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$000(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v1

    iget v3, v1, Landroid/graphics/Point;->x:I

    float-to-int v5, v10

    int-to-float v5, v5

    sub-float v5, v10, v5

    mul-float/2addr v5, v4

    float-to-int v5, v5

    add-int/2addr v3, v5

    iput v3, v1, Landroid/graphics/Point;->x:I

    iget-object v1, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceOffset:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$000(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v1

    iget v3, v1, Landroid/graphics/Point;->y:I

    float-to-int v5, v11

    int-to-float v5, v5

    sub-float v5, v11, v5

    mul-float/2addr v5, v4

    float-to-int v5, v5

    add-int/2addr v3, v5

    iput v3, v1, Landroid/graphics/Point;->y:I

    iget-object v1, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    return-object v1
.end method

.method public getHeight()I
    .registers 3

    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    mul-float/2addr v0, v1

    const v1, 0x3d4ccccd    # 0.05f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getPrecision(F)F
    .registers 5

    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mBorderPadding:F

    sub-float v0, p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mBorderPadding:F

    float-to-int v1, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mBorderPadding:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    sub-float/2addr v1, p1

    return v1
.end method

.method public getRotation()I
    .registers 2

    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultRotation:I

    return v0
.end method

.method public getScale()F
    .registers 2

    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    return v0
.end method

.method public getWidth()I
    .registers 3

    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    mul-float/2addr v0, v1

    const v1, 0x3d4ccccd    # 0.05f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getmLastDisplayInfo()Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    return-object v0
.end method

.method public removeOnSizeChanageListener(Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mOnSizeChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCurrentFollowingStatus(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCurrentFollowingStatus:Z

    return-void
.end method

.method public setPadding(Landroid/graphics/Rect;)V
    .registers 4

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mBorderPadding:F

    return-void
.end method

.method public setPrecision()V
    .registers 3

    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    invoke-virtual {p0, v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->getPrecision(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    invoke-virtual {p0, v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->getPrecision(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    invoke-direct {p0}, Lcom/android/server/display/MagnifierDisplayPolicy;->setPointMargin()V

    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_40

    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedWidth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedWidth:I

    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    invoke-virtual {p0, v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->getPrecision(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    :cond_40
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Last:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateSettings(IIF)V
    .registers 9

    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    cmpl-float v0, v0, p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    iget v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedWidth:I

    if-ne v3, p1, :cond_16

    iget v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedHeight:I

    if-eq v3, p2, :cond_14

    goto :goto_16

    :cond_14
    move v1, v2

    nop

    :cond_16
    :goto_16
    iput p1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedWidth:I

    iput p2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedHeight:I

    iput p3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    iget v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    iget v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    if-eqz v0, :cond_35

    if-nez v1, :cond_35

    return-void

    :cond_35
    iget-object v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mOnSizeChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

    invoke-interface {v4, v2}, Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;->onSizeChanged(Z)V

    goto :goto_3b

    :cond_4b
    return-void
.end method
