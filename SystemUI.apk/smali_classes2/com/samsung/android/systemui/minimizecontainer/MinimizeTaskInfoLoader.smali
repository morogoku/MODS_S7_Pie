.class public Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;
.super Ljava/lang/Object;
.source "MinimizeTaskInfoLoader.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAppIconBg:Landroid/graphics/drawable/Drawable;

.field private mAppIconFocusedLine:Landroid/graphics/drawable/Drawable;

.field private mAppIconSourceSize:I

.field private mAppIconTargetSize:I

.field private mAppIconUnfocusedLine:Landroid/graphics/drawable/Drawable;

.field private mAppLabel:Ljava/lang/CharSequence;

.field private mCircleAppIcon:Landroid/graphics/drawable/Drawable;

.field private mComponentName:Landroid/content/ComponentName;

.field private mContext:Landroid/content/Context;

.field private mIsUseDefaultTheme:Z

.field private mOffsetForMinimizeAppIcon:F

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mThemeBackground:Landroid/graphics/Bitmap;

.field private mThemeType:Ljava/lang/String;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mThemeBackground:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mIsUseDefaultTheme:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mUserId:I

    sget-boolean v2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MinimizeContainer"

    const-string v3, "[TaskInfoLoader] Create MinimizeTaskInfoLoader"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mUserId:I

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mComponentName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070458

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mAppIconSourceSize:I

    const v3, 0x7f070459

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mAppIconTargetSize:I

    const v3, 0x7f080429

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mAppIconTargetSize:I

    iget v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mAppIconTargetSize:I

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->scale(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mAppIconBg:Landroid/graphics/drawable/Drawable;

    const v3, 0x7f070457

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    iput v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mOffsetForMinimizeAppIcon:F

    nop

    const v3, 0x7f08042a

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mAppIconTargetSize:I

    iget v6, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mAppIconTargetSize:I

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->scale(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mAppIconFocusedLine:Landroid/graphics/drawable/Drawable;

    nop

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mAppIconTargetSize:I

    iget v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mAppIconTargetSize:I

    invoke-direct {p0, v0, v3, v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->scale(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mAppIconUnfocusedLine:Landroid/graphics/drawable/Drawable;

    move v0, v1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mComponentName:Landroid/content/ComponentName;

    const/16 v4, 0x80

    iget v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mUserId:I

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfoAsUser(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mAppLabel:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->getAppIconDrawable(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mAppIconSourceSize:I

    iget v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mAppIconSourceSize:I

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->scale(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mAppIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    if-nez v0, :cond_1

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mAppLabel:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->getSystemAppIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mAppIconSourceSize:I

    iget v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mAppIconSourceSize:I

    invoke-direct {p0, v1, v3, v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->scale(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mAppIcon:Landroid/graphics/drawable/Drawable;

    const-string v1, "MinimizeContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TaskInfoLoader] load info failed! use system icon, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->initializeTheme()V

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->isUsedTheme()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->getAppIconFromTheme()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->setCustomMinimizeIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->createCircleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mCircleAppIcon:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    sget-boolean v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "MinimizeContainer"

    const-string v3, "[TaskInfoLoader] getAppIconDrawable: knox icon"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mCircleAppIcon:Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mCircleAppIcon:Landroid/graphics/drawable/Drawable;

    :cond_5
    return-void
.end method

.method private clipCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070456

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    int-to-float v6, v1

    div-float/2addr v6, v5

    int-to-float v5, v3

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v4, v6, v5, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->clipPath(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method private clipPath(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9, v9, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget-object v9, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v8, v1, v9}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v4, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setDither(Z)V

    const/16 v10, 0x32

    const/16 v11, 0xff

    invoke-static {v10, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v10, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v10, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/high16 v10, 0x40a00000    # 5.0f

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v10, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v8, v1, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    sget-object v10, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v8, v1, v10}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v8, v1, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v11

    float-to-int v11, v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v12, Landroid/graphics/Rect;

    iget v13, v3, Landroid/graphics/RectF;->left:F

    float-to-int v13, v13

    iget v14, v3, Landroid/graphics/RectF;->top:F

    float-to-int v14, v14

    iget v15, v3, Landroid/graphics/RectF;->right:F

    float-to-int v15, v15

    iget v2, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    invoke-direct {v12, v13, v14, v15, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v2, v12

    new-instance v12, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v14

    float-to-int v14, v14

    invoke-direct {v12, v4, v4, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v4, v12

    const/4 v12, 0x0

    invoke-virtual {v11, v7, v2, v4, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v10

    :cond_2
    :goto_0
    move-object v12, v2

    return-object v12
.end method

.method public static create(Landroid/content/Context;Landroid/content/ComponentName;I)Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;
    .locals 1

    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    return-object v0
.end method

.method private createCircleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 8

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->createMinimizeBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->createMinimizeBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-array v6, v1, [I

    const v7, 0x10100a7

    aput v7, v6, v3

    invoke-virtual {v0, v6, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v1, [I

    const v6, -0x10100a7

    aput v6, v1, v3

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v3, v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private createMinimizeBitmap(Z)Landroid/graphics/Bitmap;
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mAppIcon:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->clipCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mAppIconBg:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mAppIconFocusedLine:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mAppIconUnfocusedLine:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v6, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v8, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v6, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int v9, v3, v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iget v11, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mOffsetForMinimizeAppIcon:F

    add-float/2addr v9, v11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sub-int v11, v4, v11

    int-to-float v11, v11

    div-float/2addr v11, v10

    iget v10, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mOffsetForMinimizeAppIcon:F

    add-float/2addr v11, v10

    invoke-virtual {v6, v0, v9, v11, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    invoke-virtual {v2, v8, v8, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    return-object v5
.end method

.method private getAppIconDrawable(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->getAppIconDrawableById(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, v2

    :cond_0
    return-object v1

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->getSystemAppIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method private getAppIconDrawableById(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v1, v2}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    :goto_0
    if-eqz v0, :cond_0

    move-object v2, v0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->getSystemAppIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_1
    return-object v2
.end method

.method private getAppIconFromTheme()Landroid/graphics/drawable/Drawable;
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v6, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    move-object v2, v0

    iget-object v0, v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v6, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    if-eqz v2, :cond_0

    move-object v0, v2

    goto :goto_1

    :cond_0
    move-object v0, v4

    :goto_1
    move-object v6, v0

    nop

    if-eqz v6, :cond_1

    :try_start_1
    iget-object v0, v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v7, v6, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v0

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_3

    :cond_1
    :goto_2
    nop

    :goto_3
    const/4 v0, 0x0

    nop

    if-nez v0, :cond_4

    if-eqz v2, :cond_4

    iget-object v7, v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v8, v2, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v8, :cond_2

    iget-object v8, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_4

    :cond_2
    iget-object v8, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :goto_4
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->semGetCscPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v8

    if-eqz v8, :cond_3

    invoke-direct {v1, v3, v8}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->getAppIconDrawableById(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :cond_3
    if-eqz v7, :cond_4

    iget-object v8, v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mThemeBackground:Landroid/graphics/Bitmap;

    iget-object v8, v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mThemeBackground:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_4

    iget-object v8, v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mThemeBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget-object v9, v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mThemeBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setDither(Z)V

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v12, v7

    check-cast v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v14, v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mThemeBackground:Landroid/graphics/Bitmap;

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v15, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v13}, Landroid/graphics/Canvas;->save()I

    int-to-float v14, v8

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    int-to-float v11, v9

    div-float/2addr v11, v15

    invoke-virtual {v13, v14, v11}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v11, 0x3f400000    # 0.75f

    invoke-virtual {v13, v11, v11}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v11, 0x1

    invoke-static {v12, v8, v9, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    neg-int v14, v8

    int-to-float v14, v14

    div-float/2addr v14, v15

    move-object/from16 v16, v0

    neg-int v0, v9

    int-to-float v0, v0

    div-float/2addr v0, v15

    invoke-virtual {v13, v11, v14, v0, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v13}, Landroid/graphics/Canvas;->restore()V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v11, v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {v0, v11, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_5

    :cond_4
    move-object/from16 v16, v0

    move-object/from16 v0, v16

    :goto_5
    return-object v0
.end method

.method private getSystemAppIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->getAppIconDrawableById(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private initializeTheme()V
    .locals 1

    const-string v0, "SEC_FLOATING_FEATURE_COMMON_CONFIG_CHANGEABLE_UI"

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mThemeType:Ljava/lang/String;

    return-void
.end method

.method private isUsedTheme()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mThemeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mThemeType:Ljava/lang/String;

    const-string v1, "theme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mIsUseDefaultTheme:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private scale(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, p2, p3, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    if-lez v1, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v4

    if-eq v1, v4, :cond_1

    sget-boolean v4, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "MinimizeContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TaskInfoLoader] change bitmap densityDpi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", old="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v3, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_1
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v4

    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v4
.end method


# virtual methods
.method public final getAppLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mAppLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getCircleAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mCircleAppIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final setCustomMinimizeIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mComponentName:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->getAppIconDrawable(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mAppIconSourceSize:I

    iget v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mAppIconSourceSize:I

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->scale(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mAppIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mAppIconSourceSize:I

    iget v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mAppIconSourceSize:I

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->scale(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->mAppIcon:Landroid/graphics/drawable/Drawable;

    :goto_1
    return-void
.end method
