.class Lcom/android/server/location/GnssLocationProvider_samsung$3;
.super Ljava/lang/Object;
.source "GnssLocationProvider_samsung.java"

# interfaces
.implements Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssLocationProvider_samsung;->initializeMinorSession()V
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

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider_samsung$3;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetricQueried(Lcom/att/iqi/lib/Metric$ID;Ljava/nio/ByteBuffer;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung$3;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider_samsung;->hasIqi()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung$3;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GnssLocationProvider_samsung;->mLc18RequestedByIqservice:Z
    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider_samsung;->access$100(Lcom/android/server/location/GnssLocationProvider_samsung;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung$3;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/location/GnssLocationProvider_samsung;->mLc18RequestedByIqservice:Z
    invoke-static {v0, v1}, Lcom/android/server/location/GnssLocationProvider_samsung;->access$102(Lcom/android/server/location/GnssLocationProvider_samsung;Z)Z

    const-string v0, "GnssLocationProvider_ex"

    const-string v2, "Minor session starts."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung$3;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    # invokes: Lcom/android/server/location/GnssLocationProvider_samsung;->native_ciq_start()Z
    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider_samsung;->access$700(Lcom/android/server/location/GnssLocationProvider_samsung;)Z

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung$3;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GnssLocationProvider_samsung;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider_samsung;->access$800(Lcom/android/server/location/GnssLocationProvider_samsung;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung$3;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GnssLocationProvider_samsung;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider_samsung;->access$800(Lcom/android/server/location/GnssLocationProvider_samsung;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_58

    :cond_39
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung$3;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GnssLocationProvider_samsung;->GLP_DEBUG:Z
    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider_samsung;->access$000(Lcom/android/server/location/GnssLocationProvider_samsung;)Z

    move-result v0

    if-eqz v0, :cond_58

    const-string v0, "GnssLocationProvider_ex"

    const-string v1, "Minor session is running. Ignore redundant request."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    :cond_49
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung$3;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GnssLocationProvider_samsung;->GLP_DEBUG:Z
    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider_samsung;->access$000(Lcom/android/server/location/GnssLocationProvider_samsung;)Z

    move-result v0

    if-eqz v0, :cond_58

    const-string v0, "GnssLocationProvider_ex"

    const-string v1, "Minor session has not been enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    :goto_58
    return-void
.end method
