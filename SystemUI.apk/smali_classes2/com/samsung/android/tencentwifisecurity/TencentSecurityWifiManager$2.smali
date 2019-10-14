.class Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$2;
.super Ljava/lang/Object;
.source "TencentSecurityWifiManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$2;->this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$2;->this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    invoke-static {p2}, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->access$102(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;)Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;

    iget-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$2;->this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    invoke-static {v0}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->access$100(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$2;->this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    invoke-static {v0}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->access$100(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$2;->this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    invoke-static {v1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->access$200(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;->registerEvalutionCallback(Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionCallback;)V

    iget-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$2;->this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    invoke-static {v0}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->access$100(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;->startSecurityEvalution()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
