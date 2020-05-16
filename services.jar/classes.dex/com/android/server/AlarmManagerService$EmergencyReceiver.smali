.class Lcom/android/server/AlarmManagerService$EmergencyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmergencyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/AlarmManagerService$EmergencyReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$EmergencyReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mEmergencyMgr:Lcom/samsung/android/emergencymode/SemEmergencyManager;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$3400(Lcom/android/server/AlarmManagerService;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$EmergencyReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mEmergencyMgr:Lcom/samsung/android/emergencymode/SemEmergencyManager;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$3400(Lcom/android/server/AlarmManagerService;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_2d

    :cond_22
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$EmergencyReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->emergencyAlarmHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$3500(Lcom/android/server/AlarmManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_10a

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$EmergencyReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mEmergencyMgr:Lcom/samsung/android/emergencymode/SemEmergencyManager;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$3400(Lcom/android/server/AlarmManagerService;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$EmergencyReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mEmergencyMgr:Lcom/samsung/android/emergencymode/SemEmergencyManager;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$3400(Lcom/android/server/AlarmManagerService;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_50

    goto :goto_5b

    :cond_50
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$EmergencyReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->emergencyAlarmHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$3500(Lcom/android/server/AlarmManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_10a

    :cond_5b
    :goto_5b
    return-void

    :cond_5c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    const-string/jumbo v0, "reason"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_7b

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$EmergencyReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->emergencyAlarmHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$3500(Lcom/android/server/AlarmManagerService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_7b
    goto/16 :goto_10a

    :cond_7d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10a

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$EmergencyReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mEmergencyMgr:Lcom/samsung/android/emergencymode/SemEmergencyManager;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$3400(Lcom/android/server/AlarmManagerService;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    if-eqz v0, :cond_109

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$EmergencyReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mEmergencyMgr:Lcom/samsung/android/emergencymode/SemEmergencyManager;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$3400(Lcom/android/server/AlarmManagerService;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_9e

    goto :goto_109

    :cond_9e
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_10a

    const-string v4, "com.sec.android.app.clockpackage"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10a

    :try_start_b1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, v1, v2, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_b1 .. :try_end_b9} :catch_bb

    move-object v3, v5

    goto :goto_bc

    :catch_bb
    move-exception v4

    :goto_bc
    if-eqz v3, :cond_e3

    iget-boolean v4, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_e3

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$EmergencyReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->emergencyAlarmHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$3500(Lcom/android/server/AlarmManagerService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v2, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_PACKAGE_CHANGED - Enabled : intent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10a

    :cond_e3
    if-eqz v3, :cond_10a

    iget-boolean v4, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_10a

    iget-object v4, p0, Lcom/android/server/AlarmManagerService$EmergencyReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->emergencyAlarmHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$3500(Lcom/android/server/AlarmManagerService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v2, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_PACKAGE_CHANGED - Disabled : intent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10a

    :cond_109
    :goto_109
    return-void

    :cond_10a
    :goto_10a
    return-void
.end method
