.class final Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController$H;
.super Landroid/os/Handler;
.source "SideScreenMenuController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController$H;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->onLongPress()V

    :goto_0
    return-void
.end method
