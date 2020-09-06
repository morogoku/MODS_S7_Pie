.class Lcom/android/server/desktopmode/DualModeChanger$2;
.super Lcom/android/server/desktopmode/UiManager$InternalUiCallback;
.source "DualModeChanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DualModeChanger;->handleStartLoadingScreen(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DualModeChanger;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DualModeChanger;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger$2;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationComplete()V
    .registers 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_e

    # getter for: Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DualModeChanger;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAnimationComplete()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$2;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DualModeChanger;->access$502(Lcom/android/server/desktopmode/DualModeChanger;Z)Z

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$2;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    # invokes: Lcom/android/server/desktopmode/DualModeChanger;->scheduleStopLoadingScreenIfPossible(Z)V
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DualModeChanger;->access$600(Lcom/android/server/desktopmode/DualModeChanger;Z)V

    return-void
.end method
