.class Lcom/android/server/power/PowerManagerService$14;
.super Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearVrStateChanged(II)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$300(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->isVrModeEnabled()Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$7100(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGearVrStateChanged state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " vrModeEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x40

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/16 v5, 0x2000

    if-eq p1, v2, :cond_125

    const/16 v2, 0x80

    const/4 v6, 0x0

    if-eq p1, v2, :cond_da

    packed-switch p1, :pswitch_data_176

    goto/16 :goto_16f

    :pswitch_46
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mIsGearVrDocked:Z
    invoke-static {v2, v6}, Lcom/android/server/power/PowerManagerService;->access$7302(Lcom/android/server/power/PowerManagerService;Z)Z

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mIsGearVrTetheredDocked:Z
    invoke-static {v2, v6}, Lcom/android/server/power/PowerManagerService;->access$7202(Lcom/android/server/power/PowerManagerService;Z)Z

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->isVrModeEnabled()Z
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$7100(Lcom/android/server/power/PowerManagerService;)Z

    move-result v2

    if-eq v1, v2, :cond_16f

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v2, v5}, Lcom/android/server/power/PowerManagerService;->access$2676(Lcom/android/server/power/PowerManagerService;I)I

    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePowerStateLocked mIsGearVrDocked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mIsGearVrDocked:Z
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$7300(Lcom/android/server/power/PowerManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mIsGearVrTetheredDocked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mIsGearVrTetheredDocked:Z
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$7200(Lcom/android/server/power/PowerManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)V

    goto/16 :goto_16f

    :pswitch_8f
    if-ne p2, v3, :cond_96

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mIsGearVrTetheredDocked:Z
    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService;->access$7202(Lcom/android/server/power/PowerManagerService;Z)Z

    :cond_96
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mIsGearVrDocked:Z
    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService;->access$7302(Lcom/android/server/power/PowerManagerService;Z)Z

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->isVrModeEnabled()Z
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$7100(Lcom/android/server/power/PowerManagerService;)Z

    move-result v2

    if-eq v1, v2, :cond_16f

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v2, v5}, Lcom/android/server/power/PowerManagerService;->access$2676(Lcom/android/server/power/PowerManagerService;I)I

    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePowerStateLocked for TVR mIsGearVrDocked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mIsGearVrDocked:Z
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$7300(Lcom/android/server/power/PowerManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mIsGearVrTetheredDocked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mIsGearVrTetheredDocked:Z
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$7200(Lcom/android/server/power/PowerManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)V

    goto/16 :goto_16f

    :cond_da
    if-ne p2, v3, :cond_e2

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mIsGearVrPersistentVrModeEnabled:Z
    invoke-static {v2, v6}, Lcom/android/server/power/PowerManagerService;->access$7402(Lcom/android/server/power/PowerManagerService;Z)Z

    goto :goto_e7

    :cond_e2
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mIsGearVrModeEnabled:Z
    invoke-static {v2, v6}, Lcom/android/server/power/PowerManagerService;->access$7502(Lcom/android/server/power/PowerManagerService;Z)Z

    :goto_e7
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->isVrModeEnabled()Z
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$7100(Lcom/android/server/power/PowerManagerService;)Z

    move-result v2

    if-eq v1, v2, :cond_16f

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v2, v5}, Lcom/android/server/power/PowerManagerService;->access$2676(Lcom/android/server/power/PowerManagerService;I)I

    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePowerStateLocked mIsGearVrModeEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mIsGearVrModeEnabled:Z
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$7500(Lcom/android/server/power/PowerManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mIsGearVrPersistentVrModeEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mIsGearVrPersistentVrModeEnabled:Z
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$7400(Lcom/android/server/power/PowerManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_16f

    :cond_125
    if-ne p2, v3, :cond_12d

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mIsGearVrPersistentVrModeEnabled:Z
    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService;->access$7402(Lcom/android/server/power/PowerManagerService;Z)Z

    goto :goto_132

    :cond_12d
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mIsGearVrModeEnabled:Z
    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService;->access$7502(Lcom/android/server/power/PowerManagerService;Z)Z

    :goto_132
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->isVrModeEnabled()Z
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$7100(Lcom/android/server/power/PowerManagerService;)Z

    move-result v2

    if-eq v1, v2, :cond_16f

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v2, v5}, Lcom/android/server/power/PowerManagerService;->access$2676(Lcom/android/server/power/PowerManagerService;I)I

    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePowerStateLocked mIsGearVrModeEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mIsGearVrModeEnabled:Z
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$7500(Lcom/android/server/power/PowerManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mIsGearVrPersistentVrModeEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mIsGearVrPersistentVrModeEnabled:Z
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$7400(Lcom/android/server/power/PowerManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)V

    :cond_16f
    :goto_16f
    monitor-exit v0

    return-void

    :catchall_171
    move-exception v1

    monitor-exit v0
    :try_end_173
    .catchall {:try_start_7 .. :try_end_173} :catchall_171

    throw v1

    nop

    nop

    :pswitch_data_176
    .packed-switch 0x1
        :pswitch_8f
        :pswitch_46
    .end packed-switch
.end method
