.class public Lcom/samsung/android/rlc/receiver/SPPReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SPPReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/samsung/android/rlc/receiver/SPPReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/SPPReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    if-eqz p2, :cond_76

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_76

    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/rlc/receiver/SPPReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onReceive] - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "eb850acb179b3447"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-static {p1}, Lcom/samsung/android/rlc/util/WakeLockUtil;->acquireWakeLock(Landroid/content/Context;)V

    sget-object v1, Lcom/samsung/android/rlc/receiver/SPPReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "received push msg from server"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/rlc/receiver/SPPReceiver;->TAG:Ljava/lang/String;

    const-string v2, "CHECKPOINT1 - RECEIVED PUSH MESSAGE WITH SPP"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearDeliveryBackoff(Landroid/content/Context;)V

    invoke-static {p1, p2}, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->handlePushMsg(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_75

    :cond_44
    const-string v1, "com.sec.spp.RegistrationChangedAction"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    sget-object v1, Lcom/samsung/android/rlc/receiver/SPPReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "received Registration or Deregistration rusult"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appId"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "eb850acb179b3447"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-static {p1, p2}, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_65
    goto :goto_75

    :cond_66
    const-string v1, "com.sec.spp.ServiceAbnormallyStoppedAction"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    sget-object v1, Lcom/samsung/android/rlc/receiver/SPPReceiver;->TAG:Ljava/lang/String;

    const-string v2, "SPP Push Service is stopped abnormally!!"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_75
    :goto_75
    return-void

    :cond_76
    :goto_76
    sget-object v0, Lcom/samsung/android/rlc/receiver/SPPReceiver;->TAG:Ljava/lang/String;

    const-string v1, "intent or intent.getAction() is null"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
