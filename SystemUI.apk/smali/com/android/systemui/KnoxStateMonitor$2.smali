.class Lcom/android/systemui/KnoxStateMonitor$2;
.super Landroid/os/Handler;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/KnoxStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/KnoxStateMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/KnoxStateMonitor;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "KnoxStateMonitor"

    const-string v1, "ignore message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$2200(Lcom/android/systemui/KnoxStateMonitor;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$2100(Lcom/android/systemui/KnoxStateMonitor;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$2000(Lcom/android/systemui/KnoxStateMonitor;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$1900(Lcom/android/systemui/KnoxStateMonitor;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$1800(Lcom/android/systemui/KnoxStateMonitor;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$1700(Lcom/android/systemui/KnoxStateMonitor;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$1600(Lcom/android/systemui/KnoxStateMonitor;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$1500(Lcom/android/systemui/KnoxStateMonitor;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$1400(Lcom/android/systemui/KnoxStateMonitor;)V

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$1300(Lcom/android/systemui/KnoxStateMonitor;)V

    goto :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$1200(Lcom/android/systemui/KnoxStateMonitor;)V

    goto :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$1100(Lcom/android/systemui/KnoxStateMonitor;)V

    goto :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$1000(Lcom/android/systemui/KnoxStateMonitor;)V

    goto :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$900(Lcom/android/systemui/KnoxStateMonitor;)V

    goto :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$800(Lcom/android/systemui/KnoxStateMonitor;)V

    goto :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/KnoxStateMonitor;->access$700(Lcom/android/systemui/KnoxStateMonitor;I)V

    goto :goto_0

    :pswitch_11
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$600(Lcom/android/systemui/KnoxStateMonitor;)V

    goto :goto_0

    :pswitch_12
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$500(Lcom/android/systemui/KnoxStateMonitor;)V

    goto :goto_0

    :pswitch_13
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$400(Lcom/android/systemui/KnoxStateMonitor;)V

    goto :goto_0

    :pswitch_14
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/KnoxStateMonitor;->access$300(Lcom/android/systemui/KnoxStateMonitor;I)V

    goto :goto_0

    :pswitch_15
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/KnoxStateMonitor;->access$200(Lcom/android/systemui/KnoxStateMonitor;Z)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x138a
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
