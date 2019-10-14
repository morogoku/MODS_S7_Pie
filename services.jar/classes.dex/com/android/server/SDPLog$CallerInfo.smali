.class Lcom/android/server/SDPLog$CallerInfo;
.super Ljava/lang/Object;
.source "SDPLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SDPLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallerInfo"
.end annotation


# instance fields
.field private className:Ljava/lang/String;

.field private currMethod:Ljava/lang/String;

.field private pid:I

.field private prevMethod:Ljava/lang/String;

.field private sequence:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private uid:I

.field private userId:I


# direct methods
.method public constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # invokes: Lcom/android/server/SDPLog;->getCurrentTime()Ljava/lang/String;
    invoke-static {}, Lcom/android/server/SDPLog;->access$000()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SDPLog$CallerInfo;->time:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iput v0, p0, Lcom/android/server/SDPLog$CallerInfo;->userId:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/SDPLog$CallerInfo;->pid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/SDPLog$CallerInfo;->uid:I

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/server/SDPLog$CallerInfo;->currMethod:Ljava/lang/String;

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/server/SDPLog$CallerInfo;->prevMethod:Ljava/lang/String;

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/server/SDPLog$CallerInfo;->className:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/SDPLog$CallerInfo;->sequence:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x4

    :try_start_38
    aget-object v1, v0, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SDPLog$CallerInfo;->currMethod:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SDPLog$CallerInfo;->className:Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v2, v0, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/SDPLog$CallerInfo;->prevMethod:Ljava/lang/String;
    :try_end_71
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_38 .. :try_end_71} :catch_72

    goto :goto_73

    :catch_72
    move-exception v1

    :goto_73
    return-void
.end method


# virtual methods
.method getSequence()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/server/SDPLog$CallerInfo;->sequence:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5f

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "UserId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/SDPLog$CallerInfo;->userId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "currMethod"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/SDPLog$CallerInfo;->currMethod:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "prevMethod"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/server/SDPLog$CallerInfo;->prevMethod:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Class"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/server/SDPLog$CallerInfo;->className:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "UID"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget v2, p0, Lcom/android/server/SDPLog$CallerInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "PID"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget v2, p0, Lcom/android/server/SDPLog$CallerInfo;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    # invokes: Lcom/android/server/SDPLog;->makeSequence([Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/SDPLog;->access$100([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SDPLog$CallerInfo;->sequence:Ljava/lang/String;

    :cond_5f
    iget-object v0, p0, Lcom/android/server/SDPLog$CallerInfo;->sequence:Ljava/lang/String;

    return-object v0
.end method

.method getTime()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/SDPLog$CallerInfo;->time:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/SDPLog$CallerInfo;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",I,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/SDPLog$CallerInfo;->getSequence()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
