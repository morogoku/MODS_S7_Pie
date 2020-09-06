.class public abstract Lcom/android/server/am/DisplayChooserInfo;
.super Ljava/lang/Object;
.source "DisplayChooserInfo.java"


# static fields
.field public static final SAFE_DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "MultiDisplayManager"


# instance fields
.field mKeepProcessAlive:Z

.field mLaunchTaskId:I

.field mOptions:Landroid/app/ActivityOptions;

.field mPal:Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

.field mProcessName:Ljava/lang/String;

.field mReusedTask:Lcom/android/server/am/TaskRecord;

.field mSkipToShow:Z

.field mUid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/server/am/DisplayChooserInfo;->SAFE_DEBUG:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Lcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/DisplayChooserInfo;->mProcessName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/am/DisplayChooserInfo;->mUid:I

    if-eqz p3, :cond_21

    iget-object v0, p3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_21

    iget-object v0, p3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.samsung.android.multidisplay.do_not_show_displaychooser"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/DisplayChooserInfo;->mSkipToShow:Z

    iget-object v0, p3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.samsung.android.multidisplay.keep_process_alive"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/DisplayChooserInfo;->mKeepProcessAlive:Z

    :cond_21
    iput-object p4, p0, Lcom/android/server/am/DisplayChooserInfo;->mReusedTask:Lcom/android/server/am/TaskRecord;

    if-eqz p5, :cond_27

    move-object v0, p5

    goto :goto_2b

    :cond_27
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    :goto_2b
    iput-object v0, p0, Lcom/android/server/am/DisplayChooserInfo;->mOptions:Landroid/app/ActivityOptions;

    return-void
.end method

.method static createPendingActivityLaunchType(Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Lcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/DisplayChooserInfo;
    .registers 14

    new-instance v7, Lcom/android/server/am/PendingActivityLaunchInfo;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/PendingActivityLaunchInfo;-><init>(Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Lcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)V

    return-object v7
.end method

.method static createStartActivityFromRecentsType(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Lcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/DisplayChooserInfo;
    .registers 12

    new-instance v6, Lcom/android/server/am/StartActivityFromRecentsInfo;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/StartActivityFromRecentsInfo;-><init>(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Lcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)V

    return-object v6
.end method


# virtual methods
.method getActivityOptions()Landroid/app/ActivityOptions;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/DisplayChooserInfo;->mOptions:Landroid/app/ActivityOptions;

    return-object v0
.end method

.method abstract getAppName(Landroid/content/Context;Lcom/android/server/am/ActivityStackSupervisor;)Ljava/lang/CharSequence;
.end method

.method getMovingTaskLocked(Lcom/android/server/am/ActivityManagerService;I)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v1, p0, Lcom/android/server/am/DisplayChooserInfo;->mProcessName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/DisplayChooserInfo;->mUid:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/am/MultiDisplayManagerService;->getTaskLocked(Ljava/lang/String;IZI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getProcessName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/DisplayChooserInfo;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method getUid()I
    .registers 2

    iget v0, p0, Lcom/android/server/am/DisplayChooserInfo;->mUid:I

    return v0
.end method

.method isKeepProcessAlive()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/DisplayChooserInfo;->mKeepProcessAlive:Z

    return v0
.end method

.method skipToShow()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/DisplayChooserInfo;->mSkipToShow:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/am/DisplayChooserInfo;->mKeepProcessAlive:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method abstract startResult(Lcom/android/server/am/ActivityManagerService;I)V
.end method
