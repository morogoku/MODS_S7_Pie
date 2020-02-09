.class public Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;
.super Landroid/widget/FrameLayout;
.source "KeyguardAnimatedWallpaper.java"

# interfaces
.implements Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;


# instance fields
.field private mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

.field private mContext:Landroid/content/Context;

.field protected mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHasWindowFocus:Z

.field private mIsPlayingAnimation:Z

.field private mIsPreview:Z

.field private mLastMobileKeyboardCoverd:I

.field private mPackageName:Ljava/lang/String;

.field private mScreenOn:Z

.field private mShowing:Z

.field private mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

.field private mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;-><init>(Landroid/content/Context;Ljava/lang/String;ZIILcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZIILcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mScreenOn:Z

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mHasWindowFocus:Z

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mShowing:Z

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper$1;-><init>(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mIsPreview:Z

    iput p4, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mViewWidth:I

    iput p5, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mViewHeight:I

    iput-object p6, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    invoke-direct {p0, p2}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->init(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mShowing:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mLastMobileKeyboardCoverd:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mLastMobileKeyboardCoverd:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->init(Ljava/lang/String;)V

    return-void
.end method

.method private applyPortraitRotation()V
    .locals 10

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    const-string v6, "KeyguardAnimatedWallpaper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "w = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", h = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", isRtl = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    if-nez v1, :cond_2

    move v4, v5

    nop

    :cond_2
    or-int/2addr v4, v6

    if-eqz v4, :cond_3

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->getDisplayRotation()I

    move-result v4

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-ne v4, v5, :cond_4

    const/high16 v8, -0x3d4c0000    # -90.0f

    invoke-virtual {p0, v8}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->setRotation(F)V

    goto :goto_2

    :cond_4
    if-ne v4, v6, :cond_5

    const/high16 v8, 0x42b40000    # 90.0f

    invoke-virtual {p0, v8}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->setRotation(F)V

    goto :goto_2

    :cond_5
    const/4 v8, 0x2

    if-ne v4, v8, :cond_6

    const/high16 v8, 0x43340000    # 180.0f

    invoke-virtual {p0, v8}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->setRotation(F)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->setRotation(F)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-eqz v8, :cond_c

    if-eq v4, v5, :cond_9

    if-ne v4, v6, :cond_7

    goto :goto_3

    :cond_7
    if-le v2, v1, :cond_8

    move v5, v1

    move v1, v2

    move v2, v5

    :cond_8
    invoke-virtual {p0, v7}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->setTranslationX(F)V

    invoke-virtual {p0, v7}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->setTranslationY(F)V

    const-string v5, "KeyguardAnimatedWallpaper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#2 port w = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", h = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->requestLayout()V

    goto :goto_5

    :cond_9
    :goto_3
    if-le v1, v2, :cond_a

    move v5, v1

    move v1, v2

    move v2, v5

    :cond_a
    sub-int v5, v2, v1

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    if-eqz v3, :cond_b

    neg-float v7, v5

    invoke-virtual {p0, v7}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->setTranslationX(F)V

    goto :goto_4

    :cond_b
    invoke-virtual {p0, v5}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->setTranslationX(F)V

    :goto_4
    sub-int v7, v1, v2

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {p0, v7}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->setTranslationY(F)V

    const-string v6, "KeyguardAnimatedWallpaper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "#2 land w = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", h = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->requestLayout()V

    nop

    :cond_c
    :goto_5
    return-void
.end method

.method private getContextOf(Ljava/lang/String;)Landroid/content/Context;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getDisplayRotation()I
    .locals 3

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v1, v0, Landroid/view/DisplayInfo;->rotation:I

    return v1
.end method

.method private init(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    const-string v0, "KeyguardAnimatedWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XmlName = animation;Default package name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->stopAnimation()V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->clearAnimation()V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->removeAllViews()V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->getContextOf(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->getComplexAnimation(Landroid/content/Context;Landroid/content/Context;)Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :goto_0
    nop

    :goto_1
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const-string v0, "KeyguardAnimatedWallpaper"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->stopAnimation()V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->removeAllViews()V

    return-void
.end method

.method public getComplexAnimation(Landroid/content/Context;Landroid/content/Context;)Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mViewWidth:I

    iget v7, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mViewHeight:I

    iget-boolean v8, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mIsPreview:Z

    iget v9, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mLastMobileKeyboardCoverd:I

    iget-object v10, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;-><init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;IIZILcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V

    new-instance v1, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;

    invoke-direct {v1, v0}, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;-><init>(Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;)V

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->generateAnimationFromXml()Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    move-result-object v2

    return-object v2

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mIsPreview:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_0
    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, "WAKE_LOCK"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SCREEN_TURNED_ON"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mShowing:Z

    goto :goto_2

    :cond_2
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mShowing:Z

    :goto_2
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->applyPortraitRotation()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mIsPreview:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "KeyguardAnimatedWallpaper"

    const-string v1, "onPause() - screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->stopAnimation()V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "KeyguardAnimatedWallpaper"

    const-string v1, "onResume() - screenTurningOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->playAnimation()V

    return-void
.end method

.method public onUnlock()V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mHasWindowFocus:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mHasWindowFocus:Z

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mHasWindowFocus:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string v1, "KeyguardAnimatedWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "view - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mShowing:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->playAnimation()V

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->stopAnimation()V

    :cond_2
    :goto_0
    return-void
.end method

.method public playAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "KeyguardAnimatedWallpaper"

    const-string v1, "playAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->playAnimation()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public stopAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "KeyguardAnimatedWallpaper"

    const-string v1, "stopAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->stopAnimation()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public update()V
    .locals 2

    const-string v0, "KeyguardAnimatedWallpaper"

    const-string v1, "update New AnimationBuilder wallpaper!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getAnimatedPkgName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->cleanUp()V

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->init(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateBlurState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mShowing:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mHasWindowFocus:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->stopAnimation()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->playAnimation()V

    :cond_1
    :goto_0
    return-void
.end method
