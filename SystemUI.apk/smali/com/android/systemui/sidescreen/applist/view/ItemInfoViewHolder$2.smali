.class Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder$2;
.super Ljava/lang/Object;
.source "ItemInfoViewHolder.java"

# interfaces
.implements Lcom/android/systemui/shared/dnd/DragAndDropHelper$DragClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;


# virtual methods
.method public onDragEnd(I)V
    .locals 7

    invoke-static {}, Lcom/android/systemui/sidescreen/applist/LogHelper;->debug()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder$2;->this$0:Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;

    invoke-static {v0}, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->access$000(Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;)Lcom/android/systemui/sidescreen/applist/model/ItemInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder$2;->this$0:Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;

    iget-object v1, v1, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/sidescreen/applist/model/ItemInfo;->startApp(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder$2;->this$0:Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder$2;->this$0:Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;

    iget-object v0, v0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->mAdapter:Lcom/android/systemui/sidescreen/applist/view/ItemListViewAdapter;

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder$2;->this$0:Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;

    invoke-virtual {v1}, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/sidescreen/applist/view/ItemListViewAdapter;->removeItem(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder$2;->this$0:Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;

    iget-object v0, v0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/PropertyValuesHolder;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    iget-object v5, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder$2;->this$0:Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;

    iget-object v5, v5, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    const/4 v6, 0x0

    aput v5, v4, v6

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v1

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-static {v0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDragStart()V
    .locals 7

    invoke-static {}, Lcom/android/systemui/sidescreen/applist/LogHelper;->debug()V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder$2;->this$0:Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;

    iget-object v0, v0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/PropertyValuesHolder;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    iget-object v5, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder$2;->this$0:Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;

    iget-object v5, v5, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x0

    aput v5, v4, v1

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-static {v0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
