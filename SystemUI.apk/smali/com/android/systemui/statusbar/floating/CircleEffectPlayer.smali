.class public Lcom/android/systemui/statusbar/floating/CircleEffectPlayer;
.super Ljava/lang/Object;
.source "CircleEffectPlayer.java"

# interfaces
.implements Lcom/android/systemui/statusbar/floating/EffectPlayer;


# instance fields
.field private mEffectLayer:Landroid/view/ViewGroup;

.field private mEffectView:Lcom/android/systemui/widget/SystemUIImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/CircleEffectPlayer;->mEffectView:Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/CircleEffectPlayer;->mEffectLayer:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public focusEffect(II)V
    .locals 0

    return-void
.end method

.method public hideEffect()V
    .locals 0

    return-void
.end method

.method public moveEffect(II)V
    .locals 0

    return-void
.end method

.method public setEffectLayer(Landroid/view/ViewGroup;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/statusbar/floating/CircleEffectPlayer;->mEffectLayer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/CircleEffectPlayer;->mEffectLayer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/CircleEffectPlayer;->mEffectView:Lcom/android/systemui/widget/SystemUIImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/CircleEffectPlayer;->mEffectView:Lcom/android/systemui/widget/SystemUIImageView;

    const v1, 0x7f0805c1

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/CircleEffectPlayer;->mEffectView:Lcom/android/systemui/widget/SystemUIImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/CircleEffectPlayer;->mEffectLayer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/CircleEffectPlayer;->mEffectView:Lcom/android/systemui/widget/SystemUIImageView;

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public showEffect(II)V
    .locals 0

    return-void
.end method
