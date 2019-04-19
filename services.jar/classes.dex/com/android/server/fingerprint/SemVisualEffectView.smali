.class public Lcom/android/server/fingerprint/SemVisualEffectView;
.super Landroid/view/View;
.source "SemVisualEffectView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fingerprint/SemVisualEffectView$IVisualEffectViewListener;
    }
.end annotation


# static fields
.field public static final ALPHA_LEVEL_AOD:F = 0.4f

.field public static final ALPHA_LEVEL_LOCK_SCREEN:F = 0.3f

.field private static final DIR_DOWN:I = 0x2

.field private static final DIR_LEFT:I = 0x1

.field private static final DIR_RIGHT:I = 0x3

.field private static final DIR_UP:I = 0x0

.field private static final DISPLAY_INFO_PATH:Ljava/lang/String; = "/sys/class/sec/tsp/fod_info"

.field private static final MAX_EFFECT_SIZE_DP:I = 0x190

.field private static final OPTION_NOT_USE_ALPHA_BLENDING:Z = false

.field private static final OPTION_NOT_USE_BEZIER_CURVE:Z = false

.field private static final OPTION_SHOW_RAW_TOUCH_MAP:Z = false

.field private static final OPTION_WAIT_NEXT_TOUCH:Z = false

.field private static final SENSOR_INFO_PATH:Ljava/lang/String; = "/sys/class/fingerprint/fingerprint/position"

.field private static final TAG:Ljava/lang/String; = "FingerprintService"

.field private static final TARGET_DURATION:J = 0x3e8L

.field private static final TOUCH_MAP_PATH:Ljava/lang/String; = "/sys/class/sec/tsp/fod_pos"


# instance fields
.field private isDismiss:Z

.field private mAlphaLevel:F

.field private mBitmapScale:F

.field private mBtmEffect:Landroid/graphics/Bitmap;

.field private mDisplayInfoBufferSize:I

.field private mDisplayInfoHCellSize:I

.field private mDisplayInfoVCellSize:I

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEffectPath:Landroid/graphics/Path;

.field private mEffectSizePixel:I

.field mEffectViewParam:Landroid/view/WindowManager$LayoutParams;

.field private mFingerIconSize:F

.field private mIsStarted:Z

.field private mLastRawStr:Ljava/lang/String;

.field private mListener:Lcom/android/server/fingerprint/SemVisualEffectView$IVisualEffectViewListener;

.field private mNeedToReadTouchMap:Z

.field private mPntBitmap:Landroid/graphics/Paint;

.field private mRotateMatrix:Landroid/graphics/Matrix;

.field private mStartTimeMilli:J

.field mTouchAreaList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[F>;"
        }
    .end annotation
.end field

