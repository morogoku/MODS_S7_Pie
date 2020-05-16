.class Lcom/android/server/am/KeyguardController;
.super Ljava/lang/Object;
.source "KeyguardController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mAodShowing:Z

.field private mBeforeUnoccludeTransit:I

.field private mDexDisplaySleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

.field private mDexOccluded:Z

.field private mDismissalRequested:Z

.field private mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

.field private mKeyguardGoingAway:Z

.field private mKeyguardShowing:Z

.field private mOccluded:Z

.field private mSecondaryDisplayShowing:I

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

.field private final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mVisibilityTransactionDepth:I

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/KeyguardController;->mSecondaryDisplayShowing:I

    iput-object p1, p0, Lcom/android/server/am/KeyguardController;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    return-void
.end method

.method private convertTransitFlags(I)I
    .registers 4

    const/4 v0, 0x0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x1

    :cond_7
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_d

    or-int/lit8 v0, v0, 0x2

    :cond_d
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_13

    or-int/lit8 v0, v0, 0x4

    :cond_13
    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_19

    or-int/lit16 v0, v0, 0x100

    :cond_19
    return v0
.end method

.method private dismissDockedStackIfNeeded()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_15

    return-void

    :cond_15
    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-ne v2, v0, :cond_1f

    const/4 v2, 0x1

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    :cond_23
    return-void
.end method

.method private failCallback(Lcom/android/internal/policy/IKeyguardDismissCallback;)V
    .registers 5

    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissError()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    const-string v1, "ActivityManager"

    const-string v2, "Failed to call callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    return-void
.end method

.method private handleDismissKeyguard()V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mDismissalRequested:Z

    iget-boolean v2, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-eqz v2, :cond_3f

    invoke-virtual {p0}, Lcom/android/server/am/KeyguardController;->canDismissKeyguard()Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getPendingAppTransition()I

    move-result v2

    const/16 v3, 0x17

    if-ne v2, v3, :cond_3f

    iget-object v2, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v3, p0, Lcom/android/server/am/KeyguardController;->mBeforeUnoccludeTransit:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZIZ)V

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v1, v4, v4}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    :cond_3f
    return-void
.end method

.method private handleOccludedChanged(Z)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_11

    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, p0, Lcom/android/server/am/KeyguardController;->mDexOccluded:Z

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->onDexKeyguardOccludedChanged(Z)V

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/android/server/am/KeyguardController;->mDexOccluded:Z

    invoke-static {v1, v2}, Lcom/android/server/am/EventLogTags;->writeAmOccludedChanged(II)V

    goto :goto_1d

    :cond_11
    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->onKeyguardOccludedChanged(Z)V

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    invoke-static {v0, v1}, Lcom/android/server/am/EventLogTags;->writeAmOccludedChanged(II)V

    :goto_1d
    invoke-virtual {p0}, Lcom/android/server/am/KeyguardController;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    :try_start_28
    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->resolveOccludeTransit()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v0, v3}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZIZ)V

    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->updateKeyguardSleepToken()V

    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V
    :try_end_40
    .catchall {:try_start_28 .. :try_end_40} :catchall_46

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    goto :goto_4d

    :catchall_46
    move-exception v0

    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0

    :cond_4d
    :goto_4d
    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->dismissDockedStackIfNeeded()V

    return-void
.end method

.method private resolveOccludeTransit()I
    .registers 4

    iget v0, p0, Lcom/android/server/am/KeyguardController;->mBeforeUnoccludeTransit:I

    const/16 v1, 0x17

    const/4 v2, -0x1

    if-eq v0, v2, :cond_16

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getPendingAppTransition()I

    move-result v0

    if-ne v0, v1, :cond_16

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/server/am/KeyguardController;->mBeforeUnoccludeTransit:I

    return v0

    :cond_16
    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getPendingAppTransition()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/KeyguardController;->mBeforeUnoccludeTransit:I

    return v1

    :cond_23
    const/16 v0, 0x16

    return v0
.end method

