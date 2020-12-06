.class Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener$1;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener$1;->this$1:Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method onExternalDisplayConnectionChanged(Lcom/android/server/desktopmode/State;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener$1;->this$1:Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v1

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isCoverSupportStatePartial()Z

    move-result v2

    # invokes: Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->showOrDismissPresentation(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->access$4200(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;ZZ)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener$1;->this$1:Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v1

    const/4 v2, 0x2

    const/16 v3, 0xa

    # invokes: Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->setDesktopModeState(ZII)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->access$4300(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;ZII)V

    return-void
.end method
