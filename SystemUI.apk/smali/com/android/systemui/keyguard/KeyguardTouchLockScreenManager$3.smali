.class Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager$3;
.super Ljava/lang/Object;
.source "KeyguardTouchLockScreenManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager$3;->this$0:Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;

    invoke-static {v1, p2}, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->access$400(Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager$3;->this$0:Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;

    invoke-static {v1, p2}, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->access$300(Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_0
    :pswitch_2
    const-string v1, "KeyguardTouchLockScreenManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_UP("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") x :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", y :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager$3;->this$0:Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;

    invoke-static {v1, p2}, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->access$500(Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;Landroid/view/MotionEvent;)V

    nop

    :goto_0
    const/4 v1, 0x1

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
