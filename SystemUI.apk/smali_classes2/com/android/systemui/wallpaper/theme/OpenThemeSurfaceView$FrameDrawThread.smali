.class Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;
.super Ljava/lang/Thread;
.source "OpenThemeSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FrameDrawThread"
.end annotation


# instance fields
.field public isRunning:Z

.field public isSuspended:Z

.field private mCount:I

.field private mHolder:Landroid/view/SurfaceHolder;

.field public mMinInterval:I

.field private mTick:I

.field final synthetic this$0:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;Landroid/view/SurfaceHolder;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->this$0:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mCount:I

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    const/16 v0, 0x22

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mMinInterval:I

    iput-object p2, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isRunning:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized resumeThread()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isSuspended:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 13

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isRunning:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    monitor-enter p0

    :goto_1
    const/4 v5, 0x0

    :try_start_0
    iget-boolean v6, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isSuspended:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    if-lez v6, :cond_0

    iput v5, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v6

    move-object v2, v6

    if-eqz v2, :cond_1

    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->this$0:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;

    invoke-virtual {v6, v2}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->drawFrame(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v2, :cond_3

    :try_start_1
    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    :goto_2
    invoke-interface {v6, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_3

    :catchall_0
    move-exception v5

    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_2
    throw v5

    :catch_0
    move-exception v6

    if-eqz v2, :cond_3

    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    goto :goto_2

    :catchall_1
    move-exception v5

    goto/16 :goto_5

    :cond_3
    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget v6, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    iget v6, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mCount:I

    iget v6, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mCount:I

    const/16 v7, 0x3c

    if-ne v6, v7, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide v8, 0x42374876e8000000L    # 1.0E11

    sub-long v10, v6, v0

    long-to-double v10, v10

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-double v8, v8

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    iget-object v10, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->this$0:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;

    invoke-static {v10}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->access$000(Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fps: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v6

    iput v5, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mCount:I

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v7, v5, v3

    :try_start_2
    iget v9, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mMinInterval:I

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_6

    iget v7, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mMinInterval:I

    int-to-long v7, v7

    add-long/2addr v7, v3

    sub-long/2addr v7, v5

    const-wide/16 v9, 0x96

    cmp-long v7, v7, v9

    if-lez v7, :cond_5

    const-wide/16 v7, 0x64

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_4

    :cond_5
    iget v7, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mMinInterval:I

    int-to-long v7, v7

    add-long/2addr v7, v3

    sub-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_6
    :goto_4
    goto/16 :goto_0

    :goto_5
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    :cond_7
    return-void
.end method

.method public suspendThread()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isSuspended:Z

    return-void
.end method
