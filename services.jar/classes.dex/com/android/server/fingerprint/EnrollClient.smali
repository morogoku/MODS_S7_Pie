.class public abstract Lcom/android/server/fingerprint/EnrollClient;
.super Lcom/android/server/fingerprint/ClientMonitor;
.source "EnrollClient.java"


# static fields
.field private static final ENROLLMENT_TIMEOUT_MS:I = 0xea60

.field private static final MS_PER_SEC:J = 0x3e8L


# instance fields
.field private mCryptoToken:[B

.field private mDuplicatedImgCnt:I

.field private mPrevRemaining:I

.field private mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II[BZLjava/lang/String;Lcom/android/internal/statusbar/IStatusBarService;)V
    .registers 24

    move-object v10, p0

    move-object/from16 v11, p8

    move-object v0, v10

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/server/fingerprint/ClientMonitor;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    const/16 v0, 0x64

    iput v0, v10, Lcom/android/server/fingerprint/EnrollClient;->mPrevRemaining:I

    const/4 v0, 0x0

    iput v0, v10, Lcom/android/server/fingerprint/EnrollClient;->mDuplicatedImgCnt:I

    if-eqz v11, :cond_28

    array-length v1, v11

    if-lez v1, :cond_28

    array-length v1, v11

    invoke-static {v11, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v10, Lcom/android/server/fingerprint/EnrollClient;->mCryptoToken:[B

    :cond_28
    iget-object v1, v10, Lcom/android/server/fingerprint/EnrollClient;->mCryptoToken:[B

    if-eqz v1, :cond_93

    sget-boolean v1, Lcom/android/server/fingerprint/EnrollClient;->DEBUG:Z

    if-eqz v1, :cond_7a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v10, Lcom/android/server/fingerprint/EnrollClient;->mCryptoToken:[B

    array-length v3, v2

    move v4, v0

    :goto_39
    if-ge v4, v3, :cond_54

    aget-byte v5, v2, v4

    const-string v6, "%02x "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    and-int/lit16 v8, v5, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :cond_54
    const-string v0, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EnrollClient : len = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/fingerprint/EnrollClient;->mCryptoToken:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_93

    :cond_7a
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EnrollClient : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/fingerprint/EnrollClient;->mCryptoToken:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_93
    :goto_93
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_a1

    new-instance v0, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    move-object/from16 v1, p11

    invoke-direct {v0, v1}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;-><init>(Lcom/android/internal/statusbar/IStatusBarService;)V

    iput-object v0, v10, Lcom/android/server/fingerprint/EnrollClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    goto :goto_a3

    :cond_a1
    move-object/from16 v1, p11

    :goto_a3
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v10, Lcom/android/server/fingerprint/EnrollClient;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/fingerprint/EnrollClient;)Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/EnrollClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    return-object v0
.end method

.method private sendEnrollResult(III)Z
    .registers 21

    move-object/from16 v1, p0

    move/from16 v8, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/EnrollClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v9

    const/4 v10, 0x1

    if-nez v9, :cond_c

    return v10

    :cond_c
    iget v0, v1, Lcom/android/server/fingerprint/EnrollClient;->mPrevRemaining:I

    if-ge v8, v0, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/EnrollClient;->vibrateSuccess()V

    :cond_13
    iput v8, v1, Lcom/android/server/fingerprint/EnrollClient;->mPrevRemaining:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/EnrollClient;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0xfb

    invoke-static {v0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    :try_start_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/EnrollClient;->getHalDeviceId()J

    move-result-wide v3

    move-object v2, v9

    move/from16 v5, p1

    move/from16 v6, p2

    move v7, v8

    invoke-interface/range {v2 .. v7}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onEnrollResult(JIII)V

    if-nez v8, :cond_57

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/EnrollClient;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.samsung.android.intent.action.FINGERPRINT_ADDED"
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_33} :catch_60

    move/from16 v3, p1

    move/from16 v4, p2

    :try_start_37
    invoke-static {v0, v2, v3, v4}, Lcom/android/server/fingerprint/FingerprintService;->semSendBroadcast(Landroid/content/Context;Ljava/lang/String;II)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/EnrollClient;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "FPEN"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-wide/16 v14, -0x1

    const/16 v16, 0x3

    invoke-static/range {v11 .. v16}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    const/16 v0, 0x64

    iput v0, v1, Lcom/android/server/fingerprint/EnrollClient;->mPrevRemaining:I

    const-string v0, "S"

    invoke-static {v0}, Lcom/android/server/fingerprint/BioLoggingManager;->setResult(Ljava/lang/String;)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_54} :catch_55

    goto :goto_5b

    :catch_55
    move-exception v0

    goto :goto_65

    :cond_57
    move/from16 v3, p1

    move/from16 v4, p2

    :goto_5b
    if-nez v8, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 v10, 0x0

    :goto_5f
    return v10

    :catch_60
    move-exception v0

    move/from16 v3, p1

    move/from16 v4, p2

    :goto_65
    const-string v2, "FingerprintService"

    const-string v5, "Failed to notify EnrollResult:"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v10
.end method


# virtual methods
.method public binderDied()V
    .registers 1

    invoke-virtual {p0, p0}, Lcom/android/server/fingerprint/EnrollClient;->semClientDied(Lcom/android/server/fingerprint/ClientMonitor;)V

    return-void
.end method

.method public onAcquired(II)Z
    .registers 6

    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_a

    iget v0, p0, Lcom/android/server/fingerprint/EnrollClient;->mDuplicatedImgCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/fingerprint/EnrollClient;->mDuplicatedImgCnt:I

    :cond_a
    invoke-super {p0, p1, p2}, Lcom/android/server/fingerprint/ClientMonitor;->onAcquired(II)Z

    move-result v0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_1f

    packed-switch p2, :pswitch_data_20

    :pswitch_14
    goto :goto_1f

    :pswitch_15
    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/fingerprint/EnrollClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->handleSensorView(Z)V

    :cond_1f
    :goto_1f
    return v0

    :pswitch_data_20
    .packed-switch 0x2713
        :pswitch_15
        :pswitch_14
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method

.method public onAuthenticated(II)Z
    .registers 5

    sget-boolean v0, Lcom/android/server/fingerprint/EnrollClient;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onAuthenticated() called for enroll!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method public onEnrollResult(III)Z
    .registers 12

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getGroupId()I

    move-result v0

    if-eq p2, v0, :cond_29

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "groupId != getGroupId(), groupId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " getGroupId():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getGroupId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    if-nez p3, :cond_5b

    sget-boolean v0, Lcom/android/server/fingerprint/EnrollClient;->DEBUG:Z

    if-eqz v0, :cond_48

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEnrollResult : duplicated image count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/fingerprint/EnrollClient;->mDuplicatedImgCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getTargetUserId()I

    move-result v5

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/fingerprint/EnrollClient;->mDuplicatedImgCnt:I

    move v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/fingerprint/FingerprintUtils;->semAddFingerprintForUser(Landroid/content/Context;IILjava/lang/CharSequence;I)V

    :cond_5b
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/fingerprint/EnrollClient;->sendEnrollResult(III)Z

    move-result v0

    return v0
.end method

.method public onEnumerationResult(III)Z
    .registers 6

    sget-boolean v0, Lcom/android/server/fingerprint/EnrollClient;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onEnumerationResult() called for enroll!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method public onError(II)Z
    .registers 4

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/fingerprint/EnrollClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->hideAuthenticationCue()V

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_13

    const-string/jumbo v0, "fod_enable,0"

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintUtils;->semWriteTSP(Ljava/lang/String;)V

    :cond_13
    invoke-super {p0, p1, p2}, Lcom/android/server/fingerprint/ClientMonitor;->onError(II)Z

    move-result v0

    return v0
.end method

.method public onRemoved(III)Z
    .registers 6

    sget-boolean v0, Lcom/android/server/fingerprint/EnrollClient;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onRemoved() called for enroll!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract semClientDied(Lcom/android/server/fingerprint/ClientMonitor;)V
.end method

.method public semPauseEnroll()V
    .registers 2

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/fingerprint/EnrollClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->pauseSensorIcon()V

    :cond_9
    return-void
.end method

.method public semResumeEnroll()V
    .registers 2

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/fingerprint/EnrollClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->resumeSensorIcon()V

    :cond_9
    return-void
.end method

.method public start()I
    .registers 13

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_10

    const-string v2, "FingerprintService"

    const-string/jumbo v3, "enroll: no fingerprint HAL!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_10
    const/16 v2, 0x64

    iput v2, p0, Lcom/android/server/fingerprint/EnrollClient;->mPrevRemaining:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_17
    const-string v5, "E"

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getOwnerString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/fingerprint/BioLoggingManager;->setType(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/server/fingerprint/EnrollClient;->mCryptoToken:[B

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getGroupId()I

    move-result v8

    invoke-interface {v0, v7, v8, v4}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->enroll([BII)I

    move-result v7

    const-string v8, "FingerprintService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startEnrollment FP_FINISH ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ms) RESULT: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_7a

    const-string v1, "FingerprintService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startEnroll failed, result="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v8, "fingerprintd_enroll_start_error"

    invoke-static {v1, v8, v7}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p0, v3, v4}, Lcom/android/server/fingerprint/EnrollClient;->onError(II)Z

    return v7

    :cond_7a
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->onStart()V

    sget-boolean v8, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v8, :cond_be

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/fingerprint/EnrollClient;->mSemSensorAreaWidth:Ljava/lang/String;

    aput-object v10, v9, v4

    iget-object v10, p0, Lcom/android/server/fingerprint/EnrollClient;->mSemSensorAreaHeight:Ljava/lang/String;

    aput-object v10, v9, v3

    iget-object v10, p0, Lcom/android/server/fingerprint/EnrollClient;->mSemSensorMarginBottom:Ljava/lang/String;

    aput-object v10, v9, v2

    iget-object v10, p0, Lcom/android/server/fingerprint/EnrollClient;->mSemSensorMarginLeft:Ljava/lang/String;

    aput-object v10, v9, v1

    const/4 v1, 0x4

    iget-object v10, p0, Lcom/android/server/fingerprint/EnrollClient;->mSemSensorImageSize:Ljava/lang/String;

    aput-object v10, v9, v1

    const-string/jumbo v1, "sem_area"

    invoke-virtual {v8, v1, v9}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v1, "token"

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getToken()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v8, v1, v10}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v1, "sem_ux_type"

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/fingerprint/EnrollClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    new-instance v10, Lcom/android/server/fingerprint/EnrollClient$1;

    invoke-direct {v10, p0}, Lcom/android/server/fingerprint/EnrollClient$1;-><init>(Lcom/android/server/fingerprint/EnrollClient;)V

    invoke-virtual {v1, v8, v10}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->showAuthenticationCue(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V

    :cond_be
    const-string/jumbo v1, "fod_enable,1,1"

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintUtils;->semWriteTSP(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v1, :cond_e7

    iget-object v1, p0, Lcom/android/server/fingerprint/EnrollClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v1, v3}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->handleOverlayMaskView(Z)V
    :try_end_cd
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_cd} :catch_db
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_cd} :catch_ce

    goto :goto_e7

    :catch_ce
    move-exception v1

    const-string v3, "FingerprintService"

    const-string/jumbo v5, "startEnroll failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v2, v4}, Lcom/android/server/fingerprint/EnrollClient;->onError(II)Z

    goto :goto_e8

    :catch_db
    move-exception v1

    const-string v2, "FingerprintService"

    const-string/jumbo v5, "startEnroll failed"

    invoke-static {v2, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v3, v4}, Lcom/android/server/fingerprint/EnrollClient;->onError(II)Z

    :cond_e7
    :goto_e7
    nop

    :goto_e8
    return v4
.end method

.method public stop(Z)I
    .registers 11

    iget-boolean v0, p0, Lcom/android/server/fingerprint/EnrollClient;->mAlreadyCancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    const-string v0, "FingerprintService"

    const-string/jumbo v2, "stopEnroll: already cancelled!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_e
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    if-nez v0, :cond_1e

    const-string v1, "FingerprintService"

    const-string/jumbo v2, "stopEnrollment: no fingerprint HAL!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    return v1

    :cond_1e
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->onStop()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I

    move-result v4

    const-string v5, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "stopEnrollment FP_FINISH ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms) RESULT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_68

    const-string v5, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startEnrollCancel failed, result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_67} :catch_69

    return v4

    :cond_68
    goto :goto_72

    :catch_69
    move-exception v2

    const-string v3, "FingerprintService"

    const-string/jumbo v4, "stopEnrollment failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_72
    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v2, :cond_85

    iget-object v2, p0, Lcom/android/server/fingerprint/EnrollClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v2}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->hideAuthenticationCue()V

    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v2, :cond_85

    const-string/jumbo v2, "fod_enable,0"

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintUtils;->semWriteTSP(Ljava/lang/String;)V

    :cond_85
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/fingerprint/EnrollClient;->mAlreadyCancelled:Z

    return v1
.end method
