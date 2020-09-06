.class Lcom/android/server/sepunion/cover/CoverHideAnimator$1;
.super Landroid/os/Handler;
.source "CoverHideAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/CoverHideAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/cover/CoverHideAnimator;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$1;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$1;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    # getter for: Lcom/android/server/sepunion/cover/CoverHideAnimator;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverHideAnimator;->access$000(Lcom/android/server/sepunion/cover/CoverHideAnimator;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_34

    goto :goto_32

    :pswitch_26
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$1;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    # invokes: Lcom/android/server/sepunion/cover/CoverHideAnimator;->handleCancelAnimation()V
    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverHideAnimator;->access$200(Lcom/android/server/sepunion/cover/CoverHideAnimator;)V

    goto :goto_32

    :pswitch_2c
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$1;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    # invokes: Lcom/android/server/sepunion/cover/CoverHideAnimator;->handleStartAnimation()V
    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverHideAnimator;->access$100(Lcom/android/server/sepunion/cover/CoverHideAnimator;)V

    nop

    :goto_32
    return-void

    nop

    :pswitch_data_34
    .packed-switch 0x65
        :pswitch_2c
        :pswitch_26
    .end packed-switch
.end method
