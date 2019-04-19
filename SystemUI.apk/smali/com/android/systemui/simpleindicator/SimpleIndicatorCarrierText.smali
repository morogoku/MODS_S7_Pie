.class public Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierText;
.super Lcom/android/keyguard/CarrierText;
.source "SimpleIndicatorCarrierText.java"

# interfaces
.implements Lcom/android/systemui/simpleindicator/SimpleIndicatorSubscriber;


# instance fields
.field private mHideMySelf:Z

.field private mOriginalVisibility:I

.field private mSubscribeCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierText;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierText;->mOriginalVisibility:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierText;->mHideMySelf:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierText;->mOriginalVisibility:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierText;->mHideMySelf:Z

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/CarrierText;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierText;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierText;->mOriginalVisibility:I

    invoke-virtual {p0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierText;->verifySubscribeCode()V

    const-class v0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;

    iget-object v1, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierText;->mSubscribeCode:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->registerSubscriber(Ljava/lang/String;Lcom/android/systemui/simpleindicator/SimpleIndicatorSubscriber;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/CarrierText;->onDetachedFromWindow()V

    const-class v0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;

    iget-object v1, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierText;->mSubscribeCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->unregisterSubscriber(Ljava/lang/String;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    move v0, p1

    iput p1, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierText;->mOriginalVisibility:I

    iget-boolean v1, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierText;->mHideMySelf:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move v0, v1

    invoke-super {p0, v0}, Lcom/android/keyguard/CarrierText;->setVisibility(I)V

    return-void
.end method

.method public updateQuickStarStyle()V
    .locals 2

    const-class v0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;

    invoke-virtual {v0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->isLockCarrierDisabled()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierText;->mHideMySelf:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierText;->mHideMySelf:Z

    iget v1, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierText;->mOriginalVisibility:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierText;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public verifySubscribeCode()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierText;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierText;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierText;->mSubscribeCode:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierText;->mSubscribeCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "[QuickStar]SlimIndicatorCarrierText getTag() is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
