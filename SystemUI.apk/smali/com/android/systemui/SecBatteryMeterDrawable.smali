.class public Lcom/android/systemui/SecBatteryMeterDrawable;
.super Lcom/android/settingslib/graph/BatteryMeterDrawableBase;
.source "SecBatteryMeterDrawable.java"


# instance fields
.field private mBatteryFrameDarkColor:I

.field private mBatteryFrameLightColor:I

.field private mBatteryFramePaint:Landroid/graphics/Paint;

.field private mBatteryHealth:I

.field private mBatteryLevelBackgroundDarkColor:I

.field private mBatteryLevelBackgroundLightColor:I

.field private mBatteryLevelBackgroundPaint:Landroid/graphics/Paint;

.field private mBatteryLevelColor:I

.field private mBatteryLevelPaint:Landroid/graphics/Paint;

.field private mBatteryLightningBoltDarkColor:I

.field private mBatteryLightningBoltDarkPaint:Landroid/graphics/Paint;

.field private mBatteryLightningBoltLightColor:I

.field private mBatteryLightningBoltLightPaint:Landroid/graphics/Paint;

.field private mBatteryOnline:I

.field private mBatteryStatus:I

.field private mCharging:Z

.field private mCriticalLevel:I

.field private mDarkModeBoltColor:I

.field private mFlagBlinkingNeeded:Z

.field private mFlagDrawIconTurn:Z

.field private mInvalidString:Ljava/lang/String;

.field private mInvalidTextHeight:F

.field private mInvalidTextPaint:Landroid/graphics/Paint;

.field private mLightModeBoltColor:I

.field private mPluggedIn:Z

