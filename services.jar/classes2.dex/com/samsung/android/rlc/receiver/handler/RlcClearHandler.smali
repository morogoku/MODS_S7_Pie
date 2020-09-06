.class public Lcom/samsung/android/rlc/receiver/handler/RlcClearHandler;
.super Ljava/lang/Object;
.source "RlcClearHandler.java"


# static fields
.field private static final ACTION_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_REQUEST_SHUTDOWN"

.field private static final EXTRA_CONFIRM_DIALOG:Ljava/lang/String; = "android.intent.extra.KEY_CONFIRM"

.field public static final OPRT_DEFUALT:I = -0x1

.field public static final OPRT_POWEROFF:I = 0x1

.field public static final OPRT_QUERY_PARAM:Ljava/lang/String; = "oprtType"

.field public static final OPRT_REBOOT:I = 0x2

.field public static final OPRT_RECEHCK:I = 0x4

.field public static final OPRT_REINIT:I = 0x3

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/samsung/android/rlc/receiver/handler/RlcClearHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/RlcClearHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllBackoff(Landroid/content/Context;)V
    .registers 5

    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/RlcClearHandler;->TAG:Ljava/lang/String;

    const-string v1, "[clearAllBackoff]"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearGCMBackoff(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearSPPBackoff(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearGCMMgRegistrationBackoff(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearSPPMgRegistrationBackoff(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearDeliveryBackoff(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearCheckBackoff(Landroid/content/Context;)V

    const-string v0, "SPP"

    invoke-static {p0, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->unmarkMGRegistered(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "GCM"

    invoke-static {p0, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->unmarkMGRegistered(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "callcheckapi"

    const-string v1, "N"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.rlc.CHECK_DEVICE_STATUS_RETRY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static run(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/RlcClearHandler;->TAG:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "oprtType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "clearOp"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "SPP"

    invoke-static {p0, v4}, Lcom/samsung/android/rlc/util/PreferencesUtil;->isMGRegistered(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-static {p0}, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->deregisterFromSPP(Landroid/content/Context;)V

    :cond_24
    const-string v4, "GCM"

    invoke-static {p0, v4}, Lcom/samsung/android/rlc/util/PreferencesUtil;->isMGRegistered(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-static {p0}, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->deregisterFromGCM(Landroid/content/Context;)V

    :cond_2f
    invoke-static {p0}, Lcom/samsung/android/rlc/receiver/handler/RlcClearHandler;->clearAllBackoff(Landroid/content/Context;)V

    xor-int/lit8 v4, v2, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRlcClear(Landroid/content/Context;Ljava/lang/Boolean;)V

    if-eqz v2, :cond_b2

    const-string v4, "finalchecked"

    const-string v5, "N"

    invoke-static {p0, v4, v5}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x4

    if-ne v1, v4, :cond_4f

    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/rlc/util/RLCUtil;->clearSecureDataForRecheck()V

    goto :goto_5d

    :cond_4f
    const-string v4, "1stCheck"

    const-string v5, ""

    invoke-static {p0, v4, v5}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/rlc/util/RLCUtil;->resetSecureData()V

    :goto_5d
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v4

    sget v5, Lcom/samsung/android/rlc/util/RLCUtil;->RESET_ASKED:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/rlc/util/RLCUtil;->setRegiStatus(I)V

    sget-object v4, Lcom/samsung/android/rlc/receiver/handler/RlcClearHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Operation called by scheme : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    if-eq v1, v4, :cond_9c

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_bc

    goto :goto_b1

    :pswitch_85
    invoke-static {p0, v4, v5}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto :goto_b1

    :pswitch_89
    invoke-static {p0, v4, v5}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto :goto_b1

    :pswitch_8d
    const-string/jumbo v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    const-string v4, "Remote Mobile Manager value reset"

    invoke-virtual {v3, v4}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_b1

    :cond_9c
    :pswitch_9c
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.extra.KEY_CONFIRM"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    nop

    :goto_b1
    goto :goto_bb

    :cond_b2
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v3

    sget v4, Lcom/samsung/android/rlc/util/RLCUtil;->NOT_SUPPORTED:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/rlc/util/RLCUtil;->setRegiStatus(I)V

    :goto_bb
    return-void

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_9c
        :pswitch_8d
        :pswitch_89
        :pswitch_85
    .end packed-switch
.end method
