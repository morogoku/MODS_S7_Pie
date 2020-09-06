.class Lcom/android/server/spay/PaymentTZNative;
.super Ljava/lang/Object;
.source "PaymentTZNative.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "PaymentManagerService"


# instance fields
.field private mIsLoaded:Z

.field private mMOPTZNativePtr_:J

.field private mProcessName:Ljava/lang/String;

.field private mRecvBufSize:I

.field private mRootName:Ljava/lang/String;

.field private mSendBufSize:I

.field private mTAId:I

.field private mTATechnology:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/android/server/spay/PaymentManagerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "PaymentManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PaymentTZNative constructor: taId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iput p1, p0, Lcom/android/server/spay/PaymentTZNative;->mTAId:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    iput p5, p0, Lcom/android/server/spay/PaymentTZNative;->mSendBufSize:I

    iput p6, p0, Lcom/android/server/spay/PaymentTZNative;->mRecvBufSize:I

    iput-object p2, p0, Lcom/android/server/spay/PaymentTZNative;->mTATechnology:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/spay/PaymentTZNative;->mRootName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/spay/PaymentTZNative;->mProcessName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/spay/PaymentTZNative;->mIsLoaded:Z

    return-void
.end method

.method private native nativeProcessTACommand(Landroid/spay/TACommandRequest;Landroid/spay/TACommandResponse;)Z
.end method


# virtual methods
.method public loadTA(Landroid/content/Context;IJJ)Z
    .registers 28

    move-object/from16 v12, p0

    move-wide/from16 v13, p3

    move-wide/from16 v10, p5

    iget-wide v0, v12, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    const-wide/16 v15, 0x0

    cmp-long v0, v0, v15

    const/4 v9, 0x1

    if-eqz v0, :cond_17

    const-string v0, "PaymentManagerService"

    const-string v1, "PaymentTZNative::loadTA called for TA that is already loaded. Call Ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_17
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, v13, v0

    const/16 v17, 0x0

    if-gtz v2, :cond_7c

    cmp-long v0, v10, v0

    if-lez v0, :cond_25

    goto :goto_7c

    :cond_25
    long-to-int v4, v13

    long-to-int v5, v10

    iget v6, v12, Lcom/android/server/spay/PaymentTZNative;->mTAId:I

    iget v7, v12, Lcom/android/server/spay/PaymentTZNative;->mSendBufSize:I

    iget v8, v12, Lcom/android/server/spay/PaymentTZNative;->mRecvBufSize:I

    iget-object v0, v12, Lcom/android/server/spay/PaymentTZNative;->mTATechnology:Ljava/lang/String;

    iget-object v3, v12, Lcom/android/server/spay/PaymentTZNative;->mRootName:Ljava/lang/String;

    iget-object v2, v12, Lcom/android/server/spay/PaymentTZNative;->mProcessName:Ljava/lang/String;

    move-object v1, v12

    move-object/from16 v18, v2

    move-object/from16 v2, p1

    move-object/from16 v19, v3

    move/from16 v3, p2

    move-object v9, v0

    move-object/from16 v10, v19

    move-object/from16 v11, v18

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/spay/PaymentTZNative;->nativeCreateTLCommunicationContext(Landroid/content/Context;IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v12, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    iget-wide v0, v12, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    cmp-long v0, v0, v15

    if-nez v0, :cond_55

    const-string v0, "PaymentManagerService"

    const-string v1, "Error: nativeCreateTLCommunicationContext failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v17

    :cond_55
    const-class v1, Lcom/android/server/spay/PaymentTZNative;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_59
    iput-boolean v0, v12, Lcom/android/server/spay/PaymentTZNative;->mIsLoaded:Z

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_79

    sget-boolean v1, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

    if-eqz v1, :cond_78

    const-string v1, "PaymentManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PaymentTZNative::loadTA: mMOPTZNativePtr_ = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v12, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    return v0

    :catchall_79
    move-exception v0

    :try_start_7a
    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw v0

    :cond_7c
    :goto_7c
    const-string v0, "PaymentManagerService"

    const-string v1, "SpayFw_loadTA: cannot get ta offset or size"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v17
.end method

.method public native nativeCreateTLCommunicationContext(Landroid/content/Context;IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public native nativeDestroyTLCommunicationContext()V
.end method

.method public processTACommand(Landroid/spay/TACommandRequest;)Landroid/spay/TACommandResponse;
    .registers 6

    sget-boolean v0, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

    if-eqz v0, :cond_24

    const-string v0, "PaymentManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PaymentTZNative::processTACommand: request = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; mMOPTZNativePtr_ = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    new-instance v0, Landroid/spay/TACommandResponse;

    invoke-direct {v0}, Landroid/spay/TACommandResponse;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/spay/PaymentTZNative;->nativeProcessTACommand(Landroid/spay/TACommandRequest;Landroid/spay/TACommandResponse;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string v2, "PaymentManagerService"

    const-string v3, "PaymentTZNative::processTACommand: Error: nativeProcessTACommand returned failure"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2

    :cond_38
    return-object v0
.end method

.method public unloadTA()V
    .registers 6

    const-class v0, Lcom/android/server/spay/PaymentTZNative;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_25

    iget-boolean v1, p0, Lcom/android/server/spay/PaymentTZNative;->mIsLoaded:Z

    if-nez v1, :cond_10

    goto :goto_25

    :cond_10
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/spay/PaymentTZNative;->mIsLoaded:Z

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_3f

    invoke-virtual {p0}, Lcom/android/server/spay/PaymentTZNative;->nativeDestroyTLCommunicationContext()V

    iput-wide v3, p0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    sget-boolean v0, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

    if-eqz v0, :cond_24

    const-string v0, "PaymentManagerService"

    const-string v1, "PaymentTZNative::unloadTA called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return-void

    :cond_25
    :goto_25
    :try_start_25
    const-string v1, "PaymentManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PaymentTZNative::unloadTA called for TA that is not loaded. Call Ignored: ta loaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/spay/PaymentTZNative;->mIsLoaded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_25 .. :try_end_41} :catchall_3f

    throw v1
.end method
