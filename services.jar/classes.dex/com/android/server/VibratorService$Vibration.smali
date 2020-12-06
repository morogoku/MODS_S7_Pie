.class Lcom/android/server/VibratorService$Vibration;
.super Ljava/lang/Object;
.source "VibratorService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Vibration"
.end annotation


# instance fields
.field public effect:Landroid/os/VibrationEffect;

.field private mCommonType:I

.field private mCommonUse:Z

.field private mEngineData:[I

.field private mFrequency:I

.field private mMagnitude:I

.field private mMagnitudeType:Ljava/lang/String;

.field private mPattern:[J

.field private mRepeat:I

.field private mTimeout:J

.field public final opPkg:Ljava/lang/String;

.field public originalEffect:Landroid/os/VibrationEffect;

.field public final startTime:J

.field public final startTimeDebug:J

.field final synthetic this$0:Lcom/android/server/VibratorService;

.field public final token:Landroid/os/IBinder;

.field public final uid:I

.field public final usageHint:I


# direct methods
.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;)V
    .registers 9

    iput-object p1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/VibratorService$Vibration;->mCommonUse:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mPattern:[J

    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    iput-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mEngineData:[I

    iput p1, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    iput p1, p0, Lcom/android/server/VibratorService$Vibration;->mFrequency:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/VibratorService$Vibration;->mCommonType:I

    sget-object p1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_EXTRA:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {p1}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitudeType:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->startTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->startTimeDebug:J

    iput p4, p0, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    iput p5, p0, Lcom/android/server/VibratorService$Vibration;->uid:I

    iput-object p6, p0, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;I)V
    .registers 11

    iput-object p1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/VibratorService$Vibration;->mCommonUse:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/VibratorService$Vibration;->mPattern:[J

    const/4 v2, -0x2

    iput v2, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    iput-object v1, p0, Lcom/android/server/VibratorService$Vibration;->mEngineData:[I

    iput v0, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    iput v0, p0, Lcom/android/server/VibratorService$Vibration;->mFrequency:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/VibratorService$Vibration;->mCommonType:I

    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_EXTRA:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v1}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitudeType:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/VibratorService$Vibration;->startTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/VibratorService$Vibration;->startTimeDebug:J

    iput p4, p0, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    iput p5, p0, Lcom/android/server/VibratorService$Vibration;->uid:I

    iput-object p6, p0, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    iput p7, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    invoke-virtual {p0}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v1

    if-eqz v1, :cond_46

    sget-object v1, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_CALL:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-virtual {p3, v1}, Landroid/os/VibrationEffect;->semSetMagnitudeType(Landroid/os/VibrationEffect$SemMagnitudeType;)V

    :cond_46
    invoke-virtual {p3}, Landroid/os/VibrationEffect;->semGetMagnitudeType()Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/VibrationEffect$SemMagnitudeType;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitudeType:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/os/VibrationEffect;->semGetMagnitude()I

    move-result v1

    iput v1, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    iget v1, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    if-ne v1, v0, :cond_62

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitudeType:Ljava/lang/String;

    # invokes: Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {p1, v0, p6}, Lcom/android/server/VibratorService;->access$100(Lcom/android/server/VibratorService;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    :cond_62
    return-void
.end method

.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;IILjava/lang/String;)V
    .registers 12

    iput-object p1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/VibratorService$Vibration;->mCommonUse:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mPattern:[J

    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    iput-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mEngineData:[I

    iput p1, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    iput p1, p0, Lcom/android/server/VibratorService$Vibration;->mFrequency:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/VibratorService$Vibration;->mCommonType:I

    sget-object p1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_EXTRA:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {p1}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitudeType:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->startTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->startTimeDebug:J

    iput p4, p0, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    iput p5, p0, Lcom/android/server/VibratorService$Vibration;->uid:I

    iput-object p6, p0, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    iput p7, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    iput p8, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    iput-object p9, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitudeType:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;ILcom/android/server/VibratorService$1;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;J[JIIIILjava/lang/String;[I)V
    .registers 31

    move-object v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/VibratorService$Vibration;->mCommonUse:Z

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/VibratorService$Vibration;->mPattern:[J

    const/4 v3, -0x2

    iput v3, v0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    iput-object v2, v0, Lcom/android/server/VibratorService$Vibration;->mEngineData:[I

    iput v1, v0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    iput v1, v0, Lcom/android/server/VibratorService$Vibration;->mFrequency:I

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/VibratorService$Vibration;->mCommonType:I

    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_EXTRA:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v1}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/VibratorService$Vibration;->mMagnitudeType:Ljava/lang/String;

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    move-object/from16 v2, p3

    iput-object v2, v0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/VibratorService$Vibration;->startTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/VibratorService$Vibration;->startTimeDebug:J

    move/from16 v3, p4

    iput v3, v0, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    move/from16 v4, p5

    iput v4, v0, Lcom/android/server/VibratorService$Vibration;->uid:I

    move-object/from16 v5, p6

    iput-object v5, v0, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/android/server/VibratorService$Vibration;->mCommonUse:Z

    move-wide/from16 v6, p7

    iput-wide v6, v0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    move-object/from16 v8, p9

    iput-object v8, v0, Lcom/android/server/VibratorService$Vibration;->mPattern:[J

    move/from16 v9, p10

    iput v9, v0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    move/from16 v10, p11

    iput v10, v0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    move/from16 v11, p12

    iput v11, v0, Lcom/android/server/VibratorService$Vibration;->mFrequency:I

    move/from16 v12, p13

    iput v12, v0, Lcom/android/server/VibratorService$Vibration;->mCommonType:I

    move-object/from16 v13, p14

    iput-object v13, v0, Lcom/android/server/VibratorService$Vibration;->mMagnitudeType:Ljava/lang/String;

    move-object/from16 v14, p15

    iput-object v14, v0, Lcom/android/server/VibratorService$Vibration;->mEngineData:[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;J[JIIIILjava/lang/String;[ILcom/android/server/VibratorService$1;)V
    .registers 17

    invoke-direct/range {p0 .. p15}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;J[JIIIILjava/lang/String;[I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;Lcom/android/server/VibratorService$1;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/VibratorService$Vibration;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/android/server/VibratorService$Vibration;)[J
    .registers 2

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mPattern:[J

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/VibratorService$Vibration;)I
    .registers 2

    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/VibratorService$Vibration;)I
    .registers 2

    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mFrequency:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/VibratorService$Vibration;)I
    .registers 2

    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mCommonType:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/VibratorService$Vibration;)[I
    .registers 2

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mEngineData:[I

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/VibratorService$Vibration;)I
    .registers 2

    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitudeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/VibratorService$Vibration;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/VibratorService$Vibration;->mCommonUse:Z

    return v0
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$200(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    # getter for: Lcom/android/server/VibratorService;->SAFE_DEBUG:Z
    invoke-static {}, Lcom/android/server/VibratorService;->access$300()Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "VibratorService"

    const-string v2, "binderDied()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iget-object v1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$200(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$400(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v1

    if-ne p0, v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->doCancelVibrateLocked()V
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$500(Lcom/android/server/VibratorService;)V

    iget-object v1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->startNextVibrationLocked()V
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$600(Lcom/android/server/VibratorService;)V

    :cond_2f
    monitor-exit v0

    return-void

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public hasTimeoutLongerThan(J)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_12

    cmp-long v2, v0, p1

    if-lez v2, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    return v2
.end method

.method public isFromSystem()Z
    .registers 3

    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->uid:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_17

    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->uid:I

    if-eqz v0, :cond_17

    const-string v0, "com.android.systemui"

    iget-object v1, p0, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public isHapticFeedback()Z
    .registers 8

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Prebaked;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v0, Landroid/os/VibrationEffect$Prebaked;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_3c

    const-string v1, "VibratorService"

    const-string v3, "Unknown prebaked vibration effect, assuming it isn\'t haptic feedback."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :pswitch_1b
    return v1

    :cond_1c
    iget-boolean v0, p0, Lcom/android/server/VibratorService$Vibration;->mCommonUse:Z

    if-eqz v0, :cond_26

    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    if-gez v0, :cond_25

    return v1

    :cond_25
    return v2

    :cond_26
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_39

    const-wide/16 v5, 0x1388

    cmp-long v0, v3, v5

    if-gez v0, :cond_39

    goto :goto_3a

    :cond_39
    move v1, v2

    :goto_3a
    return v1

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method public isNotification()Z
    .registers 3

    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_a

    packed-switch v0, :pswitch_data_c

    const/4 v0, 0x0

    return v0

    :cond_a
    :pswitch_a
    const/4 v0, 0x1

    return v0

    :pswitch_data_c
    .packed-switch 0x7
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public isRingtone()Z
    .registers 3

    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public toInfo()Lcom/android/server/VibratorService$VibrationInfo;
    .registers 10

    new-instance v8, Lcom/android/server/VibratorService$VibrationInfo;

    iget-wide v1, p0, Lcom/android/server/VibratorService$Vibration;->startTimeDebug:J

    iget-object v3, p0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    iget-object v4, p0, Lcom/android/server/VibratorService$Vibration;->originalEffect:Landroid/os/VibrationEffect;

    iget v5, p0, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    iget v6, p0, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v7, p0, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/VibratorService$VibrationInfo;-><init>(JLandroid/os/VibrationEffect;Landroid/os/VibrationEffect;IILjava/lang/String;)V

    return-object v8
.end method
