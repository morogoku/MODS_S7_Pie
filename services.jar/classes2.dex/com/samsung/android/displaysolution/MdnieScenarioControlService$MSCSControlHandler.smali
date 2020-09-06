.class final Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;
.super Landroid/os/Handler;
.source "MdnieScenarioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MSCSControlHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_ce

    :pswitch_7
    goto/16 :goto_cd

    :pswitch_9
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-virtual {v0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->burn_in_prevention_mode(Z)V

    goto/16 :goto_cd

    :pswitch_10
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->burn_in_prevention_mode(Z)V

    goto/16 :goto_cd

    :pswitch_17
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->pixel_self_move(Z)V
    invoke-static {v0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$5900(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    goto/16 :goto_cd

    :pswitch_1e
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->pixel_self_move(Z)V
    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$5900(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    goto/16 :goto_cd

    :pswitch_25
    goto/16 :goto_cd

    :pswitch_27
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getSystemServices()V
    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$5800(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto/16 :goto_cd

    :pswitch_2e
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->writeVideoListInDataBase()V
    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$5700(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto/16 :goto_cd

    :pswitch_35
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setSVideoOptionMode()V
    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$5600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto/16 :goto_cd

    :pswitch_3c
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const-string v1, "OUT"

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setGameMode(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$4900(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto/16 :goto_cd

    :pswitch_45
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const-string v1, "HIGH"

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setGameMode(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$4900(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto/16 :goto_cd

    :pswitch_4e
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const-string v1, "MID"

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setGameMode(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$4900(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto/16 :goto_cd

    :pswitch_57
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const-string v1, "LOW"

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setGameMode(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$4900(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto/16 :goto_cd

    :pswitch_60
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3700(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setSNSMode(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$5400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto :goto_cd

    :pswitch_6c
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDMBMode()V
    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$5300(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto :goto_cd

    :pswitch_72
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setEbookMode()V
    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$5200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto :goto_cd

    :pswitch_78
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setEmailMode()V
    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$5100(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto :goto_cd

    :pswitch_7e
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setSVideoMode(Z)V
    invoke-static {v0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$4600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    goto :goto_cd

    :pswitch_84
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setSVideoMode(Z)V
    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$4600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    goto :goto_cd

    :pswitch_8a
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3700(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoMode(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$4500(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto :goto_cd

    :pswitch_96
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraMode()V
    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$5000(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto :goto_cd

    :pswitch_9c
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3700(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setGalleryMode(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$4800(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto :goto_cd

    :pswitch_a8
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrowserMode()V
    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$4700(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto :goto_cd

    :pswitch_ae
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setUIMode()V
    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$5500(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto :goto_cd

    :pswitch_b4
    :try_start_b4
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v1, -0x1

    invoke-interface {v0, v1, v2, v2}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_bc
    .catch Landroid/os/RemoteException; {:try_start_b4 .. :try_end_bc} :catch_bd

    goto :goto_cd

    :catch_bd
    move-exception v0

    goto :goto_cd

    :pswitch_bf
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->monitorForegroundActivity(Ljava/lang/String;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$4400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;II)V

    nop

    :goto_cd
    return-void

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_bf
        :pswitch_b4
        :pswitch_ae
        :pswitch_a8
        :pswitch_9c
        :pswitch_96
        :pswitch_8a
        :pswitch_84
        :pswitch_7e
        :pswitch_78
        :pswitch_72
        :pswitch_6c
        :pswitch_60
        :pswitch_7
        :pswitch_57
        :pswitch_4e
        :pswitch_45
        :pswitch_3c
        :pswitch_35
        :pswitch_2e
        :pswitch_27
        :pswitch_25
        :pswitch_1e
        :pswitch_17
        :pswitch_10
        :pswitch_9
    .end packed-switch
.end method
