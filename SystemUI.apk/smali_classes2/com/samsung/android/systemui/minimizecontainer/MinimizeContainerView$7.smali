.class Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$7;
.super Ljava/lang/Object;
.source "MinimizeContainerView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$7;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$7;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$900(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MinimizeContainer"

    const-string v1, "[ContainerView] onLongClick: Show Trash"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$7;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$7;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$2000(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$2502(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;F)F

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$7;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$7;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$2000(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$2602(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;F)F

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$7;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$7;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->getPointerViewBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->showTrashBox(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method
