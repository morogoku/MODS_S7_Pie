.class Lcom/android/server/desktopmode/DualModeChanger$1;
.super Lcom/android/server/desktopmode/UiManager$InternalUiCallback;
.source "DualModeChanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DualModeChanger;->showInitialSPenDialog(Lcom/android/server/desktopmode/State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DualModeChanger;

.field final synthetic val$state:Lcom/android/server/desktopmode/State;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/State;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger$1;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iput-object p2, p0, Lcom/android/server/desktopmode/DualModeChanger$1;->val$state:Lcom/android/server/desktopmode/State;

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method onClickButtonNegative()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$1;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger$1;->val$state:Lcom/android/server/desktopmode/State;

    # invokes: Lcom/android/server/desktopmode/DualModeChanger;->startSPenModeSettingActivity(Lcom/android/server/desktopmode/State;)V
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DualModeChanger;->access$300(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method onShow()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$1;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v0, v0, Lcom/android/server/desktopmode/DualModeChanger;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "initial_spen_dialog"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    return-void
.end method
