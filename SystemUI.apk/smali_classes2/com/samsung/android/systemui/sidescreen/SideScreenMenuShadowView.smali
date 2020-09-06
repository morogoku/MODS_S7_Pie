.class public Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowView;
.super Landroid/view/View;
.source "SideScreenMenuShadowView.java"


# instance fields
.field private mOutlineFrame:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowView;->mOutlineFrame:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowView;->mOutlineFrame:Landroid/graphics/Rect;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070777

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowView$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowView$1;-><init>(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowView;I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public setOutlineFrame(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowView;->mOutlineFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowView;->invalidateOutline()V

    return-void
.end method
