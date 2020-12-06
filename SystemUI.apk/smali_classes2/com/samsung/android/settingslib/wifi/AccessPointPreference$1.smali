.class Lcom/samsung/android/settingslib/wifi/AccessPointPreference$1;
.super Ljava/lang/Object;
.source "AccessPointPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settingslib/wifi/AccessPointPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

.field final synthetic val$mTSWManager:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$1;->val$mTSWManager:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$1;->this$0:Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->startWifiSecurityDetection(Landroid/content/Context;)V

    return-void
.end method
