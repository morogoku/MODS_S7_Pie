.class Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$5;
.super Ljava/lang/Object;
.source "MinimizeContainerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->removeAllMinimizeTasks()V
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

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$5;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$5;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$300(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->removeFreeformTasks(I)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$5;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->getMinimizeTasksCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-string v0, "2212"

    const-string v1, "Remove all minimized icon"

    goto :goto_0

    :cond_0
    const-string v0, "2202"

    const-string v1, "Close window_popup view"

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$5;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "MinimizeContainer"

    const-string v3, "[Manager] removeFreeformTasks runnable is finished"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