.field private mTouchMap:[[I

.field private mViewOffsetX:F

.field private mViewOffsetY:F

.field protected mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x11

    iput v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mDisplayInfoHCellSize:I

    const/16 v0, 0xe

    iput v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mDisplayInfoVCellSize:I

    iget v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mDisplayInfoHCellSize:I

    iget v1, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mDisplayInfoVCellSize:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mDisplayInfoBufferSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mTouchMap:[[I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mTouchAreaList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mBtmEffect:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mEffectPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mRotateMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mBitmapScale:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mViewOffsetX:F

    iput v1, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mViewOffsetY:F

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mStartTimeMilli:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mEffectSizePixel:I

    iput-object v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mLastRawStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mPntBitmap:Landroid/graphics/Paint;

    iput-boolean v1, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mIsStarted:Z

    iput-boolean v1, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mNeedToReadTouchMap:Z

    const v2, 0x3ecccccd    # 0.4f

    iput v2, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mAlphaLevel:F

    iput-object v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mListener:Lcom/android/server/fingerprint/SemVisualEffectView$IVisualEffectViewListener;

    iput-object v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mWindowManager:Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mEffectViewParam:Landroid/view/WindowManager$LayoutParams;

    iput-boolean v1, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->isDismiss:Z

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mWindowManager:Landroid/view/WindowManager;

    const-string/jumbo v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v0, Lcom/android/server/fingerprint/SemVisualEffectView$1;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/SemVisualEffectView$1;-><init>(Lcom/android/server/fingerprint/SemVisualEffectView;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/SemVisualEffectView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/android/server/fingerprint/SemVisualEffectView;->setDisplayInfo()V

    invoke-direct {p0}, Lcom/android/server/fingerprint/SemVisualEffectView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/fingerprint/SemVisualEffectView;)Landroid/hardware/display/DisplayManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/fingerprint/SemVisualEffectView;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .registers 2

    iput-object p1, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mPntBitmap:Landroid/graphics/Paint;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/fingerprint/SemVisualEffectView;)I
    .registers 2

    iget v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mEffectSizePixel:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/fingerprint/SemVisualEffectView;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mEffectSizePixel:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/fingerprint/SemVisualEffectView;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mBtmEffect:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/fingerprint/SemVisualEffectView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mBtmEffect:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private get2xMagnificationMap([[III)[[I
    .registers 19

    move/from16 v1, p2

    move/from16 v2, p3

    mul-int/lit8 v0, v2, 0x2

    mul-int/lit8 v3, v1, 0x2

    filled-new-array {v0, v3}, [I

    move-result-object v0

    const-class v3, I

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move-object v3, v0

    const/4 v0, 0x0

    move v4, v0

    :goto_17
    if-ge v4, v2, :cond_5a

    move v5, v0

    :goto_1a
    if-ge v5, v1, :cond_57

    mul-int/lit8 v6, v4, 0x2

    :try_start_1e
    aget-object v6, v3, v6

    mul-int/lit8 v7, v5, 0x2

    mul-int/lit8 v8, v4, 0x2

    aget-object v8, v3, v8

    mul-int/lit8 v9, v5, 0x2

    add-int/lit8 v9, v9, 0x1

    mul-int/lit8 v10, v4, 0x2

    add-int/lit8 v10, v10, 0x1

    aget-object v10, v3, v10

    mul-int/lit8 v11, v5, 0x2

    mul-int/lit8 v12, v4, 0x2

    add-int/lit8 v12, v12, 0x1

    aget-object v12, v3, v12

    mul-int/lit8 v13, v5, 0x2

    add-int/lit8 v13, v13, 0x1

    aget-object v14, p1, v4

    aget v14, v14, v5

    aput v14, v12, v13

    aput v14, v10, v11

    aput v14, v8, v9

    aput v14, v6, v7
    :try_end_48
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1e .. :try_end_48} :catch_4b

    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :catch_4b
    move-exception v0

    const-string v4, "FingerprintService"

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4

    :cond_57
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_5a
    nop

    return-object v3
.end method

.method private getDisplayRotation()I
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/fingerprint/SemVisualEffectView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_18

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    return v1

    :cond_18
    const-string v1, "FingerprintService"

    const-string v2, "No WindowManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private getOuterPathFromMap([[IFF)V
    .registers 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mTouchAreaList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-nez v1, :cond_14

    const-string v2, "FingerprintService"

    const-string/jumbo v3, "map is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    const/4 v2, 0x0

    aget-object v3, v1, v2

    array-length v3, v3

    array-length v4, v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/fingerprint/SemVisualEffectView;->get2xMagnificationMap([[III)[[I

    move-result-object v1

    if-nez v1, :cond_2c

    const-string v2, "FingerprintService"

    const-string v6, "Failed to create a magnification map"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2c
    const/4 v6, 0x2

    mul-int/2addr v3, v6

    mul-int/2addr v4, v6

    const/4 v7, 0x0

    move v8, v7

    move v7, v2

    :cond_32
    aget-object v9, v1, v7

    aget v9, v9, v8

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3a

    goto :goto_45

    :cond_3a
    add-int/lit8 v8, v8, 0x1

    if-ne v8, v3, :cond_41

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x0

    :cond_41
    if-ge v8, v3, :cond_45

    if-lt v7, v4, :cond_32

    :cond_45
    :goto_45
    if-ne v8, v3, :cond_4a

    if-ne v7, v4, :cond_4a

    return-void

    :cond_4a
    move v9, v8

    move v11, v7

    const/4 v12, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v13, v8

    move v8, v7

    move v7, v2

    :goto_57
    packed-switch v12, :pswitch_data_216

    goto :goto_b3

    :pswitch_5b
    add-int/lit8 v14, v3, -0x1

    if-ge v13, v14, :cond_b3

    aget-object v14, v1, v8

    add-int/lit8 v15, v13, 0x1

    aget v14, v14, v15

    if-ne v14, v10, :cond_b3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    const/4 v12, 0x2

    goto :goto_c6

    :pswitch_72
    add-int/lit8 v14, v4, -0x1

    if-ge v8, v14, :cond_b3

    add-int/lit8 v14, v8, 0x1

    aget-object v14, v1, v14

    aget v14, v14, v13

    if-ne v14, v10, :cond_b3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    const/4 v12, 0x1

    goto :goto_c6

    :pswitch_89
    if-lez v13, :cond_b3

    aget-object v14, v1, v8

    add-int/lit8 v15, v13, -0x1

    aget v14, v14, v15

    if-ne v14, v10, :cond_b3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, -0x1

    const/4 v12, 0x0

    goto :goto_c6

    :pswitch_9e
    if-lez v8, :cond_b3

    add-int/lit8 v14, v8, -0x1

    aget-object v14, v1, v14

    aget v14, v14, v13

    if-ne v14, v10, :cond_b3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, -0x1

    const/4 v12, 0x3

    goto :goto_c6

    :cond_b3
    :goto_b3
    add-int/lit8 v14, v12, 0x1

    rem-int/lit8 v14, v14, 0x4

    add-int/lit8 v7, v7, 0x1

    const/16 v12, 0x2710

    if-le v7, v12, :cond_c5

    const-string v2, "FingerprintService"

    const-string v6, "Failed to parse."

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c5
    move v12, v14

    :goto_c6
    if-ne v13, v9, :cond_1f6

    if-ne v8, v11, :cond_1f6

    int-to-float v14, v3

    div-float v14, p2, v14

    int-to-float v10, v4

    div-float v10, p3, v10

    int-to-float v2, v9

    mul-float/2addr v2, v14

    int-to-float v6, v11

    mul-float/2addr v6, v10

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mTouchAreaList:Ljava/util/ArrayList;

    move/from16 v20, v3

    move/from16 v21, v4

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v3, 0x0

    aput v2, v4, v3

    const/4 v3, 0x1

    aput v6, v4, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, -0x1

    const/4 v3, 0x0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_ee
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    move-object/from16 v23, v5

    if-eqz v22, :cond_17d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v5, v22

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    packed-switch v5, :pswitch_data_222

    move-object/from16 v25, v4

    :cond_107
    :goto_107
    const/4 v4, 0x0

    goto :goto_156

    :pswitch_109
    add-float/2addr v2, v14

    move-object/from16 v25, v4

    const/4 v4, 0x2

    if-ne v1, v4, :cond_111

    add-float/2addr v2, v14

    goto :goto_107

    :cond_111
    if-nez v1, :cond_107

    const/4 v4, 0x1

    aget v16, v3, v4

    add-float v16, v16, v10

    aput v16, v3, v4

    add-float/2addr v6, v10

    goto :goto_107

    :pswitch_11c
    move-object/from16 v25, v4

    const/4 v4, 0x1

    add-float/2addr v6, v10

    if-ne v1, v4, :cond_124

    add-float/2addr v6, v10

    goto :goto_107

    :cond_124
    const/4 v4, 0x3

    if-ne v1, v4, :cond_107

    const/4 v4, 0x0

    aget v17, v3, v4

    sub-float v17, v17, v14

    aput v17, v3, v4

    sub-float/2addr v2, v14

    goto :goto_107

    :pswitch_130
    move-object/from16 v25, v4

    sub-float/2addr v2, v14

    if-nez v1, :cond_137

    sub-float/2addr v2, v14

    goto :goto_107

    :cond_137
    const/4 v4, 0x2

    if-ne v1, v4, :cond_107

    const/4 v4, 0x1

    aget v16, v3, v4

    sub-float v16, v16, v10

    aput v16, v3, v4

    sub-float/2addr v6, v10

    goto :goto_107

    :pswitch_143
    move-object/from16 v25, v4

    sub-float/2addr v6, v10

    const/4 v4, 0x3

    if-ne v1, v4, :cond_14b

    sub-float/2addr v6, v10

    goto :goto_107

    :cond_14b
    const/4 v4, 0x1

    if-ne v1, v4, :cond_107

    const/4 v4, 0x0

    aget v17, v3, v4

    add-float v17, v17, v14

    aput v17, v3, v4

    add-float/2addr v2, v14

    :goto_156
    if-ne v5, v1, :cond_161

    aput v2, v3, v4

    const/16 v16, 0x1

    aput v6, v3, v16

    move/from16 v26, v1

    goto :goto_175

    :cond_161
    const/16 v16, 0x1

    move/from16 v26, v1

    move-object/from16 v27, v3

    const/4 v1, 0x2

    new-array v3, v1, [F

    aput v2, v3, v4

    aput v6, v3, v16

    move-object v1, v3

    iget-object v3, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mTouchAreaList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v1

    :goto_175
    move v1, v5

    nop

    move-object/from16 v5, v23

    move-object/from16 v4, v25

    goto/16 :goto_ee

    :cond_17d
    move/from16 v26, v1

    move-object/from16 v27, v3

    const/4 v1, 0x0

    :goto_182
    const/4 v3, 0x3

    if-ge v1, v3, :cond_1ef

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_18b
    iget-object v3, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mTouchAreaList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v5, v3, :cond_1dd

    iget-object v3, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mTouchAreaList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    move/from16 v28, v2

    iget-object v2, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mTouchAreaList:Ljava/util/ArrayList;

    add-int/lit8 v22, v5, 0x1

    move/from16 v29, v6

    iget-object v6, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mTouchAreaList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    rem-int v6, v22, v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    move/from16 v30, v7

    const/4 v6, 0x2

    new-array v7, v6, [F

    const/16 v17, 0x0

    aget v18, v3, v17

    aget v22, v2, v17

    add-float v18, v18, v22

    const/high16 v22, 0x40000000    # 2.0f

    div-float v18, v18, v22

    aput v18, v7, v17

    const/16 v16, 0x1

    aget v18, v3, v16

    aget v24, v2, v16

    add-float v18, v18, v24

    div-float v18, v18, v22

    aput v18, v7, v16

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v28

    move/from16 v6, v29

    move/from16 v7, v30

    const/4 v3, 0x3

    goto :goto_18b

    :cond_1dd
    move/from16 v28, v2

    move/from16 v29, v6

    move/from16 v30, v7

    const/4 v6, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x0

    iput-object v4, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mTouchAreaList:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    move/from16 v6, v29

    goto :goto_182

    :cond_1ef
    move/from16 v28, v2

    move/from16 v29, v6

    move/from16 v30, v7

    return-void

    :cond_1f6
    move-object/from16 v19, v1

    move/from16 v17, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move-object/from16 v23, v5

    move/from16 v30, v7

    move/from16 v16, v10

    move/from16 v10, v16

    move/from16 v2, v17

    move-object/from16 v1, v19

    move/from16 v3, v20

    move/from16 v4, v21

    move-object/from16 v5, v23

    move/from16 v7, v30

    goto/16 :goto_57

    nop

    nop

    :pswitch_data_216
    .packed-switch 0x0
        :pswitch_9e
        :pswitch_89
        :pswitch_72
        :pswitch_5b
    .end packed-switch

    :pswitch_data_222
    .packed-switch 0x0
        :pswitch_143
        :pswitch_130
        :pswitch_11c
        :pswitch_109
    .end packed-switch
.end method

.method private getRotationMap([[II)[[I
    .registers 12

    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    array-length v2, p1

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_7c

    goto/16 :goto_76

    :pswitch_b
    filled-new-array {v1, v2}, [I

    move-result-object v4

    const-class v5, I

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, [[I

    move v4, v0

    :goto_19
    if-ge v4, v2, :cond_30

    move v5, v0

    :goto_1c
    if-ge v5, v1, :cond_2d

    aget-object v6, v3, v5

    sub-int v7, v2, v4

    add-int/lit8 v7, v7, -0x1

    aget-object v8, p1, v4

    aget v8, v8, v5

    aput v8, v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_30
    goto :goto_76

    :pswitch_31
    filled-new-array {v2, v1}, [I

    move-result-object v4

    const-class v5, I

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, [[I

    move v4, v0

    :goto_3f
    if-ge v4, v2, :cond_4f

    aget-object v5, p1, v4

    sub-int v6, v2, v4

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v3, v6

    invoke-static {v5, v0, v6, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    :cond_4f
    goto :goto_76

    :pswitch_50
    filled-new-array {v1, v2}, [I

    move-result-object v4

    const-class v5, I

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, [[I

    move v4, v0

    :goto_5e
    if-ge v4, v2, :cond_75

    move v5, v0

    :goto_61
    if-ge v5, v1, :cond_72

    sub-int v6, v1, v5

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v3, v6

    aget-object v7, p1, v4

    aget v7, v7, v5

    aput v7, v6, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_61

    :cond_72
    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    :cond_75
    nop

    :goto_76
    if-nez v3, :cond_7a

    move-object v0, p1

    goto :goto_7b

    :cond_7a
    move-object v0, v3

    :goto_7b
    return-object v0

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_50
        :pswitch_31
        :pswitch_b
    .end packed-switch
.end method

.method private init()V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/SemVisualEffectView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.biometrics.app.setting"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "beyond_touch_feedback"

    const-string/jumbo v2, "drawable"

    const-string v3, "com.samsung.android.biometrics.app.setting"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mBtmEffect:Landroid/graphics/Bitmap;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_2b

    :catch_20
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mBtmEffect:Landroid/graphics/Bitmap;

    const-string v1, "FingerprintService"

    const-string v2, "SemResourceManager.getDrawable : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2b
    invoke-virtual {p0}, Lcom/android/server/fingerprint/SemVisualEffectView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/server/fingerprint/SemVisualEffectView$2;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/SemVisualEffectView$2;-><init>(Lcom/android/server/fingerprint/SemVisualEffectView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private static readFile(Ljava/io/File;)[B
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_44

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_44

    :cond_b
    move-object v2, v1

    :try_start_c
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v4, v3, [B

    move-object v0, v4

    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1e} :catch_31
    .catchall {:try_start_c .. :try_end_1e} :catchall_2f

    if-gez v4, :cond_28

    nop

    nop

    :try_start_22
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_27

    :catch_26
    move-exception v4

    :goto_27
    return-object v1

    :cond_28
    nop

    :try_start_29
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2d

    :goto_2c
    goto :goto_3b

    :catch_2d
    move-exception v1

    goto :goto_2c

    :catchall_2f
    move-exception v1

    goto :goto_3c

    :catch_31
    move-exception v1

    :try_start_32
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_2f

    if-eqz v2, :cond_3b

    :try_start_37
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_2d

    goto :goto_2c

    :cond_3b
    :goto_3b
    return-object v0

    :goto_3c
    if-eqz v2, :cond_43

    :try_start_3e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_43

    :catch_42
    move-exception v3

    :cond_43
    :goto_43
    throw v1

    :cond_44
    :goto_44
    return-object v1
.end method

.method private readTouchMap()[[I
    .registers 16

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/sec/tsp/fod_pos"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/fingerprint/SemVisualEffectView;->readFile(Ljava/io/File;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e4

    array-length v2, v0

    if-nez v2, :cond_13

    goto/16 :goto_e4

    :cond_13
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mDisplayInfoBufferSize:I

    if-eq v3, v4, :cond_40

    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "raw data has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_40
    iget v3, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mDisplayInfoHCellSize:I

    if-lez v3, :cond_e3

    iget v3, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mDisplayInfoVCellSize:I

    if-gtz v3, :cond_4a

    goto/16 :goto_e3

    :cond_4a
    iget v3, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mDisplayInfoHCellSize:I

    iget v4, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mDisplayInfoVCellSize:I

    filled-new-array {v4, v3}, [I

    move-result-object v5

    const-class v6, I

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, v7

    move v7, v6

    move v6, v8

    :goto_60
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v6, v10, :cond_be

    add-int/lit8 v10, v6, 0x2

    :try_start_68
    invoke-virtual {v2, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10
    :try_end_72
    .catch Ljava/lang/NumberFormatException; {:try_start_68 .. :try_end_72} :catch_98

    move v11, v7

    move v7, v8

    :goto_74
    const/16 v12, 0x8

    if-ge v7, v12, :cond_93

    :try_start_78
    aget-object v12, v5, v9

    shr-int v13, v10, v7

    const/4 v14, 0x1

    and-int/2addr v13, v14

    if-ne v13, v14, :cond_81

    goto :goto_82

    :cond_81
    move v14, v8

    :goto_82
    aput v14, v12, v11
    :try_end_84
    .catch Ljava/lang/NumberFormatException; {:try_start_78 .. :try_end_84} :catch_91

    add-int/lit8 v11, v11, 0x1

    if-ne v11, v3, :cond_8e

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v4, :cond_8d

    return-object v5

    :cond_8d
    const/4 v11, 0x0

    :cond_8e
    add-int/lit8 v7, v7, 0x1

    goto :goto_74

    :catch_91
    move-exception v7

    goto :goto_9b

    :cond_93
    nop

    add-int/lit8 v6, v6, 0x2

    move v7, v11

    goto :goto_60

    :catch_98
    move-exception v8

    move v11, v7

    move-object v7, v8

    :goto_9b
    const-string v8, "FingerprintService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "invalid data format ("

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v2, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_be
    const-string v6, "FingerprintService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "invalid data("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_e3
    :goto_e3
    return-object v1

    :cond_e4
    :goto_e4
    return-object v1
.end method

.method private removeSeparatedArea([[III)V
    .registers 7

    aget-object v0, p1, p3

    aget v0, v0, p2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    return-void

    :cond_8
    aget-object v0, p1, p3

    const/4 v2, 0x2

    aput v2, v0, p2

    if-lez p2, :cond_1c

    aget-object v0, p1, p3

    add-int/lit8 v2, p2, -0x1

    aget v0, v0, v2

    if-ne v0, v1, :cond_1c

    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/fingerprint/SemVisualEffectView;->removeSeparatedArea([[III)V

    :cond_1c
    aget-object v0, p1, p3

    array-length v0, v0

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_2f

    aget-object v0, p1, p3

    add-int/lit8 v2, p2, 0x1

    aget v0, v0, v2

    if-ne v0, v1, :cond_2f

    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/fingerprint/SemVisualEffectView;->removeSeparatedArea([[III)V

    :cond_2f
    if-lez p3, :cond_3e

    add-int/lit8 v0, p3, -0x1

    aget-object v0, p1, v0

    aget v0, v0, p2

    if-ne v0, v1, :cond_3e

    add-int/lit8 v0, p3, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/fingerprint/SemVisualEffectView;->removeSeparatedArea([[III)V

    :cond_3e
    array-length v0, p1

    sub-int/2addr v0, v1

    if-ge p3, v0, :cond_4f

    add-int/lit8 v0, p3, 0x1

    aget-object v0, p1, v0

    aget v0, v0, p2

    if-ne v0, v1, :cond_4f

    add-int/lit8 v0, p3, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/fingerprint/SemVisualEffectView;->removeSeparatedArea([[III)V

    :cond_4f
    return-void
.end method

.method private removeSeparatedArea([[I)[[I
    .registers 11

    invoke-virtual {p1}, [[I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v1, 0x0

    aget-object v2, p1, v1

    array-length v2, v2

    array-length v3, p1

    div-int/lit8 v4, v2, 0x2

    mul-int/lit8 v5, v3, 0x2

    div-int/lit8 v5, v5, 0x3

    invoke-direct {p0, v0, v4, v5}, Lcom/android/server/fingerprint/SemVisualEffectView;->removeSeparatedArea([[III)V

    move v4, v1

    :goto_15
    array-length v5, p1

    if-ge v4, v5, :cond_32

    move v5, v1

    :goto_19
    aget-object v6, p1, v4

    array-length v6, v6

    if-ge v5, v6, :cond_2f

    aget-object v6, p1, v4

    aget-object v7, v0, v4

    aget v7, v7, v5

    const/4 v8, 0x2

    if-ne v7, v8, :cond_29

    const/4 v7, 0x1

    goto :goto_2a

    :cond_29
    move v7, v1

    :goto_2a
    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_32
    return-object p1
.end method

.method private setDisplayInfo()V
    .registers 8

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/sec/tsp/fod_info"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/fingerprint/SemVisualEffectView;->readFile(Ljava/io/File;)[B

    move-result-object v0

    if-eqz v0, :cond_ab

    array-length v1, v0

    if-nez v1, :cond_12

    goto/16 :goto_ab

    :cond_12
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_41

    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong information("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_41
    const/4 v3, 0x0

    :try_start_42
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mDisplayInfoHCellSize:I

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mDisplayInfoVCellSize:I

    const/4 v3, 0x2

    aget-object v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/2addr v4, v3

    iput v4, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mDisplayInfoBufferSize:I
    :try_end_69
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_69} :catch_6a

    goto :goto_86

    :catch_6a
    move-exception v3

    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrong information("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_86
    iget v3, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mDisplayInfoHCellSize:I

    if-lez v3, :cond_8e

    iget v3, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mDisplayInfoVCellSize:I

    if-gtz v3, :cond_aa

    :cond_8e
    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid display info ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_aa
    return-void

    :cond_ab
    :goto_ab
    const-string v1, "FingerprintService"

    const-string v2, "No display information"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected addToWindowManager(Z)Z
    .registers 23

    move-object/from16 v1, p0

    const/high16 v0, 0x41200000    # 10.0f

    const/high16 v2, 0x41200000    # 10.0f

    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/fingerprint/fingerprint/position"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/server/fingerprint/SemVisualEffectView;->readFile(Ljava/io/File;)[B

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3f

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/16 v8, 0x8

    if-lt v7, v8, :cond_3e

    const/4 v7, 0x7

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    iput v7, v1, Lcom/android/server/fingerprint/SemVisualEffectView;->mFingerIconSize:F

    const/4 v7, 0x3

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aget-object v7, v6, v4

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    :cond_3e
    goto :goto_46

    :cond_3f
    const-string v5, "FingerprintService"

    const-string v6, "No sensor position"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_46
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/SemVisualEffectView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v6, v1, Lcom/android/server/fingerprint/SemVisualEffectView;->mFingerIconSize:F

    const/4 v7, 0x5

    invoke-static {v7, v6, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    iput v6, v1, Lcom/android/server/fingerprint/SemVisualEffectView;->mFingerIconSize:F

    invoke-static {v7, v0, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-static {v7, v2, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    int-to-float v2, v0

    iget-object v0, v1, Lcom/android/server/fingerprint/SemVisualEffectView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    move-object v8, v0

    invoke-virtual {v7, v8}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const/16 v15, 0x8b3

    const v16, 0x8000c18

    const/16 v17, -0x3

    iget v0, v8, Landroid/graphics/Point;->x:I

    div-int/lit8 v9, v0, 0x2

    int-to-float v9, v9

    add-float/2addr v9, v2

    const/high16 v10, 0x40000000    # 2.0f

    div-float v11, v6, v10

    add-float/2addr v9, v11

    float-to-int v9, v9

    const/16 v11, 0x51

    const/4 v12, 0x0

    iput v12, v1, Lcom/android/server/fingerprint/SemVisualEffectView;->mViewOffsetX:F

    iput v12, v1, Lcom/android/server/fingerprint/SemVisualEffectView;->mViewOffsetY:F

    invoke-direct/range {p0 .. p0}, Lcom/android/server/fingerprint/SemVisualEffectView;->getDisplayRotation()I

    move-result v12

    packed-switch v12, :pswitch_data_110

    :goto_99
    move/from16 v18, v0

    move/from16 v19, v9

    move v14, v11

    goto :goto_ca

    :pswitch_9f
    iget v9, v8, Landroid/graphics/Point;->y:I

    div-int/lit8 v12, v9, 0x2

    int-to-float v12, v12

    add-float/2addr v12, v2

    div-float v13, v6, v10

    add-float/2addr v12, v13

    float-to-int v0, v12

    const v11, 0x800013

    div-float v10, v6, v10

    add-float/2addr v10, v2

    neg-float v10, v10

    iput v10, v1, Lcom/android/server/fingerprint/SemVisualEffectView;->mViewOffsetX:F

    goto :goto_99

    :pswitch_b3
    const/16 v11, 0x31

    div-float v10, v6, v10

    add-float/2addr v10, v2

    neg-float v10, v10

    iput v10, v1, Lcom/android/server/fingerprint/SemVisualEffectView;->mViewOffsetY:F

    goto :goto_99

    :pswitch_bc
    iget v9, v8, Landroid/graphics/Point;->y:I

    div-int/lit8 v12, v9, 0x2

    int-to-float v12, v12

    add-float/2addr v12, v2

    div-float v10, v6, v10

    add-float/2addr v12, v10

    float-to-int v0, v12

    const v11, 0x800015

    goto :goto_99

    :goto_ca
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    move-object v9, v0

    move/from16 v10, v18

    move/from16 v11, v19

    move v12, v15

    move/from16 v13, v16

    move v4, v14

    move/from16 v14, v17

    invoke-direct/range {v9 .. v14}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, v1, Lcom/android/server/fingerprint/SemVisualEffectView;->mEffectViewParam:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v1, Lcom/android/server/fingerprint/SemVisualEffectView;->mEffectViewParam:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, v1, Lcom/android/server/fingerprint/SemVisualEffectView;->mEffectViewParam:Landroid/view/WindowManager$LayoutParams;

    const/high16 v9, 0x40000

    invoke-virtual {v0, v9}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    if-eqz p1, :cond_f9

    :try_start_e9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/SemVisualEffectView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_100

    iget-object v0, v1, Lcom/android/server/fingerprint/SemVisualEffectView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v10, v1, Lcom/android/server/fingerprint/SemVisualEffectView;->mEffectViewParam:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v10}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_100

    :catch_f7
    move-exception v0

    goto :goto_103

    :cond_f9
    iget-object v0, v1, Lcom/android/server/fingerprint/SemVisualEffectView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v10, v1, Lcom/android/server/fingerprint/SemVisualEffectView;->mEffectViewParam:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v10}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_100
    .catch Ljava/lang/IllegalStateException; {:try_start_e9 .. :try_end_100} :catch_f7

    :cond_100
    :goto_100
    nop

    const/4 v0, 0x1

    return v0

    :goto_103
    nop

    const-string v10, "FingerprintService"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    return v10

    nop

    :pswitch_data_110
    .packed-switch 0x1
        :pswitch_bc
        :pswitch_b3
        :pswitch_9f
    .end packed-switch
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->isDismiss:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/fingerprint/SemVisualEffectView;->stop()V

    :cond_a
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/SemVisualEffectView;->addToWindowManager(Z)Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v2, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mIsStarted:Z

    if-eqz v2, :cond_1f0

    iget-object v2, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mBtmEffect:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1f0

    iget-object v2, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mPntBitmap:Landroid/graphics/Paint;

    if-nez v2, :cond_15

    goto/16 :goto_1f0

    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mStartTimeMilli:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-ltz v4, :cond_30

    iget-object v4, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mListener:Lcom/android/server/fingerprint/SemVisualEffectView$IVisualEffectViewListener;

    if-eqz v4, :cond_2c

    iget-object v4, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mListener:Lcom/android/server/fingerprint/SemVisualEffectView$IVisualEffectViewListener;

    invoke-interface {v4, v0}, Lcom/android/server/fingerprint/SemVisualEffectView$IVisualEffectViewListener;->onEffectFinished(Lcom/android/server/fingerprint/SemVisualEffectView;)V

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/SemVisualEffectView;->stop()V

    return-void

    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/SemVisualEffectView;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/SemVisualEffectView;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, 0x0

    iget v6, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mEffectSizePixel:I

    if-le v4, v6, :cond_49

    iget v6, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mEffectSizePixel:I

    sub-int v6, v4, v6

    div-int/lit8 v5, v6, 0x2

    iget v4, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mEffectSizePixel:I

    :cond_49
    iget-object v6, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mEffectPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    iget-boolean v6, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mNeedToReadTouchMap:Z

    if-eqz v6, :cond_57

    invoke-direct/range {p0 .. p0}, Lcom/android/server/fingerprint/SemVisualEffectView;->readTouchMap()[[I

    move-result-object v6

    goto :goto_58

    :cond_57
    const/4 v6, 0x0

    :goto_58
    iput-object v6, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mTouchMap:[[I

    iget-object v6, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mTouchMap:[[I

    if-eqz v6, :cond_117

    if-lez v4, :cond_117

    iget-object v6, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mTouchMap:[[I

    invoke-direct {v0, v6}, Lcom/android/server/fingerprint/SemVisualEffectView;->removeSeparatedArea([[I)[[I

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mTouchMap:[[I

    iget-object v6, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mTouchMap:[[I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/fingerprint/SemVisualEffectView;->getDisplayRotation()I

    move-result v8

    invoke-direct {v0, v6, v8}, Lcom/android/server/fingerprint/SemVisualEffectView;->getRotationMap([[II)[[I

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mTouchMap:[[I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/SemVisualEffectView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/SemVisualEffectView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mTouchMap:[[I

    invoke-direct {v0, v9, v6, v8}, Lcom/android/server/fingerprint/SemVisualEffectView;->getOuterPathFromMap([[IFF)V

    iget-object v9, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mTouchAreaList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x3

    if-lt v9, v10, :cond_117

    iget-object v9, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mTouchAreaList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    move v12, v10

    move v10, v11

    :goto_96
    if-ge v10, v9, :cond_10f

    iget-object v13, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mTouchAreaList:Ljava/util/ArrayList;

    rem-int v14, v10, v9

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [F

    iget-object v14, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mTouchAreaList:Ljava/util/ArrayList;

    add-int/lit8 v15, v10, 0x1

    rem-int/2addr v15, v9

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [F

    iget-object v15, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mTouchAreaList:Ljava/util/ArrayList;

    add-int/lit8 v16, v10, 0x2

    rem-int v7, v16, v9

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    if-eqz v12, :cond_d9

    iget-object v15, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mEffectPath:Landroid/graphics/Path;

    aget v16, v13, v11

    aget v19, v14, v11

    add-float v16, v16, v19

    const/high16 v17, 0x40000000    # 2.0f

    div-float v11, v16, v17

    const/16 v16, 0x1

    aget v19, v13, v16

    aget v20, v14, v16

    add-float v19, v19, v20

    move/from16 v21, v4

    div-float v4, v19, v17

    invoke-virtual {v15, v11, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v4, 0x0

    move v12, v4

    goto :goto_dd

    :cond_d9
    move/from16 v21, v4

    const/high16 v17, 0x40000000    # 2.0f

    :goto_dd
    iget-object v4, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mEffectPath:Landroid/graphics/Path;

    const/4 v11, 0x0

    aget v15, v13, v11

    aget v16, v14, v11

    add-float v15, v15, v16

    div-float v23, v15, v17

    const/4 v15, 0x1

    aget v16, v13, v15

    aget v18, v14, v15

    add-float v16, v16, v18

    div-float v24, v16, v17

    aget v25, v14, v11

    aget v26, v14, v15

    aget v16, v14, v11

    aget v18, v7, v11

    add-float v16, v16, v18

    div-float v27, v16, v17

    aget v16, v14, v15

    aget v15, v7, v15

    add-float v16, v16, v15

    div-float v28, v16, v17

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v28}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v10, v10, 0x1

    move/from16 v4, v21

    goto :goto_96

    :cond_10f
    move/from16 v21, v4

    iget-object v4, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mEffectPath:Landroid/graphics/Path;

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    goto :goto_119

    :cond_117
    move/from16 v21, v4

    :goto_119
    iget-wide v6, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mStartTimeMilli:J

    sub-long v6, v2, v6

    long-to-float v4, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mBitmapScale:F

    iget v4, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mBitmapScale:F

    add-float/2addr v4, v6

    div-float v4, v6, v4

    sub-float/2addr v6, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v6, v4

    iput v6, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mBitmapScale:F

    iget v4, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mBitmapScale:F

    const/high16 v6, 0x3f000000    # 0.5f

    cmpg-float v4, v4, v6

    const/high16 v7, 0x437f0000    # 255.0f

    if-gez v4, :cond_148

    iget-object v4, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mPntBitmap:Landroid/graphics/Paint;

    iget v6, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mAlphaLevel:F

    mul-float/2addr v7, v6

    float-to-int v6, v7

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_159

    :cond_148
    iget-object v4, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mPntBitmap:Landroid/graphics/Paint;

    iget v8, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mBitmapScale:F

    sub-float/2addr v8, v6

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v8, v6

    mul-float/2addr v8, v7

    sub-float/2addr v7, v8

    iget v6, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mAlphaLevel:F

    mul-float/2addr v7, v6

    float-to-int v6, v7

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_159
    iget-object v4, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mBtmEffect:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sget-boolean v6, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v6, :cond_183

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    int-to-float v7, v4

    iget v8, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mViewOffsetX:F

    add-float/2addr v7, v8

    int-to-float v8, v5

    add-float/2addr v7, v8

    int-to-float v8, v4

    iget v9, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mViewOffsetY:F

    add-float/2addr v8, v9

    int-to-float v9, v5

    add-float/2addr v8, v9

    iget v9, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mFingerIconSize:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sget-object v10, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    :cond_183
    iget-object v6, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    iget-object v6, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mRotateMatrix:Landroid/graphics/Matrix;

    iget v7, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mBitmapScale:F

    const/high16 v8, 0x41a00000    # 20.0f

    mul-float/2addr v7, v8

    int-to-float v8, v4

    int-to-float v9, v4

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v6, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mRotateMatrix:Landroid/graphics/Matrix;

    iget v7, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mBitmapScale:F

    iget v8, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mBitmapScale:F

    int-to-float v9, v4

    int-to-float v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v6, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mRotateMatrix:Landroid/graphics/Matrix;

    iget v7, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mViewOffsetX:F

    int-to-float v8, v5

    add-float/2addr v7, v8

    iget v8, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mViewOffsetY:F

    int-to-float v9, v5

    add-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v6, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mBtmEffect:Landroid/graphics/Bitmap;

    iget-object v7, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mRotateMatrix:Landroid/graphics/Matrix;

    iget-object v8, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mPntBitmap:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object v6, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    iget-object v6, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mRotateMatrix:Landroid/graphics/Matrix;

    iget v7, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mBitmapScale:F

    const/high16 v8, 0x43160000    # 150.0f

    mul-float/2addr v7, v8

    int-to-float v8, v4

    int-to-float v9, v4

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v6, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mRotateMatrix:Landroid/graphics/Matrix;

    iget v7, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mBitmapScale:F

    const v8, 0x3f333333    # 0.7f

    mul-float/2addr v7, v8

    iget v9, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mBitmapScale:F

    mul-float/2addr v9, v8

    int-to-float v8, v4

    int-to-float v10, v4

    invoke-virtual {v6, v7, v9, v8, v10}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v6, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mRotateMatrix:Landroid/graphics/Matrix;

    iget v7, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mViewOffsetX:F

    int-to-float v8, v5

    add-float/2addr v7, v8

    iget v8, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mViewOffsetY:F

    int-to-float v9, v5

    add-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v6, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mBtmEffect:Landroid/graphics/Bitmap;

    iget-object v7, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mRotateMatrix:Landroid/graphics/Matrix;

    iget-object v8, v0, Lcom/android/server/fingerprint/SemVisualEffectView;->mPntBitmap:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/SemVisualEffectView;->invalidate()V

    return-void

    :cond_1f0
    :goto_1f0
    return-void
.end method

.method public restoreRotationLock()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->isDismiss:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mEffectViewParam:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_1e

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mEffectViewParam:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-virtual {p0}, Lcom/android/server/fingerprint/SemVisualEffectView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mEffectViewParam:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, p0, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1e
    return-void
.end method

.method public setAlphaLevel(F)V
    .registers 2

    iput p1, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mAlphaLevel:F

    return-void
.end method

.method public setReadTouchMap(ZZ)V
    .registers 6

    iput-boolean p2, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->isDismiss:Z

    iget-boolean v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->isDismiss:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mEffectViewParam:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_21

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mEffectViewParam:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-virtual {p0}, Lcom/android/server/fingerprint/SemVisualEffectView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mEffectViewParam:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, p0, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_21
    iput-boolean p1, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mNeedToReadTouchMap:Z

    return-void
.end method

.method public start(Lcom/android/server/fingerprint/SemVisualEffectView$IVisualEffectViewListener;)V
    .registers 6

    const-string v0, "FingerprintService"

    const-string v1, "VisualEffect start()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/fingerprint/SemVisualEffectView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mIsStarted:Z

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/SemVisualEffectView;->addToWindowManager(Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    iput-boolean v1, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mIsStarted:Z

    goto :goto_1d

    :cond_1c
    return-void

    :cond_1d
    :goto_1d
    iput-object p1, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mListener:Lcom/android/server/fingerprint/SemVisualEffectView$IVisualEffectViewListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mBitmapScale:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mStartTimeMilli:J

    iput-boolean v1, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mNeedToReadTouchMap:Z

    invoke-virtual {p0}, Lcom/android/server/fingerprint/SemVisualEffectView;->invalidate()V

    return-void
.end method

.method public stop()V
    .registers 4

    const-string v0, "FingerprintService"

    const-string v1, "VisualEffect stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/fingerprint/SemVisualEffectView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_12
    iget-object v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_27

    :try_start_16
    iget-object v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1d} :catch_1e

    goto :goto_27

    :catch_1e
    move-exception v0

    const-string v1, "FingerprintService"

    const-string/jumbo v2, "stop: failure to unregisterDisplayListener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_27
    :goto_27
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mBitmapScale:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView;->mIsStarted:Z

    return-void
.end method
