.class public Lcom/android/server/am/BartenderActivityManager;
.super Ljava/lang/Object;
.source "BartenderActivityManager.java"


# static fields
.field static DEBUG_CPUSET:Z = false

.field static final TAG:Ljava/lang/String; = "BartenderActivityManager"

.field private static manager:Lcom/android/server/am/BartenderActivityManager;


# instance fields
.field private final mAm:Lcom/android/server/am/ActivityManagerService;

.field private final mContext:Landroid/content/Context;

.field private final mSystemPackage:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BartenderActivityManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/am/BartenderActivityManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/am/BartenderActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BartenderActivityManager;->mSystemPackage:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/am/BartenderActivityManager;->init()V

    return-void
.end method

.method static getManager()Lcom/android/server/am/BartenderActivityManager;
    .registers 1

    sget-object v0, Lcom/android/server/am/BartenderActivityManager;->manager:Lcom/android/server/am/BartenderActivityManager;

    return-object v0
.end method

.method static getManager(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/BartenderActivityManager;
    .registers 2

    invoke-static {p0}, Lcom/android/server/am/BartenderActivityManager;->prepareManager(Lcom/android/server/am/ActivityManagerService;)V

    invoke-static {}, Lcom/android/server/am/BartenderActivityManager;->getManager()Lcom/android/server/am/BartenderActivityManager;

    move-result-object v0

    return-object v0
.end method

.method private hasOngoingNotifcation(Ljava/lang/String;)Z
    .registers 10

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    :try_start_8
    iget-object v2, p0, Lcom/android/server/am/BartenderActivityManager;->mSystemPackage:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    if-nez v2, :cond_11

    return v1

    :cond_11
    array-length v3, v2

    move v4, v1

    :goto_13
    if-ge v4, v3, :cond_33

    aget-object v5, v2, v4

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_30

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_24

    goto :goto_30

    :cond_24
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget v7, v7, Landroid/app/Notification;->flags:I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2a} :catch_34

    and-int/lit8 v7, v7, 0x22

    if-eqz v7, :cond_30

    const/4 v1, 0x1

    return v1

    :cond_30
    :goto_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_33
    goto :goto_38

    :catch_34
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_38
    return v1
.end method

.method private init()V
    .registers 3

    sget-boolean v0, Lcom/android/server/am/BartenderActivityManager;->DEBUG_CPUSET:Z

    if-eqz v0, :cond_c

    const-string v0, "BartenderActivityManager"

    const-string/jumbo v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void
.end method

