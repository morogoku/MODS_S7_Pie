.class Lcom/android/server/job/JobSchedulerService$ConstantsObserver;
.super Landroid/database/ContentObserver;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConstantsObserver"
.end annotation


# instance fields
.field private mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private updateConstants()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "job_scheduler_constants"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService$Constants;->updateConstantsLocked(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_15} :catch_18
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    goto :goto_20

    :catchall_16
    move-exception v1

    goto :goto_27

    :catch_18
    move-exception v1

    :try_start_19
    const-string v2, "JobScheduler"

    const-string v3, "Bad jobscheduler settings"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_16

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->setNextHeartbeatAlarm()V

    return-void

    :goto_27
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_16

    throw v1
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->updateConstants()V

    return-void
.end method

.method public start(Landroid/content/ContentResolver;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "job_scheduler_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->updateConstants()V

    return-void
.end method
