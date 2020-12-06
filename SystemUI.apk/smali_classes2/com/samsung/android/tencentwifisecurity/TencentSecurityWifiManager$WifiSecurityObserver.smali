.class Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;
.super Landroid/database/ContentObserver;
.source "TencentSecurityWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiSecurityObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;->this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;Landroid/os/Handler;Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;-><init>(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;->this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    invoke-static {v0}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->access$400(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)V

    invoke-static {}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TencentSecurityWifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange twsEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->access$600()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " showTwsDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;->this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    invoke-static {v2}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->access$700(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TencentSecurityWifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange ssid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->access$800()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bssid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->access$900()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " security:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->access$1000()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
