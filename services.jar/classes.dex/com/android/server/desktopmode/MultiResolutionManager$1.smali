.class Lcom/android/server/desktopmode/MultiResolutionManager$1;
.super Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
.source "MultiResolutionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/MultiResolutionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/MultiResolutionManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/MultiResolutionManager;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$1;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSettingChanged(Ljava/lang/String;I)V
    .registers 5

    if-nez p1, :cond_2e

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_f

    # getter for: Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/MultiResolutionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Resolution user setting is null."

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$1;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    # getter for: Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;
    invoke-static {v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->access$100(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2d

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$1;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$1;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    # getter for: Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;
    invoke-static {v1}, Lcom/android/server/desktopmode/MultiResolutionManager;->access$200(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager;->setCurrentResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V

    :cond_2d
    return-void

    :cond_2e
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$1;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    # getter for: Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/desktopmode/MultiResolutionManager;->access$300()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager;->setCurrentResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V

    return-void
.end method
