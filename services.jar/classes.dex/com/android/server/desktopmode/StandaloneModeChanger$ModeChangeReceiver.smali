.class Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StandaloneModeChanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/StandaloneModeChanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/StandaloneModeChanger;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Lcom/android/server/desktopmode/StandaloneModeChanger$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;-><init>(Lcom/android/server/desktopmode/StandaloneModeChanger;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;->register()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;->unregister()V

    return-void
.end method

.method private register()V
    .registers 8

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.intent.action.WALLPAPER_ENGINE_SHOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    iget-object v1, v1, Lcom/android/server/desktopmode/StandaloneModeChanger;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private unregister()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    iget-object v0, v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_21

    # getter for: Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/StandaloneModeChanger;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive(), action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    const-string v1, "com.samsung.android.intent.action.WALLPAPER_ENGINE_SHOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/desktopmode/StandaloneModeChanger;->mWallpaperShown:Z
    invoke-static {v1, v2}, Lcom/android/server/desktopmode/StandaloneModeChanger;->access$1002(Lcom/android/server/desktopmode/StandaloneModeChanger;Z)Z

    iget-object v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    # invokes: Lcom/android/server/desktopmode/StandaloneModeChanger;->scheduleStopLoadingScreenIfPossible()V
    invoke-static {v1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->access$1100(Lcom/android/server/desktopmode/StandaloneModeChanger;)V

    goto :goto_78

    :cond_35
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v1

    const-wide/32 v3, 0x19000000

    cmp-long v3, v1, v3

    if-gez v3, :cond_78

    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_6e

    # getter for: Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/StandaloneModeChanger;->access$500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Low memory warning: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v5, 0x100000

    div-long v5, v1, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "MB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    iget-object v3, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    iget-object v3, v3, Lcom/android/server/desktopmode/StandaloneModeChanger;->mContext:Landroid/content/Context;

    const v4, 0x10402a9

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;I)V

    :cond_78
    :goto_78
    return-void
.end method
