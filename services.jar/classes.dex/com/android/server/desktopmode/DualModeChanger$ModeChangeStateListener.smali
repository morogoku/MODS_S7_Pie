.class Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "DualModeChanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DualModeChanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeChangeStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DualModeChanger;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/DualModeChanger;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/DualModeChanger$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;-><init>(Lcom/android/server/desktopmode/DualModeChanger;)V

    return-void
.end method


# virtual methods
.method onInitialSPenDetected(Z)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1d

    # getter for: Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DualModeChanger;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInitialSPenDetected(detected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    if-eqz p1, :cond_2c

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v0, v0, Lcom/android/server/desktopmode/DualModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    # invokes: Lcom/android/server/desktopmode/DualModeChanger;->showInitialSPenDialog(Lcom/android/server/desktopmode/State;)V
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/DualModeChanger;->access$1500(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/State;)V

    :cond_2c
    return-void
.end method

.method onSPenEnabled(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v0, v0, Lcom/android/server/desktopmode/DualModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isTouchpadEnabled()Z

    move-result v0

    const/16 v1, 0xd7

    if-eqz p1, :cond_1a

    if-eqz v0, :cond_1a

    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v2, v2, Lcom/android/server/desktopmode/DualModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {v2, v1}, Lcom/android/server/desktopmode/UiManager;->showNotification(I)V

    goto :goto_21

    :cond_1a
    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v2, v2, Lcom/android/server/desktopmode/DualModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {v2, v1}, Lcom/android/server/desktopmode/UiManager;->removeNotification(I)V

    :goto_21
    return-void
.end method

.method onTouchpadAvailabilityChanged(Lcom/android/server/desktopmode/State;)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1d

    # getter for: Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DualModeChanger;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTouchpadAvailabilityChanged(), state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isTouchpadAvailable()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v0, v0, Lcom/android/server/desktopmode/DualModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v1, v1, Lcom/android/server/desktopmode/DualModeChanger;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/desktopmode/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result v1

    if-nez v1, :cond_3e

    const/16 v1, 0xd6

    goto :goto_40

    :cond_3e
    const/16 v1, 0xd3

    :goto_40
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/UiManager;->showNotification(I)V

    goto :goto_56

    :cond_44
    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v0, v0, Lcom/android/server/desktopmode/DualModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v1, 0x136

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/UiManager;->finishActivity(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v0, v0, Lcom/android/server/desktopmode/DualModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/UiManager;->removeNotification(I)V

    :goto_56
    return-void
.end method

.method onTouchpadEnabled(Lcom/android/server/desktopmode/State;)V
    .registers 6

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1d

    # getter for: Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DualModeChanger;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTouchpadEnabled(), state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v0, v0, Lcom/android/server/desktopmode/DualModeChanger;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "spen_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isTouchpadEnabled()Z

    move-result v1

    const/16 v2, 0xd7

    const/16 v3, 0xcb

    if-eqz v1, :cond_4a

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isTouchpadAvailable()Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v1, v1, Lcom/android/server/desktopmode/DualModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {v1, v3}, Lcom/android/server/desktopmode/UiManager;->showNotification(I)V

    if-eqz v0, :cond_89

    iget-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v1, v1, Lcom/android/server/desktopmode/DualModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/UiManager;->showNotification(I)V

    goto :goto_89

    :cond_4a
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isTouchpadAvailable()Z

    move-result v1

    if-eqz v1, :cond_71

    iget-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v1, v1, Lcom/android/server/desktopmode/DualModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    iget-object v3, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v3, v3, Lcom/android/server/desktopmode/DualModeChanger;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/desktopmode/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result v3

    if-nez v3, :cond_6b

    const/16 v3, 0xd6

    goto :goto_6d

    :cond_6b
    const/16 v3, 0xd3

    :goto_6d
    invoke-virtual {v1, v3}, Lcom/android/server/desktopmode/UiManager;->showNotification(I)V

    goto :goto_78

    :cond_71
    iget-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v1, v1, Lcom/android/server/desktopmode/DualModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {v1, v3}, Lcom/android/server/desktopmode/UiManager;->removeNotification(I)V

    :goto_78
    iget-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v1, v1, Lcom/android/server/desktopmode/DualModeChanger;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/desktopmode/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v1, v1, Lcom/android/server/desktopmode/DualModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/UiManager;->removeNotification(I)V

    :cond_89
    :goto_89
    return-void
.end method
