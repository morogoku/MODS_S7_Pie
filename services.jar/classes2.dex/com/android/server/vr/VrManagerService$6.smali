.class Lcom/android/server/vr/VrManagerService$6;
.super Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;
.source "VrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vr/VrManagerService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$6;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearVrStateChanged(II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$6;->this$0:Lcom/android/server/vr/VrManagerService;

    # getter for: Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->access$200(Lcom/android/server/vr/VrManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/16 v1, 0x40

    const/4 v2, 0x1

    if-eq p1, v1, :cond_39

    const/16 v1, 0x80

    const/4 v3, 0x0

    if-eq p1, v1, :cond_2d

    packed-switch p1, :pswitch_data_4a

    goto :goto_45

    :pswitch_15
    :try_start_15
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$6;->this$0:Lcom/android/server/vr/VrManagerService;

    iput-boolean v3, v1, Lcom/android/server/vr/VrManagerService;->mGearVrDocked:Z

    const-string v1, "VrManagerService"

    const-string v2, "GearVrManager.HMT_EVENT_UNDOCK"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    :pswitch_21
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$6;->this$0:Lcom/android/server/vr/VrManagerService;

    iput-boolean v2, v1, Lcom/android/server/vr/VrManagerService;->mGearVrDocked:Z

    const-string v1, "VrManagerService"

    const-string v2, "GearVrManager.HMT_EVENT_DOCK"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    :cond_2d
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$6;->this$0:Lcom/android/server/vr/VrManagerService;

    iput-boolean v3, v1, Lcom/android/server/vr/VrManagerService;->mGearVrEntered:Z

    const-string v1, "VrManagerService"

    const-string v2, "GearVrManager.HMT_EVENT_VR_EXITED"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    :cond_39
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$6;->this$0:Lcom/android/server/vr/VrManagerService;

    iput-boolean v2, v1, Lcom/android/server/vr/VrManagerService;->mGearVrEntered:Z

    const-string v1, "VrManagerService"

    const-string v2, "GearVrManager.HMT_EVENT_VR_ENTERED"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_45
    monitor-exit v0

    return-void

    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_15 .. :try_end_49} :catchall_47

    throw v1

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_21
        :pswitch_15
    .end packed-switch
.end method
