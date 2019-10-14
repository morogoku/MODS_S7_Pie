.class Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity$2;
.super Ljava/lang/Object;
.source "PackageListActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity$2;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity$2;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->access$000(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity$2;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->access$100(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;)Landroid/support/v4/widget/NestedScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity$2;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->access$000(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity$2;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;

    invoke-static {v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->access$200(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;)Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity$2;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->access$000(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity$2;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->access$000(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity$2;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->access$100(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;)Landroid/support/v4/widget/NestedScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity$2;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->access$000(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity$2;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;

    invoke-static {v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->access$200(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x10a0001

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity$2;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->access$000(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
