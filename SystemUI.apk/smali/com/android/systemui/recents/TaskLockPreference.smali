.class public Lcom/android/systemui/recents/TaskLockPreference;
.super Ljava/lang/Object;
.source "TaskLockPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTaskLockDbHelper:Lcom/android/systemui/util/TaskLockDbHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/TaskLockPreference;->mContext:Landroid/content/Context;

    :try_start_0
    const-string v0, "com.android.systemui"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/util/TaskLockDbHelper;

    invoke-direct {v1, v0}, Lcom/android/systemui/util/TaskLockDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/recents/TaskLockPreference;->mTaskLockDbHelper:Lcom/android/systemui/util/TaskLockDbHelper;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TaskLockPreference"

    const-string v2, "com.android.systemui not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private getAffinityName(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    return-object v2

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private getComponentName(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/String;
    .locals 1

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getKey(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/TaskLockPreference;->getComponentName(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isTaskLocked(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/TaskLockPreference;->mTaskLockDbHelper:Lcom/android/systemui/util/TaskLockDbHelper;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/TaskLockDbHelper;->isDefaultPkgLock(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/TaskLockPreference;->mTaskLockDbHelper:Lcom/android/systemui/util/TaskLockDbHelper;

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/TaskLockPreference;->getKey(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/util/TaskLockDbHelper;->getTaskLock(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/TaskLockPreference;->getComponentName(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/TaskLockPreference;->getAffinityName(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method public saveDefaultLockedPackage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/TaskLockPreference;->mTaskLockDbHelper:Lcom/android/systemui/util/TaskLockDbHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/util/TaskLockDbHelper;->createOrUpdateDefaultPkgLock(Ljava/lang/String;Z)J

    return-void
.end method

.method public saveLockedTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/TaskLockPreference;->mTaskLockDbHelper:Lcom/android/systemui/util/TaskLockDbHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/util/TaskLockDbHelper;->createOrUpdateTaskLock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method
