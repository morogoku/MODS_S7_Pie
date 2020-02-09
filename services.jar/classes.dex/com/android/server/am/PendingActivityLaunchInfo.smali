.class Lcom/android/server/am/PendingActivityLaunchInfo;
.super Lcom/android/server/am/DisplayChooserInfo;
.source "DisplayChooserInfo.java"


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Lcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)V
    .registers 13

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/DisplayChooserInfo;-><init>(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Lcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)V

    iput-object p1, p0, Lcom/android/server/am/PendingActivityLaunchInfo;->mPal:Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    return-void
.end method


# virtual methods
.method getAppName(Landroid/content/Context;Lcom/android/server/am/ActivityStackSupervisor;)Ljava/lang/CharSequence;
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/PendingActivityLaunchInfo;->mPal:Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/am/PendingActivityLaunchInfo;->mPal:Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/am/PendingActivityLaunchInfo;->mPal:Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/am/PendingActivityLaunchInfo;->mPal:Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_21
    const-string v0, ""

    return-object v0
.end method

.method startResult(Lcom/android/server/am/ActivityManagerService;I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/PendingActivityLaunchInfo;->mPal:Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/am/PendingActivityLaunchInfo;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, p2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    sget-boolean v0, Lcom/android/server/am/PendingActivityLaunchInfo;->SAFE_DEBUG:Z

    if-eqz v0, :cond_33

    const-string v0, "MultiDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startResult: windowingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/PendingActivityLaunchInfo;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " targetDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    iget-object v0, p0, Lcom/android/server/am/PendingActivityLaunchInfo;->mPal:Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    iget-object v1, p0, Lcom/android/server/am/PendingActivityLaunchInfo;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityManagerService;->doPendingActivityLaunches(Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;Landroid/app/ActivityOptions;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "START_PENDING_ACTIVITY_LAUNCH_TYPE, pal : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/PendingActivityLaunchInfo;->mPal:Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", processName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/PendingActivityLaunchInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/PendingActivityLaunchInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
