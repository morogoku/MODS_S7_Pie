.class final Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HotspotControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiStateReceiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;-><init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "wifi_state"

    const/16 v3, 0xe

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "HotspotController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$502(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;I)I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->isHotspotEnabled()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$700(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$600(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V

    nop

    :goto_0
    goto :goto_1

    :cond_0
    const-string v1, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$700(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Z)V

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setListening(Z)V
    .locals 2

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->mRegistered:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HotspotController"

    const-string v1, "Registering receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_CHAMELEON_HOTSPOT:Z

    if-eqz v1, :cond_1

    const-string v1, "com.samsung.CSC_CHAMELEON_UPDATE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->mRegistered:Z

    goto :goto_0

    :cond_2
    if-nez p1, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->mRegistered:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "HotspotController"

    const-string v1, "Unregistering receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->mRegistered:Z

    :cond_4
    :goto_0
    return-void
.end method
