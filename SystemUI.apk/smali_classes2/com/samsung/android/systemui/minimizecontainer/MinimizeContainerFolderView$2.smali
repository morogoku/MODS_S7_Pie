.class Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$2;
.super Ljava/lang/Object;
.source "MinimizeContainerFolderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->hideTrashBoxIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

.field final synthetic val$targetTaskId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    iput p2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$2;->val$targetTaskId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$400(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$2;->val$targetTaskId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->removeTask(I)V

    return-void
.end method
