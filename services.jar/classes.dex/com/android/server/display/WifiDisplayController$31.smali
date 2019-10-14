.class Lcom/android/server/display/WifiDisplayController$31;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$31;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$31;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$600(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-eqz v2, :cond_7b

    const-string v2, "bouncerShowing"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received KEYGUARD_STATE_UPDATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4f

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$31;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v4, "usls"

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$31;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->getScreenLockType()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->access$6700(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7b

    :cond_4f
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$31;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$600(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->semIsKeyguardShowingAndNotOccluded()Z

    move-result v4

    if-eqz v4, :cond_70

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$31;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v5, "usls"

    const-string/jumbo v6, "swipe"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7b

    :cond_70
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$31;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v5, "usls"

    const-string/jumbo v6, "none"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7b
    :goto_7b
    goto :goto_dc

    :cond_7c
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c2

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$31;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mScreenWakeUpByUser:Z
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$6800(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v1

    if-eqz v1, :cond_b4

    const-string v1, "WifiDisplayController"

    const-string v2, "Received ACTION_SCREEN_ON by user"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$31;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$600(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->semIsKeyguardShowingAndNotOccluded()Z

    move-result v2

    if-eqz v2, :cond_b3

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$31;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v3, "usls"

    const-string/jumbo v4, "swipe"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b3
    goto :goto_dc

    :cond_b4
    const-string v1, "WifiDisplayController"

    const-string v2, "Received ACTION_SCREEN_ON by controller"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$31;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/display/WifiDisplayController;->mScreenWakeUpByUser:Z
    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayController;->access$6802(Lcom/android/server/display/WifiDisplayController;Z)Z

    goto :goto_dc

    :cond_c2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dc

    const-string v1, "WifiDisplayController"

    const-string v2, "Received ACTION_SCREEN_OFF"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$31;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v2, "usls"

    const-string/jumbo v3, "screen_off"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_dc
    :goto_dc
    return-void
.end method