.method private setKeyguardGoingAway(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/server/am/KeyguardController;->mKeyguardGoingAway:Z

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->setKeyguardGoingAway(Z)V

    return-void
.end method

.method private updateKeyguardSleepToken()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    const/4 v1, 0x0

    if-nez v0, :cond_16

    invoke-virtual {p0, v1}, Lcom/android/server/am/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "Keyguard"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/ActivityManagerService;->acquireSleepToken(Ljava/lang/String;I)Landroid/app/ActivityManagerInternal$SleepToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/KeyguardController;->mSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    goto :goto_28

    :cond_16
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-eqz v0, :cond_28

    invoke-virtual {p0, v1}, Lcom/android/server/am/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/KeyguardController;->mSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    :cond_28
    :goto_28
    return-void
.end method

.method private visibilitiesUpdated()V
    .registers 14

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v4, p0, Lcom/android/server/am/KeyguardController;->mDexOccluded:Z

    iput-boolean v2, p0, Lcom/android/server/am/KeyguardController;->mDexOccluded:Z

    iget-object v5, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getChildCount()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_16
    if-ltz v5, :cond_9c

    iget-object v7, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getChildAt(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v8

    sub-int/2addr v8, v6

    :goto_23
    if-ltz v8, :cond_98

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v9

    iget v10, v7, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    if-nez v10, :cond_55

    iget-object v10, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v10, v9}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v10

    if-eqz v10, :cond_55

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getTopDismissingKeyguardActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    nop

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->topActivityOccludesKeyguard()Z

    move-result v11

    if-nez v11, :cond_51

    if-eqz v10, :cond_4f

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    if-ne v11, v10, :cond_4f

    invoke-virtual {p0, v6, v2}, Lcom/android/server/am/KeyguardController;->canShowWhileOccluded(ZZ)Z

    move-result v11

    if-eqz v11, :cond_4f

    goto :goto_51

    :cond_4f
    move v11, v2

    goto :goto_52

    :cond_51
    :goto_51
    move v11, v6

    :goto_52
    iput-boolean v11, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    goto :goto_85

    :cond_55
    iget-object v10, p0, Lcom/android/server/am/KeyguardController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v10}, Lcom/android/server/am/MultiDisplayManagerService;->getDexModeLocked()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_85

    iget v10, v7, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    if-ne v10, v11, :cond_85

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getTopDismissingKeyguardActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/am/KeyguardController;->mDexOccluded:Z

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->topActivityOccludesKeyguard()Z

    move-result v12

    if-nez v12, :cond_81

    if-eqz v10, :cond_7f

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    if-ne v12, v10, :cond_7f

    invoke-virtual {p0, v6, v2}, Lcom/android/server/am/KeyguardController;->canShowWhileOccluded(ZZ)Z

    move-result v12

    if-eqz v12, :cond_7f

    goto :goto_81

    :cond_7f
    move v12, v2

    goto :goto_82

    :cond_81
    :goto_81
    move v12, v6

    :goto_82
    or-int/2addr v11, v12

    iput-boolean v11, p0, Lcom/android/server/am/KeyguardController;->mDexOccluded:Z

    :cond_85
    :goto_85
    iget-object v10, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v10, :cond_95

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getTopDismissingKeyguardActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    if-eqz v10, :cond_95

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getTopDismissingKeyguardActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    :cond_95
    add-int/lit8 v8, v8, -0x1

    goto :goto_23

    :cond_98
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_16

    :cond_9c
    iget-boolean v5, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    iget-object v7, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->isShowingDream()Z

    move-result v7

    or-int/2addr v5, v7

    iput-boolean v5, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    iget-boolean v5, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    if-eq v5, v0, :cond_e2

    invoke-direct {p0, v2}, Lcom/android/server/am/KeyguardController;->handleOccludedChanged(Z)V

    iget-boolean v5, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    if-eqz v5, :cond_e2

    iget-object v5, p0, Lcom/android/server/am/KeyguardController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mPrepareOccluding:Z

    if-nez v5, :cond_e2

    iget-object v5, p0, Lcom/android/server/am/KeyguardController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mOccluding:Z

    if-eqz v5, :cond_e2

    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v5, :cond_de

    const-string v5, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "visibilitiesUpdated, mOccluding is set to false, caller="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x3

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_de
    iget-object v5, p0, Lcom/android/server/am/KeyguardController;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v2, v5, Lcom/android/server/am/ActivityManagerService;->mOccluding:Z

    :cond_e2
    iget-boolean v2, p0, Lcom/android/server/am/KeyguardController;->mDexOccluded:Z

    if-eq v2, v4, :cond_e9

    invoke-direct {p0, v6}, Lcom/android/server/am/KeyguardController;->handleOccludedChanged(Z)V

    :cond_e9
    iget-object v2, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v2, v1, :cond_118

    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->handleDismissKeyguard()V

    iget-object v2, p0, Lcom/android/server/am/KeyguardController;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v2, :cond_118

    iget-object v2, p0, Lcom/android/server/am/KeyguardController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    if-eqz v2, :cond_118

    iget-object v2, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_110

    iget-object v2, p0, Lcom/android/server/am/KeyguardController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v3, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getUid()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Lcom/android/server/am/MARsPolicyManager;->setKeyguardPkgInfo(Ljava/lang/String;I)V

    goto :goto_118

    :cond_110
    iget-object v2, p0, Lcom/android/server/am/KeyguardController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v5}, Lcom/android/server/am/MARsPolicyManager;->setKeyguardPkgInfo(Ljava/lang/String;I)V

    :cond_118
    :goto_118
    return-void
