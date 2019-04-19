.class Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5$1$1;
.super Ljava/lang/Object;
.source "MinimizeContainerFolderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5$1$1;->this$2:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5$1$1;->this$2:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5$1;

    iget-object v0, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5$1;->this$1:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5;

    iget-object v0, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$2202(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;Z)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5$1$1;->this$2:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5$1;

    iget-object v0, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5$1;->this$1:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5;

    iget-object v0, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$1800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5$1$1;->this$2:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5$1;

    iget-object v0, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5$1;->this$1:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5;

    iget-object v0, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$2300(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)V

    return-void
.end method
