.class Lcom/android/server/desktopmode/BootInitBlocker$2;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "BootInitBlocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/BootInitBlocker;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/desktopmode/IStateManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/BootInitBlocker;

.field final synthetic val$blocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

.field final synthetic val$desktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$stateManager:Lcom/android/server/desktopmode/IStateManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/BootInitBlocker;Landroid/os/Handler;Lcom/samsung/android/desktopmode/SemDesktopModeManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;Lcom/android/server/desktopmode/IStateManager;)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/desktopmode/BootInitBlocker$2;->this$0:Lcom/android/server/desktopmode/BootInitBlocker;

    iput-object p2, p0, Lcom/android/server/desktopmode/BootInitBlocker$2;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/desktopmode/BootInitBlocker$2;->val$desktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object p4, p0, Lcom/android/server/desktopmode/BootInitBlocker$2;->val$blocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    iput-object p5, p0, Lcom/android/server/desktopmode/BootInitBlocker$2;->val$stateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method

.method static synthetic lambda$onUserChanged$0(Lcom/samsung/android/desktopmode/SemDesktopModeManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V
    .registers 4

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_e

    # getter for: Lcom/android/server/desktopmode/BootInitBlocker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/BootInitBlocker;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unregisterBlocker"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-virtual {p0, p1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    return-void
.end method


# virtual methods
.method onUserChanged(Lcom/android/server/desktopmode/State;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/desktopmode/BootInitBlocker$2;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/desktopmode/BootInitBlocker$2;->val$desktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/BootInitBlocker$2;->val$blocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    new-instance v3, Lcom/android/server/desktopmode/-$$Lambda$BootInitBlocker$2$DYSuiz13FyrpDSJQvcOD9XpDhjE;

    invoke-direct {v3, v1, v2}, Lcom/android/server/desktopmode/-$$Lambda$BootInitBlocker$2$DYSuiz13FyrpDSJQvcOD9XpDhjE;-><init>(Lcom/samsung/android/desktopmode/SemDesktopModeManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/server/desktopmode/BootInitBlocker$2;->val$stateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0, p0}, Lcom/android/server/desktopmode/IStateManager;->unregisterListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    return-void
.end method
