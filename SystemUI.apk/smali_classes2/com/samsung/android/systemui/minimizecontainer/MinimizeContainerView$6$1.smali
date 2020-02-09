.class Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6$1;
.super Ljava/lang/Object;
.source "MinimizeContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6$1;->this$1:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6$1;->this$1:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;

    iget-object v0, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    const v1, 0x3f933333    # 1.15f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$2100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;FF)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6$1;->this$1:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;

    iget-object v0, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$902(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;Z)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6$1;->this$1:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;

    iget-object v0, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    move-result-object v0

    const-string v1, "fullscreen_mode_request_pointer_moving"

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->closeFullscreenMode(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6$1;->this$1:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;

    iget-object v0, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6$1;->this$1:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;

    iget-object v1, v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    return-void
.end method
