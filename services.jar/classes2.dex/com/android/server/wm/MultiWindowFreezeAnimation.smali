.class public Lcom/android/server/wm/MultiWindowFreezeAnimation;
.super Ljava/lang/Object;
.source "MultiWindowFreezeAnimation.java"


# static fields
.field private static final FREEFORM_ANIMATION_DURATION:I = 0x150

.field private static final FREEZE_ANIMATION_DURATION:I = 0xfa

.field private static final SCREEN_FREEZE_LAYER_SCREENSHOT:I = 0x1eab8f

.field private static final SPLIT_ANIMATION_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "MultiWindowFreezeAnimation"


# instance fields
.field private mAnimating:Z

.field private mAnimation:Landroid/view/animation/Animation;

.field final mCreatedTime:J

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mRect:Landroid/graphics/Rect;

.field private mRotation:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mTmpFloats:[F

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field private final mTmpRectF:Landroid/graphics/RectF;

.field private mTmpWindowState:Lcom/android/server/wm/WindowState;

.field private final mTransformation:Landroid/view/animation/Transformation;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;I)V
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object v0, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimating:Z

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRect:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpRectF:Landroid/graphics/RectF;

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    const/16 v5, 0x9

    new-array v5, v5, [F

    iput-object v5, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpFloats:[F

    new-instance v5, Landroid/view/animation/Transformation;

    invoke-direct {v5}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v5, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTransformation:Landroid/view/animation/Transformation;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mCreatedTime:J

    move-object/from16 v5, p1

    iput-object v5, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object v2, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->hasSecureWindowOnScreen()Z

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getLayerStack()I

    move-result v8

    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MD_DEX_EMULATOR:Z

    const/4 v10, 0x1

    if-eqz v9, :cond_67

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->isDexMode()Z

    move-result v9

    if-eqz v9, :cond_67

    iget-object v9, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v9}, Landroid/hardware/display/DisplayManagerInternal;->isDesktopSwitched()Z

    move-result v9

    if-eqz v9, :cond_67

    iput v10, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRotation:I

    goto :goto_6b

    :cond_67
    iget v9, v7, Landroid/view/DisplayInfo;->rotation:I

    iput v9, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRotation:I

    :goto_6b
    iget v9, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRotation:I

    if-eq v9, v10, :cond_7a

    iget v9, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRotation:I

    const/4 v11, 0x3

    if-ne v9, v11, :cond_75

    goto :goto_7a

    :cond_75
    iget v9, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v11, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_7e

    :cond_7a
    :goto_7a
    iget v9, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v11, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    :goto_7e
    nop

    iget-object v12, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v4, v4, v9, v11}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    :try_start_88
    invoke-virtual {v2, v0}, Lcom/android/server/wm/DisplayContent;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v12, "MultiWindowFreezeAnimation"

    invoke-virtual {v0, v12}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v9, v11}, Landroid/view/SurfaceControl$Builder;->setSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    move v15, v0

    const/4 v14, 0x0

    invoke-static {v14}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    move-object/from16 v20, v0

    if-eqz v20, :cond_16a

    const/4 v0, 0x0

    const/16 v21, 0x0

    new-instance v12, Landroid/view/Surface;

    invoke-direct {v12}, Landroid/view/Surface;-><init>()V

    move-object v13, v12

    iget-object v12, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v13, v12}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_bc
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_88 .. :try_end_bc} :catch_18d

    move/from16 v12, p4

    if-ne v12, v10, :cond_cd

    const/16 v10, 0x7d0

    :try_start_c2
    invoke-direct {v1, v10}, Lcom/android/server/wm/MultiWindowFreezeAnimation;->findWindowByType(I)Lcom/android/server/wm/WindowState;

    move-result-object v10
    :try_end_c6
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_c2 .. :try_end_c6} :catch_c8

    move-object v0, v10

    goto :goto_ce

    :catch_c8
    move-exception v0

    move/from16 v23, v6

    goto/16 :goto_190

    :cond_cd
    move-object v10, v0

    :goto_ce
    if-eqz v10, :cond_10a

    :try_start_d0
    const-string v0, "MultiWindowFreezeAnimation"

    const-string v5, "Screenshot to statusbar as maxLayer"

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v16
    :try_end_e1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_d0 .. :try_end_e1} :catch_18d

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move v12, v14

    move-object v5, v13

    move-object v13, v0

    move/from16 v22, v14

    move v14, v9

    move/from16 v23, v6

    move v6, v15

    move v15, v11

    :try_start_f1
    invoke-static/range {v12 .. v19}, Landroid/view/SurfaceControl;->sec_screenshotToBuffer(ILandroid/graphics/Rect;IILandroid/os/IBinder;ZIZ)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    if-eqz v0, :cond_110

    invoke-virtual {v5, v0}, Landroid/view/Surface;->attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V

    iget-object v12, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v4, v12, v13, v14}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5}, Landroid/view/Surface;->release()V

    const/16 v21, 0x1

    goto :goto_110

    :cond_10a
    move/from16 v23, v6

    move-object v5, v13

    move/from16 v22, v14

    move v6, v15

    :cond_110
    :goto_110
    if-nez v21, :cond_153

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v12, v20

    move v14, v9

    move v15, v11

    invoke-static/range {v12 .. v19}, Landroid/view/SurfaceControl;->screenshotToBufferWithSecureLayersUnsafe(Landroid/os/IBinder;Landroid/graphics/Rect;IIIIZI)Landroid/graphics/GraphicBuffer;

    move-result-object v0
    :try_end_127
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_f1 .. :try_end_127} :catch_18b

    move-object v12, v0

    if-eqz v12, :cond_153

    :try_start_12a
    invoke-virtual {v5, v12}, Landroid/view/Surface;->attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V

    iget-object v0, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const v13, 0x1eab8f

    invoke-virtual {v4, v0, v13}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    :try_end_135
    .catch Ljava/lang/RuntimeException; {:try_start_12a .. :try_end_135} :catch_138
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_12a .. :try_end_135} :catch_18b

    const/16 v21, 0x1

    goto :goto_153

    :catch_138
    move-exception v0

    :try_start_139
    const-string v13, "MultiWindowFreezeAnimation"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to attach screenshot - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_153
    :goto_153
    iget-object v0, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v0, v8}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5}, Landroid/view/Surface;->destroy()V

    if-nez v21, :cond_169

    const-string v0, "MultiWindowFreezeAnimation"

    const-string v12, "Capture failed"

    invoke-static {v0, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_169
    goto :goto_18a

    :cond_16a
    move/from16 v23, v6

    move/from16 v22, v14

    move v6, v15

    const-string v0, "MultiWindowFreezeAnimation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Display #"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " is null."

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18a
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_139 .. :try_end_18a} :catch_18b

    :goto_18a
    goto :goto_1af

    :catch_18b
    move-exception v0

    goto :goto_190

    :catch_18d
    move-exception v0

    move/from16 v23, v6

    :goto_190
    const-string v5, "MultiWindowFreezeAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Display #"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " is null."

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1af
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c1

    iget v0, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRotation:I

    int-to-float v5, v9

    int-to-float v6, v11

    invoke-direct {v1, v0, v5, v6, v3}, Lcom/android/server/wm/MultiWindowFreezeAnimation;->rotate(IFFLandroid/graphics/Rect;)V

    iget-object v0, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :cond_1c1
    iget-object v0, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {v1, v4, v0}, Lcom/android/server/wm/MultiWindowFreezeAnimation;->setRotationTransformation(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private clearAnimation()V
    .registers 3

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "MultiWindowFreezeAnimation"

    const-string v1, "clearAnimation"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    :cond_17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimating:Z

    return-void
.end method

.method private destroy()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-string v0, "MultiWindowFreezeAnimation"

    const-string v1, "destroy: MultiWindowFreezeAnimation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-void
.end method

.method private findWindowByType(I)Lcom/android/server/wm/WindowState;
    .registers 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpWindowState:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$MultiWindowFreezeAnimation$PvETgKhiIFFqi1FA2YUsagnHJ4g;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$MultiWindowFreezeAnimation$PvETgKhiIFFqi1FA2YUsagnHJ4g;-><init>(Lcom/android/server/wm/MultiWindowFreezeAnimation;I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpWindowState:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method private hasAnimation()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static synthetic lambda$findWindowByType$0(Lcom/android/server/wm/MultiWindowFreezeAnimation;ILcom/android/server/wm/WindowState;)Z
    .registers 4

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, p1, :cond_c

    iput-object p2, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpWindowState:Lcom/android/server/wm/WindowState;

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private loadFreezeAnimation(I)V
    .registers 7

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    const/4 v0, 0x3

    if-gt p1, v0, :cond_32

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_44

    :cond_32
    const/4 v0, 0x5

    if-gt p1, v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x150

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_44

    :cond_3d
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    :goto_44
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    return-void
.end method

.method private rotate(IFFLandroid/graphics/Rect;)V
    .registers 11

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v0, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->createRotationMatrix(IFFFFLandroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p4}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    return-void
.end method

.method private setAnimationTransformation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Transformation;)V
    .registers 17

    move-object v0, p0

    move-object v7, p1

    iget-object v1, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v1, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v8, v1

    iget-object v1, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v9, v1

    iget-object v1, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v10, v1

    iget-object v1, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v11, v1

    iget v1, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRotation:I

    packed-switch v1, :pswitch_data_cc

    goto :goto_5e

    :pswitch_29
    iget-object v1, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v1, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v2, v11, v8

    invoke-virtual {v1, v2, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_5e

    :pswitch_38
    iget-object v1, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v1, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v2, v10, v8

    sub-float v3, v11, v9

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_5e

    :pswitch_49
    iget-object v1, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v1, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v2, v10, v9

    invoke-virtual {v1, v8, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_5e

    :pswitch_58
    iget-object v1, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    nop

    :goto_5e
    iget-object v1, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpFloats:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x2

    if-eqz v7, :cond_9f

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v13, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpFloats:[F

    aget v6, v13, v6

    iget-object v13, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpFloats:[F

    aget v5, v13, v5

    invoke-virtual {v7, v12, v6, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v5, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v6, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpFloats:[F

    aget v4, v6, v4

    iget-object v6, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpFloats:[F

    aget v6, v6, v3

    iget-object v3, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpFloats:[F

    aget v12, v3, v2

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpFloats:[F

    aget v13, v2, v1

    move-object v1, v7

    move-object v2, v5

    move v3, v4

    move v4, v6

    move v5, v12

    move v6, v13

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v2

    invoke-virtual {v7, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_ca

    :cond_9f
    iget-object v12, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v13, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpFloats:[F

    aget v6, v13, v6

    iget-object v13, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpFloats:[F

    aget v5, v13, v5

    invoke-virtual {v12, v6, v5}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v5, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v6, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpFloats:[F

    aget v4, v6, v4

    iget-object v6, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpFloats:[F

    aget v3, v6, v3

    iget-object v6, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpFloats:[F

    aget v2, v6, v2

    iget-object v6, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpFloats:[F

    aget v1, v6, v1

    invoke-virtual {v5, v4, v3, v2, v1}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    iget-object v1, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setAlpha(F)V

    :goto_ca
    return-void

    nop

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_58
        :pswitch_49
        :pswitch_38
        :pswitch_29
    .end packed-switch
.end method

.method private setAnimationTransformation(Landroid/view/animation/Transformation;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/MultiWindowFreezeAnimation;->setAnimationTransformation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Transformation;)V

    return-void
.end method

.method private setRotationTransformation(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 10

    iget v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRotation:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_60

    goto :goto_5f

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_5f

    :pswitch_1d
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_5f

    :pswitch_3a
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_5f

    :pswitch_50
    invoke-virtual {p1, p2, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    nop

    :goto_5f
    return-void

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_50
        :pswitch_3a
        :pswitch_1d
        :pswitch_7
    .end packed-switch
.end method

.method private stepAnimation(J)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTransformation:Landroid/view/animation/Transformation;

    invoke-direct {p0, v1}, Lcom/android/server/wm/MultiWindowFreezeAnimation;->setAnimationTransformation(Landroid/view/animation/Transformation;)V

    return v0
.end method


# virtual methods
.method dismiss(I)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_d

    const-string v0, "MultiWindowFreezeAnimation"

    const-string v1, "loadFreezeAnimation: MultiWindowFreezeAnimation is running."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_d
    invoke-direct {p0, p1}, Lcom/android/server/wm/MultiWindowFreezeAnimation;->loadFreezeAnimation(I)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_2a

    const-string v0, "MultiWindowFreezeAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismiss: load alpha animation, changeType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    const/4 v0, 0x1

    return v0
.end method

.method isAnimating()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowFreezeAnimation;->hasAnimation()Z

    move-result v0

    return v0
.end method

.method kill()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimating:Z

    if-eqz v0, :cond_b

    const-string v0, "MultiWindowFreezeAnimation"

    const-string v1, "Kill!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowFreezeAnimation;->clearAnimation()V

    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowFreezeAnimation;->destroy()V

    return-void
.end method

.method stepAnimationLocked(J)Z
    .registers 5

    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowFreezeAnimation;->hasAnimation()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimating:Z

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimating:Z

    if-nez v0, :cond_18

    const-string v0, "MultiWindowFreezeAnimation"

    const-string/jumbo v1, "stepAnimationLocked: start animation"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimating:Z

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    :cond_20
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/MultiWindowFreezeAnimation;->stepAnimation(J)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mCreatedTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
