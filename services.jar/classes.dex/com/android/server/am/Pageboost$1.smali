.class Lcom/android/server/am/Pageboost$1;
.super Landroid/content/BroadcastReceiver;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "received ACTION_USER_UNLOCKED"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/am/Pageboost;->user_unlock_done:Z
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Z

    move-result v1

    if-nez v1, :cond_3f

    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "init mGlobalAppLRU"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    # setter for: Lcom/android/server/am/Pageboost;->user_unlock_done:Z
    invoke-static {v1}, Lcom/android/server/am/Pageboost;->access$202(Z)Z

    # getter for: Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/am/Pageboost$PageboostHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    # getter for: Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v2

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/am/Pageboost$PageboostHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3f
    return-void

    :cond_40
    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$400()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v1

    if-nez v1, :cond_47

    return-void

    :cond_47
    const-string v1, "com.sec.android.launcher.action.RUN_APP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_96

    const-string v1, "com.android.server.am.ACTION_PAGEBOOST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    goto :goto_96

    :cond_58
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_84

    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    goto :goto_84

    :cond_69
    const-string v1, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_131

    # getter for: Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/android/server/am/Pageboost$PageboostHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    # getter for: Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/Pageboost$PageboostHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_131

    :cond_84
    :goto_84
    # getter for: Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/server/am/Pageboost$PageboostHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    # getter for: Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/Pageboost$PageboostHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_131

    :cond_96
    :goto_96
    const-string/jumbo v1, "package"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_cb

    # getter for: Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/Pageboost$PageboostHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    # getter for: Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/am/Pageboost$PageboostHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_130

    :cond_cb
    const-string v2, "apps"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_ec

    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apps "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_ec
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-direct {v3}, Lcom/android/server/am/Pageboost$PageboostAppList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_f9
    array-length v6, v2

    const/4 v7, 0x2

    if-ge v5, v6, :cond_121

    aget-object v6, v2, v5

    if-nez v6, :cond_102

    goto :goto_121

    :cond_102
    aget-object v6, v2, v5

    const-string v8, "/"

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    aget-object v7, v6, v4

    if-nez v7, :cond_10f

    goto :goto_11e

    :cond_10f
    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$400()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v7

    aget-object v8, v6, v4

    invoke-virtual {v7, v8}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v7

    if-eqz v7, :cond_11e

    invoke-virtual {v3, v7, v4}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    :cond_11e
    :goto_11e
    add-int/lit8 v5, v5, 0x1

    goto :goto_f9

    :cond_121
    :goto_121
    # getter for: Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v4

    invoke-virtual {v4, v7, v3}, Lcom/android/server/am/Pageboost$PageboostHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    # getter for: Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/am/Pageboost$PageboostHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_130
    nop

    :cond_131
    :goto_131
    return-void
.end method
