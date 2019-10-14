.class Lcom/android/server/desktopmode/BootInitBlocker;
.super Ljava/lang/Object;
.source "BootInitBlocker.java"


# static fields
.field private static final DELAY:I = 0xbb8

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/BootInitBlocker;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/BootInitBlocker;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/desktopmode/IStateManager;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    if-eqz v0, :cond_3a

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v0, "desktopmode"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    new-instance v1, Lcom/android/server/desktopmode/BootInitBlocker$1;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/BootInitBlocker$1;-><init>(Lcom/android/server/desktopmode/BootInitBlocker;)V

    move-object v7, v1

    invoke-virtual {v0, v7}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_2d

    sget-object v1, Lcom/android/server/desktopmode/BootInitBlocker;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerBlocker"

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    new-instance v8, Lcom/android/server/desktopmode/BootInitBlocker$2;

    move-object v1, v8

    move-object v2, p0

    move-object v4, v0

    move-object v5, v7

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/desktopmode/BootInitBlocker$2;-><init>(Lcom/android/server/desktopmode/BootInitBlocker;Landroid/os/Handler;Lcom/samsung/android/desktopmode/SemDesktopModeManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;Lcom/android/server/desktopmode/IStateManager;)V

    invoke-interface {p3, v1}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    :cond_3a
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/desktopmode/BootInitBlocker;->TAG:Ljava/lang/String;

    return-object v0
.end method
