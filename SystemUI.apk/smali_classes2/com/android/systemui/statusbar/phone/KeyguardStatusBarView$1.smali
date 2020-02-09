.class Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;
.super Ljava/lang/Object;
.source "KeyguardStatusBarView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->animateNextLayoutChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isFinishedClockAnimation:Z

.field isFinishedSystemIconAnimation:Z

.field isMultiUserSwitchAnimation:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field final synthetic val$clockCurrentX:I

.field final synthetic val$systemIconsCurrentX:I

.field final synthetic val$userSwitcherVisible:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;ZII)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->val$userSwitcherVisible:Z

    iput p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->val$clockCurrentX:I

    iput p4, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->val$systemIconsCurrentX:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isAnimationFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->isFinishedSystemIconAnimation:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->isFinishedClockAnimation:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->isMultiUserSwitchAnimation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$onPreDraw$0(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->isFinishedClockAnimation:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->updateClockAnimatorAndPositionIfAnimationFinished()V

    return-void
.end method

.method public static synthetic lambda$onPreDraw$1(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->isFinishedSystemIconAnimation:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->updateClockAnimatorAndPositionIfAnimationFinished()V

    return-void
.end method

.method public static synthetic lambda$onPreDraw$2(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->isMultiUserSwitchAnimation:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->updateClockAnimatorAndPositionIfAnimationFinished()V

    return-void
.end method

.method public static synthetic lambda$onPreDraw$3(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->isMultiUserSwitchAnimation:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->updateClockAnimatorAndPositionIfAnimationFinished()V

    return-void
.end method

.method private updateClockAnimatorAndPositionIfAnimationFinished()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->isAnimationFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$102(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$200(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->val$userSwitcherVisible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$400(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/view/ViewGroup;

    move-result-object v2

    if-eq v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    sget-boolean v3, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x12c

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/policy/QSClock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/QSClock;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$600(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;

    move-result-object v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$600(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;

    move-result-object v10

    iget v10, v10, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->mScrolledAmount:F

    goto :goto_1

    :cond_1
    move v10, v7

    :goto_1
    sub-float v10, v4, v10

    mul-float v2, v3, v10

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/policy/QSClock;

    move-result-object v3

    iget v10, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->val$clockCurrentX:I

    int-to-float v10, v10

    invoke-virtual {v3, v10}, Lcom/android/systemui/statusbar/policy/QSClock;->setX(F)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/policy/QSClock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/QSClock;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz v0, :cond_2

    move-wide v10, v8

    goto :goto_2

    :cond_2
    move-wide v10, v5

    :goto_2
    invoke-virtual {v3, v10, v11}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget-object v10, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v10}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v10, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardStatusBarView$1$DyabYtIeJMptnepd5jqXSnZ7UZ0;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardStatusBarView$1$DyabYtIeJMptnepd5jqXSnZ7UZ0;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;)V

    invoke-virtual {v3, v10}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$700(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/view/View;

    move-result-object v3

    sget-boolean v10, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/policy/QSClock;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/QSClock;->getAlpha()F

    move-result v10

    const v11, 0x3dcccccd    # 0.1f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_4

    iget v10, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->val$systemIconsCurrentX:I

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v11}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/policy/QSClock;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/policy/QSClock;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    goto :goto_3

    :cond_4
    iget v10, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->val$systemIconsCurrentX:I

    :goto_3
    int-to-float v10, v10

    invoke-virtual {v3, v10}, Landroid/view/View;->setX(F)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$700(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz v0, :cond_5

    move-wide v10, v8

    goto :goto_4

    :cond_5
    move-wide v10, v5

    :goto_4
    invoke-virtual {v3, v10, v11}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget-object v10, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v10}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v10, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardStatusBarView$1$e7Txbwn7td75wYOdKO0qgSsIBYo;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardStatusBarView$1$e7Txbwn7td75wYOdKO0qgSsIBYo;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;)V

    invoke-virtual {v3, v10}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardStatusBarView$1$Pb6PrrlQdiI7Fc9NLX4idTVtGSw;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardStatusBarView$1$Pb6PrrlQdiI7Fc9NLX4idTVtGSw;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_5

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardStatusBarView$1$XO8ythMYDAXW2IVd8YlyzytiMBg;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardStatusBarView$1$XO8ythMYDAXW2IVd8YlyzytiMBg;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :goto_5
    return v1
.end method
