.class Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$1;
.super Lcom/samsung/android/multiwindow/IMultiWindowCallback$Stub;
.source "MinimizeContainerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IMultiWindowCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(IIILandroid/graphics/Rect;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MinimizeContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Manager] IMultiWindowCallback_onAnimationEnd: taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", transit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", taskBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_2

    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MinimizeContainer"

    const-string v1, "[Manager] IMultiWindowCallback_onStateChanged: non-default"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v0, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v1, v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    invoke-virtual {v1, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onStateChanged(Landroid/graphics/Rect;ILandroid/content/ComponentName;III)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MinimizeContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Manager] IMultiWindowCallback_onStateChanged: taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p5, :cond_2

    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MinimizeContainer"

    const-string v1, "[Manager] IMultiWindowCallback_onStateChanged: non-default"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    const/16 v1, 0x16

    packed-switch p6, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v2, v2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    invoke-virtual {v2, v1, p2, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v1, v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    invoke-virtual {v1, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v2, v2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    invoke-virtual {v2, v1, p2, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v1, v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    invoke-virtual {v1, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;-><init>(Landroid/graphics/Rect;ILandroid/content/ComponentName;IZZ)V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v1, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$000(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v1, v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v2, v2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v1, v3, v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
