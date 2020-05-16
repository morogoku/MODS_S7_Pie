.class Lcom/samsung/android/settingslib/wifi/WifiPickerController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiPickerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settingslib/wifi/WifiPickerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settingslib/wifi/WifiPickerController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settingslib/wifi/WifiPickerController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/WifiPickerController$1;->this$0:Lcom/samsung/android/settingslib/wifi/WifiPickerController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiPickerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onReceive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    const-string v1, "resultsUpdated"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiPickerController$1;->this$0:Lcom/samsung/android/settingslib/wifi/WifiPickerController;

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->access$000(Lcom/samsung/android/settingslib/wifi/WifiPickerController;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiPickerController$1;->this$0:Lcom/samsung/android/settingslib/wifi/WifiPickerController;

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->access$100(Lcom/samsung/android/settingslib/wifi/WifiPickerController;)V

    goto :goto_0

    :cond_0
    const-string v1, "WifiPickerController"

    const-string v2, "ignore to show picker dialog because Wi-Fi is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiPickerController$1;->this$0:Lcom/samsung/android/settingslib/wifi/WifiPickerController;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->stopTracking()V

    goto :goto_1

    :cond_1
    const-string v1, "WifiPickerController"

    const-string v2, "resultUpdateValue is false. Scan Fail ! "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method
