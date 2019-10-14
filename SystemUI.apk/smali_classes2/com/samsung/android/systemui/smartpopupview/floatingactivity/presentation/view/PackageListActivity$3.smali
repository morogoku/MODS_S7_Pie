.class Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity$3;
.super Ljava/lang/Object;
.source "PackageListActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->initGridView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;

.field final synthetic val$gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;Landroid/support/v7/widget/GridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity$3;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;

    iput-object p2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity$3;->val$gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity$3;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->access$300(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity$3;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->access$300(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity$3;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070134

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    int-to-float v2, v0

    div-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget-object v3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity$3;->val$gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    iget-object v3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity$3;->val$gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayoutManager;->requestLayout()V

    return-void
.end method
