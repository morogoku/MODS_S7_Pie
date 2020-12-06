.class public Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;
.super Lcom/android/systemui/plugins/qs/QSTile$Icon;
.source "QSTileImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrawableIcon"
.end annotation


# instance fields
.field protected final mDrawable:Landroid/graphics/drawable/Drawable;

.field protected final mInvisibleDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;->getCloneDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;->mInvisibleDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;->mInvisibleDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;->getCloneDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-class v1, Lcom/android/systemui/qs/QSScreenGridResource;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSScreenGridResource;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSScreenGridResource;->getIconSizeDimensionToDisplayHeight()I

    move-result v1

    int-to-float v2, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    mul-float/2addr v2, v3

    new-instance v3, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    invoke-direct {v3, v0, v2}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    iput-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;->mInvisibleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;->mInvisibleDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v3, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;->setCloneDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;->mInvisibleDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method


# virtual methods
.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getInvisibleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;->mInvisibleDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
