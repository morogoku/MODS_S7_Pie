.class Lcom/android/systemui/DebugUiOffloadThread$InternalTask;
.super Ljava/lang/Object;
.source "DebugUiOffloadThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DebugUiOffloadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalTask"
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/DebugUiOffloadThread$Callback;

.field private final mCaller:Ljava/lang/String;

.field private mRequestedTime:J

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;Lcom/android/systemui/DebugUiOffloadThread$Callback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DebugUiOffloadThread$InternalTask;->mRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/systemui/DebugUiOffloadThread$InternalTask;->mCaller:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/DebugUiOffloadThread$InternalTask;->mCallback:Lcom/android/systemui/DebugUiOffloadThread$Callback;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/DebugUiOffloadThread$InternalTask;->mRequestedTime:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;Lcom/android/systemui/DebugUiOffloadThread$Callback;Lcom/android/systemui/DebugUiOffloadThread$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/DebugUiOffloadThread$InternalTask;-><init>(Ljava/lang/Runnable;Ljava/lang/String;Lcom/android/systemui/DebugUiOffloadThread$Callback;)V

    return-void
.end method

.method private end(J)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/DebugUiOffloadThread$InternalTask;->mCallback:Lcom/android/systemui/DebugUiOffloadThread$Callback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/DebugUiOffloadThread$InternalTask;->mCallback:Lcom/android/systemui/DebugUiOffloadThread$Callback;

    iget-object v2, p0, Lcom/android/systemui/DebugUiOffloadThread$InternalTask;->mCaller:Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/systemui/DebugUiOffloadThread$InternalTask;->mRequestedTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-wide v3, p1

    invoke-interface/range {v1 .. v8}, Lcom/android/systemui/DebugUiOffloadThread$Callback;->taskEnded(Ljava/lang/String;JJJ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/DebugUiOffloadThread$InternalTask;->mCallback:Lcom/android/systemui/DebugUiOffloadThread$Callback;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$VaUdxysjasUqJiJgbOS4V5F30ZM(Lcom/android/systemui/DebugUiOffloadThread$InternalTask;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/DebugUiOffloadThread$InternalTask;->end(J)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/systemui/util/LogUtil;->startTime(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/DebugUiOffloadThread$InternalTask;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    new-instance v1, Lcom/android/systemui/-$$Lambda$DebugUiOffloadThread$InternalTask$VaUdxysjasUqJiJgbOS4V5F30ZM;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$DebugUiOffloadThread$InternalTask$VaUdxysjasUqJiJgbOS4V5F30ZM;-><init>(Lcom/android/systemui/DebugUiOffloadThread$InternalTask;)V

    invoke-static {v0, v1}, Lcom/android/systemui/util/LogUtil;->endTime(ILjava/util/function/LongConsumer;)V

    return-void
.end method
