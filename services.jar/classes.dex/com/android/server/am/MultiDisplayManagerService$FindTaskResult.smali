.class final Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;
.super Ljava/lang/Object;
.source "MultiDisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiDisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FindTaskResult"
.end annotation


# instance fields
.field final mIsRootTask:Z

.field final mProcessName:Ljava/lang/String;

.field final mTargetDisplayId:I

.field final mTask:Lcom/android/server/am/TaskRecord;

.field final mUid:I

.field final synthetic this$0:Lcom/android/server/am/MultiDisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MultiDisplayManagerService;Lcom/android/server/am/TaskRecord;ZLjava/lang/String;II)V
    .registers 7

    iput-object p1, p0, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;->mTask:Lcom/android/server/am/TaskRecord;

    iput-boolean p3, p0, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;->mIsRootTask:Z

    iput p5, p0, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;->mUid:I

    iput-object p4, p0, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;->mProcessName:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;->mTargetDisplayId:I

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;->execute(Ljava/lang/String;)V

    return-void
.end method

.method private execute(Ljava/lang/String;)V
    .registers 8

    iget-boolean v0, p0, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;->mIsRootTask:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;->mTask:Lcom/android/server/am/TaskRecord;

    iget v2, p0, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;->mTargetDisplayId:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/am/MultiDisplayManagerService;->moveTaskToDisplayBackLocked(Lcom/android/server/am/TaskRecord;ILjava/lang/String;)V

    goto :goto_6c

    :cond_e
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;->mTask:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_3b

    iget-object v3, p0, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;->mTask:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-object v4, p0, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;->mProcessName:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getUid()I

    move-result v4

    iget v5, p0, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;->mUid:I

    if-ne v4, v5, :cond_38

    move v0, v2

    goto :goto_3b

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_3b
    :goto_3b
    const/4 v2, -0x1

    if-le v0, v2, :cond_6c

    const-string v2, "MultiDisplayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FindTaskResult_execute: performClear(Ndx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "), "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;->mTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;->mTask:Lcom/android/server/am/TaskRecord;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3, p1}, Lcom/android/server/am/TaskRecord;->performClearTaskAtIndexLocked(IZLjava/lang/String;)V

    :cond_6c
    :goto_6c
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;->mTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " targetDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;->mTargetDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isRoot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;->mIsRootTask:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
