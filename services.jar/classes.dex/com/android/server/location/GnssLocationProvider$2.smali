.class Lcom/android/server/location/GnssLocationProvider$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/location/GnssLocationProvider;->mNetworkAvailable:Z
    invoke-static {v0, v1}, Lcom/android/server/location/GnssLocationProvider;->access$302(Lcom/android/server/location/GnssLocationProvider;Z)Z

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->access$400(Lcom/android/server/location/GnssLocationProvider;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mNetworkAvailable:Z
    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->access$300(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v2

    # setter for: Lcom/android/server/location/GnssLocationProvider;->mMobileNetworkAvailable:Z
    invoke-static {v1, v2}, Lcom/android/server/location/GnssLocationProvider;->access$502(Lcom/android/server/location/GnssLocationProvider;Z)Z

    :cond_23
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/NtpTimeHelper;
    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->access$600(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/NtpTimeHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/location/NtpTimeHelper;->onNetworkAvailable()V

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I
    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->access$700(Lcom/android/server/location/GnssLocationProvider;)I

    move-result v1

    if-nez v1, :cond_39

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mSupportsXtra:Z
    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->access$800(Lcom/android/server/location/GnssLocationProvider;)Z

    :cond_39
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-boolean v1, v1, Lcom/android/server/location/GnssLocationProvider;->mIzatServiceEnabled:Z

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/4 v2, 0x4

    const/4 v3, 0x0

    # invokes: Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V
    invoke-static {v1, v2, v3, p1}, Lcom/android/server/location/GnssLocationProvider;->access$900(Lcom/android/server/location/GnssLocationProvider;IILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mNetworkAvailable:Z
    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->access$300(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/location/GnssLocationProvider;->extension_reloadMakeAutoSuplUrl(Z)V

    :cond_51
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/4 v1, 0x4

    const/4 v2, 0x0

    # invokes: Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V
    invoke-static {v0, v1, v2, p1}, Lcom/android/server/location/GnssLocationProvider;->access$900(Lcom/android/server/location/GnssLocationProvider;IILjava/lang/Object;)V

    return-void
.end method
