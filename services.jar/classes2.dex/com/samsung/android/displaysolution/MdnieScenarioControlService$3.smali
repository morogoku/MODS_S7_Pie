.class Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;
.super Ljava/lang/Object;
.source "MdnieScenarioControlService.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;


# direct methods
.method constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopDockConnectionChanged(Z)V
    .registers 2

    nop

    return-void
.end method

.method public onDesktopModeChanged(Z)V
    .registers 4

    if-eqz p1, :cond_10

    const-string v0, "MdnieScenarioControlService"

    const-string v1, "Dex Mode Connected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z
    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$4302(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    goto :goto_1d

    :cond_10
    const-string v0, "MdnieScenarioControlService"

    const-string v1, "Dex Mode Disconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z
    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$4302(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    :goto_1d
    return-void
.end method
