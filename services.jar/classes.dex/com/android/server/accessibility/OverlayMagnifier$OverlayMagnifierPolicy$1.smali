.class Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;
.super Landroid/os/Handler;
.source "OverlayMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_77

    :cond_6
    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    # setter for: Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mIsMagnifying:Z
    invoke-static {v0, v1}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->access$002(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;Z)Z

    # getter for: Lcom/android/server/accessibility/OverlayMagnifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/OverlayMagnifier;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Overlay Magnifier start!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    # getter for: Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;
    invoke-static {v0}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->access$200(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)Landroid/view/MagnificationSpec;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    iput v1, v0, Landroid/view/MagnificationSpec;->scale:F

    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    # getter for: Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;
    invoke-static {v0}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->access$200(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)Landroid/view/MagnificationSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    # getter for: Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mLatestMotionEvent:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->access$300(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    # getter for: Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;
    invoke-static {v0}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->access$200(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)Landroid/view/MagnificationSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    # getter for: Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mLatestMotionEvent:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->access$300(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Landroid/view/MagnificationSpec;->offsetY:F

    # getter for: Lcom/android/server/accessibility/OverlayMagnifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/OverlayMagnifier;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMotionEvent: spec="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    # getter for: Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;
    invoke-static {v2}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->access$200(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)Landroid/view/MagnificationSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_61
    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    iget-object v0, v0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->this$0:Lcom/android/server/accessibility/OverlayMagnifier;

    # getter for: Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;
    invoke-static {v0}, Lcom/android/server/accessibility/OverlayMagnifier;->access$400(Lcom/android/server/accessibility/OverlayMagnifier;)Landroid/hardware/display/IDisplayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    # getter for: Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;
    invoke-static {v1}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->access$200(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)Landroid/view/MagnificationSpec;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/display/IDisplayManager;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_72} :catch_73

    goto :goto_77

    :catch_73
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_77
    return-void
.end method
