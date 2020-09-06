.class public Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkMonitorPhoneStateListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_2f

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mIsSupportAdvancedCaptivePortal:Z
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v0

    if-eqz v0, :cond_47

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$1600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCallStateChanged - Smart detection is disabled ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mSmartDetectionAvailable:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$5602(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    goto :goto_47

    :cond_2f
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mIsSupportAdvancedCaptivePortal:Z
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v0

    if-eqz v0, :cond_47

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$1600()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onCallStateChanged - Smart detection is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mSmartDetectionAvailable:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$5602(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    :cond_47
    :goto_47
    return-void
.end method
