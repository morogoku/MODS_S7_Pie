.class public Lcom/samsung/android/systemui/sidescreen/SideScreenDividerShadowView;
.super Landroid/view/View;
.source "SideScreenDividerShadowView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/systemui/sidescreen/SideScreenDividerShadowView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerShadowView;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    new-instance v0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerShadowView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerShadowView$1;-><init>(Lcom/samsung/android/systemui/sidescreen/SideScreenDividerShadowView;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerShadowView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerShadowView;->invalidateOutline()V

    return-void
.end method
