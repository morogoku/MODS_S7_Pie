.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field private final mCommonUse:Z

.field private mForceStop:Z

.field private final mFrequency:I

.field private final mMagnitude:I

.field private final mUid:I

.field private final mUsageHint:I

.field private final mVibration:Lcom/android/server/VibratorService$Vibration;

.field private final mWaveform:Landroid/os/VibrationEffect$Waveform;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    iget v0, p2, Lcom/android/server/VibratorService$Vibration;->uid:I

    iput v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    iget v0, p2, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    iput v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mUsageHint:I

    # getter for: Lcom/android/server/VibratorService$Vibration;->mMagnitude:I
    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->access$1900(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mMagnitude:I

    # getter for: Lcom/android/server/VibratorService$Vibration;->mFrequency:I
    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->access$1600(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mFrequency:I

    # getter for: Lcom/android/server/VibratorService$Vibration;->mCommonUse:Z
    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->access$2100(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mCommonUse:Z

    # getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$2300(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    iget v1, p2, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(I)V

    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$2400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$2300(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;Landroid/os/VibrationEffect$Waveform;IIII)V
    .registers 9

    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    iput-object p3, p0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    iput p4, p0, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    iput p5, p0, Lcom/android/server/VibratorService$VibrateThread;->mUsageHint:I

    iput p6, p0, Lcom/android/server/VibratorService$VibrateThread;->mMagnitude:I

    iput p7, p0, Lcom/android/server/VibratorService$VibrateThread;->mFrequency:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mCommonUse:Z

    # getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$2300(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/os/WorkSource;->set(I)V

    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$2400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$2300(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void
.end method

.method private delay(J)V
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    :cond_b
    :try_start_b
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_10

    :catch_f
    move-exception v4

    :goto_10
    iget-boolean v4, p0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-eqz v4, :cond_15

    goto :goto_1f

    :cond_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long p1, v2, v4

    cmp-long v4, p1, v0

    if-gtz v4, :cond_b

    :cond_1f
    :goto_1f
    return-void
.end method

.method private delayLocked(J)J
    .registers 14

    const-string v0, "delayLocked"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-wide v3, p1

    const-wide/16 v5, 0x0

    cmp-long v0, p1, v5

    if-lez v0, :cond_33

    :try_start_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_2e

    add-long/2addr v7, p1

    :cond_14
    :try_start_14
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_17} :catch_18
    .catchall {:try_start_14 .. :try_end_17} :catchall_2e

    goto :goto_19

    :catch_18
    move-exception v0

    :goto_19
    :try_start_19
    iget-boolean v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-eqz v0, :cond_1e

    goto :goto_28

    :cond_1e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_2e

    sub-long v3, v7, v9

    cmp-long v0, v3, v5

    if-gtz v0, :cond_14

    :goto_28
    sub-long v5, p1, v3

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v5

    :catchall_2e
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_33
    nop

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v5
.end method

.method private getTotalOnDuration([J[III)J
    .registers 11

    move v0, p3

    const-wide/16 v1, 0x0

    :cond_3
    aget v3, p2, v0

    if-eqz v3, :cond_1b

    add-int/lit8 v3, v0, 0x1

    aget-wide v4, p1, v0

    add-long/2addr v1, v4

    array-length v0, p1

    if-lt v3, v0, :cond_15

    if-ltz p4, :cond_13

    move v0, p4

    goto :goto_16

    :cond_13
    move v0, v3

    goto :goto_1b

    :cond_15
    move v0, v3

    :goto_16
    if-ne v0, p3, :cond_3

    const-wide/16 v3, 0x3e8

    return-wide v3

    :cond_1b
    :goto_1b
    return-wide v1
.end method

.method private playCommonPattern()V
    .registers 30

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_3
    iget-object v0, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mPattern:[J
    invoke-static {v0}, Lcom/android/server/VibratorService$Vibration;->access$1400(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v0

    array-length v2, v0

    iget-object v3, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mRepeat:I
    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->access$1500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    iget v8, v4, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    iget v9, v4, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    const/4 v4, 0x0

    const-wide/16 v13, 0x0

    move v6, v4

    move-wide v4, v13

    :goto_1d
    iget-boolean v7, v1, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-nez v7, :cond_c4

    if-ge v6, v2, :cond_29

    add-int/lit8 v7, v6, 0x1

    aget-wide v10, v0, v6

    add-long/2addr v4, v10

    move v6, v7

    :cond_29
    invoke-direct {v1, v4, v5}, Lcom/android/server/VibratorService$VibrateThread;->delay(J)V

    iget-boolean v7, v1, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-eqz v7, :cond_32

    goto/16 :goto_c4

    :cond_32
    if-ge v6, v2, :cond_bc

    add-int/lit8 v15, v6, 0x1

    aget-wide v6, v0, v6

    move-wide/from16 v25, v6

    cmp-long v4, v25, v13

    if-lez v4, :cond_b7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-wide/from16 v27, v4

    invoke-static {}, Landroid/view/accessibility/A11yRune;->VIB_MOTOR_BOOL_SUPPORT_CIRRUS_HAPTIC()Z

    move-result v4

    if-eqz v4, :cond_64

    iget-object v5, v1, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mMagnitude:I
    invoke-static {v4}, Lcom/android/server/VibratorService$Vibration;->access$1900(Lcom/android/server/VibratorService$Vibration;)I

    move-result v10

    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mCommonType:I
    invoke-static {v4}, Lcom/android/server/VibratorService$Vibration;->access$1700(Lcom/android/server/VibratorService$Vibration;)I

    move-result v11

    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mRepeat:I
    invoke-static {v4}, Lcom/android/server/VibratorService$Vibration;->access$1500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v12

    move-wide/from16 v6, v25

    # invokes: Lcom/android/server/VibratorService;->doVibratorOnByIndex(JIIIII)V
    invoke-static/range {v5 .. v12}, Lcom/android/server/VibratorService;->access$2900(Lcom/android/server/VibratorService;JIIIII)V

    goto :goto_ab

    :cond_64
    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mEngineData:[I
    invoke-static {v4}, Lcom/android/server/VibratorService$Vibration;->access$1800(Lcom/android/server/VibratorService$Vibration;)[I

    move-result-object v4

    if-nez v4, :cond_86

    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v5, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mMagnitude:I
    invoke-static {v5}, Lcom/android/server/VibratorService$Vibration;->access$1900(Lcom/android/server/VibratorService$Vibration;)I

    move-result v21

    iget-object v5, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mFrequency:I
    invoke-static {v5}, Lcom/android/server/VibratorService$Vibration;->access$1600(Lcom/android/server/VibratorService$Vibration;)I

    move-result v22

    move-object/from16 v16, v4

    move-wide/from16 v17, v25

    move/from16 v19, v8

    move/from16 v20, v9

    # invokes: Lcom/android/server/VibratorService;->doVibratorOn(JIIII)V
    invoke-static/range {v16 .. v22}, Lcom/android/server/VibratorService;->access$3000(Lcom/android/server/VibratorService;JIIII)V

    goto :goto_ab

    :cond_86
    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v5, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mEngineData:[I
    invoke-static {v5}, Lcom/android/server/VibratorService$Vibration;->access$1800(Lcom/android/server/VibratorService$Vibration;)[I

    move-result-object v21

    iget-object v5, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mMagnitude:I
    invoke-static {v5}, Lcom/android/server/VibratorService$Vibration;->access$1900(Lcom/android/server/VibratorService$Vibration;)I

    move-result v22

    iget-object v5, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mCommonType:I
    invoke-static {v5}, Lcom/android/server/VibratorService$Vibration;->access$1700(Lcom/android/server/VibratorService$Vibration;)I

    move-result v23

    iget-object v5, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mRepeat:I
    invoke-static {v5}, Lcom/android/server/VibratorService$Vibration;->access$1500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v24

    move-object/from16 v16, v4

    move-wide/from16 v17, v25

    move/from16 v19, v8

    move/from16 v20, v9

    # invokes: Lcom/android/server/VibratorService;->doVibratorOn(JII[IIII)V
    invoke-static/range {v16 .. v24}, Lcom/android/server/VibratorService;->access$3100(Lcom/android/server/VibratorService;JII[IIII)V

    :goto_ab
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v27

    sub-long v6, v25, v4

    move-wide v4, v6

    move v6, v15

    goto/16 :goto_1d

    :cond_b7
    move v6, v15

    move-wide/from16 v4, v25

    goto/16 :goto_1d

    :cond_bc
    if-gez v3, :cond_bf

    goto :goto_c4

    :cond_bf
    move v6, v3

    const-wide/16 v4, 0x0

    goto/16 :goto_1d

    :cond_c4
    :goto_c4
    monitor-exit p0

    return-void

    :catchall_c6
    move-exception v0

    monitor-exit p0
    :try_end_c8
    .catchall {:try_start_3 .. :try_end_c8} :catchall_c6

    throw v0
.end method


# virtual methods
.method public cancel()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$2500(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$2500(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public playWaveform()V
    .registers 24

    move-object/from16 v1, p0

    const-string/jumbo v0, "playWaveform"

    const-wide/32 v2, 0x800000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_b
    monitor-enter p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_87

    :try_start_c
    iget-object v0, v1, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Waveform;->getTimings()[J

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v4}, Landroid/os/VibrationEffect$Waveform;->getAmplitudes()[I

    move-result-object v4

    array-length v5, v0

    iget-object v6, v1, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v6}, Landroid/os/VibrationEffect$Waveform;->getRepeatIndex()I

    move-result v6

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-wide v10, v8

    :goto_23
    iget-boolean v12, v1, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-nez v12, :cond_7b

    if-ge v7, v5, :cond_71

    aget v12, v4, v7

    add-int/lit8 v21, v7, 0x1

    aget-wide v13, v0, v7

    cmp-long v7, v13, v8

    if-gtz v7, :cond_37

    nop

    move/from16 v7, v21

    goto :goto_23

    :cond_37
    if-eqz v12, :cond_64

    cmp-long v7, v10, v8

    if-gtz v7, :cond_5d

    add-int/lit8 v7, v21, -0x1

    invoke-direct {v1, v0, v4, v7, v6}, Lcom/android/server/VibratorService$VibrateThread;->getTotalOnDuration([J[III)J

    move-result-wide v15

    move-wide v8, v13

    move-wide v14, v15

    iget-object v13, v1, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget v7, v1, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    iget v10, v1, Lcom/android/server/VibratorService$VibrateThread;->mUsageHint:I

    iget v11, v1, Lcom/android/server/VibratorService$VibrateThread;->mMagnitude:I

    iget v2, v1, Lcom/android/server/VibratorService$VibrateThread;->mFrequency:I

    move/from16 v16, v12

    move/from16 v17, v7

    move/from16 v18, v10

    move/from16 v19, v11

    move/from16 v20, v2

    # invokes: Lcom/android/server/VibratorService;->doVibratorOn(JIIIII)V
    invoke-static/range {v13 .. v20}, Lcom/android/server/VibratorService;->access$2700(Lcom/android/server/VibratorService;JIIIII)V

    goto :goto_66

    :cond_5d
    move-wide v8, v13

    iget-object v2, v1, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V
    invoke-static {v2, v12}, Lcom/android/server/VibratorService;->access$2800(Lcom/android/server/VibratorService;I)V

    goto :goto_65

    :cond_64
    move-wide v8, v13

    :goto_65
    move-wide v14, v10

    :goto_66
    invoke-direct {v1, v8, v9}, Lcom/android/server/VibratorService$VibrateThread;->delayLocked(J)J

    move-result-wide v2

    if-eqz v12, :cond_6d

    sub-long/2addr v14, v2

    :cond_6d
    move-wide v10, v14

    move/from16 v7, v21

    goto :goto_75

    :cond_71
    if-gez v6, :cond_74

    goto :goto_7b

    :cond_74
    move v7, v6

    :goto_75
    const-wide/32 v2, 0x800000

    const-wide/16 v8, 0x0

    goto :goto_23

    :cond_7b
    :goto_7b
    monitor-exit p0
    :try_end_7c
    .catchall {:try_start_c .. :try_end_7c} :catchall_84

    const-wide/32 v2, 0x800000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_84
    move-exception v0

    :try_start_85
    monitor-exit p0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    :try_start_86
    throw v0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_87

    :catchall_87
    move-exception v0

    const-wide/32 v2, 0x800000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public run()V
    .registers 4

    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$2400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_5d

    :try_start_e
    iget-boolean v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mCommonUse:Z

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/android/server/VibratorService$VibrateThread;->playCommonPattern()V

    goto :goto_19

    :cond_16
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibrateThread;->playWaveform()V
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_52

    :goto_19
    :try_start_19
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$2400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    nop

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_5d

    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$200(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0

    :try_start_2b
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2500(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v1

    if-ne v1, p0, :cond_39

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;
    invoke-static {v1, v2}, Lcom/android/server/VibratorService;->access$2502(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$VibrateThread;)Lcom/android/server/VibratorService$VibrateThread;

    :cond_39
    iget-boolean v1, p0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-nez v1, :cond_4d

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # invokes: Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    invoke-static {v1, v2}, Lcom/android/server/VibratorService;->access$2600(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    :cond_48
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->startNextVibrationLocked()V
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$600(Lcom/android/server/VibratorService;)V

    :cond_4d
    monitor-exit v0

    return-void

    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_2b .. :try_end_51} :catchall_4f

    throw v1

    :catchall_52
    move-exception v0

    :try_start_53
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0

    :catchall_5d
    move-exception v0

    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_53 .. :try_end_5f} :catchall_5d

    throw v0
.end method
