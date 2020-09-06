.class public Lcom/android/server/am/FreeformController;
.super Ljava/lang/Object;
.source "FreeformController.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final MOVING_FREEFORM_TASK_TO_BACK_TIMEOUT_DURATION:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "FreeformController"


# instance fields
.field private final mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private mCoolDownFreeformRequested:Z

.field private final mDisplayInfo:Landroid/view/DisplayInfo;

.field private final mEnabledController:Lcom/android/server/am/MultiWindowEnableController;

.field private final mH:Landroid/os/Handler;

.field mIsDexDeveloperMode:Z

.field mIsForcedResized:Z

.field private mMaxDexFreeformDefaultCnt:I

.field private mMaxDexFreeformOverWrittenCnt:I

.field private mMaxFreeformDefaultCnt:I

.field private mMaxFreeformOverWrittenCnt:I

.field private final mMinimizeAllReceiver:Landroid/content/BroadcastReceiver;

.field private mMinimizeMaxCount:I

.field private final mMinimizeServiceBinder:Lcom/android/server/am/FreeformMinimizeServiceBinder;

.field private mMinimizedFreeformForToggleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mMovingToBackFreeformTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

.field private final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field mWindowController:Lcom/android/server/wm/FreeformWindowController;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/MultiWindowManagerService;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/FreeformController;->mMaxFreeformOverWrittenCnt:I

    iput v0, p0, Lcom/android/server/am/FreeformController;->mMaxFreeformDefaultCnt:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/FreeformController;->mCoolDownFreeformRequested:Z

    iput v0, p0, Lcom/android/server/am/FreeformController;->mMaxDexFreeformOverWrittenCnt:I

    iput v0, p0, Lcom/android/server/am/FreeformController;->mMaxDexFreeformDefaultCnt:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FreeformController;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FreeformController;->mTmpRect2:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FreeformController;->mDisplayInfo:Landroid/view/DisplayInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FreeformController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/server/am/FreeformController;->mIsForcedResized:Z

    iput-boolean v1, p0, Lcom/android/server/am/FreeformController;->mIsDexDeveloperMode:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FreeformController;->mMovingToBackFreeformTasks:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/am/FreeformController$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/FreeformController$1;-><init>(Lcom/android/server/am/FreeformController;)V

    iput-object v0, p0, Lcom/android/server/am/FreeformController;->mMinimizeAllReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/am/FreeformController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/FreeformController;->mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iput-object v0, p0, Lcom/android/server/am/FreeformController;->mH:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/am/FreeformController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowManagerService;->getEnableController()Lcom/android/server/am/MultiWindowEnableController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/FreeformController;->mEnabledController:Lcom/android/server/am/MultiWindowEnableController;

    new-instance v0, Lcom/android/server/am/FreeformMinimizeServiceBinder;

    invoke-direct {v0, p1}, Lcom/android/server/am/FreeformMinimizeServiceBinder;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/FreeformController;->mMinimizeServiceBinder:Lcom/android/server/am/FreeformMinimizeServiceBinder;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/FreeformController;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic lambda$minimizeMaxCountingFreeformLocked$0(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private minimizeMaxCountingFreeformLocked(I)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/am/FreeformController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_eb

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-nez v3, :cond_14

    goto/16 :goto_eb

    :cond_14
    iget v3, v0, Lcom/android/server/am/FreeformController;->mMaxFreeformOverWrittenCnt:I

    if-lez v3, :cond_1b

    iget v3, v0, Lcom/android/server/am/FreeformController;->mMaxFreeformOverWrittenCnt:I

    goto :goto_1d

    :cond_1b
    iget v3, v0, Lcom/android/server/am/FreeformController;->mMaxFreeformDefaultCnt:I

    :goto_1d
    const-string v4, "FreeformController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "minimizeMaxCountingFreeformLocked: maxFreeformCnt = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v4

    if-nez v4, :cond_47

    const-string v5, "FreeformController"

    const-string/jumbo v6, "minimizeMaxCountingFreeformLocked: activityDisplay is null."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_47
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityDisplay;->getIndexOf(Lcom/android/server/am/ActivityStack;)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v4}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    :goto_58
    if-le v9, v7, :cond_a9

    invoke-virtual {v4, v9}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v12

    const/4 v13, 0x5

    if-ne v12, v13, :cond_a0

    add-int/lit8 v8, v8, 0x1

    if-le v8, v3, :cond_a0

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_71
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v14}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v15

    if-eqz v15, :cond_99

    invoke-virtual {v14}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v15

    iget-object v10, v0, Lcom/android/server/am/FreeformController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10, v6, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    invoke-virtual {v15, v6}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    iget v10, v14, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v6, 0x0

    move-object/from16 v16, v4

    const/4 v4, 0x1

    invoke-virtual {v11, v10, v6, v4}, Lcom/android/server/am/ActivityStack;->moveTaskToBackLocked(ILandroid/os/Bundle;Z)Z

    goto :goto_9b

    :cond_99
    move-object/from16 v16, v4

    :goto_9b
    move-object/from16 v4, v16

    const/4 v6, 0x0

    const/4 v10, 0x1

    goto :goto_71

    :cond_a0
    move-object/from16 v16, v4

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v4, v16

    const/4 v6, 0x0

    const/4 v10, 0x1

    goto :goto_58

    :cond_a9
    move-object/from16 v16, v4

    if-le v8, v3, :cond_ea

    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v6, v0, Lcom/android/server/am/FreeformController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v9, 0x103012b

    invoke-direct {v4, v6, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4, v6}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/am/FreeformController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1040388

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/android/server/am/FreeformController;->mH:Landroid/os/Handler;

    new-instance v12, Lcom/android/server/am/-$$Lambda$FreeformController$i612YH8jT1Ptso5qmeNZfYXPB60;

    invoke-direct {v12, v9, v10}, Lcom/android/server/am/-$$Lambda$FreeformController$i612YH8jT1Ptso5qmeNZfYXPB60;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_ea
    return-void

    :cond_eb
    :goto_eb
    const-string v3, "FreeformController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to invalid task id :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private toggleMinimizedFreeformTasksToFrontLocked(I)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_37

    iget-object v1, p0, Lcom/android/server/am/FreeformController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v8

    if-eqz v8, :cond_34

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getDisplayId()I

    move-result v2

    if-ne v2, p1, :cond_34

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v9, :cond_2a

    iget-object v2, v9, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    :goto_28
    move-object v6, v2

    goto :goto_2c

    :cond_2a
    const/4 v2, 0x0

    goto :goto_28

    :goto_2c
    const-string/jumbo v7, "toggleMinimizedFreeformTasksToFrontLocked"

    move-object v2, v8

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    :cond_34
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_37
    return-void
