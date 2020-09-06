.class Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;
.super Ljava/lang/Object;
.source "RemoteWindowAnimationController.java"

# interfaces
.implements Lcom/android/server/wm/AnimationAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RemoteWindowAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RemoteWindowAnimationAdapterWrapper"
.end annotation


# instance fields
.field private mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field private mCapturedLeash:Landroid/view/SurfaceControl;

.field private mIsEntrance:Z

.field private mTarget:Lcom/samsung/android/view/RemoteWindowAnimationTarget;

.field private mWin:Lcom/android/server/wm/WindowState;

.field final synthetic this$0:Lcom/android/server/wm/RemoteWindowAnimationController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/RemoteWindowAnimationController;Lcom/android/server/wm/WindowState;Z)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteWindowAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->mWin:Lcom/android/server/wm/WindowState;

    iput-boolean p3, p0, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->mIsEntrance:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->mIsEntrance:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;)Lcom/samsung/android/view/RemoteWindowAnimationTarget;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->mTarget:Lcom/samsung/android/view/RemoteWindowAnimationTarget;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    return-object v0
.end method

.method private createRemoteWindowAnimationTarget(Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;)Lcom/samsung/android/view/RemoteWindowAnimationTarget;
    .registers 10

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->mCapturedLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_9

    goto :goto_1b

    :cond_9
    new-instance v0, Lcom/samsung/android/view/RemoteWindowAnimationTarget;

    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->mIsEntrance:Z

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/view/RemoteWindowAnimationTarget;-><init>(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;Z)V

    return-object v0

    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public getBackgroundColor()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDetachWallpaper()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDurationHint()J
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteWindowAnimationController;

    # getter for: Lcom/android/server/wm/RemoteWindowAnimationController;->mRemoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;
    invoke-static {v0}, Lcom/android/server/wm/RemoteWindowAnimationController;->access$1000(Lcom/android/server/wm/RemoteWindowAnimationController;)Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/view/RemoteWindowAnimationAdapter;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShowWallpaper()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getStatusBarTransitionsStartTime()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isRemoteAnimationAdapter()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteWindowAnimationController;

    # getter for: Lcom/android/server/wm/RemoteWindowAnimationController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/wm/RemoteWindowAnimationController;->access$700(Lcom/android/server/wm/RemoteWindowAnimationController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteWindowAnimationController;

    # getter for: Lcom/android/server/wm/RemoteWindowAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/wm/RemoteWindowAnimationController;->access$600(Lcom/android/server/wm/RemoteWindowAnimationController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteWindowAnimationController;

    # invokes: Lcom/android/server/wm/RemoteWindowAnimationController;->releaseFinishedCallback()V
    invoke-static {v0}, Lcom/android/server/wm/RemoteWindowAnimationController;->access$800(Lcom/android/server/wm/RemoteWindowAnimationController;)V

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteWindowAnimationController;

    # invokes: Lcom/android/server/wm/RemoteWindowAnimationController;->invokeAnimationCancelled()V
    invoke-static {v0}, Lcom/android/server/wm/RemoteWindowAnimationController;->access$900(Lcom/android/server/wm/RemoteWindowAnimationController;)V

    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .registers 7

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RemoteWindowAnimationController] startAnimation, caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p3, p0, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    iput-object p1, p0, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->mCapturedLeash:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->mCapturedLeash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->mWin:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->createRemoteWindowAnimationTarget(Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;)Lcom/samsung/android/view/RemoteWindowAnimationTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->mTarget:Lcom/samsung/android/view/RemoteWindowAnimationTarget;

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->mCapturedLeash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteWindowAnimationController;

    # getter for: Lcom/android/server/wm/RemoteWindowAnimationController;->mStartingPosition:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/android/server/wm/RemoteWindowAnimationController;->access$500(Lcom/android/server/wm/RemoteWindowAnimationController;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteWindowAnimationController;

    # getter for: Lcom/android/server/wm/RemoteWindowAnimationController;->mStartingPosition:Landroid/graphics/Point;
    invoke-static {v2}, Lcom/android/server/wm/RemoteWindowAnimationController;->access$500(Lcom/android/server/wm/RemoteWindowAnimationController;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 2

    return-void
.end method
