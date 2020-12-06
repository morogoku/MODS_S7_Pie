.class public Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;
.super Ljava/lang/Object;
.source "DcmKeyguardMascotUtils.java"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mIsBootCompleted:Z

.field private mIsWaitingForBootComplete:Z

.field public mMascotClicked:Z

.field private mMascotHandler:Landroid/os/Handler;

.field private mMascotView:Landroid/widget/LinearLayout;

.field private mRemoteViewReceiver:Landroid/content/BroadcastReceiver;

.field private mRemoteViews:Landroid/widget/RemoteViews;

.field public mServiceConnection:Landroid/content/ServiceConnection;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private sBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViews:Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViewReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mIsWaitingForBootComplete:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mIsBootCompleted:Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mActivityManager:Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mMascotView:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$1;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mServiceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViews:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViews:Landroid/widget/RemoteViews;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mIsBootCompleted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mIsWaitingForBootComplete:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mIsWaitingForBootComplete:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method


# virtual methods
.method public bindIScreenLockService()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mIsBootCompleted:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->setMascotRemoteViews(Landroid/widget/RemoteViews;)V

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mIsWaitingForBootComplete:Z

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/nttdocomo/android/screenlockservice/IScreenLockService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.nttdocomo.android.screenlockservice"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SecKeyguardStatusUtils"

    const-string v2, "bindIScreenLockService() : can\'t connect IScreenLockService"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public declared-synchronized getActivityManager()Landroid/app/ActivityManager;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mActivityManager:Landroid/app/ActivityManager;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mActivityManager:Landroid/app/ActivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRemoteViews()Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViews:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public isMascotAppRunning()Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->getActivityManager()Landroid/app/ActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    const-string v3, "com.nttdocomo.android.mascot"

    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public isMascotEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isShowHistoryCountAndMascot()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->isMascotAppRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerMascotReceiver()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViewReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViewReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "jp.co.nttdocomo.carriermail.APP_LINK_RECEIVED_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViewReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    const-string v1, "com.nttdocomo.android.mascot.KEYGUARD_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.internal.policy.impl.CARRIERMAIL_COUNT_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViewReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.nttdocomo.android.screenlockservice.DCM_SCREEN"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public registerReceiver()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$3;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.nttdocomo.android.mascot.widget.LockScreenMascotWidget.ACTION_SCREEN_UNLOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.nttdocomo.android.screenlockservice.DCM_SCREEN"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public setMasCotView(Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mMascotView:Landroid/widget/LinearLayout;

    return-void
.end method

.method public setMasCotViewHanler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mMascotHandler:Landroid/os/Handler;

    return-void
.end method

.method public setMascotRemoteViews(Landroid/widget/RemoteViews;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViews:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->isMascotAppRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViews:Landroid/widget/RemoteViews;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mMascotView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mMascotHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mMascotHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$4;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterReceiver()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SecKeyguardStatusUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotificationPanelView.unregisterReceiver(): exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
