.class Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$2;
.super Ljava/lang/Object;
.source "MinimizeContainerView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->animateToScalePointerAppIcons(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$200(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;

    invoke-virtual {v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->getAppIconView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->getAppIconView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_0

    :cond_0
    return-void
.end method
