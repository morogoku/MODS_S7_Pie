.class public Lcom/samsung/android/rlc/receiver/UnlockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UnlockReceiver.java"


# static fields
.field private static final INTENT_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.RMM_INIT"

.field private static final RMM_BLINK_STOP:Ljava/lang/String; = "com.samsung.android.rmm.blink_stop"

.field public static final RMM_UNLOCK_BLINK:Ljava/lang/String; = "com.samsung.android.action.RMM_BLINK_UNLOCK"

.field private static final RMM_UNLOCK_BLINK_PASS:Ljava/lang/String; = "passcode"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/samsung/android/rlc/receiver/UnlockReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/UnlockReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    if-eqz p2, :cond_65

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_65

    :cond_9
    const-string v0, "com.samsung.android.action.RMM_BLINK_UNLOCK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    sget-object v0, Lcom/samsung/android/rlc/receiver/UnlockReceiver;->TAG:Ljava/lang/String;

    const-string v1, "RMM Blink Unlock received"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1c
    const-string/jumbo v0, "passcode"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/rlc/util/RLCUtil;->unlockBlink(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5f

    const-string v2, "Normal"

    invoke-static {p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    sget-object v2, Lcom/samsung/android/rlc/receiver/UnlockReceiver;->TAG:Ljava/lang/String;

    const-string v3, "Start Unlock report"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.rmm.blink_stop"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->SEM_ALL:Landroid/os/UserHandle;

    const-string v4, "com.samsung.android.permission.RMM_INIT"

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->makeUnlockReportBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {p1, v3, v4}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_5f} :catch_60

    :cond_5f
    goto :goto_64

    :catch_60
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_64
    :goto_64
    return-void

    :cond_65
    :goto_65
    sget-object v0, Lcom/samsung/android/rlc/receiver/UnlockReceiver;->TAG:Ljava/lang/String;

    const-string v1, "intent or intent.getAction() is null"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
