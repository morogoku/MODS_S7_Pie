.class public Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;
.super Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;
.source "KeyguardServiceBoxPositionAlgorithm.java"


# static fields
.field private static final SERVICE_BOX_NOTIFICATION_MARGIN_RES_ID:[I


# instance fields
.field private mAlphaSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomMarginRatio:F

.field private mCurNotificationMargin:I

.field private mCurrentClockType:I

.field private mCurrentlySecure:Z

.field private mCutoutPaddingSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mMinTopMargin:I

.field private mNotificationStackHeight:I

.field private mPanelExpansion:F

.field private mServiceBoxHeight:I

.field private mServiceBoxNotificationMargin:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->SERVICE_BOX_NOTIFICATION_MARGIN_RES_ID:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0706df
        0x7f0706e2
        0x7f070750
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;-><init>()V

    sget-object v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->SERVICE_BOX_NOTIFICATION_MARGIN_RES_ID:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mServiceBoxNotificationMargin:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mBottomMarginRatio:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mCurrentClockType:I

    return-void
.end method

.method private getMaxY()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->getBottomMarinY()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mServiceBoxHeight:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private getServiceBoxY()I
    .locals 4

    nop

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->isPanelExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mPanelExpansion:F

    float-to-int v1, v1

    iget v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mServiceBoxHeight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mCurNotificationMargin:I

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->getMinY()I

    move-result v1

    :goto_0
    iget v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mHeight:I

    iget v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mServiceBoxHeight:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->getMinY()I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method private hasVisibleNotification()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mNotificationStackHeight:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPanelExpanded()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mPanelExpansion:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getBottomMarinY()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mBottomMarginRatio:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getExpandedClockPosition()I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->getMaxY()I

    move-result v0

    return v0
.end method

.method public getMinStackScrollerPadding()F
    .locals 2

    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mMinTopMargin:I

    iget v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mServiceBoxHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mCurNotificationMargin:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public getMinY()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mMinTopMargin:I

    return v0
.end method

.method public loadDimens(Landroid/content/res/Resources;)V
    .locals 8

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const v1, 0x7f070723

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    goto :goto_0

    :cond_0
    const v1, 0x7f0706dc

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    :goto_0
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mBottomMarginRatio:F

    const/4 v1, 0x0

    sget-object v2, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->SERVICE_BOX_NOTIFICATION_MARGIN_RES_ID:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget v5, v2, v4

    iget-object v6, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mServiceBoxNotificationMargin:[I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public run(Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mCutoutPaddingSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mCutoutPaddingSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->getServiceBoxY()I

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->isPanelExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mAlphaSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1

    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    :goto_1
    iput v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    nop

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->getMinY()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mServiceBoxHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mCurNotificationMargin:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mCurrentClockType:I

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->isTypoClockType(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->isCenterAlignClockType:Z

    iget v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    iget v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mServiceBoxHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mCurNotificationMargin:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->iconTypeTranslationY:F

    return-void
.end method

.method public setup(IIIFIIFZZIIILjava/util/function/Supplier;Ljava/util/function/Supplier;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIFIIFZZIII",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p11

    move v2, p1

    iput v2, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mMinTopMargin:I

    move/from16 v3, p5

    iput v3, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mHeight:I

    move/from16 v4, p6

    iput v4, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mServiceBoxHeight:I

    move/from16 v5, p3

    iput v5, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mNotificationStackHeight:I

    move/from16 v6, p4

    iput v6, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mPanelExpansion:F

    move/from16 v7, p8

    iput-boolean v7, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mCurrentlySecure:Z

    move-object/from16 v8, p13

    iput-object v8, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mAlphaSupplier:Ljava/util/function/Supplier;

    move-object/from16 v9, p14

    iput-object v9, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mCutoutPaddingSupplier:Ljava/util/function/Supplier;

    move/from16 v10, p12

    iput v10, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mCurrentClockType:I

    iget-object v11, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mServiceBoxNotificationMargin:[I

    array-length v11, v11

    if-ge v1, v11, :cond_1

    invoke-direct {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->hasVisibleNotification()Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mServiceBoxNotificationMargin:[I

    aget v11, v11, v1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    iput v11, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxPositionAlgorithm;->mCurNotificationMargin:I

    goto :goto_1

    :cond_1
    const-string v11, "KeyguardServiceBoxPositionAlgorithm"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "wrong notification type="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
