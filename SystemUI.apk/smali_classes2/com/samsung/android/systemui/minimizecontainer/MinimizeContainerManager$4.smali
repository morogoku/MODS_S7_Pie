.class Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$4;
.super Ljava/lang/Object;
.source "MinimizeContainerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->removeTask(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

.field final synthetic val$taskId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$4;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iput p2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$4;->val$taskId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MinimizeContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Manager] Run removeTask, taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$4;->val$taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$4;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$200(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)Landroid/app/ActivityManager;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$4;->val$taskId:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->semRemoveTask(II)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$4;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v0, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    const/16 v1, 0x16

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$4;->val$taskId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$4;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v1, v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    invoke-virtual {v1, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$4;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "2223"

    const-string v3, "Remove a minimized icon"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
