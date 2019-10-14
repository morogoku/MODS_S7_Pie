.class Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$1;
.super Landroid/os/Handler;
.source "EdgeLightingClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$1;->this$1:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_44

    goto :goto_42

    :pswitch_9
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$1;->this$1:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    # invokes: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->_onScreenChanged(Z)V
    invoke-static {v0, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->access$500(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Z)V

    goto :goto_42

    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$1;->this$1:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->_onStopEdgeLighting(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->access$400(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;I)V

    goto :goto_42

    :pswitch_28
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;

    if-eqz v0, :cond_42

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$1;->this$1:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;->getLightingInfo()Lcom/samsung/android/edge/SemEdgeLightingInfo;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->_onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->access$300(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    nop

    :cond_42
    :goto_42
    return-void

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_28
        :pswitch_16
        :pswitch_9
    .end packed-switch
.end method
