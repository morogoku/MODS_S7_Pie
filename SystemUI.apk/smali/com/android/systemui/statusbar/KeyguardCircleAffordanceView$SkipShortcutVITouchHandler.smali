.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;
.super Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;
.source "KeyguardCircleAffordanceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkipShortcutVITouchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v6

    if-eqz v6, :cond_0

    return v5

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v6, v3, v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4500(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FF)V

    :pswitch_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v6, v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3902(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v6, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v6, v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    :cond_2
    :goto_0
    return v5

    :pswitch_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->bringToFront()V

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v6, v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3902(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4002(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4102(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v4, v4, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v6

    invoke-interface {v4, v6}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingStarted(Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V

    return v5

    :goto_1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
