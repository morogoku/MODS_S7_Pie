.class Lcom/android/server/connectivity/Tethering$StateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;)V

    return-void
.end method

.method private handleBatteryChangedAction(Landroid/content/Intent;)V
    .registers 9

    const-string v0, "TMO"

    sget-object v1, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "NEWCO"

    sget-object v1, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ff

    :cond_14
    const-string/jumbo v0, "level"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v2, "plugged"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # getter for: Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BATTERY_CHANGED, level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "lowBatteryThreshold = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiTethered:Z
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$1300(Lcom/android/server/connectivity/Tethering;)Z

    move-result v3

    if-nez v3, :cond_56

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;)Z

    move-result v3

    if-eqz v3, :cond_72

    :cond_56
    if-gt v0, v5, :cond_72

    if-nez v2, :cond_72

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$3800(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v3

    if-nez v3, :cond_72

    # getter for: Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "showLowBatteryNotification"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->showLowBatteryNotification()V
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$3900(Lcom/android/server/connectivity/Tethering;)V

    goto :goto_88

    :cond_72
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$3800(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v3

    if-eqz v3, :cond_88

    # getter for: Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "clearLowBatteryNotification"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->clearLowBatteryNotification()V
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$4000(Lcom/android/server/connectivity/Tethering;)V

    :cond_88
    :goto_88
    if-nez v2, :cond_90

    # getter for: Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$4100()Z

    move-result v3

    if-nez v3, :cond_98

    :cond_90
    if-eqz v2, :cond_ff

    # getter for: Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$4100()Z

    move-result v3

    if-nez v3, :cond_ff

    :cond_98
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_ap_plugged_type"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.settings.wifi.PLUG_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "wifiap_plug_state_changed_option"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    # getter for: Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WIFIAP_PLUG_STATE_CHANGED_OPTION : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "com.android.settings"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mIsBootComplete:Z
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$4200(Lcom/android/server/connectivity/Tethering;)Z

    move-result v4

    if-eqz v4, :cond_e3

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    :cond_e3
    if-nez v2, :cond_f2

    # getter for: Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Unplugged"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    # setter for: Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$4102(Z)Z

    goto :goto_ff

    :cond_f2
    # getter for: Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Plugged"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$4102(Z)Z

    :cond_ff
    :goto_ff
    return-void
.end method

.method private handleConnectivityAction(Landroid/content/Intent;)V
    .registers 6

    const-string/jumbo v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_14

    goto :goto_3d

    :cond_14
    # getter for: Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tethering got CONNECTIVITY_ACTION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$2300(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x50003

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    return-void

    :cond_3d
    :goto_3d
    return-void
.end method

.method private handleUsbAction(Landroid/content/Intent;)V
    .registers 12

    const-string v0, "connected"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "configured"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v3, "rndis"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$1000(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v4

    const-string v5, "USB bcast connected:%s configured:%s rndis:%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v9, 0x2

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$1900(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    if-nez v0, :cond_53

    :try_start_43
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$2400(Lcom/android/server/connectivity/Tethering;)Z

    move-result v5

    if-eqz v5, :cond_53

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->tetherMatchingInterfaces(II)V
    invoke-static {v5, v8, v8}, Lcom/android/server/connectivity/Tethering;->access$2500(Lcom/android/server/connectivity/Tethering;II)V

    goto :goto_5c

    :catchall_51
    move-exception v1

    goto :goto_85

    :cond_53
    if-eqz v2, :cond_5c

    if-eqz v3, :cond_5c

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->tetherMatchingInterfaces(II)V
    invoke-static {v5, v9, v8}, Lcom/android/server/connectivity/Tethering;->access$2500(Lcom/android/server/connectivity/Tethering;II)V

    :cond_5c
    :goto_5c
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    if-eqz v2, :cond_64

    if-eqz v3, :cond_64

    move v6, v8

    goto :goto_65

    :cond_64
    move v6, v1

    :goto_65
    # setter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static {v5, v6}, Lcom/android/server/connectivity/Tethering;->access$2402(Lcom/android/server/connectivity/Tethering;Z)Z

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const-string/jumbo v6, "ncm"

    invoke-virtual {p1, v6, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/android/server/connectivity/Tethering;->mNcmEnabled:Z
    invoke-static {v5, v1}, Lcom/android/server/connectivity/Tethering;->access$2602(Lcom/android/server/connectivity/Tethering;Z)Z

    if-eqz v0, :cond_83

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNcmEnabled:Z
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$2600(Lcom/android/server/connectivity/Tethering;)Z

    move-result v1

    if-eqz v1, :cond_83

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->tetherMatchingInterfaces(II)V
    invoke-static {v1, v9, v8}, Lcom/android/server/connectivity/Tethering;->access$2500(Lcom/android/server/connectivity/Tethering;II)V

    :cond_83
    monitor-exit v4

    return-void

    :goto_85
    monitor-exit v4
    :try_end_86
    .catchall {:try_start_43 .. :try_end_86} :catchall_51

    throw v1
.end method

.method private handleWifiApAction(Landroid/content/Intent;)V
    .registers 8

    const-string/jumbo v0, "wifi_state"

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "wifi_ap_interface_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_mode"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # getter for: Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[handleWifiApAction] onReceive() WIFI_AP_STATE_CHANGED_ACTIONcurState-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ifname"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ipmode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$1900(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    packed-switch v0, :pswitch_data_76

    goto :goto_6b

    :pswitch_4d
    :try_start_4d
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->enableWifiIpServingLocked(Ljava/lang/String;I)V
    invoke-static {v4, v1, v2}, Lcom/android/server/connectivity/Tethering;->access$2700(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;I)V

    goto :goto_70

    :pswitch_53
    goto :goto_70

    :pswitch_54
    const-string v4, "ATT"

    sget-object v5, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->misTablet:Z
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$2800(Lcom/android/server/connectivity/Tethering;)Z

    move-result v4

    if-nez v4, :cond_6b

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Tethering;->clearMaxApNotification()V

    :cond_6b
    :goto_6b
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->disableWifiIpServingLocked(Ljava/lang/String;I)V
    invoke-static {v4, v1, v0}, Lcom/android/server/connectivity/Tethering;->access$2900(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;I)V

    :goto_70
    monitor-exit v3

    return-void

    :catchall_72
    move-exception v4

    monitor-exit v3
    :try_end_74
    .catchall {:try_start_4d .. :try_end_74} :catchall_72

    throw v4

    nop

    :pswitch_data_76
    .packed-switch 0xb
        :pswitch_54
        :pswitch_53
        :pswitch_4d
        :pswitch_54
    .end packed-switch
.end method

.method private handleWifiApStaStatusChangedAction(Landroid/content/Intent;)V
    .registers 11

    const-string v0, "EVENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WIFI] onReceive() WIFI_AP_STA_STATUS_CHANGED_ACTION intent, type of EVENT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_177

    const-string v1, "NUM"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_2a

    const/4 v1, 0x0

    :cond_2a
    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$3500()I

    move-result v3

    if-ne v3, v1, :cond_31

    return-void

    :cond_31
    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$3500()I

    move-result v3

    # setter for: Lcom/android/server/connectivity/Tethering;->mLastClients:I
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$3602(I)I

    # setter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$3502(I)I

    # getter for: Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "**number of client: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$3500()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->add_client_event:Z
    invoke-static {v3, v4}, Lcom/android/server/connectivity/Tethering;->access$3702(Lcom/android/server/connectivity/Tethering;Z)Z

    const-string v3, "VZW"

    sget-object v5, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d3

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v5, "statusbar"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v7

    if-eqz v7, :cond_bc

    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$3500()I

    move-result v7

    sget-object v8, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    array-length v8, v8

    if-le v7, v8, :cond_9e

    sget-object v7, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    sget-object v8, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    array-length v8, v8

    sub-int/2addr v8, v4

    aget v5, v7, v8

    goto :goto_a6

    :cond_9e
    sget-object v7, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$3500()I

    move-result v8

    aget v5, v7, v8

    :goto_a6
    const-string/jumbo v7, "wifi_ap"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v5, v2, v8}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    const-string/jumbo v2, "wifi_ap"

    invoke-virtual {v3, v2, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const v4, 0x1080a21

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredVendorNotification(I)V
    invoke-static {v2, v4}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;I)V

    goto :goto_d1

    :cond_bc
    # getter for: Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v7, "Wifi Ap is not enabled."

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "wifi_ap"

    invoke-virtual {v3, v4, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    const-string/jumbo v2, "wifi_ap"

    invoke-virtual {v3, v2}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    :goto_d1
    goto/16 :goto_177

    :cond_d3
    const-string v2, "SPRINT"

    sget-object v3, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e7

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const v3, 0x1080a20

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredVendorNotification(I)V
    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_177

    :cond_e7
    const-string v2, "TMO"

    sget-object v3, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16f

    const-string v2, "NEWCO"

    sget-object v3, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fc

    goto :goto_16f

    :cond_fc
    const-string v2, "DCM"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_110

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const v3, 0x1080a1f

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering;->access$3200(Lcom/android/server/connectivity/Tethering;I)V

    :cond_110
    const-string v2, "ATT"

    sget-object v3, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_126

    const-string v2, "AIO"

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_177

    :cond_126
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->misTablet:Z
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$2800(Lcom/android/server/connectivity/Tethering;)Z

    move-result v2

    if-nez v2, :cond_177

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    # getter for: Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createMaxApNotification(), clients = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$3500()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$3500()I

    move-result v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->semGetWifiApMaxClient()I

    move-result v4

    if-lt v3, v4, :cond_169

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v3}, Lcom/android/server/connectivity/Tethering;->createMaxApNotification()V

    goto :goto_177

    :cond_169
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v3}, Lcom/android/server/connectivity/Tethering;->clearMaxApNotification()V

    goto :goto_177

    :cond_16f
    :goto_16f
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const v3, 0x1080a1d

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering;->access$3200(Lcom/android/server/connectivity/Tethering;I)V

    :cond_177
    :goto_177
    return-void
.end method

.method private updateLocale()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiTethered:Z
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$1300(Lcom/android/server/connectivity/Tethering;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # setter for: Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$3002(Lcom/android/server/connectivity/Tethering;Z)Z

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$3100(Lcom/android/server/connectivity/Tethering;)I

    move-result v1

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$3200(Lcom/android/server/connectivity/Tethering;I)V

    goto :goto_4b

    :cond_1a
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # setter for: Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$3002(Lcom/android/server/connectivity/Tethering;Z)Z

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mLastVendorNotificationId:I
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$3300(Lcom/android/server/connectivity/Tethering;)I

    move-result v1

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredVendorNotification(I)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;I)V

    goto :goto_4b

    :cond_33
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->bluetoothTethered:Z
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$3400(Lcom/android/server/connectivity/Tethering;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # setter for: Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$3002(Lcom/android/server/connectivity/Tethering;Z)Z

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$3100(Lcom/android/server/connectivity/Tethering;)I

    move-result v1

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$3200(Lcom/android/server/connectivity/Tethering;I)V

    :cond_4b
    :goto_4b
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Tethering$StateReceiver;->handleUsbAction(Landroid/content/Intent;)V

    goto/16 :goto_281

    :cond_14
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Tethering$StateReceiver;->handleConnectivityAction(Landroid/content/Intent;)V

    goto/16 :goto_281

    :cond_21
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Tethering$StateReceiver;->handleWifiApAction(Landroid/content/Intent;)V

    goto/16 :goto_281

    :cond_2e
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$1000(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v1

    const-string v2, "OBSERVED configuration changed"

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->updateConfiguration()V
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)V

    goto/16 :goto_281

    :cond_48
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering$StateReceiver;->updateLocale()V

    goto/16 :goto_281

    :cond_55
    const-string v1, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;)Z

    move-result v1

    if-nez v1, :cond_6d

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiTethered:Z
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$1300(Lcom/android/server/connectivity/Tethering;)Z

    move-result v1

    if-eqz v1, :cond_78

    :cond_6d
    # getter for: Lcom/android/server/connectivity/Tethering;->mRVFMode:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1400()I

    move-result v1

    if-nez v1, :cond_78

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Tethering$StateReceiver;->handleWifiApStaStatusChangedAction(Landroid/content/Intent;)V

    goto/16 :goto_281

    :cond_78
    const-string v1, "ATT"

    sget-object v2, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    const-string v1, "com.samsung.android.net.wifi.MAXAP_NOTI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering;->clearMaxApNotification()V

    goto/16 :goto_281

    :cond_91
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9e

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Tethering$StateReceiver;->handleBatteryChangedAction(Landroid/content/Intent;)V

    goto/16 :goto_281

    :cond_9e
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_149

    # getter for: Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Boot complete."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$1500(Lcom/android/server/connectivity/Tethering;)Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v3

    if-nez v3, :cond_c2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {}, Lcom/samsung/android/knox/custom/SystemManager;->getInstance()Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v4

    # setter for: Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;
    invoke-static {v3, v4}, Lcom/android/server/connectivity/Tethering;->access$1502(Lcom/android/server/connectivity/Tethering;Lcom/samsung/android/knox/custom/SystemManager;)Lcom/samsung/android/knox/custom/SystemManager;

    :cond_c2
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$1500(Lcom/android/server/connectivity/Tethering;)Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_f8

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$1500(Lcom/android/server/connectivity/Tethering;)Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/custom/SystemManager;->getUsbNetStateInternal()Z

    move-result v3

    if-eqz v3, :cond_f8

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "adb_enabled"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_f8

    # getter for: Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Activate USB Net on boot up"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v2, v4}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    goto :goto_f9

    :cond_f8
    const/4 v1, 0x1

    :goto_f9
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v1, :cond_147

    const-string/jumbo v3, "enabled"

    const-string v5, "TETHER_ALWAYS_ON_MODE"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_147

    # getter for: Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v5, "[Tethering always mode] call setUsbTethering()"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_11d
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$1600(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->setBlockAllDNSPackets(Z)V
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_126} :catch_12d

    nop

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v3, v4}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    goto :goto_147

    :catch_12d
    move-exception v3

    # getter for: Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Tethering always mode] failed blocking DNS :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_147
    :goto_147
    goto/16 :goto_281

    :cond_149
    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_208

    # getter for: Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v3, "[ActiveSync] onReceive() ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED intent"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->isInternetSharingBlockedByActiveSync()Z
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)Z

    move-result v1

    if-eqz v1, :cond_1fd

    # getter for: Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v3, "[ActiveSync] onReceive() Internet sharing has banned due to security policy."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v2, [Ljava/lang/String;

    :try_start_16d
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$1600(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;

    move-result-object v3
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_177} :catch_1e3

    move-object v1, v3

    nop

    array-length v3, v1

    :goto_17a
    if-ge v2, v3, :cond_1e1

    aget-object v4, v1, v2

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$1800(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isUsb(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1de

    # getter for: Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ActiveSync] onReceive() Internet sharing is banned on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$1900(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_1a9
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$2000(Lcom/android/server/connectivity/Tethering;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherState;

    if-eqz v6, :cond_1d9

    iget v7, v6, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1d9

    # getter for: Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$200()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[ActiveSync] onReceive() Untether on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->blockInternetSharingByActiveSync(Ljava/lang/String;)V
    invoke-static {v7, v4}, Lcom/android/server/connectivity/Tethering;->access$2100(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)V

    :cond_1d9
    monitor-exit v5

    goto :goto_1de

    :catchall_1db
    move-exception v2

    monitor-exit v5
    :try_end_1dd
    .catchall {:try_start_1a9 .. :try_end_1dd} :catchall_1db

    throw v2

    :cond_1de
    :goto_1de
    add-int/lit8 v2, v2, 0x1

    goto :goto_17a

    :cond_1e1
    goto/16 :goto_281

    :catch_1e3
    move-exception v2

    # getter for: Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ActiveSync] onReceive() Error listing Interfaces :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1fd
    # getter for: Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[ActiveSync] onReceive() Internet sharing is NOT banned any more."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_281

    :cond_208
    const-string v1, "com.samsung.android.intent.action.TETHERING_DENIED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_281

    const-string v1, "KDI"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_281

    # getter for: Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Tethering Denied"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_22d
    if-ge v4, v3, :cond_281

    aget-object v5, v1, v4

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$1800(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isWifi(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_251

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v8, "wifi"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v7, v2}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_27e

    :cond_251
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$1800(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isBluetooth(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26d

    # getter for: Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$200()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "setBluetoothTethering"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->setBluetoothTethering(ZLandroid/os/ResultReceiver;)V
    invoke-static {v6, v2, v7}, Lcom/android/server/connectivity/Tethering;->access$2200(Lcom/android/server/connectivity/Tethering;ZLandroid/os/ResultReceiver;)V

    goto :goto_27e

    :cond_26d
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v6, v5}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_27e

    # getter for: Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$200()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Tether off error"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27e
    :goto_27e
    add-int/lit8 v4, v4, 0x1

    goto :goto_22d

    :cond_281
    :goto_281
    return-void
.end method
