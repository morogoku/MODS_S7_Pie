.class final Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;
.super Landroid/os/Handler;
.source "GearVrManagerExternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/GearVrManagerExternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GearVrExternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/GearVrManagerExternal;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/GearVrManagerExternal;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_64

    goto :goto_62

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v1, v0}, Lcom/android/server/vr/GearVrManagerExternal;->handleNotifyVrActivityFocusChanged(Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;)V

    goto :goto_62

    :pswitch_10
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerExternal;->handleStartVrRecents()V

    goto :goto_62

    :pswitch_16
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    move v0, v1

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v1, v0}, Lcom/android/server/vr/GearVrManagerExternal;->handleVrMode(Z)V

    goto :goto_62

    :pswitch_24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/vr/GearVrManagerExternal;->handleStartWaitActivity(Landroid/content/Intent;I)V

    goto :goto_62

    :pswitch_30
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerExternal;->handleStartVrHome()V

    goto :goto_62

    :pswitch_36
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    # invokes: Lcom/android/server/vr/GearVrManagerExternal;->handleHmtEventChangedForFactory(II)V
    invoke-static {v2, v0, v1}, Lcom/android/server/vr/GearVrManagerExternal;->access$200(Lcom/android/server/vr/GearVrManagerExternal;II)V

    goto :goto_62

    :pswitch_40
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/vr/GearVrManagerExternal;->handleHmtEventChanged(II)V

    goto :goto_62

    :pswitch_4a
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    # getter for: Lcom/android/server/vr/GearVrManagerExternal;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerExternal;->access$000(Lcom/android/server/vr/GearVrManagerExternal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_51
    const-string v1, "GearVrManagerExternal"

    const-string v2, "VRConnection timeout for VRService!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    # invokes: Lcom/android/server/vr/GearVrManagerExternal;->disconnect()V
    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerExternal;->access$100(Lcom/android/server/vr/GearVrManagerExternal;)V

    monitor-exit v0

    goto :goto_62

    :catchall_5f
    move-exception v1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_51 .. :try_end_61} :catchall_5f

    throw v1

    :goto_62
    return-void

    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_40
        :pswitch_36
        :pswitch_30
        :pswitch_24
        :pswitch_16
        :pswitch_10
        :pswitch_6
    .end packed-switch
.end method
