.class Lcom/android/server/desktopmode/TouchpadManager$StateListener;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "TouchpadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/TouchpadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/TouchpadManager;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/TouchpadManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/TouchpadManager;Lcom/android/server/desktopmode/TouchpadManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/TouchpadManager$StateListener;-><init>(Lcom/android/server/desktopmode/TouchpadManager;)V

    return-void
.end method


# virtual methods
.method onDualModeStartLoadingScreen(Z)V
    .registers 5

    if-nez p1, :cond_4a

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # getter for: Lcom/android/server/desktopmode/TouchpadManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;
    invoke-static {v1}, Lcom/android/server/desktopmode/TouchpadManager;->access$600(Lcom/android/server/desktopmode/TouchpadManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v1

    # invokes: Lcom/android/server/desktopmode/TouchpadManager;->updateTouchpadAvailability(Lcom/android/server/desktopmode/State;)V
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/TouchpadManager;->access$1100(Lcom/android/server/desktopmode/TouchpadManager;Lcom/android/server/desktopmode/State;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # getter for: Lcom/android/server/desktopmode/TouchpadManager;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;
    invoke-static {v0}, Lcom/android/server/desktopmode/TouchpadManager;->access$1300(Lcom/android/server/desktopmode/TouchpadManager;)Lcom/android/server/desktopmode/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # getter for: Lcom/android/server/desktopmode/TouchpadManager;->mSPenSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
    invoke-static {v1}, Lcom/android/server/desktopmode/TouchpadManager;->access$1200(Lcom/android/server/desktopmode/TouchpadManager;)Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/SettingsHelper;->unregisterListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # getter for: Lcom/android/server/desktopmode/TouchpadManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/desktopmode/TouchpadManager;->access$100(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/desktopmode/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # getter for: Lcom/android/server/desktopmode/TouchpadManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/desktopmode/TouchpadManager;->access$100(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # getter for: Lcom/android/server/desktopmode/TouchpadManager;->mSPenDetachedReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/server/desktopmode/TouchpadManager;->access$1400(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # getter for: Lcom/android/server/desktopmode/TouchpadManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/desktopmode/TouchpadManager;->access$1600(Lcom/android/server/desktopmode/TouchpadManager;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # getter for: Lcom/android/server/desktopmode/TouchpadManager;->mPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;
    invoke-static {v1}, Lcom/android/server/desktopmode/TouchpadManager;->access$1500(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    :cond_4a
    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # getter for: Lcom/android/server/desktopmode/TouchpadManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/desktopmode/TouchpadManager;->access$100(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "touchpad_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # getter for: Lcom/android/server/desktopmode/TouchpadManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;
    invoke-static {v0}, Lcom/android/server/desktopmode/TouchpadManager;->access$600(Lcom/android/server/desktopmode/TouchpadManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/server/desktopmode/IStateManager;->setTouchpadEnabled(Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # getter for: Lcom/android/server/desktopmode/TouchpadManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/desktopmode/TouchpadManager;->access$100(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/desktopmode/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # setter for: Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenDetached:Z
    invoke-static {v0, v2}, Lcom/android/server/desktopmode/TouchpadManager;->access$202(Lcom/android/server/desktopmode/TouchpadManager;Z)Z

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # invokes: Lcom/android/server/desktopmode/TouchpadManager;->updateSPenState()V
    invoke-static {v0}, Lcom/android/server/desktopmode/TouchpadManager;->access$300(Lcom/android/server/desktopmode/TouchpadManager;)V

    :cond_7a
    return-void
.end method

.method onDualModeStopLoadingScreen(Z)V
    .registers 7

    if-eqz p1, :cond_68

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # getter for: Lcom/android/server/desktopmode/TouchpadManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;
    invoke-static {v0}, Lcom/android/server/desktopmode/TouchpadManager;->access$600(Lcom/android/server/desktopmode/TouchpadManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # invokes: Lcom/android/server/desktopmode/TouchpadManager;->updateTouchpadAvailability(Lcom/android/server/desktopmode/State;)V
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/TouchpadManager;->access$1100(Lcom/android/server/desktopmode/TouchpadManager;Lcom/android/server/desktopmode/State;)V

    iget-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # getter for: Lcom/android/server/desktopmode/TouchpadManager;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;
    invoke-static {v1}, Lcom/android/server/desktopmode/TouchpadManager;->access$1300(Lcom/android/server/desktopmode/TouchpadManager;)Lcom/android/server/desktopmode/SettingsHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # getter for: Lcom/android/server/desktopmode/TouchpadManager;->mSPenSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
    invoke-static {v2}, Lcom/android/server/desktopmode/TouchpadManager;->access$1200(Lcom/android/server/desktopmode/TouchpadManager;)Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    iget-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # getter for: Lcom/android/server/desktopmode/TouchpadManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/desktopmode/TouchpadManager;->access$100(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/desktopmode/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_68

    iget-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # getter for: Lcom/android/server/desktopmode/TouchpadManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/desktopmode/TouchpadManager;->access$100(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "initial_spen_dialog"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Lcom/android/server/desktopmode/TouchpadManager;->mIsInitialSPenDetected:Z
    invoke-static {v1, v2}, Lcom/android/server/desktopmode/TouchpadManager;->access$702(Lcom/android/server/desktopmode/TouchpadManager;Z)Z

    iget-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # getter for: Lcom/android/server/desktopmode/TouchpadManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/desktopmode/TouchpadManager;->access$100(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # getter for: Lcom/android/server/desktopmode/TouchpadManager;->mSPenDetachedReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/android/server/desktopmode/TouchpadManager;->access$1400(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.samsung.pen.INSERT"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # getter for: Lcom/android/server/desktopmode/TouchpadManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v1}, Lcom/android/server/desktopmode/TouchpadManager;->access$1600(Lcom/android/server/desktopmode/TouchpadManager;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # getter for: Lcom/android/server/desktopmode/TouchpadManager;->mPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;
    invoke-static {v2}, Lcom/android/server/desktopmode/TouchpadManager;->access$1500(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    :cond_68
    return-void
.end method
