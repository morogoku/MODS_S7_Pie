.class public Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;
.super Ljava/lang/Object;
.source "ThemeChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThemeChecker"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

.field private mState:Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactionsdlx/util/LogWrapper;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    sget-object v0, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;->NEED_CHECKING:Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;->mState:Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;

    return-void
.end method

.method private captureScreen(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 15

    const/4 v0, 0x0

    if-nez p1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    const-string v2, "ThemeChecker"

    const-string v3, "captureScreen() : mContext is NULL!!!"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_d
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move v5, v3

    move v6, v4

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3b

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3b

    goto :goto_3e

    :cond_3b
    move v5, v4

    move v6, v3

    nop

    :goto_3e
    move-object v8, v0

    :try_start_3f
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-direct {v9, v10, v10, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v9, v5, v6, v10}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v8, v9

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_50} :catch_52

    move-object v8, v9

    goto :goto_5f

    :catch_52
    move-exception v9

    iget-object v10, p0, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    const-string v11, "ThemeChecker"

    const-string v12, "captureScreen : failed to access screenshot API : "

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5f
    if-nez v8, :cond_8a

    iget-object v9, p0, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    const-string v10, "ThemeChecker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "captureScreen : Could not capture the screen! screenBitmap == null, lcdWidth="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " lcdHeight="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " rotation="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_8a
    return-object v8
.end method

.method public static getColorHSV(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)[F
    .registers 22

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x3

    new-array v5, v0, [F

    new-array v6, v0, [F

    const/4 v0, 0x0

    move v7, v0

    :try_start_c
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/high16 v10, 0x42c80000    # 100.0f

    if-le v8, v9, :cond_1c

    int-to-float v11, v9

    :goto_19
    div-float/2addr v11, v10

    float-to-int v10, v11

    goto :goto_1e

    :cond_1c
    int-to-float v11, v8

    goto :goto_19

    :goto_1e
    if-gtz v10, :cond_21

    const/4 v10, 0x1

    :cond_21
    iget v11, v1, Landroid/graphics/Rect;->left:I

    iget v12, v1, Landroid/graphics/Rect;->right:I

    iget v13, v1, Landroid/graphics/Rect;->top:I

    iget v14, v1, Landroid/graphics/Rect;->bottom:I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_29} :catch_82

    move v15, v4

    move v4, v3

    move v3, v2

    move v2, v11

    :goto_2d
    const/16 v16, 0x2

    const/16 v17, 0x1

    if-ge v2, v12, :cond_6a

    move/from16 v18, v15

    move v15, v7

    move v7, v4

    move v4, v3

    move v3, v13

    :goto_39
    if-ge v3, v14, :cond_5e

    move-object/from16 v1, p0

    :try_start_3d
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    invoke-static {v0, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v0, 0x0

    aget v19, v5, v0

    add-float v4, v4, v19

    aget v0, v5, v17

    add-float/2addr v7, v0

    aget v0, v5, v16
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4e} :catch_57

    add-float v18, v18, v0

    add-int/lit8 v15, v15, 0x1

    add-int/2addr v3, v10

    const/4 v0, 0x0

    move-object/from16 v1, p1

    goto :goto_39

    :catch_57
    move-exception v0

    move v2, v4

    move v3, v7

    move v7, v15

    move/from16 v4, v18

    goto :goto_85

    :cond_5e
    move-object/from16 v1, p0

    add-int/2addr v2, v10

    move v3, v4

    move v4, v7

    move v7, v15

    move/from16 v15, v18

    const/4 v0, 0x0

    move-object/from16 v1, p1

    goto :goto_2d

    :cond_6a
    move-object/from16 v1, p0

    int-to-float v0, v7

    div-float v0, v3, v0

    const/4 v2, 0x0

    :try_start_70
    aput v0, v6, v2

    int-to-float v0, v7

    div-float v0, v4, v0

    aput v0, v6, v17

    int-to-float v0, v7

    div-float v0, v15, v0

    aput v0, v6, v16
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_7c} :catch_7d

    return-object v6

    :catch_7d
    move-exception v0

    move v2, v3

    move v3, v4

    move v4, v15

    goto :goto_85

    :catch_82
    move-exception v0

    move-object/from16 v1, p0

    :goto_85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getState()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;->mState:Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;->NEED_CHECKING:Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;->setThemeState()V

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;->mState:Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isWhiteTheme()Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;->mState:Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;->NEED_CHECKING:Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;->setThemeState()V

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;->mState:Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;->WHITE:Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public reset()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    const-string v1, "ThemeChecker"

    const-string/jumbo v2, "reset() : state reset"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;->NEED_CHECKING:Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;->mState:Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;

    return-void
.end method

.method public setThemeState()V
    .registers 10

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;->captureScreen(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_67

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;->getColorHSV(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)[F

    move-result-object v2

    if-eqz v2, :cond_67

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    const-string v5, "ThemeChecker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Whole Area Hue="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v2, v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", Saturation="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget v7, v2, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", Brightness="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x2

    aget v8, v2, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    aget v3, v2, v4

    const v4, 0x3e99999a    # 0.3f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_63

    aget v3, v2, v7

    const v4, 0x3f6147ae    # 0.88f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_63

    sget-object v3, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;->WHITE:Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;

    iput-object v3, p0, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;->mState:Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;

    goto :goto_67

    :cond_63
    sget-object v3, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;->BLACK:Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;

    iput-object v3, p0, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;->mState:Lcom/samsung/android/globalactionsdlx/util/ThemeChecker$State;

    :cond_67
    :goto_67
    return-void
.end method
