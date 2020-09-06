.class public Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ItemInfoViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/systemui/sidescreen/applist/model/ItemInfo$ItemCallback;


# instance fields
.field mAdapter:Lcom/android/systemui/sidescreen/applist/view/ItemListViewAdapter;

.field private mContentView:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mIconView:Landroid/widget/ImageView;

.field private mItemInfo:Lcom/android/systemui/sidescreen/applist/model/ItemInfo;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->mContext:Landroid/content/Context;

    const v0, 0x7f0a0115

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->mContentView:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->mTitleView:Landroid/widget/TextView;

    const v0, 0x7f0a021e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->mIconView:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;)Lcom/android/systemui/sidescreen/applist/model/ItemInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/sidescreen/applist/model/ItemInfo;

    return-object v0
.end method


# virtual methods
.method public animateIconLoaded(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {p1, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder$1;-><init>(Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public bindToAppInfo(Lcom/android/systemui/sidescreen/applist/model/ItemInfo;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/sidescreen/applist/model/ItemInfo;

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/sidescreen/applist/model/ItemInfo;

    invoke-virtual {v0, p0}, Lcom/android/systemui/sidescreen/applist/model/ItemInfo;->setCallback(Lcom/android/systemui/sidescreen/applist/model/ItemInfo$ItemCallback;)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/sidescreen/applist/model/ItemInfo;

    invoke-virtual {v1}, Lcom/android/systemui/sidescreen/applist/model/ItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/sidescreen/applist/model/ItemInfo;

    invoke-virtual {v1}, Lcom/android/systemui/sidescreen/applist/model/ItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/sidescreen/applist/model/ItemInfo;

    invoke-virtual {v0, v1}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->loadAppInfoData(Lcom/android/systemui/sidescreen/applist/model/ItemInfo;)V

    return-void
.end method

.method public onAppDataLoaded(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->animateIconLoaded(Landroid/view/View;)V

    return-void
.end method

.method public onBind(Lcom/android/systemui/sidescreen/applist/view/ItemListViewAdapter;Lcom/android/systemui/sidescreen/applist/model/ItemInfo;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->mAdapter:Lcom/android/systemui/sidescreen/applist/view/ItemListViewAdapter;

    invoke-virtual {p0, p2}, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->bindToAppInfo(Lcom/android/systemui/sidescreen/applist/model/ItemInfo;)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/sidescreen/applist/model/ItemInfo;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/sidescreen/applist/model/ItemInfo;->startApp(Landroid/content/Context;I)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/sidescreen/applist/LogHelper;->debug()V

    const/4 v0, 0x0

    return v0
.end method

.method public onUnbind()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/sidescreen/applist/model/ItemInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/sidescreen/applist/model/ItemInfo;->setCallback(Lcom/android/systemui/sidescreen/applist/model/ItemInfo$ItemCallback;)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public removeTask()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->mAdapter:Lcom/android/systemui/sidescreen/applist/view/ItemListViewAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/sidescreen/applist/view/ItemListViewAdapter;->removeItem(I)V

    return-void
.end method

.method public resetViewAttrs(Landroid/view/View;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
