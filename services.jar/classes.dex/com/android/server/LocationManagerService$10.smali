.class Lcom/android/server/LocationManagerService$10;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LocationManagerService;->initializeMinorSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetricQueried(Lcom/att/iqi/lib/Metric$ID;Ljava/nio/ByteBuffer;)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLc30RequestedByIqservice:Z
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1500(Lcom/android/server/LocationManagerService;)Z

    move-result v0

    if-nez v0, :cond_9b

    iget-object v0, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/LocationManagerService;->mLc30RequestedByIqservice:Z
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$1502(Lcom/android/server/LocationManagerService;Z)Z

    const-string v0, "LocationManagerService"

    const-string v1, "Minor session starts."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$200(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_20
    iget-object v2, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v3, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    const-string/jumbo v4, "network"

    iget-object v5, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mCurrentUserId:I
    invoke-static {v5}, Lcom/android/server/LocationManagerService;->access$1100(Lcom/android/server/LocationManagerService;)I

    move-result v5

    # invokes: Lcom/android/server/LocationManagerService;->isAllowedByUserSettingsLocked(Ljava/lang/String;II)Z
    invoke-static {v3, v4, v0, v5}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;Ljava/lang/String;II)Z

    move-result v3

    # setter for: Lcom/android/server/LocationManagerService;->mIsNetworkProviderEnabled:Z
    invoke-static {v2, v3}, Lcom/android/server/LocationManagerService;->access$1602(Lcom/android/server/LocationManagerService;Z)Z

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_20 .. :try_end_35} :catchall_98

    iget-object v1, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mIsNetworkProviderEnabled:Z
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1600(Lcom/android/server/LocationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_81

    iget-object v1, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v2, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLc30LocationRequest:Landroid/location/LocationRequest;
    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$1800(Lcom/android/server/LocationManagerService;)Landroid/location/LocationRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mCiqLocationListener:Lcom/android/server/LocationManagerService$CiqLocationListener;
    invoke-static {v3}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$CiqLocationListener;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "LocationManagerService"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/LocationManagerService;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$600(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v1

    if-eqz v1, :cond_71

    iget-object v1, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$600(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$600(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v2

    const-wide/32 v3, 0xe290

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_97

    :cond_71
    iget-object v1, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->LOC_DEBUG:Z
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$2000(Lcom/android/server/LocationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_97

    const-string v1, "LocationManagerService"

    const-string v2, "Handler has not created yet "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    :cond_81
    iget-object v1, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->LOC_DEBUG:Z
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$2000(Lcom/android/server/LocationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_90

    const-string v1, "LocationManagerService"

    const-string v2, "User disabled Network Location"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_90
    iget-object v1, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/LocationManagerService;->sendEmptyCIQDataForNonGPSProvider(B)V

    :cond_97
    :goto_97
    goto :goto_aa

    :catchall_98
    move-exception v2

    :try_start_99
    monitor-exit v1
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    throw v2

    :cond_9b
    iget-object v0, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->LOC_DEBUG:Z
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2000(Lcom/android/server/LocationManagerService;)Z

    move-result v0

    if-eqz v0, :cond_aa

    const-string v0, "LocationManagerService"

    const-string v1, "Minor session is already running. Ignore this query."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_aa
    :goto_aa
    return-void
.end method
