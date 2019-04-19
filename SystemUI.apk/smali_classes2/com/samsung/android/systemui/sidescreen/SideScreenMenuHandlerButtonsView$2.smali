.class Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SideScreenMenuHandlerButtonsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->createGestureDetector(I)Landroid/view/GestureDetector$SimpleOnGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;

.field final synthetic val$viewId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView$2;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;

    iput p2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView$2;->val$viewId:I

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView$2;->val$viewId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView$2;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->access$000(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;)Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$ICallFromView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$ICallFromView;->undock()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView$2;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->access$000(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;)Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$ICallFromView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$ICallFromView;->dock()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView$2;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->access$000(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;)Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$ICallFromView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$ICallFromView;->close()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView$2;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->access$000(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;)Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$ICallFromView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$ICallFromView;->applist()V

    nop

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView$2;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->hideView(Z)V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView$2;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->access$100(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x7f0a051b
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
