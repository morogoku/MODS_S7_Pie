.class Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5$1;
.super Ljava/lang/Object;
.source "MinimizeContainerFolderView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5;

.field final synthetic val$isLastItemView:Z

.field final synthetic val$itemView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5;Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5$1;->this$1:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5;

    iput-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5$1;->val$itemView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5$1;->val$isLastItemView:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5$1;->this$1:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5;

    iget-object v0, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$2100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5$1;->val$isLastItemView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5$1;->this$1:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5;

    iget-object v0, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$2102(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;Z)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5$1;->this$1:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5;

    iget-object v0, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$2200(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5$1;->this$1:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5;

    iget-object v0, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$400(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    new-instance v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5$1$1;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5$1;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5$1;->val$itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5$1;->val$isLastItemView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5$1;->this$1:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5;

    iget-object v0, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$2102(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;Z)Z

    :cond_0
    return-void
.end method
