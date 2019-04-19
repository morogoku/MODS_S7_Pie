.class Lcom/android/systemui/keyguardimage/ClockImageCreator;
.super Ljava/lang/Object;
.source "ClockImageCreator.java"

# interfaces
.implements Lcom/android/systemui/keyguardimage/ImageCreator;


# instance fields
.field private final mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

.field private final mContext:Landroid/content/Context;

.field private final mServiceBoxAttribute:Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    new-instance v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;

    iget-object v1, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mServiceBoxAttribute:Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;

    return-void
.end method

.method private getBottomMarginRatio(Z)F
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    if-eqz p1, :cond_0

    const v2, 0x7f0706db

    goto :goto_0

    :cond_0
    const v2, 0x7f0706da

    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    return v3
.end method

.method private getClockType()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getDefaultClockType()I

    move-result v0

    const-class v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->getCurrentClockType()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    invoke-virtual {v2, v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getClockGroup(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    return v0

    :sswitch_1
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/16 v3, 0x9

    return v3

    :pswitch_2
    const/4 v3, 0x7

    return v3

    :pswitch_3
    const/4 v3, 0x2

    return v3

    :pswitch_4
    const/4 v3, 0x1

    return v3

    :sswitch_2
    return v1

    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x7 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xc358
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getSideMargin(ZI)I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    xor-int/lit8 v1, p1, 0x1

    invoke-static {p2, v1}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->getTabletClockSidePadding(IZ)I

    move-result v1

    return v1

    :cond_0
    if-eqz p1, :cond_1

    const v1, 0x7f07071a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1

    :cond_1
    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->getInstance()Lcom/android/systemui/keyguard/KeyguardSideMargin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->isFingerPrintInDisplay()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->getFingerPrintInDisplay(Landroid/content/Context;)I

    move-result v2

    return v2

    :cond_2
    int-to-float v2, p2

    const v3, 0x3e25e354    # 0.162f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->getCutoutPadding()I

    move-result v3

    sub-int/2addr v2, v3

    return v2
.end method


# virtual methods
.method public createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 11

    invoke-direct {p0}, Lcom/android/systemui/keyguardimage/ClockImageCreator;->getClockType()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getClockView(IZ)Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "ClockImageCreator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createImage returns null / type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2

    :cond_0
    iget-boolean v3, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useDefaultColor:Z

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_1

    iget-object v3, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->color:[I

    aget v3, v3, v2

    iget-object v6, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->color:[I

    aget v6, v6, v5

    iget-object v7, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->color:[I

    aget v7, v7, v4

    iget-object v8, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->color:[I

    const/4 v9, 0x3

    aget v8, v8, v9

    invoke-virtual {v1, v3, v6, v7, v8}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->setAdaptiveColors(IIII)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    invoke-virtual {v3, v1, v5}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->setPreDefineOrCustomColor(Lcom/samsung/android/clockpack/plugins/clock/ClockView;Z)V

    :goto_0
    iget-boolean v3, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->isRtl:Z

    if-eqz v3, :cond_2

    invoke-virtual {v1, v5}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->setLayoutDirection(I)V

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->forceRefresh()V

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/keyguardimage/ClockImageCreator;->getViewImage(Landroid/view/View;Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz p2, :cond_b

    iget-object v6, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    const v8, 0x7f0706d9

    invoke-virtual {v6, v8, v7, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->isTypoClockType(I)Z

    move-result v8

    if-eqz v8, :cond_4

    iget v4, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget v8, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    if-ge v4, v8, :cond_3

    move v4, v5

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_1
    iget v8, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    invoke-direct {p0, v4, v8}, Lcom/android/systemui/keyguardimage/ClockImageCreator;->getSideMargin(ZI)I

    move-result v4

    int-to-float v4, v4

    iget v8, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    mul-float/2addr v4, v8

    float-to-int v4, v4

    iput v4, p2, Landroid/graphics/Point;->x:I

    iget-boolean v4, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->isRtl:Z

    if-eqz v4, :cond_5

    iget v4, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget v8, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v8

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int/2addr v4, v8

    iput v4, p2, Landroid/graphics/Point;->x:I

    goto :goto_2

    :cond_4
    iget v8, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/2addr v8, v4

    iput v8, p2, Landroid/graphics/Point;->x:I

    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mServiceBoxAttribute:Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;

    if-nez v4, :cond_7

    iget v4, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    int-to-float v4, v4

    const/high16 v8, 0x3f800000    # 1.0f

    iget v9, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget v10, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    if-ge v9, v10, :cond_6

    move v2, v5

    nop

    :cond_6
    invoke-direct {p0, v2}, Lcom/android/systemui/keyguardimage/ClockImageCreator;->getBottomMarginRatio(Z)F

    move-result v2

    sub-float/2addr v8, v2

    mul-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, p2, Landroid/graphics/Point;->y:I

    goto :goto_4

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mServiceBoxAttribute:Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;

    invoke-virtual {v4, v6}, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;->loadDimens(Landroid/content/res/Resources;)V

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mServiceBoxAttribute:Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;

    iget v8, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    iget v9, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    iget v10, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    if-le v9, v10, :cond_8

    move v2, v5

    nop

    :cond_8
    invoke-virtual {v4, v0, v8, v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;->getTabletMinTopMargin(IIZ)I

    move-result v2

    iput v2, p2, Landroid/graphics/Point;->y:I

    goto :goto_4

    :cond_9
    const v4, 0x7f0706e1

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iget v5, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    mul-float/2addr v5, v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v5, v5, v8

    if-gtz v5, :cond_a

    const/4 v5, 0x0

    goto :goto_3

    :cond_a
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v8, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    div-float/2addr v5, v8

    sub-float v5, v4, v5

    :goto_3
    const v8, 0x7f0707b4

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    add-float v9, v5, v8

    iget-object v10, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mServiceBoxAttribute:Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;

    invoke-virtual {v10, v0, v2, v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;->getMinTopMargin(IZZ)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v9, v2

    iget v2, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    mul-float/2addr v9, v2

    float-to-int v2, v9

    iput v2, p2, Landroid/graphics/Point;->y:I

    :cond_b
    :goto_4
    return-object v3
.end method
