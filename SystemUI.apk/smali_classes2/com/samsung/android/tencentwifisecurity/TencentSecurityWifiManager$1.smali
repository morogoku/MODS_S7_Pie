.class Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$1;
.super Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionCallback$Stub;
.source "TencentSecurityWifiManager.java"


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

    iput-object p1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$1;->this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    invoke-direct {p0}, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvalutionResult(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$1;->this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->access$000(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    return-void
.end method
