.class Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;
.super Ljava/lang/Object;
.source "TiltColorController.java"

# interfaces
.implements Lcom/android/systemui/wallpaper/tilt/GyroDetector$GyroSensorChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/tilt/TiltColorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGyroChanged(FFF)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$200(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$100(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v0, p2}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$716(Lcom/android/systemui/wallpaper/tilt/TiltColorController;F)F

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$700(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x43200000    # 160.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$700(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)F

    move-result v3

    cmpg-float v1, v3, v1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v2, -0x3ce00000    # -160.0f

    :goto_0
    invoke-static {v0, v2}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$702(Lcom/android/systemui/wallpaper/tilt/TiltColorController;F)F

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$700(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$802(Lcom/android/systemui/wallpaper/tilt/TiltColorController;F)F

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$700(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$800(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$700(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$802(Lcom/android/systemui/wallpaper/tilt/TiltColorController;F)F

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$800(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$700(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)F

    move-result v2

    mul-float/2addr v0, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$802(Lcom/android/systemui/wallpaper/tilt/TiltColorController;F)F

    :cond_3
    :goto_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$800(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$800(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    neg-float v3, v2

    iget-object v4, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$700(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float v1, v0, v2

    goto :goto_2

    :cond_4
    const/high16 v2, -0x3ee00000    # -10.0f

    iget-object v4, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$700(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float v1, v0, v3

    :goto_2
    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v3, v1

    invoke-static {v2, v3}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$900(Lcom/android/systemui/wallpaper/tilt/TiltColorController;F)V

    :cond_5
    return-void
.end method
