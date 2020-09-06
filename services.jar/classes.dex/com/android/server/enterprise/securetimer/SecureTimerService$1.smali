.class Lcom/android/server/enterprise/securetimer/SecureTimerService$1;
.super Landroid/content/BroadcastReceiver;
.source "SecureTimerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/securetimer/SecureTimerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/securetimer/SecureTimerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$1;->this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "[SecureTimerService:] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In User Change Receiver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74

    const-string v2, "[SecureTimerService:] "

    const-string v3, "ACTION_USER_REMOVED"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android.intent.extra.user_handle"

    const/16 v3, -0x2710

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_74

    iget-object v3, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$1;->this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    # invokes: Lcom/android/server/enterprise/securetimer/SecureTimerService;->deleteAlarmRecords(I)Z
    invoke-static {v3, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->access$1300(Lcom/android/server/enterprise/securetimer/SecureTimerService;I)Z

    move-result v3

    const-string v4, "[SecureTimerService:] "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In User Change Receiver deleteAlarmRecords result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$1;->this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    # invokes: Lcom/android/server/enterprise/securetimer/SecureTimerService;->deleteStatusPolicy(I)Z
    invoke-static {v4, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->access$1400(Lcom/android/server/enterprise/securetimer/SecureTimerService;I)Z

    move-result v4

    const-string v5, "[SecureTimerService:] "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In User Change Receiver deleteStatusPolicy result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_72

    if-eqz v4, :cond_72

    const/4 v5, 0x1

    goto :goto_73

    :cond_72
    const/4 v5, 0x0

    :goto_73
    move v1, v5

    :cond_74
    const-string v2, "[SecureTimerService:] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In User Change Receiver result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
