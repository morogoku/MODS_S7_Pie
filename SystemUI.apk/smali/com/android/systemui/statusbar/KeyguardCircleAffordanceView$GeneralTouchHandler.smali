.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;
.super Ljava/lang/Object;
.source "KeyguardCircleAffordanceView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$TouchHandlePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GeneralTouchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "KeyguardCircleAffordanceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTouchEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "KeyguardCircleAffordanceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTouchEvent: mHintAnimation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3500(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mRight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v4, :cond_c

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v4, v4, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->userActivity()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)F

    move-result v4

    sub-float v4, v3, v4

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)F

    move-result v7

    sub-float v7, v2, v7

    float-to-double v8, v4

    float-to-double v10, v7

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v8, v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v9, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5502(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_2

    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v9, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v9, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v9, v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5002(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v6, v6, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->cancelDAAffordance()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v6, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v6, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4902(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    goto/16 :goto_2

    :pswitch_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_2

    :cond_3
    const/4 v0, 0x1

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7, v3, v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4500(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FF)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v9

    int-to-long v9, v9

    const-wide/16 v11, 0x2

    mul-long/2addr v9, v11

    cmp-long v7, v7, v9

    if-lez v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7, v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5002(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1500(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v7, v4, v4, v4, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v7, v7, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v8

    invoke-interface {v7, v8}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onIconClicked(Z)Z

    :cond_5
    :goto_0
    :pswitch_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7, v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3902(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V

    const-string v7, "KeyguardCircleAffordanceView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onTouchEvent: mJustClicked="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ",mReveal="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ",isUp="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ",mFling="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-nez v0, :cond_d

    :cond_6
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x29

    goto :goto_1

    :cond_7
    const/16 v8, 0x59

    :goto_1
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2602(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;I)I

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4, v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4, v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4, v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_2

    :cond_8
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7, v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2502(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7, v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5802(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/Paint;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v7, v4, v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4, v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    goto/16 :goto_2

    :cond_9
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    goto/16 :goto_2

    :pswitch_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_b

    :cond_a
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->bringToFront()V

    :cond_b
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7, v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4902(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4, v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3902(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5002(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4002(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4102(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v4, v4, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v6

    invoke-interface {v4, v6}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingStarted(Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V

    goto :goto_2

    :cond_c
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4, v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5002(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v4, v4, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingAborted()V

    :cond_d
    :goto_2
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
