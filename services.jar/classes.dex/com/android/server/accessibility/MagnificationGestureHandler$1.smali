.class Lcom/android/server/accessibility/MagnificationGestureHandler$1;
.super Ljava/lang/Object;
.source "MagnificationGestureHandler.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/MagnificationGestureHandler;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/MagnificationController;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/MagnificationGestureHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$1;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$1;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    # getter for: Lcom/android/server/accessibility/MagnificationGestureHandler;->mDisplay:Landroid/hardware/display/DisplayManager;
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$000(Lcom/android/server/accessibility/MagnificationGestureHandler;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$1;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    # getter for: Lcom/android/server/accessibility/MagnificationGestureHandler;->mDisplay:Landroid/hardware/display/DisplayManager;
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$000(Lcom/android/server/accessibility/MagnificationGestureHandler;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_58

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2c

    const-string v2, "MagnificationGestureHandler"

    const-string v3, "Screen On :: Magnification Gesture started again."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$1;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$1;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v3, v3, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;

    # invokes: Lcom/android/server/accessibility/MagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V
    invoke-static {v2, v3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$100(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    goto :goto_58

    :cond_2c
    const/4 v2, 0x1

    if-ne v1, v2, :cond_58

    const-string v3, "MagnificationGestureHandler"

    const-string v4, "Screen Off :: Magnification Gesture don\'t work."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$1;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v3, v3, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v3}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v3

    if-eqz v3, :cond_4f

    const-string v3, "MagnificationGestureHandler"

    const-string/jumbo v4, "screen off - zoom is reset."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$1;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v3, v3, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v3, v2}, Lcom/android/server/accessibility/MagnificationController;->reset(Z)Z

    :cond_4f
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$1;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$1;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v3, v3, Lcom/android/server/accessibility/MagnificationGestureHandler;->mScreeningState:Lcom/android/server/accessibility/MagnificationGestureHandler$ScreeningState;

    # invokes: Lcom/android/server/accessibility/MagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V
    invoke-static {v2, v3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$100(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    :cond_58
    :goto_58
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    return-void
.end method
