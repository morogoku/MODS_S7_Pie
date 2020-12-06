.class Lcom/android/server/wm/Dimmer$DimState;
.super Ljava/lang/Object;
.source "Dimmer.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Dimmer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DimState"
.end annotation


# instance fields
.field isVisible:Z

.field mAnimateExit:Z

.field mDimLayer:Landroid/view/SurfaceControl;

.field mDimming:Z

.field mDontReset:Z

.field mFreeformDimLayerBounds:Landroid/graphics/Rect;

.field mIsFreeformDimLayer:Z

.field mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field final synthetic this$0:Lcom/android/server/wm/Dimmer;


# direct methods
.method constructor <init>(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl;)V
    .registers 8

    iput-object p1, p0, Lcom/android/server/wm/Dimmer$DimState;->this$0:Lcom/android/server/wm/Dimmer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mIsFreeformDimLayer:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mAnimateExit:Z

    iput-object p2, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    iput-boolean v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimming:Z

    new-instance v1, Lcom/android/server/wm/SurfaceAnimator;

    new-instance v2, Lcom/android/server/wm/Dimmer$DimAnimatable;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/android/server/wm/Dimmer$DimAnimatable;-><init>(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl;Lcom/android/server/wm/Dimmer$1;)V

    new-instance v3, Lcom/android/server/wm/-$$Lambda$Dimmer$DimState$jMIg4fVfhKsf8fm7mIcffBmkFt8;

    invoke-direct {v3, p0}, Lcom/android/server/wm/-$$Lambda$Dimmer$DimState$jMIg4fVfhKsf8fm7mIcffBmkFt8;-><init>(Lcom/android/server/wm/Dimmer$DimState;)V

    # getter for: Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;
    invoke-static {p1}, Lcom/android/server/wm/Dimmer;->access$000(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/wm/SurfaceAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimator$Animatable;Ljava/lang/Runnable;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, p0, Lcom/android/server/wm/Dimmer$DimState;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    # invokes: Lcom/android/server/wm/Dimmer;->isFreeformDimLayerTask()Z
    invoke-static {p1}, Lcom/android/server/wm/Dimmer;->access$200(Lcom/android/server/wm/Dimmer;)Z

    move-result v1

    if-eqz v1, :cond_2f

    iput-boolean v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mIsFreeformDimLayer:Z

    :cond_2f
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wm/Dimmer$DimState;)V
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimming:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    :cond_9
    return-void
.end method
