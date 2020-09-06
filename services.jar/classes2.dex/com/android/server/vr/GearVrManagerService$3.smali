.class Lcom/android/server/vr/GearVrManagerService$3;
.super Landroid/database/ContentObserver;
.source "GearVrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vr/GearVrManagerService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/GearVrManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vr/GearVrManagerService;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerService$3;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 6

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    const-string v0, "GearVrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vr settings changed uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$3;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$1900(Lcom/android/server/vr/GearVrManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_21
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$3;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->updateSettingsLocked()V
    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerService;->access$4800(Lcom/android/server/vr/GearVrManagerService;)V

    monitor-exit v0

    return-void

    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_28

    throw v1
.end method