.field private mPostInvalidateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mLightModeBoltColor:I

    iput v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mDarkModeBoltColor:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryStatus:I

    iput-boolean v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mFlagDrawIconTurn:Z

    iput-boolean v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mFlagBlinkingNeeded:Z

    iput v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryHealth:I

    new-instance v2, Lcom/android/systemui/SecBatteryMeterDrawable$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/SecBatteryMeterDrawable$1;-><init>(Lcom/android/systemui/SecBatteryMeterDrawable;)V

    iput-object v2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    const-string v2, "X"

    iput-object v2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mInvalidString:Ljava/lang/String;

    iput v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryOnline:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mCriticalLevel:I

    sget-boolean v3, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_INCOMPATIBLE_CHARGER_CHECK:Z

    if-eqz v3, :cond_0

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    const v4, -0x17cbf7

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const-string/jumbo v3, "sans-serif"

    invoke-static {v3, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v4, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/SecBatteryMeterDrawable;->loadDimens()V

    const v3, 0x7f0602bd

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryFrameLightColor:I

    const v3, 0x7f0602bc

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryFrameDarkColor:I

    iget v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryFrameLightColor:I

    iput v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelColor:I

    const v3, 0x7f0602bf

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelBackgroundLightColor:I

    const v3, 0x7f0602be

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelBackgroundDarkColor:I

    const v3, 0x7f0602c1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltLightColor:I

    const v3, 0x7f0602c0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltDarkColor:I

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryFramePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryFramePaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryFrameLightColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryFrameLightColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelBackgroundPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelBackgroundPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelBackgroundLightColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelBackgroundPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltDarkPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltDarkPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltDarkPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltDarkColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltLightPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltLightPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltLightPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltLightColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    const v1, 0x7f06002a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mLightModeBoltColor:I

    const v1, 0x7f06002b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mDarkModeBoltColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/SecBatteryMeterDrawable;->setPowerSaveAsColorError(Z)V

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/SecBatteryMeterDrawable;->updateStatusBarBatteryColour()V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/SecBatteryMeterDrawable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mFlagBlinkingNeeded:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/SecBatteryMeterDrawable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mFlagDrawIconTurn:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/SecBatteryMeterDrawable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mFlagDrawIconTurn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/SecBatteryMeterDrawable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/SecBatteryMeterDrawable;->postInvalidate()V

    return-void
.end method

.method private getColorForDarkIntensity(FII)I
    .locals 3

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getColorForLevel(I)I
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mCharging:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelColor:I

    return v0

    :cond_0
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/SecBatteryMeterDrawable;->batteryColorForLevel(I)I

    move-result v0

    const-string v1, "SecBatteryMeterDrawable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Knox change color of statusbar battery !! color = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/SecBatteryMeterDrawable;->batteryColorForLevel(I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mIconTint:I

    if-ne v0, v1, :cond_2

    iget v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelColor:I

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    return v1
.end method

.method private getLinearGradientDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;IIFLandroid/graphics/LinearGradient;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 15

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p6

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setDither(Z)V

    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    move-object v11, v6

    invoke-virtual {v3, v11}, Landroid/graphics/LinearGradient;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    int-to-float v6, v1

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    int-to-float v8, v2

    div-float/2addr v8, v7

    move/from16 v12, p5

    invoke-virtual {v11, v12, v6, v8}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {v3, v11}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v14, v5

    invoke-virtual {v0, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v8, v1

    int-to-float v9, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v5
.end method

.method private loadDimens()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mIntrinsicWidth:I

    iget-object v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mIntrinsicHeight:I

    iget v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mIntrinsicWidth:I

    iget v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mIntrinsicHeight:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/android/systemui/SecBatteryMeterDrawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 46

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget v0, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryStatus:I

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v9, 0x0

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    iget v0, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryHealth:I

    if-eq v0, v1, :cond_0

    iget v0, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryHealth:I

    const/4 v4, 0x7

    if-eq v0, v4, :cond_0

    iget v0, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryHealth:I

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    iget v0, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryHealth:I

    const/4 v4, 0x6

    if-ne v0, v4, :cond_2

    :cond_0
    iput-boolean v3, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mFlagBlinkingNeeded:Z

    const-string v0, "SecBatteryMeterDrawable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "battery icon blink for battery health... mFlagDrawIconTurn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mFlagDrawIconTurn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    iget-boolean v0, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mFlagDrawIconTurn:Z

    if-nez v0, :cond_3

    return-void

    :cond_2
    iput-boolean v9, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mFlagBlinkingNeeded:Z

    :cond_3
    sget-boolean v0, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_INCOMPATIBLE_CHARGER_CHECK:Z

    if-eqz v0, :cond_4

    iget v0, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryOnline:I

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget v0, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mLevel:I

    :goto_0
    move v10, v0

    const/4 v0, -0x1

    if-ne v10, v0, :cond_5

    return-void

    :cond_5
    iget-object v0, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f080644

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iget-object v0, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v11, v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget v0, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mWidth:I

    iget v4, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mHeight:I

    invoke-virtual {v11, v9, v9, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 v0, 0xff

    const/16 v4, 0x66

    const/16 v6, 0x60

    if-ge v10, v6, :cond_6

    invoke-virtual {v11, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_1
    iget-object v12, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f080645

    invoke-virtual {v12, v13, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iget v13, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mCriticalLevel:I

    if-le v10, v13, :cond_7

    invoke-direct {v7, v10}, Lcom/android/systemui/SecBatteryMeterDrawable;->getColorForLevel(I)I

    move-result v13

    goto :goto_2

    :cond_7
    iget-object v13, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getColor()I

    move-result v13

    :goto_2
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget v13, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mWidth:I

    iget v14, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mHeight:I

    invoke-virtual {v12, v9, v9, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v13, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mCriticalLevel:I

    if-gt v10, v13, :cond_8

    invoke-virtual {v12, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3

    :cond_8
    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_3
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v12, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    div-int/lit8 v2, v13, 0x2

    div-int/lit8 v1, v14, 0x2

    move/from16 v20, v1

    move/from16 v21, v1

    move/from16 v22, v2

    move/from16 v23, v2

    if-lt v10, v6, :cond_9

    move v4, v0

    move/from16 v45, v4

    move/from16 v0, v45

    goto :goto_4

    :cond_9
    if-ge v10, v6, :cond_a

    iget v0, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mCriticalLevel:I

    if-le v10, v0, :cond_a

    const/16 v4, 0x66

    const/16 v0, 0xff

    goto :goto_4

    :cond_a
    move v0, v4

    :goto_4
    move/from16 v24, v20

    move/from16 v20, v1

    :goto_5
    move/from16 v25, v20

    move/from16 v9, v25

    if-lez v9, :cond_c

    invoke-virtual {v15, v2, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    if-lt v6, v4, :cond_b

    add-int/lit8 v24, v24, 0x1

    goto :goto_6

    :cond_b
    add-int/lit8 v24, v24, -0x1

    add-int/lit8 v20, v9, -0x1

    const/16 v6, 0x60

    const/4 v9, 0x0

    goto :goto_5

    :cond_c
    :goto_6
    move/from16 v9, v24

    move v6, v1

    move-object/from16 v27, v3

    move/from16 v3, v21

    :goto_7
    if-ge v6, v14, :cond_e

    move/from16 v28, v14

    invoke-virtual {v15, v2, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v14

    invoke-static {v14}, Landroid/graphics/Color;->alpha(I)I

    move-result v14

    if-lt v14, v0, :cond_d

    goto :goto_8

    :cond_d
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, 0x1

    move/from16 v14, v28

    goto :goto_7

    :cond_e
    move/from16 v28, v14

    :goto_8
    move v6, v2

    move/from16 v14, v22

    :goto_9
    if-lez v6, :cond_10

    move/from16 v29, v0

    invoke-virtual {v15, v6, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-lt v0, v4, :cond_f

    goto :goto_a

    :cond_f
    add-int/lit8 v14, v14, -0x1

    add-int/lit8 v6, v6, -0x1

    move/from16 v0, v29

    goto :goto_9

    :cond_10
    move/from16 v29, v0

    :goto_a
    move v0, v2

    :goto_b
    if-ge v0, v13, :cond_12

    add-int/lit8 v23, v23, 0x1

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    if-lt v6, v4, :cond_11

    goto :goto_c

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_12
    :goto_c
    move/from16 v0, v23

    invoke-virtual {v5, v14, v9, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v11, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v12, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/16 v6, 0x60

    if-lt v10, v6, :cond_13

    const/high16 v6, 0x3f800000    # 1.0f

    :goto_d
    goto :goto_e

    :cond_13
    iget-object v6, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mColors:[I

    const/16 v20, 0x0

    aget v6, v6, v20

    if-gt v10, v6, :cond_14

    const/4 v6, 0x0

    goto :goto_d

    :cond_14
    add-int/lit8 v6, v10, -0xf

    int-to-float v6, v6

    const/high16 v20, 0x42a00000    # 80.0f

    div-float v6, v6, v20

    :goto_e
    move/from16 v20, v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v20

    float-to-int v6, v6

    move/from16 v30, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move/from16 v31, v1

    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v6

    move/from16 v32, v2

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move/from16 v33, v3

    iget v3, v5, Landroid/graphics/Rect;->left:I

    move/from16 v34, v4

    iget v4, v5, Landroid/graphics/Rect;->top:I

    move/from16 v35, v9

    iget v9, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3, v4, v9, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v3, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelPaint:Landroid/graphics/Paint;

    invoke-direct {v7, v10}, Lcom/android/systemui/SecBatteryMeterDrawable;->getColorForLevel(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, v5, Landroid/graphics/Rect;->left:I

    iget v4, v5, Landroid/graphics/Rect;->right:I

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v1, v4, v9}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    sget-boolean v3, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_INCOMPATIBLE_CHARGER_CHECK:Z

    const v4, 0x3ef5c28f    # 0.48f

    const/high16 v9, 0x3f000000    # 0.5f

    if-eqz v3, :cond_15

    iget v3, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryOnline:I

    if-nez v3, :cond_15

    iget v3, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v9

    iget v9, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mHeight:I

    int-to-float v9, v9

    move-object/from16 v36, v0

    iget v0, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mInvalidTextHeight:F

    add-float/2addr v9, v0

    mul-float/2addr v9, v4

    iget-object v0, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mInvalidString:Ljava/lang/String;

    iget-object v4, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v3, v9, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    nop

    move/from16 v24, v1

    move-object/from16 v26, v2

    move-object/from16 v21, v5

    move/from16 v16, v6

    move/from16 v18, v29

    move/from16 v23, v30

    move/from16 v22, v31

    move/from16 v25, v32

    move/from16 v29, v33

    move/from16 v30, v34

    move-object/from16 v19, v36

    goto/16 :goto_f

    :cond_15
    move-object/from16 v36, v0

    iget-boolean v0, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v0, :cond_17

    iget v0, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryStatus:I

    const/4 v3, 0x5

    if-eq v0, v3, :cond_17

    iget v0, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryStatus:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_17

    iget v0, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryStatus:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_17

    iget-object v0, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f080641

    const/4 v9, 0x0

    invoke-virtual {v0, v4, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    new-array v0, v3, [I

    iget-object v3, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltDarkPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v0, v4

    iget-object v3, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltDarkPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    const/4 v4, 0x1

    aput v3, v0, v4

    iget-object v3, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltLightPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    const/4 v4, 0x2

    aput v3, v0, v4

    iget-object v3, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltLightPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    const/16 v17, 0x3

    aput v3, v0, v17

    move-object/from16 v42, v0

    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v3, 0x0

    const/16 v17, 0x0

    aput v3, v0, v17

    int-to-float v3, v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/4 v4, 0x1

    aput v3, v0, v4

    int-to-float v3, v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/4 v4, 0x2

    aput v3, v0, v4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x3

    aput v3, v0, v4

    move-object/from16 v43, v0

    new-instance v0, Landroid/graphics/LinearGradient;

    const/16 v38, 0x0

    iget v3, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    const/16 v40, 0x0

    iget v4, v5, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sget-object v44, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v37, v0

    move/from16 v39, v3

    move/from16 v41, v4

    invoke-direct/range {v37 .. v44}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move/from16 v16, v6

    move-object v6, v0

    iget-object v3, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mContext:Landroid/content/Context;

    iget v4, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mWidth:I

    iget v0, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mHeight:I

    const/16 v17, 0x0

    move/from16 v21, v0

    move/from16 v18, v29

    move/from16 v23, v30

    move-object/from16 v19, v36

    move-object v0, v7

    move/from16 v24, v1

    move/from16 v22, v31

    move-object v1, v3

    move-object/from16 v26, v2

    move/from16 v25, v32

    move-object v2, v9

    move/from16 v29, v33

    move v3, v4

    move/from16 v30, v34

    move/from16 v4, v21

    move-object/from16 v21, v5

    move/from16 v5, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/SecBatteryMeterDrawable;->getLinearGradientDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;IIFLandroid/graphics/LinearGradient;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_16

    iget v1, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mWidth:I

    iget v2, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_16
    goto :goto_f

    :cond_17
    move/from16 v24, v1

    move-object/from16 v26, v2

    move-object/from16 v21, v5

    move/from16 v16, v6

    move/from16 v18, v29

    move/from16 v23, v30

    move/from16 v22, v31

    move/from16 v25, v32

    move/from16 v29, v33

    move/from16 v30, v34

    move-object/from16 v19, v36

    iget-boolean v0, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mPluggedIn:Z

    if-nez v0, :cond_18

    iget v0, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mCriticalLevel:I

    if-gt v10, v0, :cond_18

    iget v0, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v9

    iget v1, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mHeight:I

    int-to-float v1, v1

    iget v2, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mWarningTextHeight:F

    add-float/2addr v1, v2

    mul-float/2addr v1, v4

    iget-object v2, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mWarningString:Ljava/lang/String;

    iget-object v3, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_18
    :goto_f
    return-void
.end method

.method public onBatteryLevelChanged(IZZIII)V
    .locals 4

    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mCharging:Z

    if-eq p3, v0, :cond_0

    const-string v0, "SecBatteryMeterDrawable"

    const-string v1, "Battery icon update - Charging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mLevel:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mPluggedIn:Z

    if-ne v0, p2, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mCharging:Z

    if-eq v0, p3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    iput p1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mLevel:I

    iput-boolean p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mPluggedIn:Z

    iput-boolean p3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mCharging:Z

    if-nez v0, :cond_5

    iget v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryStatus:I

    if-ne v3, p4, :cond_4

    iget v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryHealth:I

    if-eq v3, p5, :cond_3

    goto :goto_2

    :cond_3
    move v3, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v2

    :goto_3
    move v0, v3

    :cond_5
    iput p4, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryStatus:I

    iput p5, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryHealth:I

    sget-boolean v3, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_INCOMPATIBLE_CHARGER_CHECK:Z

    if-eqz v3, :cond_8

    if-nez v0, :cond_7

    iget v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryOnline:I

    if-eq v3, p6, :cond_6

    move v1, v2

    nop

    :cond_6
    move v0, v1

    :cond_7
    iput p6, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryOnline:I

    :cond_8
    if-eqz v0, :cond_9

    const-string v1, "SecBatteryMeterDrawable"

    const-string v3, "onBatteryLevelChanged() isSomethingChanged!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/SecBatteryMeterDrawable;->loadDimens()V

    invoke-virtual {p0}, Lcom/android/systemui/SecBatteryMeterDrawable;->postInvalidate()V

    return-void
.end method

.method public setBounds(IIII)V
    .locals 3

    sub-int v0, p4, p2

    iput v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mHeight:I

    sub-int v0, p3, p1

    iput v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mWidth:I

    iget v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v1, v1

    iput v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mWarningTextHeight:F

    sget-boolean v1, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_INCOMPATIBLE_CHARGER_CHECK:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mWarningTextHeight:F

    iput v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mInvalidTextHeight:F

    :cond_0
    return-void
.end method

.method public setCharging(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mPluggedIn:Z

    invoke-super {p0, p1}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->setCharging(Z)V

    return-void
.end method

.method public setColors(FII)V
    .locals 5

    iget v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mOldDarkIntensity:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mIconTint:I

    iget-object v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mLightModeBoltColor:I

    iget v2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mDarkModeBoltColor:I

    invoke-direct {p0, p1, v1, v2}, Lcom/android/systemui/SecBatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iput p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mChargeColor:I

    iget v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryFrameLightColor:I

    iget v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryFrameDarkColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/SecBatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iput v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelColor:I

    iget v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelBackgroundLightColor:I

    iget v2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelBackgroundDarkColor:I

    invoke-direct {p0, p1, v1, v2}, Lcom/android/systemui/SecBatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltLightColor:I

    iget v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltDarkColor:I

    invoke-direct {p0, p1, v2, v3}, Lcom/android/systemui/SecBatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltLightPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltDarkColor:I

    iget v4, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltLightColor:I

    invoke-direct {p0, p1, v3, v4}, Lcom/android/systemui/SecBatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltDarkPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    iput p1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mOldDarkIntensity:F

    invoke-virtual {p0}, Lcom/android/systemui/SecBatteryMeterDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorsForQSColoring(FII)V
    .locals 4

    iput p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryFrameLightColor:I

    iput p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryFrameDarkColor:I

    iput p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelColor:I

    iget-object v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryFramePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/16 v3, 0x3f

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelBackgroundLightColor:I

    iget v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelBackgroundLightColor:I

    iput v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelBackgroundDarkColor:I

    iput p3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltLightColor:I

    iput p3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltDarkColor:I

    invoke-virtual {p0, p1, p2, p2}, Lcom/android/systemui/SecBatteryMeterDrawable;->setColors(FII)V

    return-void
.end method

.method public updateStatusBarBatteryColour()V
    .locals 11

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "SecBatteryMeterDrawable"

    const-string v2, "[KNOX] updateStatusBarBatteryColour(), getBatteryLevelColourItem is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->initColors()V

    goto/16 :goto_3

    :cond_0
    const-string v1, "SecBatteryMeterDrawable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[KNOX] updateStatusBarBatteryColour(), StatusbarIconItem="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/StatusbarIconItem;->getAttributeColourArray()[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    array-length v6, v4

    if-lez v6, :cond_2

    array-length v6, v4

    new-array v2, v6, [I

    array-length v6, v4

    new-array v3, v6, [I

    const/4 v6, 0x0

    array-length v7, v4

    move v8, v6

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v9, v4, v6

    invoke-virtual {v9}, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->getAttribute()I

    move-result v10

    aput v10, v2, v8

    invoke-virtual {v9}, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->getColour()I

    move-result v10

    aput v10, v3, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    array-length v1, v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_3

    move v6, v1

    const/4 v7, 0x2

    mul-int v8, v7, v6

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mColors:[I

    nop

    :goto_2
    if-ge v5, v6, :cond_3

    iget-object v8, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mColors:[I

    mul-int v9, v7, v5

    aget v10, v2, v5

    aput v10, v8, v9

    iget-object v8, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mColors:[I

    mul-int v9, v7, v5

    add-int/lit8 v9, v9, 0x1

    aget v10, v3, v5

    aput v10, v8, v9

    const-string v8, "SecBatteryMeterDrawable"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " -"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "=knox_levels[i]="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v2, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", knox_colors[i]="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v3, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/SecBatteryMeterDrawable;->postInvalidate()V

    return-void
.end method
