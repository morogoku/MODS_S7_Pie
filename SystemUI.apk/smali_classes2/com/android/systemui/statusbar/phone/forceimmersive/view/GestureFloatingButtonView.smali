.class public Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureFloatingButtonView;
.super Lcom/android/systemui/statusbar/policy/KeyButtonView;
.source "GestureFloatingButtonView.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureFloatingButtonView;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureFloatingButtonView;->mId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureFloatingButtonView;->mContext:Landroid/content/Context;

    const v1, 0x7f080152

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureFloatingButtonView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method getLayoutParams(I)Landroid/widget/FrameLayout$LayoutParams;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureFloatingButtonView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureFloatingButtonView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureFloatingButtonView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureFloatingButtonView;->setVisibility(I)V

    iget v2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureFloatingButtonView;->mId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureFloatingButtonView;->setId(I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    if-eqz p1, :cond_2

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    const/16 v3, 0x35

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    :cond_1
    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    const/16 v3, 0x53

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v3, 0x55

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_3
    :goto_1
    return-object v2
.end method

.method public setDarkIntensity(F)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureFloatingButtonView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureFloatingButtonView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDarkIntensity(F)V

    :cond_0
    return-void
.end method
