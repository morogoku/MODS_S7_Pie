.class Lcom/android/server/LocationManagerService$LocationWorkerHandler;
.super Landroid/os/Handler;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/LocationManagerService;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_68

    goto :goto_67

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->LOC_DEBUG:Z
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2000(Lcom/android/server/LocationManagerService;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "LocationManagerService"

    const-string v2, "Received MSG_NETWORK_LOCATION_TIMER_EXPIERD"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLc30RequestedByIqservice:Z
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1500(Lcom/android/server/LocationManagerService;)Z

    move-result v0

    if-eqz v0, :cond_46

    const-string v0, "LocationManagerService"

    const-string v2, "Minor session is operated by timer."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mCiqLocationListener:Lcom/android/server/LocationManagerService$CiqLocationListener;
    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$CiqLocationListener;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "LocationManagerService"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/LocationManagerService;->removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V

    const-string v0, "LocationManagerService"

    const-string v2, "Minor session is completed."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # setter for: Lcom/android/server/LocationManagerService;->mLc30RequestedByIqservice:Z
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$1502(Lcom/android/server/LocationManagerService;Z)Z

    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/LocationManagerService;->sendEmptyCIQDataForNonGPSProvider(B)V

    goto :goto_67

    :cond_46
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->LOC_DEBUG:Z
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2000(Lcom/android/server/LocationManagerService;)Z

    move-result v0

    if-eqz v0, :cond_67

    const-string v0, "LocationManagerService"

    const-string v1, "LC30 already submitted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    :pswitch_56
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/location/Location;

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_63

    move v1, v4

    nop

    :cond_63
    # invokes: Lcom/android/server/LocationManagerService;->handleLocationChanged(Landroid/location/Location;Z)V
    invoke-static {v0, v2, v1}, Lcom/android/server/LocationManagerService;->access$3500(Lcom/android/server/LocationManagerService;Landroid/location/Location;Z)V

    nop

    :cond_67
    :goto_67
    return-void

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_56
        :pswitch_7
    .end packed-switch
.end method
