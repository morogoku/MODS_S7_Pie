.class final Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;
.super Ljava/lang/Object;
.source "MultiDisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiDisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PendingActivityInfo"
.end annotation


# instance fields
.field mDisplayId:I

.field final mFindTaskResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;",
            ">;"
        }
    .end annotation
.end field

.field mInfo:Lcom/android/server/am/DisplayChooserInfo;

.field final mInvisibleTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingStoppedTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/IApplicationToken;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/am/MultiDisplayManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiDisplayManagerService;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mFindTaskResultList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mWaitingStoppedTasks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mInvisibleTasks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method isTransitionFinished()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method isWaitingStoppedTasksEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mWaitingStoppedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method removeWaitingStoppedTask(Lcom/android/server/am/TaskRecord;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mWaitingStoppedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_5a

    const-string v0, "MultiDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeWaitingStoppedTask: remvoed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mWaitingStoppedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_52

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mWaitingStoppedTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    const-string v3, "MultiDisplayManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeWaitingStoppedTask: (not empty) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :cond_52
    const-string v1, "MultiDisplayManager"

    const-string/jumbo v2, "removeWaitingStoppedTask: (empty)"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    return-void
.end method

.method reset()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mDisplayId:I

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mFindTaskResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mInfo:Lcom/android/server/am/DisplayChooserInfo;

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mWaitingStoppedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mInvisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v0, v0, Lcom/android/server/am/MultiDisplayManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiDisplayManagerInternal;->setWaitingTransitionFinished(Ljava/util/ArrayList;)V

    return-void
.end method

.method set(Lcom/android/server/am/DisplayChooserInfo;Ljava/util/ArrayList;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/DisplayChooserInfo;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mInfo:Lcom/android/server/am/DisplayChooserInfo;

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mFindTaskResultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput p3, p0, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mDisplayId:I

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;

    iget-object v2, v1, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;->mTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v4, :cond_3a

    const-string v4, "MultiDisplayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set PendingActivityInfo for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    if-eqz v3, :cond_6e

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v4, :cond_69

    sget-boolean v4, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v4, :cond_5c

    const-string v4, "MultiDisplayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add waiting task #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    iget-object v4, p0, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mWaitingStoppedTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    :cond_69
    iget-object v4, p0, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mInvisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6e
    :goto_6e
    goto :goto_d

    :cond_6f
    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v0, v0, Lcom/android/server/am/MultiDisplayManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiDisplayManagerInternal;->setWaitingTransitionFinished(Ljava/util/ArrayList;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "mDisplayChooserInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mInfo:Lcom/android/server/am/DisplayChooserInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mDisplayId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mFindTaskResultList size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mFindTaskResultList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method transitionFinished()V
    .registers 4

    sget-boolean v0, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1f

    const-string v0, "MultiDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "transitionFinished. caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
