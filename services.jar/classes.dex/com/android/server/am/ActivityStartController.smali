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

.method startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/am/SafeActivityOptions;ILjava/lang/String;)I
    .registers 61

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p9

    if-eqz v4, :cond_430

    if-eqz v5, :cond_427

    array-length v0, v4

    array-length v7, v5

    if-ne v0, v7, :cond_41e

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

    if-eqz p3, :cond_51

    nop

    move/from16 v0, p3

    goto :goto_55

    :cond_51
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    :goto_55
    move v15, v0

    const/16 v0, -0x2710

    move/from16 v14, p4

    if-eq v14, v0, :cond_5f

    nop

    move v10, v14

    goto :goto_63

    :cond_5f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    :goto_63
    move v13, v10

    const/4 v12, -0x1

    if-ltz p2, :cond_6b

    const/4 v11, -0x1

    move/from16 v10, p2

    goto :goto_72

    :cond_6b
    if-nez v2, :cond_70

    move v11, v15

    move v10, v13

    goto :goto_72

    :cond_70
    move v10, v12

    move v11, v12

    :goto_72
    const/16 v16, 0x0

    invoke-static {v10, v13, v0}, Lcom/android/server/am/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v14

    move/from16 v26, v14

    move/from16 v25, v15

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    const/4 v0, 0x0

    move-wide/from16 v27, v14

    const/4 v15, 0x0

    aget-object v14, v4, v15

    const/4 v15, 0x1

    if-eqz v14, :cond_94

    const/4 v14, 0x0

    aget-object v12, v4, v14

    invoke-virtual {v12}, Landroid/content/Intent;->isPairWindowingMode()Z

    move-result v12

    if-eqz v12, :cond_94

    move v12, v15

    goto :goto_95

    :cond_94
    const/4 v12, 0x0

    :goto_95
    move/from16 v29, v12

    if-eqz v29, :cond_a0

    iget-object v0, v1, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowManagerService;->preStartPairActivities()V

    :cond_a0
    :try_start_a0
    iget-object v14, v1, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_3ee

    :try_start_a3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    new-array v0, v15, [Lcom/android/server/am/ActivityRecord;
    :try_end_a8
    .catchall {:try_start_a3 .. :try_end_a8} :catchall_3d3

    move-object/from16 v18, p8

    move/from16 v30, v16

    const/4 v12, 0x0

    :goto_ad
    :try_start_ad
    array-length v15, v4

    if-ge v12, v15, :cond_37c

    aget-object v15, v4, v12
    :try_end_b2
    .catchall {:try_start_ad .. :try_end_b2} :catchall_3be

    if-nez v15, :cond_cd

    nop

    move-object/from16 v46, v0

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move v9, v11

    move/from16 v44, v13

    move-object/from16 v24, v14

    move/from16 v43, v25

    move/from16 v7, v26

    move-wide/from16 v4, v27

    const/16 v25, 0x0

    const/16 v26, 0x1

    move v13, v12

    goto/16 :goto_312

    :cond_cd
    if-eqz v15, :cond_120

    :try_start_cf
    invoke-virtual {v15}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v16
    :try_end_d3
    .catchall {:try_start_cf .. :try_end_d3} :catchall_10a

    if-nez v16, :cond_da

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    goto :goto_124

    :cond_da
    move-object/from16 v31, v7

    :try_start_dc
    new-instance v7, Ljava/lang/IllegalArgumentException;
    :try_end_de
    .catchall {:try_start_dc .. :try_end_de} :catchall_f6

    move-object/from16 v32, v8

    :try_start_e0
    const-string v8, "File descriptors passed in Intent"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_e6
    .catchall {:try_start_e0 .. :try_end_e6} :catchall_e6

    :catchall_e6
    move-exception v0

    move v9, v11

    move/from16 v44, v13

    move-object/from16 v24, v14

    move-object/from16 v11, v18

    move/from16 v43, v25

    move/from16 v7, v26

    move-wide/from16 v4, v27

    goto/16 :goto_3bb

    :catchall_f6
    move-exception v0

    move-object/from16 v32, v8

    move v9, v11

    move/from16 v44, v13

    move-object/from16 v24, v14

    move-object/from16 v11, v18

    move/from16 v43, v25

    move/from16 v7, v26

    move-wide/from16 v4, v27

    move/from16 v16, v30

    goto/16 :goto_3e5

    :catchall_10a
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move v9, v11

    move/from16 v44, v13

    move-object/from16 v24, v14

    move-object/from16 v11, v18

    move/from16 v43, v25

    move/from16 v7, v26

    move-wide/from16 v4, v27

    move/from16 v16, v30

    goto/16 :goto_3e5

    :cond_120
    move-object/from16 v31, v7

    move-object/from16 v32, v8

    :goto_124
    :try_start_124
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_12c

    const/4 v7, 0x1

    goto :goto_12d

    :cond_12c
    const/4 v7, 0x0

    :goto_12d
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v15}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_132
    .catchall {:try_start_124 .. :try_end_132} :catchall_36a

    if-eqz v30, :cond_139

    const/high16 v15, 0x10000000

    :try_start_136
    invoke-virtual {v8, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_139
    .catchall {:try_start_136 .. :try_end_139} :catchall_e6

    :cond_139
    move/from16 v19, p10

    if-eqz v29, :cond_1e5

    :try_start_13d
    invoke-virtual {v8}, Landroid/content/Intent;->getPairWindowingMode()I

    move-result v15
    :try_end_141
    .catchall {:try_start_13d .. :try_end_141} :catchall_1d3

    const/4 v9, 0x3

    if-ne v15, v9, :cond_162

    :try_start_144
    iget-object v9, v1, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    :try_end_148
    .catchall {:try_start_144 .. :try_end_148} :catchall_e6

    move-object/from16 v33, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    :try_start_14c
    invoke-virtual {v9, v15, v14}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateState(ILandroid/graphics/Rect;)V
    :try_end_14f
    .catchall {:try_start_14c .. :try_end_14f} :catchall_150

    goto :goto_166

    :catchall_150
    move-exception v0

    move v9, v11

    move/from16 v44, v13

    move-object/from16 v11, v18

    move/from16 v43, v25

    move/from16 v7, v26

    move-wide/from16 v4, v27

    move/from16 v16, v30

    move-object/from16 v24, v33

    goto/16 :goto_3e5

    :cond_162
    move-object/from16 v33, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_166
    :try_start_166
    invoke-virtual {v8}, Landroid/content/Intent;->getPairActivityUserId()I

    move-result v9

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    if-eq v9, v14, :cond_1b0

    iget-object v14, v1, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const/16 v16, 0x0

    const/16 v17, 0x2

    const-string/jumbo v20, "startPairActivities"
    :try_end_17b
    .catchall {:try_start_166 .. :try_end_17b} :catchall_1ce

    const/16 v21, 0x0

    move/from16 v34, v10

    move-object v10, v14

    move v14, v11

    move/from16 v11, v25

    move/from16 v35, v12

    move v12, v13

    move/from16 v36, v13

    move v13, v9

    move/from16 v37, v9

    move v9, v14

    move/from16 v38, v26

    move-wide/from16 v39, v27

    move-object/from16 v24, v33

    const/16 v22, 0x0

    move/from16 v14, v16

    move-object/from16 v27, v22

    move/from16 v41, v25

    const/16 v26, 0x1

    move/from16 v25, v15

    move/from16 v15, v17

    move-object/from16 v16, v20

    move-object/from16 v17, v21

    :try_start_1a4
    invoke-virtual/range {v10 .. v17}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v10
    :try_end_1a8
    .catchall {:try_start_1a4 .. :try_end_1a8} :catchall_1ab

    move/from16 v19, v10

    goto :goto_1c7

    :catchall_1ab
    move-exception v0

    move-object/from16 v11, v18

    goto/16 :goto_22f

    :cond_1b0
    move/from16 v37, v9

    move/from16 v34, v10

    move v9, v11

    move/from16 v35, v12

    move/from16 v36, v13

    move/from16 v41, v25

    move/from16 v38, v26

    move-wide/from16 v39, v27

    move-object/from16 v24, v33

    const/16 v26, 0x1

    const/16 v27, 0x0

    move/from16 v25, v15

    :goto_1c7
    const/16 v18, 0x0

    move-object/from16 v11, v18

    move/from16 v10, v19

    goto :goto_1fe

    :catchall_1ce
    move-exception v0

    move v9, v11

    move-object/from16 v24, v33

    goto :goto_1d7

    :catchall_1d3
    move-exception v0

    move v9, v11

    move-object/from16 v24, v14

    :goto_1d7
    move/from16 v44, v13

    move-object/from16 v11, v18

    move/from16 v43, v25

    move/from16 v7, v26

    move-wide/from16 v4, v27

    move/from16 v16, v30

    goto/16 :goto_3e5

    :cond_1e5
    move/from16 v34, v10

    move v9, v11

    move/from16 v35, v12

    move/from16 v36, v13

    move-object/from16 v24, v14

    move/from16 v41, v25

    move/from16 v38, v26

    move-wide/from16 v39, v27

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x0

    move-object/from16 v11, v18

    move/from16 v10, v19

    :goto_1fe
    :try_start_1fe
    iget-object v12, v1, Lcom/android/server/am/ActivityStartController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move/from16 v13, v35

    aget-object v19, v5, v13

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, v12

    move-object/from16 v18, v8

    move/from16 v22, v10

    move/from16 v23, v38

    invoke-virtual/range {v17 .. v23}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;

    move-result-object v12

    iget-object v14, v1, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v14, v12, v10}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v14
    :try_end_21a
    .catchall {:try_start_1fe .. :try_end_21a} :catchall_35b

    move-object v12, v14

    if-eqz v12, :cond_23d

    :try_start_21d
    iget-object v14, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v14, v14, 0x2

    if-nez v14, :cond_226

    goto :goto_23d

    :cond_226
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "FLAG_CANT_SAVE_STATE not supported here"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_22e
    .catchall {:try_start_21d .. :try_end_22e} :catchall_22e

    :catchall_22e
    move-exception v0

    :goto_22f
    move/from16 v16, v30

    move/from16 v10, v34

    move/from16 v44, v36

    move/from16 v7, v38

    move-wide/from16 v4, v39

    move/from16 v43, v41

    goto/16 :goto_3e5

    :cond_23d
    :goto_23d
    :try_start_23d
    array-length v14, v4

    add-int/lit8 v14, v14, -0x1

    if-ne v13, v14, :cond_245

    move/from16 v14, v26

    goto :goto_247

    :cond_245
    move/from16 v14, v25

    :goto_247
    if-eqz v14, :cond_24b

    move-object v15, v6

    goto :goto_24d

    :cond_24b
    move-object/from16 v15, v27

    :goto_24d
    if-nez v15, :cond_25d

    if-nez v13, :cond_254

    move/from16 v16, v26

    goto :goto_256

    :cond_254
    move/from16 v16, v25

    :goto_256
    if-eqz v16, :cond_25b

    move-object/from16 v27, v32

    nop

    :cond_25b
    move-object/from16 v15, v27

    :cond_25d
    move-object/from16 v4, p11

    move/from16 v42, v10

    invoke-virtual {v1, v8, v4}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/android/server/am/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/am/ActivityStarter;

    move-result-object v10

    aget-object v2, v5, v13

    invoke-virtual {v10, v2}, Lcom/android/server/am/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/android/server/am/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/android/server/am/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    const/4 v10, -0x1

    invoke-virtual {v2, v10}, Lcom/android/server/am/ActivityStarter;->setRequestCode(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/android/server/am/ActivityStarter;->setCallingPid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2
    :try_end_280
    .catchall {:try_start_23d .. :try_end_280} :catchall_35b

    move/from16 v10, v34

    :try_start_282
    invoke-virtual {v2, v10}, Lcom/android/server/am/ActivityStarter;->setCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2
    :try_end_28a
    .catchall {:try_start_282 .. :try_end_28a} :catchall_34e

    move/from16 v4, v41

    :try_start_28c
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2
    :try_end_290
    .catchall {:try_start_28c .. :try_end_290} :catchall_341

    move/from16 v43, v4

    move/from16 v4, v36

    :try_start_294
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/android/server/am/ActivityStarter;->setActivityOptions(Lcom/android/server/am/SafeActivityOptions;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/server/am/ActivityStarter;->setComponentSpecified(Z)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityStarter;->setOutActivity([Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/android/server/am/ActivityStarter;->setAllowPendingRemoteAnimationRegistryLookup(Z)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStarter;->execute()I

    move-result v2
    :try_end_2ac
    .catchall {:try_start_294 .. :try_end_2ac} :catchall_336

    if-gez v2, :cond_2e4

    :try_start_2ae
    monitor-exit v24
    :try_end_2af
    .catchall {:try_start_2ae .. :try_end_2af} :catchall_2d9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v29, :cond_2d1

    move/from16 v44, v4

    iget-object v4, v1, Lcom/android/server/am/ActivityStartController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v4}, Lcom/android/server/am/SafeActivityOptions;->getOptions(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getDockedStackSizeType()I

    move-result v4

    if-eqz v4, :cond_2c9

    iget-object v5, v1, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/am/MultiWindowManagerService;->resizeDockedStack(I)V

    :cond_2c9
    iget-object v5, v1, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v5, v3}, Lcom/android/server/am/MultiWindowManagerService;->postStartPairActivities(Ljava/lang/String;)V

    goto :goto_2d3

    :cond_2d1
    move/from16 v44, v4

    :goto_2d3
    move-wide/from16 v4, v39

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_2d9
    move-exception v0

    move/from16 v44, v4

    move-wide/from16 v4, v39

    move/from16 v16, v30

    move/from16 v7, v38

    goto/16 :goto_3e5

    :cond_2e4
    move/from16 v44, v4

    move-wide/from16 v4, v39

    :try_start_2e8
    aget-object v16, v0, v25

    move-object/from16 v45, v16

    move-object/from16 v46, v0

    move-object/from16 v0, v45

    if-eqz v0, :cond_308

    move/from16 v47, v2

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getUid()I

    move-result v2
    :try_end_2f8
    .catchall {:try_start_2e8 .. :try_end_2f8} :catchall_32f

    move/from16 v48, v7

    move/from16 v7, v38

    if-ne v2, v7, :cond_30e

    :try_start_2fe
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;
    :try_end_300
    .catchall {:try_start_2fe .. :try_end_300} :catchall_305

    move-object/from16 v18, v2

    const/16 v30, 0x0

    goto :goto_312

    :catchall_305
    move-exception v0

    goto/16 :goto_3bb

    :cond_308
    move/from16 v47, v2

    move/from16 v48, v7

    move/from16 v7, v38

    :cond_30e
    const/16 v18, 0x0

    const/16 v30, 0x1

    :goto_312
    add-int/lit8 v12, v13, 0x1

    move-wide/from16 v27, v4

    move v11, v9

    move-object/from16 v14, v24

    move/from16 v15, v26

    move-object/from16 v8, v32

    move/from16 v25, v43

    move/from16 v13, v44

    move-object/from16 v0, v46

    move-object/from16 v2, p1

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v26, v7

    move-object/from16 v7, v31

    goto/16 :goto_ad

    :catchall_32f
    move-exception v0

    move/from16 v7, v38

    move/from16 v16, v30

    goto/16 :goto_3e5

    :catchall_336
    move-exception v0

    move/from16 v44, v4

    move/from16 v7, v38

    move-wide/from16 v4, v39

    move/from16 v16, v30

    goto/16 :goto_3e5

    :catchall_341
    move-exception v0

    move/from16 v43, v4

    move/from16 v44, v36

    move/from16 v7, v38

    move-wide/from16 v4, v39

    move/from16 v16, v30

    goto/16 :goto_3e5

    :catchall_34e
    move-exception v0

    move/from16 v44, v36

    move/from16 v7, v38

    move-wide/from16 v4, v39

    move/from16 v43, v41

    move/from16 v16, v30

    goto/16 :goto_3e5

    :catchall_35b
    move-exception v0

    move/from16 v10, v34

    move/from16 v44, v36

    move/from16 v7, v38

    move-wide/from16 v4, v39

    move/from16 v43, v41

    move/from16 v16, v30

    goto/16 :goto_3e5

    :catchall_36a
    move-exception v0

    move v9, v11

    move/from16 v44, v13

    move-object/from16 v24, v14

    move/from16 v43, v25

    move/from16 v7, v26

    move-wide/from16 v4, v27

    move-object/from16 v11, v18

    move/from16 v16, v30

    goto/16 :goto_3e5

    :cond_37c
    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move v9, v11

    move/from16 v44, v13

    move-object/from16 v24, v14

    move/from16 v43, v25

    move/from16 v7, v26

    move-wide/from16 v4, v27

    const/16 v25, 0x0

    :try_start_38d
    monitor-exit v24
    :try_end_38e
    .catchall {:try_start_38d .. :try_end_38e} :catchall_3b8

    :try_start_38e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_391
    .catchall {:try_start_38e .. :try_end_391} :catchall_3b2

    if-eqz v29, :cond_3ad

    iget-object v0, v1, Lcom/android/server/am/ActivityStartController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v0}, Lcom/android/server/am/SafeActivityOptions;->getOptions(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getDockedStackSizeType()I

    move-result v0

    if-eqz v0, :cond_3a6

    iget-object v2, v1, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/am/MultiWindowManagerService;->resizeDockedStack(I)V

    :cond_3a6
    iget-object v2, v1, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v2, v3}, Lcom/android/server/am/MultiWindowManagerService;->postStartPairActivities(Ljava/lang/String;)V

    :cond_3ad
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v25

    :catchall_3b2
    move-exception v0

    move-object/from16 v11, v18

    move/from16 v16, v30

    goto :goto_3fe

    :catchall_3b8
    move-exception v0

    move-object/from16 v11, v18

    :goto_3bb
    move/from16 v16, v30

    goto :goto_3e5

    :catchall_3be
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move v9, v11

    move/from16 v44, v13

    move-object/from16 v24, v14

    move/from16 v43, v25

    move/from16 v7, v26

    move-wide/from16 v4, v27

    move-object/from16 v11, v18

    move/from16 v16, v30

    goto :goto_3e5

    :catchall_3d3
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move v9, v11

    move/from16 v44, v13

    move-object/from16 v24, v14

    move/from16 v43, v25

    move/from16 v7, v26

    move-wide/from16 v4, v27

    move-object/from16 v11, p8

    :goto_3e5
    :try_start_3e5
    monitor-exit v24
    :try_end_3e6
    .catchall {:try_start_3e5 .. :try_end_3e6} :catchall_3ec

    :try_start_3e6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_3ea
    .catchall {:try_start_3e6 .. :try_end_3ea} :catchall_3ea

    :catchall_3ea
    move-exception v0

    goto :goto_3fe

    :catchall_3ec
    move-exception v0

    goto :goto_3e5

    :catchall_3ee
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move v9, v11

    move/from16 v44, v13

    move/from16 v43, v25

    move/from16 v7, v26

    move-wide/from16 v4, v27

    move-object/from16 v11, p8

    :goto_3fe
    if-eqz v29, :cond_41a

    iget-object v2, v1, Lcom/android/server/am/ActivityStartController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v2}, Lcom/android/server/am/SafeActivityOptions;->getOptions(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getDockedStackSizeType()I

    move-result v2

    if-eqz v2, :cond_413

    iget-object v8, v1, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v8, v2}, Lcom/android/server/am/MultiWindowManagerService;->resizeDockedStack(I)V

    :cond_413
    iget-object v8, v1, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v8, v3}, Lcom/android/server/am/MultiWindowManagerService;->postStartPairActivities(Ljava/lang/String;)V

    :cond_41a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_41e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "intents are length different than resolvedTypes"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_427
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "resolvedTypes is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_430
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "intents is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final startActivitiesInPackage(IIILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/am/SafeActivityOptions;IZ)I
    .registers 30

    const-string/jumbo v0, "startActivityInPackage"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const-string/jumbo v6, "startActivityInPackage"

    move-object/from16 v1, p0

    move/from16 v2, p9

    move/from16 v3, p10

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v1

    const-string/jumbo v18, "startActivityInPackage"

    const/4 v8, 0x0

    move-object/from16 v7, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move/from16 v17, v1

    invoke-virtual/range {v7 .. v18}, Lcom/android/server/am/ActivityStartController;->startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/am/SafeActivityOptions;ILjava/lang/String;)I

    move-result v2

    return v2
.end method

.method final startActivitiesInPackage(ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/am/SafeActivityOptions;IZ)I
    .registers 20

    const/4 v2, 0x0

    const/16 v3, -0x2710

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/ActivityStartController;->startActivitiesInPackage(IIILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/am/SafeActivityOptions;IZ)I

    move-result v0

    return v0
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

    if-eq v1, v2, :cond_a9

    const-string/jumbo v1, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_a9

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

    if-nez v4, :cond_a9

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_5a

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "android.SETUP_VERSION"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_5b

    :cond_5a
    const/4 v5, 0x0

    :goto_5b
    if-nez v5, :cond_71

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_71

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "android.SETUP_VERSION"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_71
    const-string/jumbo v6, "last_setup_shown"

    invoke-static {v0, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_a9

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a9

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

    :cond_a9
    return-void
.end method
