.class Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeDialogGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SecVolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeDialogGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeDialogGestureListener;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeDialogGestureListener;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeDialogGestureListener;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$4200(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    sget-boolean v1, Lcom/android/systemui/volume/D;->ENG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFling() vY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", fMax="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-int/lit8 v2, v0, 0xa

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeDialogGestureListener;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$9400(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeDialogGestureListener;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$9500(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeDialogGestureListener;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$9602(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z

    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeDialogGestureListener;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$9700(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeDialogGestureListener;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$9800(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    :cond_3
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    return v1
.end method
