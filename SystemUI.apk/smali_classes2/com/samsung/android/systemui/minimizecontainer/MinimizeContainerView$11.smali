.class Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$11;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "MinimizeContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->buildSpringChainsOfAllAppIcons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

.field final synthetic val$holder:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

.field final synthetic val$springAlpha:F


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;F)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$11;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    iput-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$11;->val$holder:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

    iput p3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$11;->val$springAlpha:F

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringActivate(Lcom/facebook/rebound/Spring;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/facebook/rebound/SimpleSpringListener;->onSpringActivate(Lcom/facebook/rebound/Spring;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$11;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$2800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$11;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$2800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$11;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    move-result-object v0

    const-string v1, "fullscreen_mode_request_spring_anim_x"

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->openFullscreenMode(Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$11;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$2800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/facebook/rebound/SimpleSpringListener;->onSpringAtRest(Lcom/facebook/rebound/Spring;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$11;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$2800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$11;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$2800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$11;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$900(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$11;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$2800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$11;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$2900(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$11;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1000(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$11;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    move-result-object v0

    const-string v1, "fullscreen_mode_request_spring_anim_x"

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->closeFullscreenMode(Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 3

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$11;->val$holder:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->getAppIconView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$11;->val$holder:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->getAppIconView()Landroid/widget/ImageView;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$11;->val$springAlpha:F

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method
