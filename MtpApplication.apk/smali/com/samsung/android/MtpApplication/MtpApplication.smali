.class public Lcom/samsung/android/MtpApplication/MtpApplication;
.super Landroid/app/Activity;
.source "MtpApplication.java"


# static fields
.field private static ANIMATION_STATUS:I

.field static isSynchronizing:Z

.field static mtprunningStatus:Z


# instance fields
.field private DESTROY_MTP:Z

.field cr:Landroid/content/ContentResolver;

.field final mAnimationHandler:Landroid/os/Handler;

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private final mTimeClickReceiver:Landroid/content/BroadcastReceiver;

.field mstartAnimator:Ljava/lang/Runnable;

.field wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/MtpApplication/MtpApplication;->mtprunningStatus:Z

    sput v0, Lcom/samsung/android/MtpApplication/MtpApplication;->ANIMATION_STATUS:I

    sput-boolean v0, Lcom/samsung/android/MtpApplication/MtpApplication;->isSynchronizing:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpApplication;->cr:Landroid/content/ContentResolver;

    iput-object p0, p0, Lcom/samsung/android/MtpApplication/MtpApplication;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/MtpApplication/MtpApplication;->DESTROY_MTP:Z

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpApplication;->wl:Landroid/os/PowerManager$WakeLock;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpApplication;->mAnimationHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/MtpApplication/MtpApplication$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/MtpApplication/MtpApplication$1;-><init>(Lcom/samsung/android/MtpApplication/MtpApplication;)V

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpApplication;->mstartAnimator:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/MtpApplication/MtpApplication$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/MtpApplication/MtpApplication$2;-><init>(Lcom/samsung/android/MtpApplication/MtpApplication;)V

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpApplication;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/MtpApplication/MtpApplication$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/MtpApplication/MtpApplication$3;-><init>(Lcom/samsung/android/MtpApplication/MtpApplication;)V

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpApplication;->mTimeClickReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/samsung/android/MtpApplication/MtpApplication;->ANIMATION_STATUS:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0

    sput p0, Lcom/samsung/android/MtpApplication/MtpApplication;->ANIMATION_STATUS:I

    return p0
.end method

.method static synthetic access$100(Lcom/samsung/android/MtpApplication/MtpApplication;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/MtpApplication/MtpApplication;->startSearchView(I)V

    return-void
.end method

.method private registerBroadCastRec()V
    .locals 2

    const-string v0, "MTPAPP"

    const-string v1, "< MTP > Registering BroadCast receiver :::::"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.MTP.NOTIFICATION_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.END_MTP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpApplication;->mTimeClickReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/MtpApplication/MtpApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private startSearchView(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/MtpApplication/MtpApplication;->DESTROY_MTP:Z

    const/4 v1, 0x1

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpApplication;->cr:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/MtpApplication/MtpApplication;->ANIMATION_STATUS:I

    add-int/2addr v0, v1

    sput v0, Lcom/samsung/android/MtpApplication/MtpApplication;->ANIMATION_STATUS:I

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpApplication;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpApplication;->mstartAnimator:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    :goto_0
    const-string v0, "MTPAPP"

    const-string v1, "animImg object is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "MTPAPP"

    const-string v1, "In onCreate of MTPAPP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/MtpApplication/MtpApplication;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.stop.app-in-app"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/MtpApplication/MtpApplication;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/MtpApplication/MtpApplication;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/samsung/android/MtpApplication/MtpApplication;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual {p0}, Lcom/samsung/android/MtpApplication/MtpApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/MtpApplication/MtpApplication;->cr:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/android/MtpApplication/MtpApplication;->startSearchView(I)V

    iget-object v2, p0, Lcom/samsung/android/MtpApplication/MtpApplication;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Lcom/samsung/android/MtpApplication/MtpReceiver;->setHandler(Landroid/os/Handler;)V

    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/samsung/android/MtpApplication/MtpApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const-string v3, "My Tag"

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/MtpApplication/MtpApplication;->wl:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/samsung/android/MtpApplication/MtpApplication;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v3, "MTPAPP"

    const-string v4, "acquired wake lock."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/MtpApplication/MtpApplication;->registerBroadCastRec()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/MtpApplication/MtpApplication;->DESTROY_MTP:Z

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpApplication;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpApplication;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string v1, "MTPAPP"

    const-string v2, "In destroy, wake lock releaseed, unregistering broadcast receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpApplication;->mTimeClickReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/samsung/android/MtpApplication/MtpApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
