.class Lcom/android/server/location/GnssLocationProvider_samsung$1;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 31

    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GnssLocationProvider_samsung;->GLP_DEBUG:Z
    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider_samsung;->access$000(Lcom/android/server/location/GnssLocationProvider_samsung;)Z

    move-result v2

    if-eqz v2, :cond_25

    const-string v2, "GnssLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "receive broadcast intent, action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    const-string v2, "com.android.internal.location.ALARM_GPS_MINOR_SESSION_TIMEOUT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    iget-object v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GnssLocationProvider_samsung;->mLc18RequestedByIqservice:Z
    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider_samsung;->access$100(Lcom/android/server/location/GnssLocationProvider_samsung;)Z

    move-result v2

    if-eqz v2, :cond_67

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    invoke-virtual/range {v3 .. v27}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_reportCiqData(BBBBDDDDDDDDDD)Z

    iget-object v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    # invokes: Lcom/android/server/location/GnssLocationProvider_samsung;->native_ciq_stop()Z
    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider_samsung;->access$200(Lcom/android/server/location/GnssLocationProvider_samsung;)Z

    goto :goto_67

    :cond_58
    iget-object v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GnssLocationProvider_samsung;->GLP_DEBUG:Z
    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider_samsung;->access$000(Lcom/android/server/location/GnssLocationProvider_samsung;)Z

    move-result v2

    if-eqz v2, :cond_67

    const-string v2, "GnssLocationProvider_ex"

    const-string v3, "Received unknown broadcast intent."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    :goto_67
    return-void
.end method
