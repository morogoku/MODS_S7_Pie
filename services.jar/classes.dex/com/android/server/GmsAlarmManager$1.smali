.class Lcom/android/server/GmsAlarmManager$1;
.super Landroid/content/BroadcastReceiver;
.source "GmsAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GmsAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GmsAlarmManager;


# direct methods
.method constructor <init>(Lcom/android/server/GmsAlarmManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/GmsAlarmManager$1;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string v0, "com.samsung.android.server.action_check_gms_network"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$1;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessage(I)Z

    goto :goto_42

    :cond_17
    const-string v0, "com.samsung.android.server.action_insert_log"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$1;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessage(I)Z

    goto :goto_42

    :cond_2e
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$1;->this$0:Lcom/android/server/GmsAlarmManager;

    const-wide/32 v1, 0x5265c00

    # invokes: Lcom/android/server/GmsAlarmManager;->sendInsertLogDelay(J)V
    invoke-static {v0, v1, v2}, Lcom/android/server/GmsAlarmManager;->access$200(Lcom/android/server/GmsAlarmManager;J)V

    :cond_42
    :goto_42
    return-void
.end method
