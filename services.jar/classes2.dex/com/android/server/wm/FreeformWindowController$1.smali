.class Lcom/android/server/wm/FreeformWindowController$1;
.super Ljava/lang/Object;
.source "FreeformWindowController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/FreeformWindowController;->loadMinimizeAnimationLocked(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/FreeformWindowController;

.field final synthetic val$displayId:I

.field final synthetic val$sourceFrame:Landroid/graphics/Rect;

.field final synthetic val$task:Lcom/android/server/wm/Task;


# direct methods
.method constructor <init>(Lcom/android/server/wm/FreeformWindowController;Lcom/android/server/wm/Task;ILandroid/graphics/Rect;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/wm/FreeformWindowController$1;->this$0:Lcom/android/server/wm/FreeformWindowController;

    iput-object p2, p0, Lcom/android/server/wm/FreeformWindowController$1;->val$task:Lcom/android/server/wm/Task;

    iput p3, p0, Lcom/android/server/wm/FreeformWindowController$1;->val$displayId:I

    iput-object p4, p0, Lcom/android/server/wm/FreeformWindowController$1;->val$sourceFrame:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/FreeformWindowController$1;->this$0:Lcom/android/server/wm/FreeformWindowController;

    # getter for: Lcom/android/server/wm/FreeformWindowController;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;
    invoke-static {v0}, Lcom/android/server/wm/FreeformWindowController;->access$000(Lcom/android/server/wm/FreeformWindowController;)Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/FreeformWindowController$1;->val$task:Lcom/android/server/wm/Task;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    iget v2, p0, Lcom/android/server/wm/FreeformWindowController$1;->val$displayId:I

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/wm/FreeformWindowController$1;->val$sourceFrame:Landroid/graphics/Rect;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->notifyFreefromWindowAnimationEnd(IIILandroid/graphics/Rect;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_17
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
