.class Lcom/android/server/pm/PersonaManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mDeviceEmergencyModeLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$3900(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_13
    const-string/jumbo v2, "reason"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EMERGENCY_STATE_CHANGED: reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_51

    const/4 v4, 0x3

    if-eq v2, v4, :cond_51

    const/4 v4, 0x4

    if-ne v2, v4, :cond_3b

    goto :goto_51

    :cond_3b
    const/4 v4, 0x5

    if-ne v2, v4, :cond_44

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mIsDeviceEmergencyModeEnabled:Z
    invoke-static {v4, v3}, Lcom/android/server/pm/PersonaManagerService;->access$4002(Lcom/android/server/pm/PersonaManagerService;Z)Z

    goto :goto_a8

    :cond_44
    const-string v4, "PersonaManagerService"

    const-string v5, "Unhandled emergency state. Default value is false!!! "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mIsDeviceEmergencyModeEnabled:Z
    invoke-static {v4, v3}, Lcom/android/server/pm/PersonaManagerService;->access$4002(Lcom/android/server/pm/PersonaManagerService;Z)Z

    goto :goto_a8

    :cond_51
    :goto_51
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mIsDeviceEmergencyModeEnabled:Z
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$4002(Lcom/android/server/pm/PersonaManagerService;Z)Z

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3700(Lcom/android/server/pm/PersonaManagerService;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_65
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v7

    if-eqz v7, :cond_a6

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/pm/PersonaManagerService;->getKeyguardShowState(I)Z

    move-result v7

    if-eqz v7, :cond_a6

    const-string v5, "PersonaManagerService"

    const-string/jumbo v7, "while enabling emergency mode, scrim is shown and key is disabled."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7, v3}, Lcom/android/server/pm/PersonaManagerService;->notifyKeyguardShow(IZ)V

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxKeyguardScrimView;
    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->access$4100(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/KnoxKeyguardScrimView;

    move-result-object v3

    if-eqz v3, :cond_a7

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PersonaManagerService;->hideScrim()V

    goto :goto_a7

    :cond_a6
    goto :goto_65

    :cond_a7
    :goto_a7
    nop

    :goto_a8
    monitor-exit v1

    goto :goto_ad

    :catchall_aa
    move-exception v2

    monitor-exit v1
    :try_end_ac
    .catchall {:try_start_13 .. :try_end_ac} :catchall_aa

    throw v2

    :cond_ad
    :goto_ad
    return-void
.end method
