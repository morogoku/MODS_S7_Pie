.class Lcom/android/server/GmsAlarmManager$ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GmsAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GmsAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GmsAlarmManager;


# direct methods
.method public constructor <init>(Lcom/android/server/GmsAlarmManager;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    # getter for: Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/GmsAlarmManager;->access$300(Lcom/android/server/GmsAlarmManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/GmsAlarmManager;->mScreenOn:Z
    invoke-static {v0, v2}, Lcom/android/server/GmsAlarmManager;->access$602(Lcom/android/server/GmsAlarmManager;Z)Z

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mScreenOffChange:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$900(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->cancelAlarm()V
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$1000(Lcom/android/server/GmsAlarmManager;)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    const-wide/16 v2, 0x2710

    # invokes: Lcom/android/server/GmsAlarmManager;->sendCheckNetWorkDelay(J)V
    invoke-static {v0, v2, v3}, Lcom/android/server/GmsAlarmManager;->access$1100(Lcom/android/server/GmsAlarmManager;J)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # setter for: Lcom/android/server/GmsAlarmManager;->mScreenOffChange:Z
    invoke-static {v0, v1}, Lcom/android/server/GmsAlarmManager;->access$902(Lcom/android/server/GmsAlarmManager;Z)Z

    goto :goto_50

    :cond_2d
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/GmsAlarmManager$GmsHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v0

    const-wide/32 v3, 0x36ee80

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_50

    :cond_46
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # setter for: Lcom/android/server/GmsAlarmManager;->mScreenOn:Z
    invoke-static {v0, v1}, Lcom/android/server/GmsAlarmManager;->access$602(Lcom/android/server/GmsAlarmManager;Z)Z

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # setter for: Lcom/android/server/GmsAlarmManager;->mScreenOffChange:Z
    invoke-static {v0, v1}, Lcom/android/server/GmsAlarmManager;->access$902(Lcom/android/server/GmsAlarmManager;Z)Z

    :cond_50
    :goto_50
    return-void
.end method
