.class Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$3;
.super Ljava/lang/Object;
.source "MinimizeContainerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->loadMinimizeTaskInfo(Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

.field final synthetic val$item:Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$3;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iput-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$3;->val$item:Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$3;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$3;->val$item:Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;

    iget-object v1, v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->realActivity:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$3;->val$item:Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;

    iget v2, v2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->userId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->create(Landroid/content/Context;Landroid/content/ComponentName;I)Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->getCircleAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$3;->val$item:Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;

    invoke-virtual {v2, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$3;->val$item:Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskInfoLoader;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->setAppLabel(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$3;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v2, v2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$3;->val$item:Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;

    iget v3, v3, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->taskId:I

    const/16 v4, 0x19

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$3;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v3, v3, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    invoke-virtual {v3, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->sendMessage(Landroid/os/Message;)Z

    sget-boolean v3, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MinimizeContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Manager] MinimizeTaskInfo is Loaded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$3;->val$item:Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
