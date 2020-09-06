.class Lcom/android/server/GmsAlarmManager$UserAddRemoveReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GmsAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GmsAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserAddRemoveReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GmsAlarmManager;


# direct methods
.method public constructor <init>(Lcom/android/server/GmsAlarmManager;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/GmsAlarmManager$UserAddRemoveReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    # getter for: Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/GmsAlarmManager;->access$300(Lcom/android/server/GmsAlarmManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_e

    return-void

    :cond_e
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    iput v1, v3, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x7ad942ef    # -7.8400085E-36f

    if-eq v4, v5, :cond_2e

    const v5, 0x42dd01f1

    if-eq v4, v5, :cond_24

    goto :goto_37

    :cond_24
    const-string v4, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    const/4 v2, 0x1

    goto :goto_37

    :cond_2e
    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    const/4 v2, 0x0

    :cond_37
    :goto_37
    packed-switch v2, :pswitch_data_58

    goto :goto_57

    :pswitch_3b
    const/16 v2, 0x9

    iput v2, v3, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$UserAddRemoveReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;
    invoke-static {v2}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_57

    :pswitch_49
    const/16 v2, 0x8

    iput v2, v3, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$UserAddRemoveReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;
    invoke-static {v2}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendMessage(Landroid/os/Message;)Z

    nop

    :goto_57
    return-void

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_49
        :pswitch_3b
    .end packed-switch
.end method
