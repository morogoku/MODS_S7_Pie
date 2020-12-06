.class Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$4;
.super Ljava/lang/Object;
.source "MinimizeContainerFolderView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->animateToCloseFolderView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$4;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$4;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->setAlpha(F)V

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$4;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$4;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->setAlpha(F)V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$4;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    move-result-object v1

    const-string v2, "fullscreen_mode_request_folder"

    invoke-virtual {v1, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->closeFullscreenMode(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$4;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$1702(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;Z)Z

    :cond_0
    return-void
.end method
