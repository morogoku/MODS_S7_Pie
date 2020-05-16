.class Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarOneClickJumpCallScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JumpToCallScreenBroadcastReceiver"
.end annotation


# instance fields
.field mIsRegistered:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->mIsRegistered:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "StatusBarOneClickJumpCallScreenManager_NotificationPanelView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive(PowerManager.ACTION_SCREEN_OFF_BY_PROXIMITY) flag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", but it will be true."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->access$102(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;Z)Z

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    const-string v3, "state"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->access$202(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;Z)Z

    goto :goto_0

    :cond_1
    const-string v0, "samsung.intent.action.PHONE_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    const-string v3, "state"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->access$202(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;Z)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public registerReceiver()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->mIsRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "samsung.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->access$400(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->access$300(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;)Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->mIsRegistered:Z

    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->mIsRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->access$400(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->access$300(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;)Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->mIsRegistered:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->access$102(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;Z)Z

    return-void
.end method
