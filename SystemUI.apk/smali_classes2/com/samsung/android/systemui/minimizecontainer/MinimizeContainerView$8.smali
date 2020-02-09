.class Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$8;
.super Ljava/lang/Object;
.source "MinimizeContainerView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->removePointerAppIcon(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

.field final synthetic val$holder:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$8;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    iput-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$8;->val$holder:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$8;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$8;->val$holder:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->getAppIconView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$8;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1000(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
