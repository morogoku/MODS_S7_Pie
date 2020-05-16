.class Lcom/android/systemui/qs/customize/SecQSCustomizer$3;
.super Landroid/view/View$DragShadowBuilder;
.source "SecQSCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/SecQSCustomizer;->getDragShadowBuilder(Lcom/android/systemui/qs/customize/CustomizeTileView;I)Landroid/view/View$DragShadowBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$3;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$3;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    div-int/lit8 v2, v0, 0x2

    int-to-double v3, v1

    const-wide v5, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
