.class Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder$2;
.super Ljava/lang/Object;
.source "AbstractMediaItemPresenter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder$2;->this$0:Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder$2;->this$0:Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mSelectorView:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder$2;->this$0:Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mFocusViewAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, v3}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->updateSelector(Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;Z)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mFocusViewAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method
