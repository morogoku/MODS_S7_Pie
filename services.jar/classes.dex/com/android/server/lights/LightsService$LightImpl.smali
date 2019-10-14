.class final Lcom/android/server/lights/LightsService$LightImpl;
.super Lcom/android/server/lights/Light;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LightImpl"
.end annotation


# instance fields
.field private mBrightnessMode:I

.field private mColor:I

.field private mFlashing:Z

.field private mId:I

.field private mInitialized:Z

.field private final mIsIDUsingPatternLED:Z

.field private mLastBrightnessMode:I

.field private mLastColor:I

.field private mMode:I

.field private mOffMS:I

.field private mOnMS:I

.field private mUseLowPersistenceForVR:Z

.field private mVrModeEnabled:Z

.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/lights/LightsService;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Lcom/android/server/lights/Light;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    # getter for: Lcom/android/server/lights/LightsService;->mUsePatternLED:Z
    invoke-static {p1}, Lcom/android/server/lights/LightsService;->access$000(Lcom/android/server/lights/LightsService;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1a

    iget p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1c

    :cond_1a
    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIsIDUsingPatternLED:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/LightsService;ILcom/android/server/lights/LightsService$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/lights/LightsService$LightImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->stopFlashing()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/lights/LightsService$LightImpl;IIIII)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/lights/LightsService$LightImpl;IIIII)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/lights/LightsService$LightImpl;->setLedsControlInternal(IIIII)V

    return-void
.end method

