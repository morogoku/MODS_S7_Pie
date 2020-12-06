.class Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MinimizeContainerFolderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderItemViewHolder"
.end annotation


# instance fields
.field private mIconView:Landroid/widget/ImageView;

.field private mItem:Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;

.field private mTitleView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a031e

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->mIconView:Landroid/widget/ImageView;

    const p1, 0x7f0a031f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->mTitleView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->mIconView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setHapticFeedbackEnabled(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->mItem:Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->mItem:Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MinimizeContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FolderView] [Holder] onClick: view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$400(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->mItem:Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->moveTaskToFront(Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->updateContainerState(IZ)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$600(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "2221"

    const-string v2, "Resume_popup view"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$700(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-static {v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->showTrashBox(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->mIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->mItem:Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;

    iget v2, v2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->taskId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$900(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;Landroid/widget/ImageView;I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
