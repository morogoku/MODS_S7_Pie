.class final Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;
.super Landroid/os/Handler;
.source "VolumeDialogControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "W"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$2600(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$2500(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$2400(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$2300(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_0

    move v1, v2

    nop

    :cond_0
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$2200(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Z)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$2100(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    goto/16 :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$2000(Lcom/android/systemui/volume/VolumeDialogControllerImpl;II)V

    goto/16 :goto_1

    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onConfigurationChanged()V

    goto/16 :goto_1

    :pswitch_8
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onLayoutDirectionChanged(I)V

    goto/16 :goto_1

    :pswitch_9
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-static {v0, v3, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$1900(Lcom/android/systemui/volume/VolumeDialogControllerImpl;IZ)V

    goto :goto_1

    :pswitch_a
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/service/notification/Condition;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$1800(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Landroid/service/notification/Condition;)V

    goto :goto_1

    :pswitch_b
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$1700(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    goto :goto_1

    :pswitch_c
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_2

    move v1, v2

    nop

    :cond_2
    invoke-static {v0, v3, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$1600(Lcom/android/systemui/volume/VolumeDialogControllerImpl;IZ)V

    goto :goto_1

    :pswitch_d
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$1500(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V

    goto :goto_1

    :pswitch_e
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$1400(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    goto :goto_1

    :pswitch_f
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    iget v0, p1, Landroid/os/Message;->arg2:I

    const/high16 v3, 0x800000

    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    move v1, v2

    nop

    :cond_3
    move v0, v1

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$800()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$902(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)I

    goto :goto_1

    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onVolumeChangedW(II)Z

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$902(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)I

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
