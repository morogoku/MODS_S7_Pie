.class final Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;
.super Landroid/os/Handler;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_104

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_f0

    packed-switch v0, :pswitch_data_10a

    packed-switch v0, :pswitch_data_118

    goto/16 :goto_109

    :pswitch_11
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    # invokes: Lcom/android/server/display/DisplayManagerService;->deliverWifiDisplayNotifyEvent(ILandroid/os/Bundle;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;ILandroid/os/Bundle;)V

    goto/16 :goto_109

    :pswitch_1e
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/display/DisplayManagerService;->deliverDisplayVolumeKeyEvent(I)V
    invoke-static {v0, v1}, Lcom/android/server/display/DisplayManagerService;->access$600(Lcom/android/server/display/DisplayManagerService;I)V

    goto/16 :goto_109

    :pswitch_27
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    # invokes: Lcom/android/server/display/DisplayManagerService;->deliverDisplayVolumeEvent(ILandroid/os/Bundle;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayManagerService;->access$500(Lcom/android/server/display/DisplayManagerService;ILandroid/os/Bundle;)V

    goto/16 :goto_109

    :pswitch_34
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # setter for: Lcom/android/server/display/DisplayManagerService;->mOwnerPackageName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/display/DisplayManagerService;->access$902(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_109

    :pswitch_3f
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/display/DisplayManagerService;->deliverDeviceEvent(Landroid/os/Bundle;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayManagerService;->access$800(Lcom/android/server/display/DisplayManagerService;Landroid/os/Bundle;I)V

    goto/16 :goto_109

    :pswitch_4c
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$1100(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    :try_start_53
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mTempDefaultViewport:Landroid/hardware/display/DisplayViewport;
    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$1300(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Landroid/hardware/display/DisplayViewport;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$1200(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayViewport;->copyFrom(Landroid/hardware/display/DisplayViewport;)V

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mTempExternalTouchViewport:Landroid/hardware/display/DisplayViewport;
    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$1500(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Landroid/hardware/display/DisplayViewport;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$1400(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayViewport;->copyFrom(Landroid/hardware/display/DisplayViewport;)V

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mTempVirtualTouchViewports:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$1700(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mVirtualTouchViewports:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$1600(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b0

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mTempVirtualTouchViewports:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$1700(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mVirtualTouchViewports:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$1600(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_96
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayViewport;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mTempVirtualTouchViewports:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->access$1700(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/display/DisplayViewport;->makeCopy()Landroid/hardware/display/DisplayViewport;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_96

    :cond_b0
    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_53 .. :try_end_b1} :catchall_cd

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$1800(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/input/InputManagerInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mTempDefaultViewport:Landroid/hardware/display/DisplayViewport;
    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$1300(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mTempExternalTouchViewport:Landroid/hardware/display/DisplayViewport;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$1500(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mTempVirtualTouchViewports:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->access$1700(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/input/InputManagerInternal;->setDisplayViewports(Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;Ljava/util/List;)V

    goto :goto_109

    :catchall_cd
    move-exception v1

    :try_start_ce
    monitor-exit v0
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_cd

    throw v1

    :pswitch_d0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$1000(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->requestTraversalFromDisplayManager()V

    goto :goto_109

    :pswitch_da
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/display/DisplayManagerService;->deliverDisplayEvent(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayManagerService;->access$400(Lcom/android/server/display/DisplayManagerService;II)V

    goto :goto_109

    :pswitch_e4
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->registerAdditionalDisplayAdapters()V
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$300(Lcom/android/server/display/DisplayManagerService;)V

    goto :goto_109

    :pswitch_ea
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->registerDefaultDisplayAdapters()V
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$200(Lcom/android/server/display/DisplayManagerService;)V

    goto :goto_109

    :cond_f0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f8

    goto :goto_f9

    :cond_f8
    const/4 v2, 0x0

    :goto_f9
    move v1, v2

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$1000(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->requestUpdateDisplayCutoutFromDisplayManager(IZ)V

    goto :goto_109

    :cond_104
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->loadBrightnessConfiguration()V
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$1900(Lcom/android/server/display/DisplayManagerService;)V

    :goto_109
    return-void

    :pswitch_data_10a
    .packed-switch 0x1
        :pswitch_ea
        :pswitch_e4
        :pswitch_da
        :pswitch_d0
        :pswitch_4c
    .end packed-switch

    :pswitch_data_118
    .packed-switch 0x14
        :pswitch_3f
        :pswitch_34
        :pswitch_27
        :pswitch_1e
        :pswitch_11
    .end packed-switch
.end method
