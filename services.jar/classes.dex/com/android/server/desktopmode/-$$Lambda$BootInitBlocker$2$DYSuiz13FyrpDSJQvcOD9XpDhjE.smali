.class public final synthetic Lcom/android/server/desktopmode/-$$Lambda$BootInitBlocker$2$DYSuiz13FyrpDSJQvcOD9XpDhjE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private final synthetic f$1:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/desktopmode/SemDesktopModeManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/-$$Lambda$BootInitBlocker$2$DYSuiz13FyrpDSJQvcOD9XpDhjE;->f$0:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object p2, p0, Lcom/android/server/desktopmode/-$$Lambda$BootInitBlocker$2$DYSuiz13FyrpDSJQvcOD9XpDhjE;->f$1:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/-$$Lambda$BootInitBlocker$2$DYSuiz13FyrpDSJQvcOD9XpDhjE;->f$0:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/-$$Lambda$BootInitBlocker$2$DYSuiz13FyrpDSJQvcOD9XpDhjE;->f$1:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/BootInitBlocker$2;->lambda$onUserChanged$0(Lcom/samsung/android/desktopmode/SemDesktopModeManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    return-void
.end method
