.class final Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener$H;
.super Landroid/os/Handler;
.source "SideScreenMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener$H;->this$1:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener$H;->this$1:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->onLongPress(Landroid/view/View;)V

    :goto_0
    return-void
.end method
