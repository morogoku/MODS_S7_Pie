.class Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowView$1;
.super Landroid/view/ViewOutlineProvider;
.source "SideScreenMenuShadowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowView;

.field final synthetic val$radius:I


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowView;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowView$1;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowView;

    iput p2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowView$1;->val$radius:I

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowView$1;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowView;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowView;->access$000(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowView$1;->val$radius:I

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method
