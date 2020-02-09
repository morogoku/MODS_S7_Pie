.class Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;
.super Landroid/os/Handler;
.source "SamsungAccessibilityGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;->this$0:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_b2

    goto/16 :goto_b0

    :pswitch_7
    const-string v0, "SamsungAccessibilityGestureDetector"

    const-string v1, "MSG_MULTI_FINGER_STOP"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;->this$0:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    # invokes: Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clearMultiFingerDetection()V
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->access$400(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)V

    goto/16 :goto_b0

    :pswitch_15
    const-string v0, "SamsungAccessibilityGestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_MULTI_FINGER_HOLD : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;->this$0:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    # getter for: Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mLastNumberOfFingers:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->access$000(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;->this$0:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    # getter for: Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerTapTimes:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->access$200(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;->this$0:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    # getter for: Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->access$300(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;->this$0:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    # getter for: Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mLastNumberOfFingers:I
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->access$000(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;->this$0:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    # getter for: Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerTapTimes:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->access$200(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;->onMultiFingerTapDetected(IIZ)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;->this$0:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    # invokes: Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clearMultiFingerDetection(I)V
    invoke-static {v0, v3}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->access$500(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;I)V

    goto :goto_b0

    :pswitch_5c
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;->this$0:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    # getter for: Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mLastNumberOfFingers:I
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->access$000(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;->this$0:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    # getter for: Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->access$100(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)I

    move-result v1

    if-ne v0, v1, :cond_aa

    const-string v0, "SamsungAccessibilityGestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_MULTI_FINGER_TAP : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;->this$0:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    # getter for: Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mLastNumberOfFingers:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->access$000(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;->this$0:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    # getter for: Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerTapTimes:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->access$200(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;->this$0:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    # getter for: Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->access$300(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;->this$0:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    # getter for: Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mLastNumberOfFingers:I
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->access$000(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;->this$0:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    # getter for: Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerTapTimes:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->access$200(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;->onMultiFingerTapDetected(IIZ)V

    :cond_aa
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;->this$0:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    # invokes: Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clearMultiFingerDetection()V
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->access$400(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)V

    nop

    :goto_b0
    return-void

    nop

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_15
        :pswitch_7
    .end packed-switch
.end method
