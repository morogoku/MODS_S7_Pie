.class Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DualModeChanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DualModeChanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DualModeChanger;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/DualModeChanger;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/DualModeChanger$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;-><init>(Lcom/android/server/desktopmode/DualModeChanger;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->register()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->unregister()V

    return-void
.end method

.method private register()V
    .registers 8

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.desktoplauncher.intent.action.WALLPAPER_SHOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.desktopmode.action.SPEN_NOTIFICATION_PRESSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.desktopmode.action.SPEN_NOTIFICATION_CHANGE_MODE_PRESSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.desktopmode.action.TOUCHPAD_NOTIFICATION_PRESSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.desktopmode.action.TOUCHPAD_AVAILABLE_NOTIFICATION_PRESSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.desktopkeyguard.KEYGUARD_STATE_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v1, v1, Lcom/android/server/desktopmode/DualModeChanger;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v6, v2, Lcom/android/server/desktopmode/DualModeChanger;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private unregister()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v0, v0, Lcom/android/server/desktopmode/DualModeChanger;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_21

    # getter for: Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DualModeChanger;->access$400()Ljava/lang/String;

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
    iget-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v1, v1, Lcom/android/server/desktopmode/DualModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v1

    const-string v2, "com.sec.android.app.desktoplauncher.intent.action.WALLPAPER_SHOWN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_50

    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    # getter for: Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z
    invoke-static {v2}, Lcom/android/server/desktopmode/DualModeChanger;->access$1100(Lcom/android/server/desktopmode/DualModeChanger;)Z

    move-result v2

    if-nez v2, :cond_1ba

    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v2, v2, Lcom/android/server/desktopmode/DualModeChanger;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardLocked()Z

    move-result v2

    if-nez v2, :cond_1ba

    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    # setter for: Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z
    invoke-static {v2, v3}, Lcom/android/server/desktopmode/DualModeChanger;->access$1102(Lcom/android/server/desktopmode/DualModeChanger;Z)Z

    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    # invokes: Lcom/android/server/desktopmode/DualModeChanger;->scheduleStopLoadingScreenIfPossible(Z)V
    invoke-static {v2, v3}, Lcom/android/server/desktopmode/DualModeChanger;->access$600(Lcom/android/server/desktopmode/DualModeChanger;Z)V

    goto/16 :goto_1ba

    :cond_50
    const-string v2, "com.samsung.desktopkeyguard.KEYGUARD_STATE_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_80

    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    # getter for: Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z
    invoke-static {v2}, Lcom/android/server/desktopmode/DualModeChanger;->access$1100(Lcom/android/server/desktopmode/DualModeChanger;)Z

    move-result v2

    if-nez v2, :cond_1ba

    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v2, v2, Lcom/android/server/desktopmode/DualModeChanger;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1ba

    const-string/jumbo v2, "showing"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1ba

    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    # setter for: Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z
    invoke-static {v2, v3}, Lcom/android/server/desktopmode/DualModeChanger;->access$1102(Lcom/android/server/desktopmode/DualModeChanger;Z)Z

    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    # invokes: Lcom/android/server/desktopmode/DualModeChanger;->scheduleStopLoadingScreenIfPossible(Z)V
    invoke-static {v2, v3}, Lcom/android/server/desktopmode/DualModeChanger;->access$600(Lcom/android/server/desktopmode/DualModeChanger;Z)V

    goto/16 :goto_1ba

    :cond_80
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cf

    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v2

    const-wide/32 v4, 0x19000000

    cmp-long v4, v2, v4

    if-gez v4, :cond_cd

    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v4, :cond_b9

    # getter for: Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DualModeChanger;->access$400()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Low memory warning: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v6, 0x100000

    div-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "MB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b9
    iget-object v4, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    # getter for: Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/desktopmode/DualModeChanger;->access$1200(Lcom/android/server/desktopmode/DualModeChanger;)Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_cd

    iget-object v4, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    # getter for: Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/desktopmode/DualModeChanger;->access$1200(Lcom/android/server/desktopmode/DualModeChanger;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x10402a9

    invoke-static {v4, v5}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;I)V

    :cond_cd
    goto/16 :goto_1ba

    :cond_cf
    const-string v2, "com.android.server.desktopmode.action.SPEN_NOTIFICATION_PRESSED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_10a

    const-string v2, "ACTION_CLICK_DISPLAYID"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_fa

    # getter for: Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DualModeChanger;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SPen notification clicked, displayID="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fa
    iget-object v3, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    # invokes: Lcom/android/server/desktopmode/DualModeChanger;->collapsePanelsToDisplay(I)V
    invoke-static {v3, v2}, Lcom/android/server/desktopmode/DualModeChanger;->access$1300(Lcom/android/server/desktopmode/DualModeChanger;I)V

    iget-object v3, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v3, v3, Lcom/android/server/desktopmode/DualModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v4, 0xa

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/desktopmode/UiManager;->showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    goto/16 :goto_1ba

    :cond_10a
    const-string v2, "com.android.server.desktopmode.action.TOUCHPAD_NOTIFICATION_PRESSED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    const-string v2, "CLICK_DISPLAYID"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    # invokes: Lcom/android/server/desktopmode/DualModeChanger;->collapsePanelsToDisplay(I)V
    invoke-static {v4, v2}, Lcom/android/server/desktopmode/DualModeChanger;->access$1300(Lcom/android/server/desktopmode/DualModeChanger;I)V

    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v4, :cond_139

    # getter for: Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DualModeChanger;->access$400()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Touchpad notification clicked, displayID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_139
    iget-object v4, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v4, v4, Lcom/android/server/desktopmode/DualModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {v4, v2, v3, v5}, Lcom/android/server/desktopmode/UiManager;->showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    goto/16 :goto_1ba

    :cond_142
    const-string v2, "com.android.server.desktopmode.action.SPEN_NOTIFICATION_CHANGE_MODE_PRESSED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_177

    const-string v2, "ACTION_CLICK_DISPLAYID"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_16c

    # getter for: Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DualModeChanger;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SPen notification change mode clicked, displayID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16c
    iget-object v3, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    # invokes: Lcom/android/server/desktopmode/DualModeChanger;->collapsePanelsToDisplay(I)V
    invoke-static {v3, v2}, Lcom/android/server/desktopmode/DualModeChanger;->access$1300(Lcom/android/server/desktopmode/DualModeChanger;I)V

    iget-object v3, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    # invokes: Lcom/android/server/desktopmode/DualModeChanger;->startSPenModeSettingActivity(Lcom/android/server/desktopmode/State;)V
    invoke-static {v3, v1}, Lcom/android/server/desktopmode/DualModeChanger;->access$300(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/State;)V

    goto :goto_1ba

    :cond_177
    const-string v2, "com.android.server.desktopmode.action.TOUCHPAD_AVAILABLE_NOTIFICATION_PRESSED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19e

    const-string v2, "CLICK_DISPLAYID"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    # invokes: Lcom/android/server/desktopmode/DualModeChanger;->collapsePanelsToDisplay(I)V
    invoke-static {v3, v2}, Lcom/android/server/desktopmode/DualModeChanger;->access$1300(Lcom/android/server/desktopmode/DualModeChanger;I)V

    iget-object v3, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v3, v3, Lcom/android/server/desktopmode/DualModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v5, 0x136

    iget-object v6, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    # getter for: Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;
    invoke-static {v6}, Lcom/android/server/desktopmode/DualModeChanger;->access$1400(Lcom/android/server/desktopmode/DualModeChanger;)Lcom/android/server/desktopmode/TouchpadManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/desktopmode/TouchpadManager;->getInternalUiCallback()Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/desktopmode/UiManager;->startActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    goto :goto_1ba

    :cond_19e
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ba

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->getSendingUserId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1ba

    invoke-interface {v1}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v2

    if-eq v2, v3, :cond_1ba

    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v2, v2, Lcom/android/server/desktopmode/DualModeChanger;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v2, v4}, Lcom/android/server/desktopmode/MultiResolutionManager;->setDualDisplayResolutionDensity(Z)I

    :cond_1ba
    :goto_1ba
    return-void
.end method
