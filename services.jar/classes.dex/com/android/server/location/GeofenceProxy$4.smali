.class Lcom/android/server/location/GeofenceProxy$4;
.super Landroid/os/Handler;
.source "GeofenceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GeofenceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GeofenceProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/GeofenceProxy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/GeofenceProxy$4;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5c

    goto :goto_5b

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$4;->this$0:Lcom/android/server/location/GeofenceProxy;

    # getter for: Lcom/android/server/location/GeofenceProxy;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->access$100(Lcom/android/server/location/GeofenceProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_d
    iget-object v1, p0, Lcom/android/server/location/GeofenceProxy$4;->this$0:Lcom/android/server/location/GeofenceProxy;

    # getter for: Lcom/android/server/location/GeofenceProxy;->mGeofenceHardware:Landroid/hardware/location/IGeofenceHardware;
    invoke-static {v1}, Lcom/android/server/location/GeofenceProxy;->access$200(Lcom/android/server/location/GeofenceProxy;)Landroid/hardware/location/IGeofenceHardware;

    move-result-object v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/location/GeofenceProxy$4;->this$0:Lcom/android/server/location/GeofenceProxy;

    # invokes: Lcom/android/server/location/GeofenceProxy;->setGeofenceHardwareInProviderLocked()V
    invoke-static {v1}, Lcom/android/server/location/GeofenceProxy;->access$300(Lcom/android/server/location/GeofenceProxy;)V

    :cond_1a
    monitor-exit v0

    goto :goto_5b

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_1c

    throw v1

    :pswitch_1f
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$4;->this$0:Lcom/android/server/location/GeofenceProxy;

    # getter for: Lcom/android/server/location/GeofenceProxy;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->access$100(Lcom/android/server/location/GeofenceProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_26
    iget-object v1, p0, Lcom/android/server/location/GeofenceProxy$4;->this$0:Lcom/android/server/location/GeofenceProxy;

    # getter for: Lcom/android/server/location/GeofenceProxy;->mGeofenceHardware:Landroid/hardware/location/IGeofenceHardware;
    invoke-static {v1}, Lcom/android/server/location/GeofenceProxy;->access$200(Lcom/android/server/location/GeofenceProxy;)Landroid/hardware/location/IGeofenceHardware;

    move-result-object v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/android/server/location/GeofenceProxy$4;->this$0:Lcom/android/server/location/GeofenceProxy;

    # invokes: Lcom/android/server/location/GeofenceProxy;->setGpsGeofenceLocked()V
    invoke-static {v1}, Lcom/android/server/location/GeofenceProxy;->access$400(Lcom/android/server/location/GeofenceProxy;)V

    iget-object v1, p0, Lcom/android/server/location/GeofenceProxy$4;->this$0:Lcom/android/server/location/GeofenceProxy;

    # invokes: Lcom/android/server/location/GeofenceProxy;->setFusedGeofenceLocked()V
    invoke-static {v1}, Lcom/android/server/location/GeofenceProxy;->access$500(Lcom/android/server/location/GeofenceProxy;)V

    iget-object v1, p0, Lcom/android/server/location/GeofenceProxy$4;->this$0:Lcom/android/server/location/GeofenceProxy;

    # invokes: Lcom/android/server/location/GeofenceProxy;->setGeofenceHardwareInProviderLocked()V
    invoke-static {v1}, Lcom/android/server/location/GeofenceProxy;->access$300(Lcom/android/server/location/GeofenceProxy;)V

    :cond_3d
    monitor-exit v0

    goto :goto_5b

    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_26 .. :try_end_41} :catchall_3f

    throw v1

    :pswitch_42
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$4;->this$0:Lcom/android/server/location/GeofenceProxy;

    # getter for: Lcom/android/server/location/GeofenceProxy;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->access$100(Lcom/android/server/location/GeofenceProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_49
    iget-object v1, p0, Lcom/android/server/location/GeofenceProxy$4;->this$0:Lcom/android/server/location/GeofenceProxy;

    # getter for: Lcom/android/server/location/GeofenceProxy;->mGeofenceHardware:Landroid/hardware/location/IGeofenceHardware;
    invoke-static {v1}, Lcom/android/server/location/GeofenceProxy;->access$200(Lcom/android/server/location/GeofenceProxy;)Landroid/hardware/location/IGeofenceHardware;

    move-result-object v1

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/android/server/location/GeofenceProxy$4;->this$0:Lcom/android/server/location/GeofenceProxy;

    # invokes: Lcom/android/server/location/GeofenceProxy;->setGeofenceHardwareInProviderLocked()V
    invoke-static {v1}, Lcom/android/server/location/GeofenceProxy;->access$300(Lcom/android/server/location/GeofenceProxy;)V

    :cond_56
    monitor-exit v0

    goto :goto_5b

    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_49 .. :try_end_5a} :catchall_58

    throw v1

    :goto_5b
    return-void

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_42
        :pswitch_1f
        :pswitch_6
    .end packed-switch
.end method