.method private setLedsControlInternal(IIIII)V
    .registers 15

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-ne p1, v0, :cond_23

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    if-ne p2, v0, :cond_23

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    if-ne p3, v0, :cond_23

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    if-ne p4, v0, :cond_23

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    if-ne v0, p5, :cond_23

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mForceUpdate:Z
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$2500(Lcom/android/server/lights/LightsService;)Z

    move-result v0

    if-nez v0, :cond_23

    if-lt p5, v1, :cond_a8

    :cond_23
    iput-boolean v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mInitialized:Z

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastColor:I

    iput p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    iput p3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    iput p4, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    iput p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLed("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_5e
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    if-eqz v0, :cond_9a

    const-string v0, "LightsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MHS] [setLedsControlInternal] mId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", color:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", onMS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", offMS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9a
    iget v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v3 .. v8}, Lcom/android/server/lights/LightsService;->setLight_native(IIIIII)V
    :try_end_a4
    .catchall {:try_start_5e .. :try_end_a4} :catchall_a9

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    :cond_a8
    return-void

    :catchall_a9
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private setLightLocked(IIIII)V
    .registers 14

    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->shouldBeInLowPersistenceMode()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p5, 0x2

    goto :goto_d

    :cond_8
    const/4 v0, 0x2

    if-ne p5, v0, :cond_d

    iget p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastBrightnessMode:I

    :cond_d
    :goto_d
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mInitialized:Z

    if-eqz v0, :cond_2f

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-ne p1, v0, :cond_2f

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    if-ne p2, v0, :cond_2f

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    if-ne p3, v0, :cond_2f

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    if-ne p4, v0, :cond_2f

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    if-ne v0, p5, :cond_2f

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$2400(Lcom/android/server/lights/LightsService;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_bb

    :cond_2f
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z
    invoke-static {v0, v1}, Lcom/android/server/lights/LightsService;->access$2402(Lcom/android/server/lights/LightsService;Z)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mInitialized:Z

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastColor:I

    iput p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    iput p3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    iput p4, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    iput p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLight("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v6, 0x20000

    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_71
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    if-eqz v0, :cond_ad

    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED] [setLightLocked] mId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", color:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", onMS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", offMS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ad
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/lights/LightsService;->setLight_native(IIIIII)V
    :try_end_b7
    .catchall {:try_start_71 .. :try_end_b7} :catchall_bc

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    nop

    :goto_bb
    return-void

    :catchall_bc
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private shouldBeInLowPersistenceMode()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mVrModeEnabled:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mUseLowPersistenceForVR:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private stopFlashing()V
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED] stopFlashing! id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/lights/LightsService;->SUPPORT_LED_INDICATOR:Z

    if-nez v0, :cond_30

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_27

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_30

    :cond_27
    const-string v0, "LightsService"

    const-string v1, "[api] [SvcLED] LED indicator : Not supported."

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_30
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIsIDUsingPatternLED:Z

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$400(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object v0

    monitor-enter v0
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_75

    :try_start_3b
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # invokes: Lcom/android/server/lights/LightsService;->acquireWakeLockForLED()V
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$500(Lcom/android/server/lights/LightsService;)V

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    # invokes: Lcom/android/server/lights/LightsService;->clearSvcLedStateLocked(I)V
    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->access$2100(Lcom/android/server/lights/LightsService;I)V

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$800(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$800(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$800(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v0

    goto :goto_73

    :catchall_66
    move-exception v1

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_3b .. :try_end_68} :catchall_66

    :try_start_68
    throw v1

    :cond_69
    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    :goto_73
    monitor-exit p0

    return-void

    :catchall_75
    move-exception v0

    monitor-exit p0
    :try_end_77
    .catchall {:try_start_68 .. :try_end_77} :catchall_75

    throw v0
.end method


# virtual methods
.method public pulse()V
    .registers 3

    const v0, 0xffffff

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService$LightImpl;->pulse(II)V

    return-void
.end method

.method public pulse(II)V
    .registers 10

    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] pulse :: id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " color = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onMS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    # invokes: Lcom/android/server/lights/LightsService;->callerInfoToString()Ljava/lang/String;
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/lights/LightsService;->SUPPORT_LED_INDICATOR:Z

    if-nez v0, :cond_49

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_41

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_49

    :cond_41
    const-string v0, "LightsService"

    const-string v1, "[api] [SvcLED] LED indicator : Not supported."

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_49
    monitor-enter p0

    :try_start_4a
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIsIDUsingPatternLED:Z

    if-eqz v0, :cond_67

    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED] pulse::Not Support. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    :cond_67
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-nez v0, :cond_91

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mFlashing:Z

    if-nez v0, :cond_91

    const/4 v3, 0x2

    const/16 v5, 0x3e8

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$2000(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$2000(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_91
    :goto_91
    monitor-exit p0

    return-void

    :catchall_93
    move-exception v0

    monitor-exit p0
    :try_end_95
    .catchall {:try_start_4a .. :try_end_95} :catchall_93

    throw v0
.end method

.method public setBrightness(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/lights/LightsService$LightImpl;->setBrightness(II)V

    return-void
.end method

.method public setBrightness(II)V
    .registers 11

    monitor-enter p0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2d

    :try_start_4
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBrightness with LOW_PERSISTENCE unexpected #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": brightness=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_2b
    move-exception v0

    goto :goto_58

    :cond_2d
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    if-eqz v0, :cond_4d

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_38

    goto :goto_4d

    :cond_38
    and-int/lit16 v0, p1, 0xff

    const/high16 v1, -0x1000000

    shl-int/lit8 v2, v0, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v3, v0

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    goto :goto_56

    :cond_4d
    :goto_4d
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    :goto_56
    monitor-exit p0

    return-void

    :goto_58
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_4 .. :try_end_59} :catchall_2b

    throw v0
.end method

.method public setColor(I)V
    .registers 10

    sget-boolean v0, Lcom/android/server/lights/LightsService;->SUPPORT_LED_INDICATOR:Z

    if-nez v0, :cond_16

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_16

    :cond_e
    const-string v0, "LightsService"

    const-string v1, "[api] [SvcLED] LED indicator : Not supported."

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    monitor-enter p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    :try_start_1d
    invoke-direct/range {v2 .. v7}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    monitor-exit p0

    return-void

    :catchall_22
    move-exception v0

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_22

    throw v0
.end method

.method public setFlashing(IIII)V
    .registers 14

    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] [SvcLED] setFlashing :: id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/LightsService;->translateID(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), color = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, -0x1

    if-ne p2, v2, :cond_38

    const-string v2, "Off"

    goto :goto_57

    :cond_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {v3, p2}, Lcom/android/server/lights/LightsService;->translateMode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", onMS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", offMS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # invokes: Lcom/android/server/lights/LightsService;->callerInfoToString()Ljava/lang/String;
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/lights/LightsService;->SUPPORT_LED_INDICATOR:Z

    if-nez v0, :cond_93

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8b

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_93

    :cond_8b
    const-string v0, "LightsService"

    const-string v1, "[api] [SvcLED] LED indicator : Not supported."

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_93
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mCoverType:I
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$200(Lcom/android/server/lights/LightsService;)I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_ad

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mCoverOpened:Z
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$300(Lcom/android/server/lights/LightsService;)Z

    move-result v0

    if-nez v0, :cond_ad

    const-string v0, "LightsService"

    const-string v1, "[api] [SvcLED] S Cover is closed so don\'t need LED On"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_ad
    monitor-enter p0

    :try_start_ae
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIsIDUsingPatternLED:Z

    if-eqz v0, :cond_f8

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$400(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object v0

    monitor-enter v0
    :try_end_b9
    .catchall {:try_start_ae .. :try_end_b9} :catchall_10a

    :try_start_b9
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # invokes: Lcom/android/server/lights/LightsService;->acquireWakeLockForLED()V
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$500(Lcom/android/server/lights/LightsService;)V

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v8, 0x1

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    # invokes: Lcom/android/server/lights/LightsService;->setSvcLedStateLocked(IIIIIZ)V
    invoke-static/range {v2 .. v8}, Lcom/android/server/lights/LightsService;->access$600(Lcom/android/server/lights/LightsService;IIIIIZ)V

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/lights/LightsService;->enableSvcLEDLightSensorLocked(Z)V
    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->access$700(Lcom/android/server/lights/LightsService;Z)V

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$800(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$800(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$800(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I
    invoke-static {v3}, Lcom/android/server/lights/LightsService;->access$900(Lcom/android/server/lights/LightsService;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v0

    goto :goto_108

    :catchall_f5
    move-exception v1

    monitor-exit v0
    :try_end_f7
    .catchall {:try_start_b9 .. :try_end_f7} :catchall_f5

    :try_start_f7
    throw v1

    :cond_f8
    const-string v0, "LightsService"

    const-string v1, "[SvcLED] not mIsIDUsingPatternLED"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    :goto_108
    monitor-exit p0

    return-void

    :catchall_10a
    move-exception v0

    monitor-exit p0
    :try_end_10c
    .catchall {:try_start_f7 .. :try_end_10c} :catchall_10a

    throw v0
.end method

.method public setLedsControl(IIIII)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLedsControl(IIIIII)V

    return-void
.end method

.method public setLedsControl(IIIIII)V
    .registers 16

    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] [MHS] setLedsControl ::  id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/LightsService;->translateID(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), color = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, -0x1

    if-ne p2, v2, :cond_38

    const-string v2, "Off"

    goto :goto_57

    :cond_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {v3, p2}, Lcom/android/server/lights/LightsService;->translateMode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", onMS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", offMS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # invokes: Lcom/android/server/lights/LightsService;->callerInfoToString()Ljava/lang/String;
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ge p5, v0, :cond_1a3

    if-gez p5, :cond_8c

    goto/16 :goto_1a3

    :cond_8c
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$1000(Lcom/android/server/lights/LightsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_93
    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    packed-switch v1, :pswitch_data_1ba

    const-string v1, "LightsService"

    goto/16 :goto_188

    :pswitch_9c
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSavedAllLedData:[Lcom/android/server/lights/LightsService$SavedLedData;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$1500(Lcom/android/server/lights/LightsService;)[Lcom/android/server/lights/LightsService$SavedLedData;

    move-result-object v1

    aget-object v2, v1, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/lights/LightsService$SavedLedData;->update(IIIII)V

    goto :goto_f1

    :pswitch_ad
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSavedBatteryData:[Lcom/android/server/lights/LightsService$SavedLedData;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$1400(Lcom/android/server/lights/LightsService;)[Lcom/android/server/lights/LightsService$SavedLedData;

    move-result-object v1

    aget-object v2, v1, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/lights/LightsService$SavedLedData;->update(IIIII)V

    goto :goto_f1

    :pswitch_be
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSavedWifiData:[Lcom/android/server/lights/LightsService$SavedLedData;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$1300(Lcom/android/server/lights/LightsService;)[Lcom/android/server/lights/LightsService$SavedLedData;

    move-result-object v1

    aget-object v2, v1, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/lights/LightsService$SavedLedData;->update(IIIII)V

    goto :goto_f1

    :pswitch_cf
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSavedGigaLteData:[Lcom/android/server/lights/LightsService$SavedLedData;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$1200(Lcom/android/server/lights/LightsService;)[Lcom/android/server/lights/LightsService$SavedLedData;

    move-result-object v1

    aget-object v2, v1, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/lights/LightsService$SavedLedData;->update(IIIII)V

    goto :goto_f1

    :pswitch_e0
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSavedLteData:[Lcom/android/server/lights/LightsService$SavedLedData;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$1100(Lcom/android/server/lights/LightsService;)[Lcom/android/server/lights/LightsService$SavedLedData;

    move-result-object v1

    aget-object v2, v1, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/lights/LightsService$SavedLedData;->update(IIIII)V

    nop

    :goto_f1
    monitor-exit v0
    :try_end_f2
    .catchall {:try_start_93 .. :try_end_f2} :catchall_1a0

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mFTAMode:Z
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$1600(Lcom/android/server/lights/LightsService;)Z

    move-result v0

    if-nez v0, :cond_14f

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mFOTAMode:Z
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$1700(Lcom/android/server/lights/LightsService;)Z

    move-result v0

    if-nez v0, :cond_14f

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mCriticalMode:Z
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$1800(Lcom/android/server/lights/LightsService;)Z

    move-result v0

    const/16 v1, 0xd

    if-eqz v0, :cond_111

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    if-eq v0, v1, :cond_111

    goto :goto_14f

    :cond_111
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$1000(Lcom/android/server/lights/LightsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_118
    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    if-ne v2, v1, :cond_144

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v2, v2, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    aget-object v3, v2, v1

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p6

    invoke-direct/range {v3 .. v8}, Lcom/android/server/lights/LightsService$LightImpl;->setLedsControlInternal(IIIII)V

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mCriticalMode:Z
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$1800(Lcom/android/server/lights/LightsService;)Z

    move-result v1

    if-nez v1, :cond_14a

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSavedAllLedData:[Lcom/android/server/lights/LightsService$SavedLedData;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$1500(Lcom/android/server/lights/LightsService;)[Lcom/android/server/lights/LightsService$SavedLedData;

    move-result-object v1

    aget-object v1, v1, p5

    invoke-virtual {v1}, Lcom/android/server/lights/LightsService$SavedLedData;->initData()V

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/lights/LightsService;->clUpdateAllLedsLocked(Z)V
    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->access$1900(Lcom/android/server/lights/LightsService;Z)V

    goto :goto_14a

    :cond_144
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/lights/LightsService;->clUpdateAllLedsLocked(Z)V
    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->access$1900(Lcom/android/server/lights/LightsService;Z)V

    :cond_14a
    :goto_14a
    monitor-exit v0

    return-void

    :catchall_14c
    move-exception v1

    monitor-exit v0
    :try_end_14e
    .catchall {:try_start_118 .. :try_end_14e} :catchall_14c

    throw v1

    :cond_14f
    :goto_14f
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] [MHS] setLedsControl is blocked by mFTAMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mFTAMode:Z
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$1600(Lcom/android/server/lights/LightsService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mFOTAMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mFOTAMode:Z
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$1700(Lcom/android/server/lights/LightsService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mCriticalMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mCriticalMode:Z
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$1800(Lcom/android/server/lights/LightsService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_188
    :try_start_188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] [SvcLED] can not supprot mId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_1a0
    move-exception v1

    monitor-exit v0
    :try_end_1a2
    .catchall {:try_start_188 .. :try_end_1a2} :catchall_1a0

    throw v1

    :cond_1a3
    :goto_1a3
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] [MHS] priority Out of boundary!  :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_1ba
    .packed-switch 0x9
        :pswitch_e0
        :pswitch_cf
        :pswitch_be
        :pswitch_ad
        :pswitch_9c
    .end packed-switch
.end method

.method public setVrMode(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mVrModeEnabled:Z

    if-eq v0, p1, :cond_1e

    iput-boolean p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mVrModeEnabled:Z

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # invokes: Lcom/android/server/lights/LightsService;->getVrDisplayMode()I
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$2300(Lcom/android/server/lights/LightsService;)I

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mUseLowPersistenceForVR:Z

    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->shouldBeInLowPersistenceMode()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastBrightnessMode:I

    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public turnOff()V
    .registers 8

    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] [SvcLED] turnOff:: id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    # invokes: Lcom/android/server/lights/LightsService;->callerInfoToString()Ljava/lang/String;
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/lights/LightsService;->SUPPORT_LED_INDICATOR:Z

    if-nez v0, :cond_35

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2d

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_35

    :cond_2d
    const-string v0, "LightsService"

    const-string v1, "[api] [SvcLED] LED indicator : Not supported."

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_35
    monitor-enter p0

    :try_start_36
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIsIDUsingPatternLED:Z

    if-eqz v0, :cond_9e

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$400(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object v0

    monitor-enter v0
    :try_end_41
    .catchall {:try_start_36 .. :try_end_41} :catchall_a9

    :try_start_41
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # invokes: Lcom/android/server/lights/LightsService;->acquireWakeLockForLED()V
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$500(Lcom/android/server/lights/LightsService;)V

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    # invokes: Lcom/android/server/lights/LightsService;->clearSvcLedStateLocked(I)V
    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->access$2100(Lcom/android/server/lights/LightsService;I)V

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLedState:I
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$2200()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7d

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # invokes: Lcom/android/server/lights/LightsService;->enableSvcLEDLightSensorLocked(Z)V
    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->access$700(Lcom/android/server/lights/LightsService;Z)V

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$800(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$800(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$800(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I
    invoke-static {v3}, Lcom/android/server/lights/LightsService;->access$900(Lcom/android/server/lights/LightsService;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_99

    :cond_7d
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$800(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$800(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$800(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_99
    monitor-exit v0

    goto :goto_a7

    :catchall_9b
    move-exception v1

    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_41 .. :try_end_9d} :catchall_9b

    :try_start_9d
    throw v1

    :cond_9e
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    :goto_a7
    monitor-exit p0

    return-void

    :catchall_a9
    move-exception v0

    monitor-exit p0
    :try_end_ab
    .catchall {:try_start_9d .. :try_end_ab} :catchall_a9

    throw v0
.end method
