.class Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;
.super Ljava/lang/Object;
.source "MinimizeContainerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v7, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v7}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$900(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v8}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1400(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v8}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1700(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-gez v7, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v8}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1600(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v8}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1700(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    move v5, v6

    :goto_1
    if-nez v5, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v7}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    move-result-object v7

    const-string v8, "fullscreen_mode_request_pointer_moving"

    invoke-virtual {v7, v8}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->openFullscreenMode(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v7, v6}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$902(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;Z)Z

    iget-object v6, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v6}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$600(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)V

    iget-object v6, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    const/16 v7, 0x96

    invoke-static {v6, v7, v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;II)V

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1900(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1900(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->access$800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1900(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->access$800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v6}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$2000(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getY()F

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setY(F)V

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1900(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->access$800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;)Landroid/widget/ImageView;

    move-result-object v4

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f933333    # 1.15f

    invoke-static {v4, v6, v7}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$2100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;FF)V

    sget-boolean v4, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "MinimizeContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ContainerView] onTouch("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "): Ready to move"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v5}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1300(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)F

    move-result v5

    sub-float v5, v1, v5

    add-float/2addr v4, v5

    invoke-virtual {p1, v4}, Landroid/view/View;->setX(F)V

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v5}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)F

    move-result v5

    sub-float v5, v2, v5

    add-float/2addr v4, v5

    invoke-virtual {p1, v4}, Landroid/view/View;->setY(F)V

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v4, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1302(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;F)F

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v4, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1502(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;F)F

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$2200(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)V

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->isTrashBoxShown()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-virtual {v5}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->getPointerViewBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->notifyIconPositionChanged(Landroid/graphics/Rect;)V

    goto/16 :goto_3

    :pswitch_1
    sget-boolean v7, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->DEBUG:Z

    if-eqz v7, :cond_5

    const-string v7, "MinimizeContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[ContainerView] onTouch("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v7, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v7, v5}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1200(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;Z)V

    iget-object v7, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v7}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$900(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v7}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->isTrashBoxShown()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v7}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$2300(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)V

    iget-object v7, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v7}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$2200(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)V

    iget-object v7, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v7}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$2400(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-virtual {v8}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->getPointerViewBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->reportMinimizeContainerBounds(Landroid/graphics/Rect;)V

    :cond_6
    iget-object v7, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v7}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$2400(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    move-result-object v7

    iget-object v7, v7, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    new-instance v8, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6$1;

    invoke-direct {v8, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6$1;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;)V

    invoke-virtual {v7, v8}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->post(Ljava/lang/Runnable;)Z

    :cond_7
    iget-object v7, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v7}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->isTrashBoxShown()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v5}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-virtual {v6}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->getPointerViewBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->isInRemoveRange(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6$2;

    invoke-direct {v5, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6$2;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;)V

    iget-object v6, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v6}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Landroid/view/ViewGroup;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-virtual {v7}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->getPointerViewBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->throwTrashAway(Ljava/lang/Runnable;Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    iget-object v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v5}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$2500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)F

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v6}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$2600(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)F

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$2700(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;FF)V

    goto :goto_2

    :cond_8
    iget-object v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v5}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->hideTrashBox()V

    iget-object v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    iget-object v6, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v6}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$2500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)F

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v7}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$2600(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)F

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$2700(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;FF)V

    iget-object v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v5}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$2200(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)V

    iget-object v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    const/16 v6, 0x64

    invoke-static {v5, v6, v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;II)V

    :goto_2
    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$2400(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-virtual {v5}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->getPointerViewBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->reportMinimizeContainerBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_3

    :cond_9
    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$900(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->isFolderCloseAnimating()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$2400(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->getMinimizeTasksCount()I

    move-result v4

    if-ne v4, v6, :cond_a

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$2400(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v6}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$2400(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->getMinimizeTaskItem(I)Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->moveTaskToFront(Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "2201"

    const-string v6, "Minimize_popup view"

    invoke-static {v4, v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->updateContainerState(IZ)V

    goto :goto_3

    :pswitch_2
    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->isTrashBoxHiding()Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_3

    :cond_b
    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v4, v6}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1200(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;Z)V

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v4, v5}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$902(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;Z)Z

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    iget-object v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v5, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1402(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;F)F

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1302(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;F)F

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    iget-object v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v5, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1602(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;F)F

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$1502(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;F)F

    sget-boolean v4, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->DEBUG:Z

    if-eqz v4, :cond_c

    const-string v4, "MinimizeContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ContainerView] onTouch("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
