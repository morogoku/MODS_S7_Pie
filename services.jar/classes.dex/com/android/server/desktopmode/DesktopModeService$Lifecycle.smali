.class public final Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mService:Lcom/android/server/desktopmode/DesktopModeService;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mService:Lcom/android/server/desktopmode/DesktopModeService;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mService:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->onBootPhase(I)V
    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->access$1400(Lcom/android/server/desktopmode/DesktopModeService;I)V

    :cond_9
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mService:Lcom/android/server/desktopmode/DesktopModeService;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mService:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->onCleanupUser(I)V
    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->access$1900(Lcom/android/server/desktopmode/DesktopModeService;I)V

    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 4

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/DesktopModeService$1;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mService:Lcom/android/server/desktopmode/DesktopModeService;

    const-string/jumbo v0, "desktopmode"

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mService:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onStartUser(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mService:Lcom/android/server/desktopmode/DesktopModeService;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mService:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->onStartUser(I)V
    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->access$1500(Lcom/android/server/desktopmode/DesktopModeService;I)V

    :cond_9
    return-void
.end method

.method public onStopUser(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mService:Lcom/android/server/desktopmode/DesktopModeService;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mService:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->onStopUser(I)V
    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->access$1800(Lcom/android/server/desktopmode/DesktopModeService;I)V

    :cond_9
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mService:Lcom/android/server/desktopmode/DesktopModeService;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mService:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->onSwitchUser(I)V
    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->access$1700(Lcom/android/server/desktopmode/DesktopModeService;I)V

    :cond_9
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mService:Lcom/android/server/desktopmode/DesktopModeService;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mService:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->onUnlockUser(I)V
    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->access$1600(Lcom/android/server/desktopmode/DesktopModeService;I)V

    :cond_9
    return-void
.end method
