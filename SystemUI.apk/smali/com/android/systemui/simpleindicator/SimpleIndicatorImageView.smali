.class public Lcom/android/systemui/simpleindicator/SimpleIndicatorImageView;
.super Landroid/widget/ImageView;
.source "SimpleIndicatorImageView.java"

# interfaces
.implements Lcom/android/systemui/simpleindicator/SimpleIndicatorSubscriber;


# instance fields
.field private mHideMySelf:Z

.field private mOriginalVisibility:I

.field private mSubscribeCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorImageView;->mOriginalVisibility:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorImageView;->mHideMySelf:Z

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorImageView;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorImageView;->mOriginalVisibility:I

    invoke-virtual {p0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorImageView;->verifySubscribeCode()V

    const-class v0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;

    iget-object v1, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorImageView;->mSubscribeCode:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->registerSubscriber(Ljava/lang/String;Lcom/android/systemui/simpleindicator/SimpleIndicatorSubscriber;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorImageView;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1208ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    const-class v0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;

    iget-object v1, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorImageView;->mSubscribeCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->unregisterSubscriber(Ljava/lang/String;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    move v0, p1

    iput p1, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorImageView;->mOriginalVisibility:I

    iget-boolean v1, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorImageView;->mHideMySelf:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move v0, v1

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public updateQuickStarStyle()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorImageView;->mSubscribeCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorImageView;->mSubscribeCode:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120ba0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;

    invoke-virtual {v0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->isHomeCarrierDisabled()Z

    move-result v0

    goto :goto_0

    :cond_0
    const-class v0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;

    invoke-virtual {v0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->isLockCarrierDisabled()Z

    move-result v0

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorImageView;->mHideMySelf:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorImageView;->mHideMySelf:Z

    iget v1, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorImageView;->mOriginalVisibility:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/simpleindicator/SimpleIndicatorImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public verifySubscribeCode()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorImageView;->mSubscribeCode:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorImageView;->mSubscribeCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "[QuickStar]SimpleIndicatorImageView getTag() is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
