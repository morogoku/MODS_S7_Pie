.class Lcom/android/server/enterprise/securetimer/SecureTimerService$5;
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

    iput-object p1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$5;->this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private changeTime()I
    .registers 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "[SecureTimerService:] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In changeTime Input: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->arcounter_changeTime(JB)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;

    if-eqz v2, :cond_38

    iget v3, v2, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;->returnCode:I

    if-eqz v3, :cond_28

    goto :goto_38

    :cond_28
    const-string v3, "[SecureTimerService:] "

    const-string v4, "changeTime succeeded!"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$5;->this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    iget-wide v4, v2, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;->alarmState:J

    # invokes: Lcom/android/server/enterprise/securetimer/SecureTimerService;->triggerAlarm(J)V
    invoke-static {v3, v4, v5}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->access$400(Lcom/android/server/enterprise/securetimer/SecureTimerService;J)V

    const/4 v3, 0x0

    return v3

    :cond_38
    :goto_38
    const-string v3, "[SecureTimerService:] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeTime failed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_50

    const-string v4, "Result is null"

    goto :goto_54

    :cond_50
    invoke-virtual {v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_54
    invoke-static {v3, v4}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    return v3
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const-string v0, "[SecureTimerService:] "

    const-string v1, "In TimeChangeReceiver"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    const-string v1, "[SecureTimerService:] "

    const-string v2, "In TimeChangeReceiver Start Calling changeTime"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService$5;->changeTime()I

    move-result v1

    const-string v2, "[SecureTimerService:] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In TimeChangeReceiver changeTime res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    return-void
.end method