.end method


# virtual methods
.method beginActivityVisibilityUpdate()V
    .registers 2

    iget v0, p0, Lcom/android/server/am/KeyguardController;->mVisibilityTransactionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/KeyguardController;->mVisibilityTransactionDepth:I

    return-void
.end method

.method canDismissKeyguard()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardTrusted()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method canShowActivityWhileKeyguardShowing(Lcom/android/server/am/ActivityRecord;Z)Z
    .registers 4

    if-eqz p2, :cond_16

    invoke-virtual {p0}, Lcom/android/server/am/KeyguardController;->canDismissKeyguard()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mAodShowing:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mDismissalRequested:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    if-eq p1, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method canShowWhileOccluded(ZZ)Z
    .registers 4

    if-nez p2, :cond_f

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .registers 8

    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez v1, :cond_b

    goto :goto_3b

    :cond_b
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity requesting to dismiss Keyguard: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTurnScreenOnFlag()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isTopRunningActivity()Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string/jumbo v2, "dismissKeyguard"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->wakeUp(Ljava/lang/String;)V

    :cond_35
    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    return-void

    :cond_3b
    :goto_3b
    invoke-direct {p0, p2}, Lcom/android/server/am/KeyguardController;->failCallback(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KeyguardController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mKeyguardShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mAodShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mAodShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mKeyguardGoingAway="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mKeyguardGoingAway:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mOccluded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDismissingKeyguardActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDismissalRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mDismissalRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mVisibilityTransactionDepth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/KeyguardController;->mVisibilityTransactionDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDexOccluded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mDexOccluded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method endActivityVisibilityUpdate()V
    .registers 2

    iget v0, p0, Lcom/android/server/am/KeyguardController;->mVisibilityTransactionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/KeyguardController;->mVisibilityTransactionDepth:I

    iget v0, p0, Lcom/android/server/am/KeyguardController;->mVisibilityTransactionDepth:I

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->visibilitiesUpdated()V

    :cond_d
    return-void
.end method

.method handleDexDisplayDisabled()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mDexDisplaySleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-eqz v0, :cond_18

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_10

    const-string v0, "ActivityManager"

    const-string/jumbo v1, "handleDexDisplayDisabled: release mDexDisplaySleepToken"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mDexDisplaySleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/KeyguardController;->mDexDisplaySleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    :cond_18
    return-void
.end method

.method isAodShowing()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mAodShowing:Z

    return v0
.end method

.method isKeyguardGoingAway()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardGoingAway:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method isKeyguardLocked()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardGoingAway:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method isKeyguardOrAodShowing(I)Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mAodShowing:Z

    if-eqz v0, :cond_19

    :cond_8
    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardGoingAway:Z

    if-nez v0, :cond_19

    if-nez p1, :cond_13

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    if-nez v0, :cond_19

    goto :goto_17

    :cond_13
    iget v0, p0, Lcom/android/server/am/KeyguardController;->mSecondaryDisplayShowing:I

    if-ne p1, v0, :cond_19

    :goto_17
    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0
.end method

.method isKeyguardShowing(I)Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardGoingAway:Z

    if-nez v0, :cond_15

    if-nez p1, :cond_f

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    if-nez v0, :cond_15

    goto :goto_13

    :cond_f
    iget v0, p0, Lcom/android/server/am/KeyguardController;->mSecondaryDisplayShowing:I

    if-ne p1, v0, :cond_15

    :goto_13
    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method keyguardGoingAway(I)V
    .registers 9

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string/jumbo v0, "keyguardGoingAway"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SIDE_TOUCH_FINGERPRINT:Z

    if-eqz v0, :cond_1a

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->keyguardGoingAwayWithWakeAndUnlock()V

    :cond_1a
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    const/4 v0, 0x1

    :try_start_20
    invoke-direct {p0, v0}, Lcom/android/server/am/KeyguardController;->setKeyguardGoingAway(Z)V

    iget-object v3, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0x14

    invoke-direct {p0, p1}, Lcom/android/server/am/KeyguardController;->convertTransitFlags(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZIZ)V

    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->updateKeyguardSleepToken()V

    iget-object v3, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    iget-object v3, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v6, v6}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v3, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->addStartingWindowsForVisibleActivities(Z)V

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V
    :try_end_47
    .catchall {:try_start_20 .. :try_end_47} :catchall_5a

    const-string/jumbo v0, "keyguardGoingAway: surfaceLayout"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_5a
    move-exception v0

    const-string/jumbo v3, "keyguardGoingAway: surfaceLayout"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method setKeyguardShown(ZZI)V
    .registers 11

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mAodShowing:Z

    if-eq p2, v0, :cond_b

    goto :goto_d

    :cond_b
    move v0, v2

    goto :goto_e

    :cond_d
    :goto_d
    move v0, v1

    :goto_e
    iget-boolean v3, p0, Lcom/android/server/am/KeyguardController;->mKeyguardGoingAway:Z

    if-eqz v3, :cond_16

    if-eqz p1, :cond_16

    move v3, v1

    goto :goto_17

    :cond_16
    move v3, v2

    :goto_17
    or-int/2addr v0, v3

    iget-boolean v3, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-eq p1, v3, :cond_1e

    move v3, v1

    goto :goto_1f

    :cond_1e
    move v3, v2

    :goto_1f
    if-nez p1, :cond_27

    iget-boolean v4, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-nez v4, :cond_27

    move v4, v1

    goto :goto_28

    :cond_27
    move v4, v2

    :goto_28
    iget-boolean v5, p0, Lcom/android/server/am/KeyguardController;->mAodShowing:Z

    if-eq p2, v5, :cond_2d

    goto :goto_2e

    :cond_2d
    move v1, v2

    :goto_2e
    if-nez v0, :cond_35

    iget v5, p0, Lcom/android/server/am/KeyguardController;->mSecondaryDisplayShowing:I

    if-ne p3, v5, :cond_35

    return-void

    :cond_35
    iput-boolean p1, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    iput-boolean p2, p0, Lcom/android/server/am/KeyguardController;->mAodShowing:Z

    iput p3, p0, Lcom/android/server/am/KeyguardController;->mSecondaryDisplayShowing:I

    iget-object v5, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, p2}, Lcom/android/server/wm/WindowManagerService;->setAodShowing(Z)V

    if-eqz v0, :cond_62

    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->dismissDockedStackIfNeeded()V

    if-eqz v3, :cond_49

    if-nez p1, :cond_4d

    :cond_49
    if-eqz v4, :cond_50

    if-eqz v1, :cond_50

    :cond_4d
    invoke-direct {p0, v2}, Lcom/android/server/am/KeyguardController;->setKeyguardGoingAway(Z)V

    :cond_50
    iget-object v5, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v2}, Lcom/android/server/am/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->setKeyguardOrAodShowingOnDefaultDisplay(Z)V

    if-eqz p1, :cond_62

    iput-boolean v2, p0, Lcom/android/server/am/KeyguardController;->mDismissalRequested:Z

    iget-object v5, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v2, v2}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    :cond_62
    iget-object v5, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->updateKeyguardSleepToken()V

    iget-object v2, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v2, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
