.class Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView$6;
.super Ljava/lang/Object;
.source "MinimizeContainerTrashBoxView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->animateToShowHideCircleBackgroundView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;

.field final synthetic val$showTrashBox:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;

    iput-boolean p2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView$6;->val$showTrashBox:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView$6;->val$showTrashBox:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->access$1000(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
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
