.class Lcom/android/server/am/StartActivityFromRecentsInfo;
.super Lcom/android/server/am/DisplayChooserInfo;
.source "DisplayChooserInfo.java"


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Lcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/DisplayChooserInfo;-><init>(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Lcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)V

    return-void
.end method


# virtual methods
.method getAppName(Landroid/content/Context;Lcom/android/server/am/ActivityStackSupervisor;)Ljava/lang/CharSequence;
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/StartActivityFromRecentsInfo;->mReusedTask:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/am/StartActivityFromRecentsInfo;->mReusedTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_1b
    const-string v0, ""

    return-object v0
.end method

.method startResult(Lcom/android/server/am/ActivityManagerService;I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/StartActivityFromRecentsInfo;->mReusedTask:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_d

    const-string v0, "MultiDisplayManager"

    const-string/jumbo v1, "startResult: mReusedTask=null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    iget-object v0, p0, Lcom/android/server/am/StartActivityFromRecentsInfo;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, p2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    sget-boolean v0, Lcom/android/server/am/StartActivityFromRecentsInfo;->SAFE_DEBUG:Z

    if-eqz v0, :cond_3b

    const-string v0, "MultiDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startResult: windowingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/StartActivityFromRecentsInfo;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " targetDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    :try_start_3b
    iget-object v0, p0, Lcom/android/server/am/StartActivityFromRecentsInfo;->mReusedTask:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v1, p0, Lcom/android/server/am/StartActivityFromRecentsInfo;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityManagerService;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_48
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3b .. :try_end_48} :catch_49

    goto :goto_51

    :catch_49
    move-exception v0

    sget-boolean v1, Lcom/android/server/am/StartActivityFromRecentsInfo;->SAFE_DEBUG:Z

    if-eqz v1, :cond_51

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_51
    :goto_51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "START_ACTIVITY_FROM_RECENTS_TYPE, launchTaskId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/StartActivityFromRecentsInfo;->mLaunchTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", processName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/StartActivityFromRecentsInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/StartActivityFromRecentsInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
