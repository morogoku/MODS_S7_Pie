.class Lcom/android/systemui/power/ChargerAnimationView$2;
.super Ljava/lang/Object;
.source "ChargerAnimationView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/ChargerAnimationView;->setBatteryLevelTextAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/ChargerAnimationView;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/ChargerAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 6

    const-string v0, "PowerUI.ChargerAnimationView"

    const-string v1, "BatteryLevelTextAnimation started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v0}, Lcom/android/systemui/power/ChargerAnimationView;->access$100(Lcom/android/systemui/power/ChargerAnimationView;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f120bd6

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v0}, Lcom/android/systemui/power/ChargerAnimationView;->access$200(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/widget/TextView;

    move-result-object v0

    const v4, 0x7f070140

    invoke-static {v0, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v0}, Lcom/android/systemui/power/ChargerAnimationView;->access$200(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v4}, Lcom/android/systemui/power/ChargerAnimationView;->access$400(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/content/Context;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v5}, Lcom/android/systemui/power/ChargerAnimationView;->access$300(Lcom/android/systemui/power/ChargerAnimationView;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {v4, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v0}, Lcom/android/systemui/power/ChargerAnimationView;->access$200(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/widget/TextView;

    move-result-object v0

    const v4, 0x7f07013f

    invoke-static {v0, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v0}, Lcom/android/systemui/power/ChargerAnimationView;->access$200(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v4}, Lcom/android/systemui/power/ChargerAnimationView;->access$400(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/content/Context;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v5}, Lcom/android/systemui/power/ChargerAnimationView;->access$300(Lcom/android/systemui/power/ChargerAnimationView;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {v4, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v0}, Lcom/android/systemui/power/ChargerAnimationView;->access$500(Lcom/android/systemui/power/ChargerAnimationView;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method