.method private isAllowBarTenderKill(Lcom/android/server/am/ProcessRecord;ZZ)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->slowCached:Z

    if-nez v1, :cond_8

    return v0

    :cond_8
    if-eqz p3, :cond_f

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->slowAbnormal:Z

    if-nez v1, :cond_f

    return v0

    :cond_f
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v2, 0x1f4

    if-ge v1, v2, :cond_16

    return v0

    :cond_16
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1d

    return v0

    :cond_1d
    iget-object v1, p0, Lcom/android/server/am/BartenderActivityManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_20
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/am/BartenderActivityManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-ne p1, v2, :cond_2e

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_49

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :cond_2e
    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_49

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_47

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_47

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/BartenderActivityManager;->hasOngoingNotifcation(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    return v0

    :cond_47
    const/4 v0, 0x1

    return v0

    :catchall_49
    move-exception v0

    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method static declared-synchronized prepareManager(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3

    const-class v0, Lcom/android/server/am/BartenderActivityManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/am/BartenderActivityManager;->manager:Lcom/android/server/am/BartenderActivityManager;

    if-nez v1, :cond_13

    if-nez p0, :cond_a

    goto :goto_13

    :cond_a
    new-instance v1, Lcom/android/server/am/BartenderActivityManager;

    invoke-direct {v1, p0}, Lcom/android/server/am/BartenderActivityManager;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v1, Lcom/android/server/am/BartenderActivityManager;->manager:Lcom/android/server/am/BartenderActivityManager;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_15

    monitor-exit v0

    return-void

    :cond_13
    :goto_13
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public sendControlInfo(ILjava/lang/String;)Z
    .registers 15

    const-string v0, "cached"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "abnormal"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string/jumbo v2, "kill"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string/jumbo v3, "stay"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string/jumbo v4, "release"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v0, :cond_72

    if-nez v1, :cond_72

    if-nez v2, :cond_72

    if-nez v3, :cond_72

    if-nez v4, :cond_72

    const-string v6, "BartenderActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BarTender: pid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " cached="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " abnormal="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " kill="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " stay="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " release="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "BartenderActivityManager"

    const-string v7, "BarTender: Value is not set. Type needs at least 1 target group."

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_72
    const-string v6, "BartenderActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BarTender: pid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " cached="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " abnormal="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " kill="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " stay="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " release="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/am/BartenderActivityManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_b4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v8, p0, Lcom/android/server/am/BartenderActivityManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    :goto_c1
    if-ltz v8, :cond_d6

    iget-object v10, p0, Lcom/android/server/am/BartenderActivityManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    iget v11, v10, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v11, p1, :cond_d3

    move-object v6, v10

    goto :goto_d6

    :cond_d3
    add-int/lit8 v8, v8, -0x1

    goto :goto_c1

    :cond_d6
    :goto_d6
    monitor-exit v7
    :try_end_d7
    .catchall {:try_start_b4 .. :try_end_d7} :catchall_14c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-nez v6, :cond_f8

    const-string v7, "BartenderActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BarTender: pid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " is nonexistent"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_f8
    if-eqz v2, :cond_11b

    invoke-direct {p0, v6, v0, v1}, Lcom/android/server/am/BartenderActivityManager;->isAllowBarTenderKill(Lcom/android/server/am/ProcessRecord;ZZ)Z

    move-result v5

    if-eqz v5, :cond_136

    iget-object v5, p0, Lcom/android/server/am/BartenderActivityManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_103
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-boolean v7, v6, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-nez v7, :cond_110

    const-string/jumbo v7, "excessive cpu kill"

    invoke-virtual {v6, v7, v9}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    :cond_110
    monitor-exit v5
    :try_end_111
    .catchall {:try_start_103 .. :try_end_111} :catchall_115

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_136

    :catchall_115
    move-exception v7

    :try_start_116
    monitor-exit v5
    :try_end_117
    .catchall {:try_start_116 .. :try_end_117} :catchall_115

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v7

    :cond_11b
    if-eqz v4, :cond_12a

    if-eqz v0, :cond_123

    iput-boolean v5, v6, Lcom/android/server/am/ProcessRecord;->slowCachedStay:Z

    iput-boolean v5, v6, Lcom/android/server/am/ProcessRecord;->slowCached:Z

    :cond_123
    if-eqz v1, :cond_136

    iput-boolean v5, v6, Lcom/android/server/am/ProcessRecord;->slowAbnormalStay:Z

    iput-boolean v5, v6, Lcom/android/server/am/ProcessRecord;->slowAbnormal:Z

    goto :goto_136

    :cond_12a
    if-eqz v0, :cond_130

    iput-boolean v9, v6, Lcom/android/server/am/ProcessRecord;->slowCached:Z

    iput-boolean v3, v6, Lcom/android/server/am/ProcessRecord;->slowCachedStay:Z

    :cond_130
    if-eqz v1, :cond_136

    iput-boolean v9, v6, Lcom/android/server/am/ProcessRecord;->slowAbnormal:Z

    iput-boolean v3, v6, Lcom/android/server/am/ProcessRecord;->slowAbnormalStay:Z

    :cond_136
    :goto_136
    iget-object v5, p0, Lcom/android/server/am/BartenderActivityManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_139
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v7, p0, Lcom/android/server/am/BartenderActivityManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    monitor-exit v5
    :try_end_142
    .catchall {:try_start_139 .. :try_end_142} :catchall_146

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v9

    :catchall_146
    move-exception v7

    :try_start_147
    monitor-exit v5
    :try_end_148
    .catchall {:try_start_147 .. :try_end_148} :catchall_146

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v7

    :catchall_14c
    move-exception v5

    :try_start_14d
    monitor-exit v7
    :try_end_14e
    .catchall {:try_start_14d .. :try_end_14e} :catchall_14c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5
.end method
