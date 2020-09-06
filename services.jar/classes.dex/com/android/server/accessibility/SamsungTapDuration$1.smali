.class Lcom/android/server/accessibility/SamsungTapDuration$1;
.super Landroid/os/Handler;
.source "SamsungTapDuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungTapDuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/SamsungTapDuration;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/SamsungTapDuration;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_81

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    :goto_9
    const/4 v5, 0x4

    if-ge v2, v5, :cond_73

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    # getter for: Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;
    invoke-static {v5}, Lcom/android/server/accessibility/SamsungTapDuration;->access$000(Lcom/android/server/accessibility/SamsungTapDuration;)[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5, v3}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->setViewOnOff(Z)V

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    # getter for: Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;
    invoke-static {v5}, Lcom/android/server/accessibility/SamsungTapDuration;->access$100(Lcom/android/server/accessibility/SamsungTapDuration;)[Landroid/view/MotionEvent;

    move-result-object v5

    aget-object v5, v5, v2

    if-eqz v5, :cond_70

    shl-int v5, v1, v2

    or-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    # getter for: Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;
    invoke-static {v5}, Lcom/android/server/accessibility/SamsungTapDuration;->access$100(Lcom/android/server/accessibility/SamsungTapDuration;)[Landroid/view/MotionEvent;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/view/MotionEvent;->setDownTime(J)V

    :try_start_33
    iget-object v5, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    # getter for: Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;
    invoke-static {v6}, Lcom/android/server/accessibility/SamsungTapDuration;->access$100(Lcom/android/server/accessibility/SamsungTapDuration;)[Landroid/view/MotionEvent;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v6, v4}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    # getter for: Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;
    invoke-static {v7}, Lcom/android/server/accessibility/SamsungTapDuration;->access$200(Lcom/android/server/accessibility/SamsungTapDuration;)[Landroid/view/MotionEvent;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7, v4}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    # getter for: Lcom/android/server/accessibility/SamsungTapDuration;->mPolicyFlags:[I
    invoke-static {v8}, Lcom/android/server/accessibility/SamsungTapDuration;->access$300(Lcom/android/server/accessibility/SamsungTapDuration;)[I

    move-result-object v8

    aget v8, v8, v2

    # invokes: Lcom/android/server/accessibility/SamsungTapDuration;->onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    invoke-static {v5, v6, v7, v8}, Lcom/android/server/accessibility/SamsungTapDuration;->access$400(Lcom/android/server/accessibility/SamsungTapDuration;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    :try_end_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_33 .. :try_end_58} :catch_5b
    .catchall {:try_start_33 .. :try_end_58} :catchall_59

    goto :goto_64

    :catchall_59
    move-exception v1

    goto :goto_6a

    :catch_5b
    move-exception v5

    :try_start_5c
    const-string v6, "SamsungTapDuration"

    const-string/jumbo v7, "idBits did not match any ids in the event"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_5c .. :try_end_64} :catchall_59

    :goto_64
    iget-object v5, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    # invokes: Lcom/android/server/accessibility/SamsungTapDuration;->clearMotionEvents(I)V
    invoke-static {v5, v2}, Lcom/android/server/accessibility/SamsungTapDuration;->access$500(Lcom/android/server/accessibility/SamsungTapDuration;I)V

    goto :goto_70

    :goto_6a
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    # invokes: Lcom/android/server/accessibility/SamsungTapDuration;->clearMotionEvents(I)V
    invoke-static {v3, v2}, Lcom/android/server/accessibility/SamsungTapDuration;->access$500(Lcom/android/server/accessibility/SamsungTapDuration;I)V

    throw v1

    :cond_70
    :goto_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_73
    const-string v1, "SamsungTapDuration"

    const-string v2, "Tap is valid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    # setter for: Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z
    invoke-static {v1, v3}, Lcom/android/server/accessibility/SamsungTapDuration;->access$602(Lcom/android/server/accessibility/SamsungTapDuration;Z)Z

    nop

    return-void

    :cond_81
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unkwown message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
