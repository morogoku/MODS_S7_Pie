.class Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5;
.super Ljava/lang/Object;
.source "MinimizeContainerFolderView.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->setHorizontalScrollBarEnabled(Z)V

    sget-boolean v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MinimizeContainer"

    const-string v3, "[FolderView] mOpenFolderRunnable Run()"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v1, 0x14d

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-static {v5}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$1100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Z

    move-result v5

    const/4 v6, 0x0

    move v7, v4

    move v4, v3

    move v3, v1

    move v1, v6

    :goto_0
    iget-object v8, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-static {v8}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$1800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;->getItemCount()I

    move-result v8

    if-ge v1, v8, :cond_7

    iget-object v8, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-virtual {v8, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;

    if-nez v8, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v9, v8, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->itemView:Landroid/view/View;

    sget-boolean v10, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->DEBUG:Z

    if-eqz v10, :cond_2

    const-string v10, "MinimizeContainer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[FolderView] openAnim, itemView="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_3
    iget-object v10, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-static {v10}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$1800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;->getItemCount()I

    move-result v10

    sub-int/2addr v10, v2

    if-ne v1, v10, :cond_4

    move v10, v2

    goto :goto_1

    :cond_4
    move v10, v6

    :goto_1
    iget-object v11, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-static {v11}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$1900(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)I

    move-result v11

    iget-object v12, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-static {v12}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$2000(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;

    move-result-object v12

    iget v12, v12, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->mItemSpace:I

    add-int/2addr v11, v12

    mul-int/2addr v11, v1

    if-eqz v5, :cond_5

    move v12, v2

    goto :goto_2

    :cond_5
    const/4 v12, -0x1

    :goto_2
    mul-int/2addr v11, v12

    new-instance v12, Landroid/view/animation/TranslateAnimation;

    int-to-float v13, v11

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14, v14, v14}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move v15, v7

    int-to-long v6, v3

    invoke-virtual {v12, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    int-to-long v6, v4

    invoke-virtual {v12, v6, v7}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    sget-object v6, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$Utils;->sSineInOut90Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v12, v6}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v6, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5$1;

    invoke-direct {v6, v0, v9, v10}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5$1;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5;Landroid/view/View;Z)V

    invoke-virtual {v12, v6}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v14, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v13, 0x64

    invoke-virtual {v6, v13, v14}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    move v7, v15

    int-to-long v13, v7

    invoke-virtual {v6, v13, v14}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    invoke-virtual {v6, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    sget-object v13, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$Utils;->sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v6, v13}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v13, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v13, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v9, v13}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v14, v3, -0x21

    const/16 v2, 0xc8

    if-lt v14, v2, :cond_6

    add-int/lit8 v3, v3, -0x21

    add-int/lit8 v4, v4, 0x21

    add-int/lit8 v7, v7, 0x42

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_7
    iget-object v1, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$5;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$1602(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;Z)Z

    return-void
.end method
