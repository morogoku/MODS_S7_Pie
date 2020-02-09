.class public Lcom/android/systemui/statusbar/phone/forceimmersive/TabletHideProvider;
.super Ljava/lang/Object;
.source "TabletHideProvider.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;


# instance fields
.field private mConsumeBreadth:I

.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/TabletHideProvider;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/TabletHideProvider;->mDisplay:Landroid/view/Display;

    return-void
.end method


# virtual methods
.method public getConsumerBreadth()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/TabletHideProvider;->mConsumeBreadth:I

    return v0
.end method

.method public getConsumerGravity()I
    .locals 1

    const/16 v0, 0x50

    return v0
.end method

.method public getConsumerHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/TabletHideProvider;->mConsumeBreadth:I

    return v0
.end method

.method public getConsumerWidth()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public update(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/TabletHideProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    const/4 v2, 0x5

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/TabletHideProvider;->mConsumeBreadth:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/TabletHideProvider;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/lit8 v2, v1, 0x7d

    iput v2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/TabletHideProvider;->mConsumeBreadth:I

    :goto_0
    return-void
.end method
