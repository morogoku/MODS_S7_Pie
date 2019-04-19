.class public Lcom/android/server/am/ActivityStartController;
.super Ljava/lang/Object;
.source "ActivityStartController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStartController$StartHandler;
    }
.end annotation


# static fields
.field private static final DO_PENDING_ACTIVITY_LAUNCHES_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private final mFactory:Lcom/android/server/am/ActivityStarter$Factory;

.field private final mHandler:Landroid/os/Handler;

.field private mLastHomeActivityStartRecord:Lcom/android/server/am/ActivityRecord;

.field private mLastHomeActivityStartResult:I

.field private mLastStarter:Lcom/android/server/am/ActivityStarter;

.field private final mPendingActivityLaunches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingRemoteAnimationRegistry:Lcom/android/server/am/PendingRemoteAnimationRegistry;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private tmpOutRecord:[Lcom/android/server/am/ActivityRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 7

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v1, Lcom/android/server/am/ActivityStarter$DefaultFactory;

    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v3, Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v4, p1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {v3, p1, v4}, Lcom/android/server/am/ActivityStartInterceptor;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V

    invoke-direct {v1, p1, v2, v3}, Lcom/android/server/am/ActivityStarter$DefaultFactory;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStartInterceptor;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/ActivityStartController;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStarter$Factory;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStarter$Factory;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/am/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStartController;->tmpOutRecord:[Lcom/android/server/am/ActivityRecord;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityStartController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v0, Lcom/android/server/am/ActivityStartController$StartHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityStartController$StartHandler;-><init>(Lcom/android/server/am/ActivityStartController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStartController;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/am/ActivityStartController;->mFactory:Lcom/android/server/am/ActivityStarter$Factory;

    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mFactory:Lcom/android/server/am/ActivityStarter$Factory;

    invoke-interface {v0, p0}, Lcom/android/server/am/ActivityStarter$Factory;->setController(Lcom/android/server/am/ActivityStartController;)V

    new-instance v0, Lcom/android/server/am/PendingRemoteAnimationRegistry;

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {v0, p1, v1}, Lcom/android/server/am/PendingRemoteAnimationRegistry;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/am/PendingRemoteAnimationRegistry;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityStartController;)Lcom/android/server/am/ActivityManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method


# virtual methods
.method addPendingActivityLaunch(Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method checkTargetUser(IZIILjava/lang/String;)I
    .registers 15

    if-eqz p2, :cond_12

    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x0

    move v2, p3

    move v3, p4

    move v4, p1

    move-object v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_12
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->ensureNotSpecialUser(I)V

    return p1
.end method

.method clearPendingActivityLaunches(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_8
    if-ltz v1, :cond_26

    iget-object v2, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    iget-object v3, v2, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_23

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    iget-object v4, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_26
    iget-object v1, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_30

    const/4 v1, 0x1

    goto :goto_31

    :cond_30
    const/4 v1, 0x0

    :goto_31
    return v1
.end method

.method final doPendingActivityLaunches(Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;Landroid/app/ActivityOptions;)V
    .registers 15

    const-string/jumbo v0, "pendingActivityLaunch-for-process-kill"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    :try_start_8
    iget-object v3, p1, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    iget-object v4, p1, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->sourceRecord:Lcom/android/server/am/ActivityRecord;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p1, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->startFlags:I

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v9, p2

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/am/ActivityStarter;->startResolvedActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_18

    goto :goto_36

    :catch_18
    move-exception v0

    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception during pending activity launch for process kill. pal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->sendErrorResult(Ljava/lang/String;)V

    :goto_36
    return-void
.end method

.method doPendingActivityLaunches(Z)V
    .registers 14

    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_54

    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    if-eqz p1, :cond_1d

    iget-object v2, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v1, 0x1

    nop

    :cond_1d
    move v8, v1

    const/4 v1, 0x0

    const-string/jumbo v2, "pendingActivityLaunch"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    :try_start_26
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->sourceRecord:Lcom/android/server/am/ActivityRecord;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->startFlags:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/am/ActivityStarter;->startResolvedActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_34} :catch_35

    goto :goto_53

    :catch_35
    move-exception v1

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception during pending activity launch pal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->sendErrorResult(Ljava/lang/String;)V

    :goto_53
    goto :goto_0

    :cond_54
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastHomeActivityStartResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartResult:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_31

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastHomeActivityStartRecord:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/am/ActivityRecord;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_31
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_37

    move v2, v1

    goto :goto_38

    :cond_37
    move v2, v0

    :goto_38
    iget-object v3, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    if-eqz v3, :cond_75

    if-eqz v2, :cond_56

    iget-object v3, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    invoke-virtual {v3, p3}, Lcom/android/server/am/ActivityStarter;->relatedToPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_56

    iget-object v3, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_55

    iget-object v3, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    goto :goto_56

    :cond_55
    goto :goto_57

    :cond_56
    :goto_56
    move v0, v1

    :goto_57
    if-eqz v0, :cond_75

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/android/server/am/ActivityStarter;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    if-eqz v2, :cond_75

    return-void

    :cond_75
    if-eqz v2, :cond_7f

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "(nothing)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7f
    return-void
.end method

.method getPendingRemoteAnimationRegistry()Lcom/android/server/am/PendingRemoteAnimationRegistry;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/am/PendingRemoteAnimationRegistry;

    return-object v0
.end method

.method obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mFactory:Lcom/android/server/am/ActivityStarter$Factory;

    invoke-interface {v0}, Lcom/android/server/am/ActivityStarter$Factory;->obtain()Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStarter;->setIntent(Landroid/content/Intent;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityStarter;->setReason(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    return-object v0
.end method

.method onExecutionComplete(Lcom/android/server/am/ActivityStarter;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mFactory:Lcom/android/server/am/ActivityStarter$Factory;

    invoke-interface {v0}, Lcom/android/server/am/ActivityStarter$Factory;->obtain()Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    :cond_c
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStarter;->set(Lcom/android/server/am/ActivityStarter;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mFactory:Lcom/android/server/am/ActivityStarter$Factory;

    invoke-interface {v0, p1}, Lcom/android/server/am/ActivityStarter$Factory;->recycle(Lcom/android/server/am/ActivityStarter;)V

    return-void
.end method

.method postStartActivityProcessingForLastStarter(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityStarter;->postStartActivityProcessing(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V

    return-void
.end method

.method registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/am/PendingRemoteAnimationRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/PendingRemoteAnimationRegistry;->addPendingAnimation(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V

    return-void
.end method

.method schedulePendingActivityLaunches(J)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStartController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method startActivities(Landroid/app/IApplicationThread;ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/am/SafeActivityOptions;ILjava/lang/String;)I
    .registers 56

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    if-eqz v4, :cond_411

    if-eqz v5, :cond_406

    array-length v0, v4

    array-length v7, v5

    if-ne v0, v7, :cond_3fb

    const/4 v7, 0x0

    const/4 v0, 0x0

    if-eqz v6, :cond_4a

    iget-object v8, v1, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v8}, Lcom/android/server/am/SafeActivityOptions;->getOptions(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v8

    if-eqz v8, :cond_4a

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v9

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_37

    invoke-virtual {v9, v11}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    new-instance v10, Lcom/android/server/am/SafeActivityOptions;

    invoke-direct {v10, v9}, Lcom/android/server/am/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    move-object v0, v10

    goto :goto_4a

    :cond_37
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v10

    if-eqz v10, :cond_4a

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    new-instance v10, Lcom/android/server/am/SafeActivityOptions;

    invoke-direct {v10, v9}, Lcom/android/server/am/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    move-object v0, v10

    :cond_4a
    :goto_4a
    move-object v8, v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    const/4 v0, -0x1

    if-ltz p2, :cond_5a

    const/4 v10, -0x1

    move/from16 v13, p2

    goto :goto_63

    :cond_5a
    if-nez v2, :cond_60

    move v10, v15

    move v9, v14

    :goto_5e
    move v13, v9

    goto :goto_63

    :cond_60
    move v9, v0

    move v10, v0

    goto :goto_5e

    :goto_63
    move v12, v10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    const/4 v9, 0x0

    const/4 v0, 0x0

    aget-object v16, v4, v0

    move/from16 v18, v13

    if-eqz v16, :cond_7a

    aget-object v13, v4, v0

    invoke-virtual {v13}, Landroid/content/Intent;->isPairWindowingMode()Z

    move-result v13

    if-eqz v13, :cond_7a

    const/4 v13, 0x1

    goto :goto_7b

    :cond_7a
    move v13, v0

    :goto_7b
    move/from16 v20, v13

    if-eqz v20, :cond_86

    iget-object v9, v1, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/MultiWindowManagerService;->preStartPairActivities()V

    :cond_86
    :try_start_86
    iget-object v13, v1, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_3ca

    :try_start_89
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v9, 0x1

    new-array v0, v9, [Lcom/android/server/am/ActivityRecord;
    :try_end_8f
    .catchall {:try_start_89 .. :try_end_8f} :catchall_3ae

    move-object/from16 v19, p6

    const/16 v16, 0x0

    :goto_93
    move/from16 v21, v16

    :try_start_95
    array-length v9, v4
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_39a

    move-object/from16 v23, v13

    move/from16 v13, v21

    if-ge v13, v9, :cond_35c

    :try_start_9c
    aget-object v9, v4, v13
    :try_end_9e
    .catchall {:try_start_9c .. :try_end_9e} :catchall_34a

    if-nez v9, :cond_b7

    nop

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-wide v4, v10

    move/from16 v42, v12

    move/from16 v16, v13

    move v13, v14

    move/from16 v43, v15

    move/from16 v7, v18

    move-object/from16 v18, v23

    const/16 v22, 0x1

    move-object/from16 v15, p9

    goto/16 :goto_2e6

    :cond_b7
    if-eqz v9, :cond_109

    :try_start_b9
    invoke-virtual {v9}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v16
    :try_end_bd
    .catchall {:try_start_b9 .. :try_end_bd} :catchall_f4

    if-nez v16, :cond_c4

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    goto :goto_10d

    :cond_c4
    move-object/from16 v24, v7

    :try_start_c6
    new-instance v7, Ljava/lang/IllegalArgumentException;
    :try_end_c8
    .catchall {:try_start_c6 .. :try_end_c8} :catchall_e1

    move-object/from16 v25, v8

    :try_start_ca
    const-string v8, "File descriptors passed in Intent"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_d0
    .catchall {:try_start_ca .. :try_end_d0} :catchall_d0

    :catchall_d0
    move-exception v0

    move-wide v4, v10

    move/from16 v42, v12

    move v13, v14

    move/from16 v43, v15

    move/from16 v7, v18

    move-object/from16 v10, v19

    move-object/from16 v18, v23

    :goto_dd
    move-object/from16 v15, p9

    goto/16 :goto_3c1

    :catchall_e1
    move-exception v0

    move-object/from16 v25, v8

    move-wide v4, v10

    move/from16 v42, v12

    move v13, v14

    move/from16 v43, v15

    move/from16 v7, v18

    move-object/from16 v10, v19

    move-object/from16 v18, v23

    move-object/from16 v15, p9

    goto/16 :goto_3c1

    :catchall_f4
    move-exception v0

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-wide v4, v10

    move/from16 v42, v12

    move v13, v14

    move/from16 v43, v15

    move/from16 v7, v18

    move-object/from16 v10, v19

    move-object/from16 v18, v23

    move-object/from16 v15, p9

    goto/16 :goto_3c1

    :cond_109
    move-object/from16 v24, v7

    move-object/from16 v25, v8

    :goto_10d
    :try_start_10d
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_115

    const/4 v7, 0x1

    goto :goto_116

    :cond_115
    const/4 v7, 0x0

    :goto_116
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_11b
    .catchall {:try_start_10d .. :try_end_11b} :catchall_339

    move/from16 v21, p8

    if-eqz v20, :cond_1ce

    :try_start_11f
    invoke-virtual {v8}, Landroid/content/Intent;->getPairWindowingMode()I

    move-result v9
    :try_end_123
    .catchall {:try_start_11f .. :try_end_123} :catchall_1bd

    move-wide/from16 v34, v10

    const/4 v10, 0x3

    if-ne v9, v10, :cond_141

    :try_start_128
    iget-object v9, v1, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateState(ILandroid/graphics/Rect;)V
    :try_end_131
    .catchall {:try_start_128 .. :try_end_131} :catchall_132

    goto :goto_142

    :catchall_132
    move-exception v0

    move/from16 v42, v12

    move v13, v14

    move/from16 v43, v15

    move/from16 v7, v18

    move-object/from16 v10, v19

    move-object/from16 v18, v23

    move-wide/from16 v4, v34

    goto :goto_dd

    :cond_141
    const/4 v11, 0x0

    :goto_142
    :try_start_142
    invoke-virtual {v8}, Landroid/content/Intent;->getPairActivityUserId()I

    move-result v9

    move v10, v9

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-eq v10, v9, :cond_18f

    iget-object v9, v1, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const/16 v16, 0x0

    const/16 v26, 0x2

    const-string/jumbo v27, "startPairActivities"
    :try_end_158
    .catchall {:try_start_142 .. :try_end_158} :catchall_1ab

    const/16 v28, 0x0

    move-object/from16 v33, v11

    const/16 v22, 0x1

    move/from16 v29, v10

    move-wide/from16 v36, v34

    move v10, v15

    move v11, v14

    move/from16 v38, v12

    move/from16 v12, v29

    move/from16 v39, v7

    move v6, v13

    move/from16 v7, v18

    move-object/from16 v18, v23

    move/from16 v13, v16

    move/from16 v40, v14

    move/from16 v14, v26

    move/from16 v41, v15

    move-object/from16 v15, v27

    move-object/from16 v16, v28

    :try_start_17b
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v9
    :try_end_17f
    .catchall {:try_start_17b .. :try_end_17f} :catchall_182

    move/from16 v21, v9

    goto :goto_1a4

    :catchall_182
    move-exception v0

    move-object/from16 v15, p9

    move-object/from16 v10, v19

    move-wide/from16 v4, v36

    move/from16 v42, v38

    move/from16 v13, v40

    goto/16 :goto_220

    :cond_18f
    move/from16 v39, v7

    move/from16 v29, v10

    move-object/from16 v33, v11

    move/from16 v38, v12

    move v6, v13

    move/from16 v40, v14

    move/from16 v41, v15

    move/from16 v7, v18

    move-object/from16 v18, v23

    move-wide/from16 v36, v34

    const/16 v22, 0x1

    :goto_1a4
    const/16 v19, 0x0

    move-object/from16 v10, v19

    move/from16 v9, v21

    goto :goto_1e5

    :catchall_1ab
    move-exception v0

    move/from16 v7, v18

    move-object/from16 v18, v23

    move/from16 v42, v12

    move v13, v14

    move/from16 v43, v15

    move-object/from16 v10, v19

    move-wide/from16 v4, v34

    move-object/from16 v15, p9

    goto/16 :goto_3c1

    :catchall_1bd
    move-exception v0

    move/from16 v7, v18

    move-object/from16 v18, v23

    move-wide v4, v10

    move/from16 v42, v12

    move v13, v14

    move/from16 v43, v15

    move-object/from16 v10, v19

    move-object/from16 v15, p9

    goto/16 :goto_3c1

    :cond_1ce
    move/from16 v39, v7

    move-wide/from16 v36, v10

    move/from16 v38, v12

    move v6, v13

    move/from16 v40, v14

    move/from16 v41, v15

    move/from16 v7, v18

    move-object/from16 v18, v23

    const/16 v22, 0x1

    const/16 v33, 0x0

    move-object/from16 v10, v19

    move/from16 v9, v21

    :goto_1e5
    :try_start_1e5
    iget-object v11, v1, Lcom/android/server/am/ActivityStartController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    aget-object v28, v5, v6
    :try_end_1e9
    .catchall {:try_start_1e5 .. :try_end_1e9} :catchall_32a

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v12, -0x2710

    move/from16 v13, v40

    :try_start_1f1
    invoke-static {v7, v13, v12}, Lcom/android/server/am/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v32

    move-object/from16 v26, v11

    move-object/from16 v27, v8

    move/from16 v31, v9

    invoke-virtual/range {v26 .. v32}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;

    move-result-object v11

    iget-object v12, v1, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v12, v11, v9}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v12
    :try_end_205
    .catchall {:try_start_1f1 .. :try_end_205} :catchall_31d

    move-object v11, v12

    if-eqz v11, :cond_226

    :try_start_208
    iget-object v12, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v12, v12, 0x2

    if-nez v12, :cond_211

    goto :goto_226

    :cond_211
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v14, "FLAG_CANT_SAVE_STATE not supported here"

    invoke-direct {v12, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_219
    .catchall {:try_start_208 .. :try_end_219} :catchall_219

    :catchall_219
    move-exception v0

    move-object/from16 v15, p9

    move-wide/from16 v4, v36

    move/from16 v42, v38

    :goto_220
    move/from16 v43, v41

    move-object/from16 v6, p7

    goto/16 :goto_3c1

    :cond_226
    :goto_226
    :try_start_226
    array-length v12, v4
    :try_end_227
    .catchall {:try_start_226 .. :try_end_227} :catchall_31d

    add-int/lit8 v12, v12, -0x1

    if-ne v6, v12, :cond_22e

    move/from16 v12, v22

    goto :goto_22f

    :cond_22e
    const/4 v12, 0x0

    :goto_22f
    if-eqz v12, :cond_234

    move-object/from16 v14, p7

    goto :goto_236

    :cond_234
    move-object/from16 v14, v33

    :goto_236
    if-nez v14, :cond_247

    if-nez v6, :cond_23d

    move/from16 v15, v22

    goto :goto_23e

    :cond_23d
    const/4 v15, 0x0

    :goto_23e
    if-eqz v15, :cond_243

    move-object/from16 v16, v25

    goto :goto_245

    :cond_243
    move-object/from16 v16, v33

    :goto_245
    move-object/from16 v14, v16

    :cond_247
    move-object/from16 v15, p9

    :try_start_249
    invoke-virtual {v1, v8, v15}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    aget-object v2, v5, v6

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/android/server/am/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/android/server/am/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStarter;->setRequestCode(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2
    :try_end_264
    .catchall {:try_start_249 .. :try_end_264} :catchall_31b

    move/from16 v4, v38

    :try_start_266
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStarter;->setCallingPid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/server/am/ActivityStarter;->setCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2
    :try_end_272
    .catchall {:try_start_266 .. :try_end_272} :catchall_310

    move/from16 v42, v4

    move/from16 v4, v41

    :try_start_276
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/android/server/am/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/android/server/am/ActivityStarter;->setActivityOptions(Lcom/android/server/am/SafeActivityOptions;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2
    :try_end_282
    .catchall {:try_start_276 .. :try_end_282} :catchall_307

    move/from16 v43, v4

    move/from16 v4, v39

    :try_start_286
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStarter;->setComponentSpecified(Z)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityStarter;->setOutActivity([Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/android/server/am/ActivityStarter;->setAllowPendingRemoteAnimationRegistryLookup(Z)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStarter;->execute()I

    move-result v2

    if-gez v2, :cond_2cb

    monitor-exit v18
    :try_end_299
    .catchall {:try_start_286 .. :try_end_299} :catchall_300

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v20, :cond_2bf

    move/from16 v44, v4

    iget-object v4, v1, Lcom/android/server/am/ActivityStartController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move/from16 v16, v6

    move-object/from16 v6, p7

    invoke-virtual {v6, v4}, Lcom/android/server/am/SafeActivityOptions;->getOptions(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getDockedStackSizeType()I

    move-result v4

    if-eqz v4, :cond_2b7

    iget-object v5, v1, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/am/MultiWindowManagerService;->resizeDockedStack(I)V

    :cond_2b7
    iget-object v5, v1, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v5, v3}, Lcom/android/server/am/MultiWindowManagerService;->postStartPairActivities(Ljava/lang/String;)V

    goto :goto_2c5

    :cond_2bf
    move/from16 v44, v4

    move/from16 v16, v6

    move-object/from16 v6, p7

    :goto_2c5
    move-wide/from16 v4, v36

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_2cb
    move/from16 v44, v4

    move/from16 v16, v6

    move-wide/from16 v4, v36

    move-object/from16 v6, p7

    const/16 v17, 0x0

    :try_start_2d5
    aget-object v19, v0, v17

    if-eqz v19, :cond_2e2

    move/from16 v45, v2

    aget-object v2, v0, v17

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;
    :try_end_2df
    .catchall {:try_start_2d5 .. :try_end_2df} :catchall_3c8

    move-object/from16 v33, v2

    goto :goto_2e4

    :cond_2e2
    move/from16 v45, v2

    :goto_2e4
    move-object/from16 v19, v33

    :goto_2e6
    add-int/lit8 v16, v16, 0x1

    move-wide v10, v4

    move v14, v13

    move-object/from16 v13, v18

    move/from16 v9, v22

    move-object/from16 v8, v25

    move/from16 v12, v42

    move/from16 v15, v43

    move-object/from16 v2, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v18, v7

    move-object/from16 v7, v24

    goto/16 :goto_93

    :catchall_300
    move-exception v0

    move-wide/from16 v4, v36

    move-object/from16 v6, p7

    goto/16 :goto_3c1

    :catchall_307
    move-exception v0

    move/from16 v43, v4

    move-wide/from16 v4, v36

    move-object/from16 v6, p7

    goto/16 :goto_3c1

    :catchall_310
    move-exception v0

    move/from16 v42, v4

    move-wide/from16 v4, v36

    move/from16 v43, v41

    move-object/from16 v6, p7

    goto/16 :goto_3c1

    :catchall_31b
    move-exception v0

    goto :goto_320

    :catchall_31d
    move-exception v0

    move-object/from16 v15, p9

    :goto_320
    move-wide/from16 v4, v36

    move/from16 v42, v38

    move/from16 v43, v41

    move-object/from16 v6, p7

    goto/16 :goto_3c1

    :catchall_32a
    move-exception v0

    move-object/from16 v15, p9

    move-wide/from16 v4, v36

    move/from16 v42, v38

    move/from16 v13, v40

    move/from16 v43, v41

    move-object/from16 v6, p7

    goto/16 :goto_3c1

    :catchall_339
    move-exception v0

    move-wide v4, v10

    move/from16 v42, v12

    move v13, v14

    move/from16 v43, v15

    move/from16 v7, v18

    move-object/from16 v18, v23

    move-object/from16 v15, p9

    move-object/from16 v10, v19

    goto/16 :goto_3c1

    :catchall_34a
    move-exception v0

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-wide v4, v10

    move/from16 v42, v12

    move v13, v14

    move/from16 v43, v15

    move/from16 v7, v18

    move-object/from16 v18, v23

    move-object/from16 v15, p9

    goto :goto_3ab

    :cond_35c
    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-wide v4, v10

    move/from16 v42, v12

    move v13, v14

    move/from16 v43, v15

    move/from16 v7, v18

    move-object/from16 v18, v23

    move-object/from16 v15, p9

    :try_start_36c
    monitor-exit v18
    :try_end_36d
    .catchall {:try_start_36c .. :try_end_36d} :catchall_396

    :try_start_36d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_370
    .catchall {:try_start_36d .. :try_end_370} :catchall_392

    if-eqz v20, :cond_38c

    iget-object v0, v1, Lcom/android/server/am/ActivityStartController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v0}, Lcom/android/server/am/SafeActivityOptions;->getOptions(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getDockedStackSizeType()I

    move-result v0

    if-eqz v0, :cond_385

    iget-object v2, v1, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/am/MultiWindowManagerService;->resizeDockedStack(I)V

    :cond_385
    iget-object v2, v1, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v2, v3}, Lcom/android/server/am/MultiWindowManagerService;->postStartPairActivities(Ljava/lang/String;)V

    :cond_38c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v0, 0x0

    return v0

    :catchall_392
    move-exception v0

    move-object/from16 v10, v19

    goto :goto_3db

    :catchall_396
    move-exception v0

    move-object/from16 v10, v19

    goto :goto_3c1

    :catchall_39a
    move-exception v0

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-wide v4, v10

    move/from16 v42, v12

    move/from16 v43, v15

    move/from16 v7, v18

    move-object/from16 v15, p9

    move-object/from16 v18, v13

    move v13, v14

    :goto_3ab
    move-object/from16 v10, v19

    goto :goto_3c1

    :catchall_3ae
    move-exception v0

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-wide v4, v10

    move/from16 v42, v12

    move/from16 v43, v15

    move/from16 v7, v18

    move-object/from16 v15, p9

    move-object/from16 v18, v13

    move v13, v14

    move-object/from16 v10, p6

    :goto_3c1
    :try_start_3c1
    monitor-exit v18
    :try_end_3c2
    .catchall {:try_start_3c1 .. :try_end_3c2} :catchall_3c8

    :try_start_3c2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_3c6
    .catchall {:try_start_3c2 .. :try_end_3c6} :catchall_3c6

    :catchall_3c6
    move-exception v0

    goto :goto_3db

    :catchall_3c8
    move-exception v0

    goto :goto_3c1

    :catchall_3ca
    move-exception v0

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-wide v4, v10

    move/from16 v42, v12

    move v13, v14

    move/from16 v43, v15

    move/from16 v7, v18

    move-object/from16 v15, p9

    move-object/from16 v10, p6

    :goto_3db
    if-eqz v20, :cond_3f7

    iget-object v2, v1, Lcom/android/server/am/ActivityStartController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v2}, Lcom/android/server/am/SafeActivityOptions;->getOptions(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getDockedStackSizeType()I

    move-result v2

    if-eqz v2, :cond_3f0

    iget-object v8, v1, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v8, v2}, Lcom/android/server/am/MultiWindowManagerService;->resizeDockedStack(I)V

    :cond_3f0
    iget-object v8, v1, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v8, v3}, Lcom/android/server/am/MultiWindowManagerService;->postStartPairActivities(Ljava/lang/String;)V

    :cond_3f7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_3fb
    move-object/from16 v15, p9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "intents are length different than resolvedTypes"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_406
    move-object/from16 v15, p9

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "resolvedTypes is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_411
    move-object/from16 v15, p9

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "intents is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final startActivitiesInPackage(ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/am/SafeActivityOptions;IZ)I
    .registers 26

    const-string/jumbo v0, "startActivityInPackage"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const-string/jumbo v6, "startActivityInPackage"

    move-object/from16 v1, p0

    move/from16 v2, p7

    move/from16 v3, p8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v1

    const-string/jumbo v16, "startActivityInPackage"

    const/4 v8, 0x0

    move-object/from16 v7, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move v15, v1

    invoke-virtual/range {v7 .. v16}, Lcom/android/server/am/ActivityStartController;->startActivities(Landroid/app/IApplicationThread;ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/am/SafeActivityOptions;ILjava/lang/String;)I

    move-result v2

    return v2
.end method

.method final startActivityInPackage(IIILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/am/SafeActivityOptions;ILcom/android/server/am/TaskRecord;Ljava/lang/String;Z)I
    .registers 32

    move-object/from16 v6, p0

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    iget-object v0, v6, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mSIOPLevel:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_13

    iget-object v0, v6, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryOverheatLevel:I

    if-lez v0, :cond_2d

    :cond_13
    iget-object v0, v6, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityManagerService;->isPossibleToStart(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, v6, Lcom/android/server/am/ActivityStartController;->mHandler:Landroid/os/Handler;

    iget-object v1, v6, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, v6, Lcom/android/server/am/ActivityStartController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/16 v1, -0x66

    return v1

    :cond_2d
    move-object v0, v6

    move/from16 v1, p12

    move/from16 v2, p15

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p14

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_4e

    nop

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v8, v7, v0, v1}, Lcom/android/server/DualAppManagerService;->mayForwardShare(Landroid/content/Intent;Ljava/lang/String;II)Z

    :cond_4e
    move-object/from16 v1, p14

    invoke-virtual {v6, v8, v1}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStarter;->setCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    move/from16 v4, p2

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    move/from16 v5, p3

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/server/am/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    move-object/from16 v9, p6

    invoke-virtual {v2, v9}, Lcom/android/server/am/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    move-object/from16 v10, p7

    invoke-virtual {v2, v10}, Lcom/android/server/am/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    move-object/from16 v11, p8

    invoke-virtual {v2, v11}, Lcom/android/server/am/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    move/from16 v12, p9

    invoke-virtual {v2, v12}, Lcom/android/server/am/ActivityStarter;->setRequestCode(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    move/from16 v13, p10

    invoke-virtual {v2, v13}, Lcom/android/server/am/ActivityStarter;->setStartFlags(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    move-object/from16 v14, p11

    invoke-virtual {v2, v14}, Lcom/android/server/am/ActivityStarter;->setActivityOptions(Lcom/android/server/am/SafeActivityOptions;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityStarter;->setMayWait(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    move-object/from16 v15, p13

    invoke-virtual {v2, v15}, Lcom/android/server/am/ActivityStarter;->setInTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStarter;->execute()I

    move-result v2

    return v2
.end method

.method startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p3}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(Ljava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startHomeActivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStartController;->tmpOutRecord:[Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStarter;->setOutActivity([Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStarter;->setCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStarter;->execute()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartResult:I

    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->tmpOutRecord:[Lcom/android/server/am/ActivityRecord;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    :cond_41
    return-void
.end method

.method startSetupActivity()V
    .registers 11

    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getCheckedForSetup()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, v1, Lcom/android/server/am/ActivityManagerService;->mFactoryTest:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a8

    const-string v1, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_a8

    iget-object v1, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->setCheckedForSetup(Z)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UPGRADE_SETUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const v4, 0x100480

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a8

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_59

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "android.SETUP_VERSION"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_5a

    :cond_59
    const/4 v5, 0x0

    :goto_5a
    if-nez v5, :cond_70

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_70

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "android.SETUP_VERSION"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_70
    const-string/jumbo v6, "last_setup_shown"

    invoke-static {v0, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_a8

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a8

    const/high16 v7, 0x10000000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v7, "startSetupActivity"

    invoke-virtual {p0, v1, v7}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/server/am/ActivityStarter;->setCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v3

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v7}, Lcom/android/server/am/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityStarter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStarter;->execute()I

    :cond_a8
    return-void
.end method
