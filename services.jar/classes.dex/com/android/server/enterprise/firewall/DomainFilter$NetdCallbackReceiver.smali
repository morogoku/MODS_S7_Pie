.class Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;
.super Ljava/lang/Object;
.source "DomainFilter.java"

# interfaces
.implements Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/DomainFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdCallbackReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver$ScheduleReInitializationOfDaemonCache;
    }
.end annotation


# instance fields
.field private mConnected:Z

.field final synthetic this$0:Lcom/android/server/enterprise/firewall/DomainFilter;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->mConnected:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;Lcom/android/server/enterprise/firewall/DomainFilter$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    return-void
.end method


# virtual methods
.method public onDaemonConnected()V
    .registers 4

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetdCallbackReceiver.onDaemonConnected() - connected to netd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->mConnected:Z

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # invokes: Lcom/android/server/enterprise/firewall/DomainFilter;->connectNativeNetdService()V
    invoke-static {v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1300(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mNetdService:Landroid/net/INetd;
    invoke-static {v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1400(Lcom/android/server/enterprise/firewall/DomainFilter;)Landroid/net/INetd;

    move-result-object v0

    if-eqz v0, :cond_31

    :try_start_19
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mNetdService:Landroid/net/INetd;
    invoke-static {v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1400(Lcom/android/server/enterprise/firewall/DomainFilter;)Landroid/net/INetd;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/INetd;->setSystemServerPID(I)Z
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_26} :catch_27

    goto :goto_31

    :catch_27
    move-exception v0

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetdCallbackReceiver.onDaemonConnected() - Exception occurred setting system PID"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_31
    :goto_31
    return-void
.end method

.method public onDaemonDisconnected()V
    .registers 6

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetdCallbackReceiver.onDaemonDisconnected() - disconnected from netd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->mConnected:Z

    if-eqz v0, :cond_2e

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetdCallbackReceiver.onDaemonDisconnected() - Scheduling ScheduleReInitializationOfDaemonCache"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver$ScheduleReInitializationOfDaemonCache;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver$ScheduleReInitializationOfDaemonCache;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;Lcom/android/server/enterprise/firewall/DomainFilter$1;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->mConnected:Z

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # setter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mThread:Ljava/lang/Thread;
    invoke-static {v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1602(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/Thread;)Ljava/lang/Thread;

    :cond_2e
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    const/4 v3, 0x1

    const/16 v0, 0x320

    move/from16 v4, p1

    if-eq v4, v0, :cond_d

    goto/16 :goto_14b

    :cond_d
    array-length v0, v2

    const/4 v5, 0x7

    if-lt v0, v5, :cond_14b

    const/4 v5, 0x3

    const/4 v6, 0x0

    :try_start_13
    aget-object v0, v2, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_19} :catch_1a

    goto :goto_27

    :catch_1a
    move-exception v0

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "onEvent() - Error parsing uid to int"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move v0, v6

    :goto_27
    move v7, v0

    const/4 v0, 0x4

    :try_start_29
    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_2f} :catch_30

    goto :goto_3c

    :catch_30
    move-exception v0

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "onEvent() - Error parsing pid to int"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_3c
    iget-object v8, v1, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # invokes: Lcom/android/server/enterprise/firewall/DomainFilter;->getPackageFromRunningProcesses(II)Ljava/lang/String;
    invoke-static {v8, v0, v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1700(Lcom/android/server/enterprise/firewall/DomainFilter;II)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_45

    return v3

    :cond_45
    const/4 v9, 0x0

    new-instance v10, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    const/4 v11, 0x2

    aget-object v12, v2, v11

    aget-object v13, v2, v5

    const/4 v14, 0x5

    aget-object v15, v2, v14

    invoke-direct {v10, v12, v13, v15}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v12, v9

    move v9, v6

    :goto_55
    if-ge v9, v14, :cond_73

    iget-object v13, v1, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCache:[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;
    invoke-static {v13}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1800(Lcom/android/server/enterprise/firewall/DomainFilter;)[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    move-result-object v13

    aget-object v13, v13, v9

    if-eqz v13, :cond_70

    iget-object v13, v1, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCache:[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;
    invoke-static {v13}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1800(Lcom/android/server/enterprise/firewall/DomainFilter;)[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    move-result-object v13

    aget-object v13, v13, v9

    invoke-virtual {v13, v10}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->isEqual(Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;)Z

    move-result v13

    if-eqz v13, :cond_70

    const/4 v12, 0x1

    :cond_70
    add-int/lit8 v9, v9, 0x1

    goto :goto_55

    :cond_73
    if-nez v12, :cond_14a

    iget-object v9, v1, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCache:[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;
    invoke-static {v9}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1800(Lcom/android/server/enterprise/firewall/DomainFilter;)[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    move-result-object v9

    iget-object v13, v1, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I
    invoke-static {v13}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1900(Lcom/android/server/enterprise/firewall/DomainFilter;)I

    move-result v13

    aput-object v10, v9, v13

    iget-object v9, v1, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # operator++ for: Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I
    invoke-static {v9}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1908(Lcom/android/server/enterprise/firewall/DomainFilter;)I

    iget-object v9, v1, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I
    invoke-static {v9}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1900(Lcom/android/server/enterprise/firewall/DomainFilter;)I

    move-result v9

    if-ne v9, v14, :cond_95

    iget-object v9, v1, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # setter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I
    invoke-static {v9, v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1902(Lcom/android/server/enterprise/firewall/DomainFilter;I)I

    :cond_95
    iget-object v9, v1, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$2000(Lcom/android/server/enterprise/firewall/DomainFilter;)Landroid/content/Context;

    move-result-object v9

    const-string v13, "activity"

    invoke-virtual {v9, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    invoke-virtual {v9, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager$RunningTaskInfo;

    new-instance v15, Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.action.BLOCKED_DOMAIN"

    invoke-direct {v15, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v6, v15

    const-string v15, "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_PACKAGENAME"

    invoke-virtual {v6, v15, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v15, "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_TIMESTAMP"

    aget-object v3, v2, v11

    invoke-virtual {v6, v15, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_UID"

    aget-object v15, v2, v5

    invoke-virtual {v6, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_URL"

    aget-object v15, v2, v14

    invoke-virtual {v6, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, v13, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e2

    const-string v3, "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_ISFOREGROUND"

    const/4 v15, 0x1

    invoke-virtual {v6, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_e8

    :cond_e2
    const-string v3, "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_ISFOREGROUND"

    const/4 v15, 0x0

    invoke-virtual {v6, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_e8
    iget-object v3, v1, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$2000(Lcom/android/server/enterprise/firewall/DomainFilter;)Landroid/content/Context;

    move-result-object v3

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v14, "com.samsung.android.knox.permission.KNOX_FIREWALL"

    invoke-virtual {v3, v6, v15, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-string v14, "com.sec.enterprise.intent.action.BLOCKED_DOMAIN"

    invoke-direct {v3, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v14, "com.sec.enterprise.intent.extra.BLOCKED_DOMAIN_PACKAGENAME"

    invoke-virtual {v3, v14, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "com.sec.enterprise.intent.extra.BLOCKED_DOMAIN_TIMESTAMP"

    aget-object v15, v2, v11

    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "com.sec.enterprise.intent.extra.BLOCKED_DOMAIN_UID"

    aget-object v15, v2, v5

    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "com.sec.enterprise.intent.extra.BLOCKED_DOMAIN_URL"

    const/4 v15, 0x5

    aget-object v5, v2, v15

    invoke-virtual {v3, v14, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, v13, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12a

    const-string v5, "com.sec.enterprise.intent.extra.BLOCKED_DOMAIN_ISFOREGROUND"

    const/4 v14, 0x1

    invoke-virtual {v3, v5, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_130

    :cond_12a
    const-string v5, "com.sec.enterprise.intent.extra.BLOCKED_DOMAIN_ISFOREGROUND"

    const/4 v14, 0x0

    invoke-virtual {v3, v5, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_130
    iget-object v5, v1, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$2000(Lcom/android/server/enterprise/firewall/DomainFilter;)Landroid/content/Context;

    move-result-object v5

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v15, "android.permission.sec.MDM_FIREWALL"

    invoke-virtual {v5, v3, v14, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    aget-object v11, v2, v11

    const/4 v14, 0x3

    aget-object v14, v2, v14

    const/4 v15, 0x5

    aget-object v15, v2, v15

    # invokes: Lcom/android/server/enterprise/firewall/DomainFilter;->saveReportInDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v11, v14, v15, v8}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$2100(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_14a
    nop

    :cond_14b
    :goto_14b
    const/4 v3, 0x1

    return v3
.end method
