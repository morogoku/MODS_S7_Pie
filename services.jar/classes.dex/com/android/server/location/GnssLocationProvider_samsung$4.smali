.class Lcom/android/server/location/GnssLocationProvider_samsung$4;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "GnssLocationProvider_samsung.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider_samsung;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider_samsung;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider_samsung;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider_samsung$4;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 4

    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "mEmergencyNetworkConnectivityCallback : onAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung$4;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GnssLocationProvider_samsung;->isUDPListen:Z
    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider_samsung;->access$900(Lcom/android/server/location/GnssLocationProvider_samsung;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung$4;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/location/GnssLocationProvider_samsung;->isUDPListen:Z
    invoke-static {v0, v1}, Lcom/android/server/location/GnssLocationProvider_samsung;->access$902(Lcom/android/server/location/GnssLocationProvider_samsung;Z)Z

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung$4;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    # invokes: Lcom/android/server/location/GnssLocationProvider_samsung;->checkUDPSuplInit()V
    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider_samsung;->access$1000(Lcom/android/server/location/GnssLocationProvider_samsung;)V

    :cond_1b
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 4

    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "mEmergencyNetworkConnectivityCallback : onLost"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung$4;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/location/GnssLocationProvider_samsung;->isUDPListen:Z
    invoke-static {v0, v1}, Lcom/android/server/location/GnssLocationProvider_samsung;->access$902(Lcom/android/server/location/GnssLocationProvider_samsung;Z)Z

    return-void
.end method

.method public onUnavailable()V
    .registers 3

    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "mEmergencyNetworkConnectivityCallback : onUnavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung$4;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/location/GnssLocationProvider_samsung;->isUDPListen:Z
    invoke-static {v0, v1}, Lcom/android/server/location/GnssLocationProvider_samsung;->access$902(Lcom/android/server/location/GnssLocationProvider_samsung;Z)Z

    return-void
.end method