.end method

.method private updateDisplayInfoLocked()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    if-eqz v1, :cond_1d

    iget-object v2, v1, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    iget-object v3, p0, Lcom/android/server/am/FreeformController;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    :cond_1d
    return-void
.end method

.method private updateFreeformMaxCount()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/FreeformController;->mMaxFreeformDefaultCnt:I

    return-void
.end method


# virtual methods
.method addToMovingToBackFreeformTasksLocked(Lcom/android/server/am/TaskRecord;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mMovingToBackFreeformTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mMovingToBackFreeformTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mH:Landroid/os/Handler;

    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x6b

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mH:Landroid/os/Handler;

    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/FreeformController;->mH:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_47

    const-string v1, "FreeformController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addToMovingToBackFreeformTasksLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    return-void
.end method

.method addToggleFreeformList(Lcom/android/server/am/TaskRecord;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method applyFreeformMinimizePolicyLocked(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(II)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/FreeformController;->isMovingToBackFreeformTaskLocked(Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "applyFreeformMinimizePolicyLocked"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/FreeformController;->finishMovingFreeformTaskToBackLocked(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    :cond_12
    invoke-direct {p0, p1}, Lcom/android/server/am/FreeformController;->minimizeMaxCountingFreeformLocked(I)V

    return-void
.end method

.method dumpLocked(Ljava/io/PrintWriter;)V
    .registers 4

    iget v0, p0, Lcom/android/server/am/FreeformController;->mMaxFreeformOverWrittenCnt:I

    if-lez v0, :cond_1d

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mMaxFreeformOverWrittenCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/FreeformController;->mMaxFreeformOverWrittenCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1d
    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mMinimizeServiceBinder:Lcom/android/server/am/FreeformMinimizeServiceBinder;

    invoke-virtual {v0, p1}, Lcom/android/server/am/FreeformMinimizeServiceBinder;->dumpLocked(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mMovingToBackFreeformTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mMovingToBackFreeformTasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/FreeformController;->mMovingToBackFreeformTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_40
    return-void
.end method

.method finishMovingFreeformTaskToBackLocked(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
    .registers 6

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_23

    const-string v0, "FreeformController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "finishMovingFreeformTaskToBackLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mMovingToBackFreeformTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mMovingToBackFreeformTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mH:Landroid/os/Handler;

    const/16 v1, 0x6b

    iget v2, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_58

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    if-eqz v1, :cond_58

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isFreeformStackMinimized()Z

    move-result v1

    if-eqz v1, :cond_58

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->unminimizeFreeformTask(Z)V

    goto :goto_59

    :cond_58
    return-void

    :cond_59
    :goto_59
    return-void
.end method

.method getMinimizeServiceBinder()Lcom/android/server/am/FreeformMinimizeServiceBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mMinimizeServiceBinder:Lcom/android/server/am/FreeformMinimizeServiceBinder;

    return-object v0
.end method

.method isMovingToBackFreeformTaskLocked(Lcom/android/server/am/TaskRecord;)Z
    .registers 3

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mMovingToBackFreeformTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method loadResources()V
    .registers 2

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/am/FreeformController;->mMinimizeMaxCount:I

    invoke-direct {p0}, Lcom/android/server/am/FreeformController;->updateFreeformMaxCount()V

    return-void
.end method

.method minimizeAllTasksInFreeformLocked()Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v0, v2}, Lcom/android/server/am/FreeformController;->minimizeAllTasksInFreeformLocked(IZIZ)Z

    move-result v0

    return v0
.end method

.method minimizeAllTasksInFreeformLocked(IZIZ)Z
    .registers 25

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p3

    const/4 v0, 0x0

    if-lez v2, :cond_f

    iget-object v4, v1, Lcom/android/server/am/FreeformController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    :cond_f
    move-object v4, v0

    const/4 v5, 0x0

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_3f

    const-string v0, "FreeformController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "minimizeAllTasksInFreeform is calling excludeTaskId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " displayId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " deferMinimizing="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    :cond_3f
    move/from16 v7, p2

    :goto_41
    iget-object v0, v1, Lcom/android/server/am/FreeformController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getFreeformStacks(I)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    const/4 v0, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v11, v0

    :goto_54
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    if-eqz v12, :cond_70

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    or-int/lit8 v0, v11, 0x1

    move v11, v0

    :cond_70
    goto :goto_54

    :cond_71
    if-eqz v11, :cond_1aa

    const/4 v0, 0x1

    if-nez v9, :cond_78

    move v12, v0

    goto :goto_79

    :cond_78
    const/4 v12, 0x0

    :goto_79
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    xor-int/2addr v13, v0

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_88

    if-eqz v9, :cond_88

    move v14, v0

    goto :goto_89

    :cond_88
    const/4 v14, 0x0

    :goto_89
    if-eqz v13, :cond_9a

    :try_start_8b
    iget-object v10, v1, Lcom/android/server/am/FreeformController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V
    :try_end_90
    .catchall {:try_start_8b .. :try_end_90} :catchall_91

    goto :goto_9a

    :catchall_91
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move/from16 v4, p4

    goto/16 :goto_172

    :cond_9a
    :goto_9a
    :try_start_9a
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_9e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_12d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/TaskRecord;

    move-object/from16 v17, v16

    nop

    move-object/from16 v15, v17

    invoke-virtual {v15}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isUnderHomeStackLocked()Z

    move-result v0

    const/16 v16, 0x1

    xor-int/lit8 v0, v0, 0x1

    if-eqz v4, :cond_bf

    if-eq v15, v4, :cond_dc

    :cond_bf
    invoke-virtual {v15}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v17

    if-nez v17, :cond_c6

    goto :goto_dc

    :cond_c6
    iget-object v2, v1, Lcom/android/server/am/FreeformController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/android/server/am/LockTaskController;->isTaskLocked(Lcom/android/server/am/TaskRecord;)Z

    move-result v2
    :try_end_d0
    .catchall {:try_start_9a .. :try_end_d0} :catchall_16b

    if-eqz v2, :cond_e1

    :try_start_d2
    iget-object v2, v1, Lcom/android/server/am/FreeformController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/LockTaskController;->showLockTaskToast()V
    :try_end_db
    .catchall {:try_start_d2 .. :try_end_db} :catchall_91

    nop

    :cond_dc
    :goto_dc
    move/from16 v0, v16

    move/from16 v2, p1

    goto :goto_9e

    :cond_e1
    :try_start_e1
    const-string v2, "FreeformController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_e8
    .catchall {:try_start_e1 .. :try_end_e8} :catchall_16b

    if-eqz v12, :cond_ee

    :try_start_ea
    const-string/jumbo v17, "minimize, "
    :try_end_ed
    .catchall {:try_start_ea .. :try_end_ed} :catchall_91

    goto :goto_f1

    :cond_ee
    :try_start_ee
    const-string/jumbo v17, "moveback, "
    :try_end_f1
    .catchall {:try_start_ee .. :try_end_f1} :catchall_16b

    :goto_f1
    move-object/from16 v18, v4

    move-object/from16 v4, v17

    :try_start_f5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_117

    invoke-virtual {v15}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iget v3, v15, Lcom/android/server/am/TaskRecord;->taskId:I
    :try_end_10a
    .catchall {:try_start_f5 .. :try_end_10a} :catchall_127

    move/from16 v4, p4

    move-object/from16 v19, v6

    const/4 v6, 0x0

    :try_start_10f
    invoke-virtual {v2, v3, v6, v12, v4}, Lcom/android/server/am/ActivityStack;->moveTaskToBackLocked(ILandroid/os/Bundle;ZZ)Z

    move-result v2
    :try_end_113
    .catchall {:try_start_10f .. :try_end_113} :catchall_115

    or-int/2addr v5, v2

    goto :goto_11b

    :catchall_115
    move-exception v0

    goto :goto_172

    :cond_117
    move/from16 v4, p4

    move-object/from16 v19, v6

    :goto_11b
    move/from16 v0, v16

    move-object/from16 v4, v18

    move-object/from16 v6, v19

    move/from16 v2, p1

    move/from16 v3, p3

    goto/16 :goto_9e

    :catchall_127
    move-exception v0

    move/from16 v4, p4

    move-object/from16 v19, v6

    goto :goto_172

    :cond_12d
    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move/from16 v4, p4

    if-eqz v14, :cond_13c

    iget-object v0, v1, Lcom/android/server/am/FreeformController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    :cond_13c
    if-eqz v13, :cond_143

    iget-object v0, v1, Lcom/android/server/am/FreeformController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    :cond_143
    if-eqz v12, :cond_1b0

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz v0, :cond_1b0

    iget-object v0, v1, Lcom/android/server/am/FreeformController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "2001"

    const-string v3, "Minimize_popup view"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "minimize all. freeform count="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v2, v3, v6}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b0

    :catchall_16b
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move/from16 v4, p4

    :goto_172
    if-eqz v14, :cond_17b

    iget-object v2, v1, Lcom/android/server/am/FreeformController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v3, v3}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    :cond_17b
    if-eqz v13, :cond_182

    iget-object v2, v1, Lcom/android/server/am/FreeformController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    :cond_182
    if-eqz v12, :cond_1a9

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz v2, :cond_1a9

    iget-object v2, v1, Lcom/android/server/am/FreeformController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "minimize all. freeform count="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "2001"

    const-string v10, "Minimize_popup view"

    invoke-static {v2, v6, v10, v3}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a9
    throw v0

    :cond_1aa
    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move/from16 v4, p4

    :cond_1b0
    :goto_1b0
    return v5
.end method

.method moveTaskToBackLocked(IZ)Z
    .registers 10

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_63

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_63

    iget-object v2, p0, Lcom/android/server/am/FreeformController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/am/LockTaskController;->isTaskLocked(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/android/server/am/FreeformController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/LockTaskController;->showLockTaskToast()V

    return v1

    :cond_25
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/am/ActivityStack;->moveTaskToBackLocked(ILandroid/os/Bundle;Z)Z

    move-result v2

    if-eqz v2, :cond_63

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz v1, :cond_61

    if-eqz p2, :cond_61

    iget-object v1, p0, Lcom/android/server/am/FreeformController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getFreeformStacks(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/FreeformController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v3, "2001"

    const-string v4, "Minimize_popup view"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "freeform count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_61
    const/4 v1, 0x1

    return v1

    :cond_63
    return v1
.end method

.method registerBroadcastReceiver()V
    .registers 6

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.multiwindow.MINIMIZE_ALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.multiwindow.MINIMIZE_ALL_BY_SYSTEM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/FreeformController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/FreeformController;->mMinimizeAllReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.MANAGE_ACTIVITY_STACKS"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method removeMovingToBackFreeformTaskLocked(I)V
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/FreeformController;->mMovingToBackFreeformTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget v3, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v3, p1, :cond_19

    move-object v0, v2

    goto :goto_1a

    :cond_19
    goto :goto_7

    :cond_1a
    :goto_1a
    if-eqz v0, :cond_38

    const-string v1, "FreeformController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeMovingToBackFreeformTaskLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/FreeformController;->mMovingToBackFreeformTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_38
    return-void
.end method

.method removeToggleFreeformList(Lcom/android/server/am/TaskRecord;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method resetToggleFreeformList()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method setMaxVisibleFreeformCountLocked(I)V
    .registers 3

    iget v0, p0, Lcom/android/server/am/FreeformController;->mMaxDexFreeformOverWrittenCnt:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreeformController;->setMaxVisibleFreeformCountLocked(II)V

    return-void
.end method

.method setMaxVisibleFreeformCountLocked(II)V
    .registers 7

    const/4 v0, -0x1

    if-lez p1, :cond_5

    move v1, p1

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    iput v1, p0, Lcom/android/server/am/FreeformController;->mMaxFreeformOverWrittenCnt:I

    const-string v1, "FreeformController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMaxVisibleFreeformCount: mMaxFreeformOverWrittenCnt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/FreeformController;->mMaxFreeformOverWrittenCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/server/am/FreeformController;->applyFreeformMinimizePolicyLocked(I)V

    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/am/FreeformController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getFreeformWindowController()Lcom/android/server/wm/FreeformWindowController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/FreeformController;->mWindowController:Lcom/android/server/wm/FreeformWindowController;

    return-void
.end method

.method startFreeformAtCornerGesture(ILandroid/graphics/Rect;)V
    .registers 14

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "startFreeformAtCornerGesture"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_e
    monitor-enter p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_89

    :try_start_f
    iget-object v2, p0, Lcom/android/server/am/FreeformController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-nez v2, :cond_38

    const-string v3, "FreeformController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resizeTask: taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_f .. :try_end_34} :catchall_86

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_38
    :try_start_38
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eqz p2, :cond_53

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_53

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    move-object v3, v4

    :cond_53
    move-object v10, v3

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eq v10, v3, :cond_7b

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const-string/jumbo v9, "resizeTask"

    move-object v3, v2

    move-object v4, v10

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz v3, :cond_7b

    iget-object v3, p0, Lcom/android/server/am/FreeformController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v4, "2004"

    const-string v5, "Open app in pop-up view"

    iget-object v6, v2, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7b
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, p2, v3, v4, v4}, Lcom/android/server/am/TaskRecord;->resize(Landroid/graphics/Rect;IZZ)Z

    monitor-exit p0
    :try_end_81
    .catchall {:try_start_38 .. :try_end_81} :catchall_86

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_86
    move-exception v2

    :try_start_87
    monitor-exit p0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    :try_start_88
    throw v2
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_89

    :catchall_89
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method toggleFullscreenModeLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V
    .registers 3

    return-void
.end method

.method updateDexDeveloperMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/FreeformController;->mIsDexDeveloperMode:Z

    return-void
.end method

.method updateDexLabsPolicy(Z)V
    .registers 2

    return-void
.end method
