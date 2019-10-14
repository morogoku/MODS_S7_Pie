.class Lcom/samsung/android/systemui/sidescreen/SideScreenDividerShadowView$1;
.super Landroid/view/ViewOutlineProvider;
.source "SideScreenDividerShadowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/sidescreen/SideScreenDividerShadowView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerShadowView;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/sidescreen/SideScreenDividerShadowView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerShadowView$1;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerShadowView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerShadowView$1;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerShadowView;

    invoke-static {v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerShadowView;->access$000(Lcom/samsung/android/systemui/sidescreen/SideScreenDividerShadowView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p2, v1, v3}, Landroid/graphics/Outline;->offset(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p2, v3, v1}, Landroid/graphics/Outline;->offset(II)V

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, v1}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method
