.class Lcom/android/server/knox/ddar/ta/TZNative;
.super Ljava/lang/Object;
.source "TZNative.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "DualDAR:TZNative"


# instance fields
.field private mDDARTZNativePtr_:J

.field private mIsLoaded:Z

.field private mProcessName:Ljava/lang/String;

.field private mRecvBufSize:I

.field private mRootName:Ljava/lang/String;

.field private mSendBufSize:I

.field private mTAId:I

.field private mTATechnology:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DualDAR:TZNative"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TZNative constructor: taId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iput p1, p0, Lcom/android/server/knox/ddar/ta/TZNative;->mTAId:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/knox/ddar/ta/TZNative;->mDDARTZNativePtr_:J

    iput p5, p0, Lcom/android/server/knox/ddar/ta/TZNative;->mSendBufSize:I

    iput p6, p0, Lcom/android/server/knox/ddar/ta/TZNative;->mRecvBufSize:I

    iput-object p2, p0, Lcom/android/server/knox/ddar/ta/TZNative;->mTATechnology:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/knox/ddar/ta/TZNative;->mRootName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/knox/ddar/ta/TZNative;->mProcessName:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/server/knox/ddar/ta/TZNative;->mIsLoaded:Z

    return-void
.end method

.method private native nativeDDARProcessTACommand(Lcom/android/server/knox/ddar/ta/TACommandRequest;Lcom/android/server/knox/ddar/ta/TACommandResponse;)Z
.end method


# virtual methods
.method public loadTA(IJJ)Z
    .registers 26

    move-object/from16 v11, p0

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    iget-wide v0, v11, Lcom/android/server/knox/ddar/ta/TZNative;->mDDARTZNativePtr_:J

    const-wide/16 v16, 0x0

    cmp-long v0, v0, v16

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_1a

    const-string v0, "DualDAR:TZNative"

    const-string v1, "TZNative::loadTA called for TA that is already loaded. Call Ignored"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v10

    :cond_1a
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, v12, v0

    if-gtz v2, :cond_78

    cmp-long v0, v14, v0

    if-lez v0, :cond_26

    goto :goto_78

    :cond_26
    long-to-int v3, v12

    long-to-int v4, v14

    iget v5, v11, Lcom/android/server/knox/ddar/ta/TZNative;->mTAId:I

    iget v6, v11, Lcom/android/server/knox/ddar/ta/TZNative;->mSendBufSize:I

    iget v7, v11, Lcom/android/server/knox/ddar/ta/TZNative;->mRecvBufSize:I

    iget-object v8, v11, Lcom/android/server/knox/ddar/ta/TZNative;->mTATechnology:Ljava/lang/String;

    iget-object v0, v11, Lcom/android/server/knox/ddar/ta/TZNative;->mRootName:Ljava/lang/String;

    iget-object v2, v11, Lcom/android/server/knox/ddar/ta/TZNative;->mProcessName:Ljava/lang/String;

    move-object v1, v11

    move-object/from16 v18, v2

    move/from16 v2, p1

    move v12, v9

    move-object v9, v0

    move v0, v10

    move-object/from16 v10, v18

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/knox/ddar/ta/TZNative;->nativeDDARCreateTLCommunicationContext(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v11, Lcom/android/server/knox/ddar/ta/TZNative;->mDDARTZNativePtr_:J

    iget-wide v1, v11, Lcom/android/server/knox/ddar/ta/TZNative;->mDDARTZNativePtr_:J

    cmp-long v1, v1, v16

    if-nez v1, :cond_54

    const-string v0, "DualDAR:TZNative"

    const-string v1, "Error: nativeDDARCreateTLCommunicationContext failed"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v12

    :cond_54
    const-class v1, Lcom/android/server/knox/ddar/ta/TZNative;

    monitor-enter v1

    :try_start_57
    iput-boolean v0, v11, Lcom/android/server/knox/ddar/ta/TZNative;->mIsLoaded:Z

    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_75

    const-string v1, "DualDAR:TZNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TZNative::loadTA: mDDARTZNativePtr_ = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v11, Lcom/android/server/knox/ddar/ta/TZNative;->mDDARTZNativePtr_:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v0

    :catchall_75
    move-exception v0

    :try_start_76
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v0

    :cond_78
    :goto_78
    move v12, v9

    const-string v0, "DualDAR:TZNative"

    const-string/jumbo v1, "loadTA: cannot get ta offset or size"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v12
.end method

.method public native nativeDDARCreateTLCommunicationContext(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public native nativeDDARDestroyTLCommunicationContext()V
.end method

.method public processTACommand(Lcom/android/server/knox/ddar/ta/TACommandRequest;)Lcom/android/server/knox/ddar/ta/TACommandResponse;
    .registers 7

    const-string v0, "DualDAR:TZNative"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TZNative::processTACommand: request = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; mDDARTZNativePtr_ = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/knox/ddar/ta/TZNative;->mDDARTZNativePtr_:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/android/server/knox/ddar/ta/TACommandResponse;

    invoke-direct {v0}, Lcom/android/server/knox/ddar/ta/TACommandResponse;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/knox/ddar/ta/TZNative;->nativeDDARProcessTACommand(Lcom/android/server/knox/ddar/ta/TACommandRequest;Lcom/android/server/knox/ddar/ta/TACommandResponse;)Z

    move-result v1

    if-nez v1, :cond_39

    const-string v3, "DualDAR:TZNative"

    const-string v4, "TZNative::processTACommand: Error: nativeDDARProcessTACommand returned failure"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v2, 0x0

    return-object v2

    :cond_39
    return-object v0
.end method

.method public unloadTA()V
    .registers 6

    const-class v0, Lcom/android/server/knox/ddar/ta/TZNative;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lcom/android/server/knox/ddar/ta/TZNative;->mDDARTZNativePtr_:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    iget-boolean v1, p0, Lcom/android/server/knox/ddar/ta/TZNative;->mIsLoaded:Z

    if-nez v1, :cond_11

    goto :goto_23

    :cond_11
    iput-boolean v2, p0, Lcom/android/server/knox/ddar/ta/TZNative;->mIsLoaded:Z

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_3f

    invoke-virtual {p0}, Lcom/android/server/knox/ddar/ta/TZNative;->nativeDDARDestroyTLCommunicationContext()V

    iput-wide v3, p0, Lcom/android/server/knox/ddar/ta/TZNative;->mDDARTZNativePtr_:J

    const-string v0, "DualDAR:TZNative"

    const-string v1, "TZNative::unloadTA called"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_23
    :goto_23
    :try_start_23
    const-string v1, "DualDAR:TZNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TZNative::unloadTA called for TA that is not loaded. Call Ignored: ta loaded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/knox/ddar/ta/TZNative;->mIsLoaded:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    monitor-exit v0

    return-void

    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_23 .. :try_end_41} :catchall_3f

    throw v1
.end method
