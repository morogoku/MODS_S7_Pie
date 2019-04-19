.class Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$1;
.super Ljava/lang/Object;
.source "SequentialAnimator.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$1;->this$0:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$1;->this$0:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->access$000(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$1;->this$0:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->updateFrame()J

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$1;->this$0:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$1;->this$0:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->access$200(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->access$116(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;F)F

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$1;->this$0:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->access$000(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$1;->this$0:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->access$100(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$1;->this$0:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->access$300(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;)Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_1
    return-void
.end method
