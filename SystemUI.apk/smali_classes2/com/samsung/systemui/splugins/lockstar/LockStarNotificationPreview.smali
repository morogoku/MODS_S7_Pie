.class public Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;
.super Ljava/lang/Object;
.source "LockStarNotificationPreview.java"


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mColor:I

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/widget/ImageView;

.field private mKey:Ljava/lang/String;

.field private mTagFreshDrawable:I

.field private mTagIsAppColor:I

.field private mText:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->mContext:Landroid/content/Context;

    return-void
.end method

.method private refreshDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getPreviewIcon()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->mAppName:Ljava/lang/String;

    return-void
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->mColor:I

    return-void
.end method

.method public setNotificationView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->mView:Landroid/view/View;

    return-void
.end method

.method public setPreviewIcon(Landroid/graphics/drawable/Drawable;I)V
    .locals 5

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    new-array v2, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    move-object v4, v0

    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->refreshDrawable(Landroid/graphics/drawable/Drawable;)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v0, v3

    iget-object v4, p0, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->refreshDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageLevel(I)V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->mIcon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->mTagFreshDrawable:I

    invoke-virtual {v1, v2, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->mIcon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->mTagIsAppColor:I

    iget v3, p0, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->mColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->mIcon:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public setPreviewKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->mKey:Ljava/lang/String;

    return-void
.end method

.method public setTagKeys(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->mTagFreshDrawable:I

    iput p2, p0, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->mTagIsAppColor:I

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->mText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method
