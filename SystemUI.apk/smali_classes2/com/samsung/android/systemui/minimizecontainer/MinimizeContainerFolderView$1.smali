.class Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "MinimizeContainerFolderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$000(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-static {v0, p2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$002(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;I)I

    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    return-void
.end method
