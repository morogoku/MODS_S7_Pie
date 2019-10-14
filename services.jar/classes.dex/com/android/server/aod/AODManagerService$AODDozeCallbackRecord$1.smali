.class Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord$1;
.super Landroid/os/Handler;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;


# direct methods
.method constructor <init>(Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord$1;->this$1:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_20

    goto :goto_1f

    :pswitch_9
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord$1;->this$1:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/aod/AODToast;

    # invokes: Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->handleAODToastRequested(Lcom/samsung/android/aod/AODToast;)V
    invoke-static {v0, v1}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->access$6400(Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;Lcom/samsung/android/aod/AODToast;)V

    goto :goto_1f

    :pswitch_13
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord$1;->this$1:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    # invokes: Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->handleAODDozeReleased()V
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->access$6300(Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;)V

    goto :goto_1f

    :pswitch_19
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord$1;->this$1:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    # invokes: Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->handleAODDozeAcquired()V
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->access$6200(Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;)V

    nop

    :goto_1f
    return-void

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_19
        :pswitch_13
        :pswitch_9
    .end packed-switch
.end method
