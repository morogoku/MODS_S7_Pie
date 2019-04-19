.class Lcom/android/server/vr/GearVrManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "GearVrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/GearVrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/GearVrManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vr/GearVrManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerService$5;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const-string/jumbo v0, "reason"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "GearVrManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received UpsmEvent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mDocked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerService$5;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mDocked:Z
    invoke-static {v4}, Lcom/android/server/vr/GearVrManagerService;->access$5100(Lcom/android/server/vr/GearVrManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService$5;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/vr/GearVrManagerService;->access$1900(Lcom/android/server/vr/GearVrManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    packed-switch v0, :pswitch_data_a4

    :try_start_42
    const-string v1, "GearVrManagerService"

    goto :goto_8a

    :pswitch_45
    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService$5;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # setter for: Lcom/android/server/vr/GearVrManagerService;->mUPSMEnabled:Z
    invoke-static {v3, v1}, Lcom/android/server/vr/GearVrManagerService;->access$5302(Lcom/android/server/vr/GearVrManagerService;Z)Z

    goto :goto_9e

    :pswitch_4b
    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService$5;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v3}, Lcom/android/server/vr/GearVrManagerService;->isVrMode()Z

    move-result v3

    if-nez v3, :cond_64

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService$5;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v3}, Lcom/android/server/vr/GearVrManagerService;->isPersistentVrMode()Z

    move-result v3

    if-eqz v3, :cond_5c

    goto :goto_64

    :cond_5c
    const-string v3, "GearVrManagerService"

    const-string v4, "UPSM Enabled, ignore forcing vr exit"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    :cond_64
    :goto_64
    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService$5;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->setVrMode(Z)V
    invoke-static {v3, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3200(Lcom/android/server/vr/GearVrManagerService;Z)V

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService$5;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->setPersistentVrMode(Z)V
    invoke-static {v3, v1}, Lcom/android/server/vr/GearVrManagerService;->access$1800(Lcom/android/server/vr/GearVrManagerService;Z)V

    :goto_6e
    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService$5;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v3}, Lcom/android/server/vr/GearVrManagerService;->isDock()Z

    move-result v3

    if-eqz v3, :cond_7c

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService$5;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->setDockState(ZI)V
    invoke-static {v3, v1, v1}, Lcom/android/server/vr/GearVrManagerService;->access$5200(Lcom/android/server/vr/GearVrManagerService;ZI)V

    goto :goto_83

    :cond_7c
    const-string v1, "GearVrManagerService"

    const-string v3, "UPSM Enabled, ignore forcing undock"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_83
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$5;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/vr/GearVrManagerService;->mUPSMEnabled:Z
    invoke-static {v1, v3}, Lcom/android/server/vr/GearVrManagerService;->access$5302(Lcom/android/server/vr/GearVrManagerService;Z)Z

    goto :goto_9e

    :goto_8a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9e
    monitor-exit v2

    return-void

    :catchall_a0
    move-exception v1

    monitor-exit v2
    :try_end_a2
    .catchall {:try_start_42 .. :try_end_a2} :catchall_a0

    throw v1

    nop

    :pswitch_data_a4
    .packed-switch 0x2
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_45
    .end packed-switch
.end method
