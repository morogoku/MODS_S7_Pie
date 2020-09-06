.class Lcom/android/server/net/UrspNetworkManagementService$UrspNmsHandler;
.super Landroid/os/Handler;
.source "UrspNetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/UrspNetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UrspNmsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/UrspNetworkManagementService;


# direct methods
.method constructor <init>(Lcom/android/server/net/UrspNetworkManagementService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/net/UrspNetworkManagementService$UrspNmsHandler;->this$0:Lcom/android/server/net/UrspNetworkManagementService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->log(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_80

    const-string v0, "default case"

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->log(Ljava/lang/String;)V

    goto :goto_7e

    :pswitch_22
    const-string v0, "MSG_SET_UID_RULES_FOR_FOC"

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->log(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [I

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_31

    move v1, v2

    nop

    :cond_31
    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p0, Lcom/android/server/net/UrspNetworkManagementService$UrspNmsHandler;->this$0:Lcom/android/server/net/UrspNetworkManagementService;

    # invokes: Lcom/android/server/net/UrspNetworkManagementService;->setUrspRulesForFoc(ZI[I)V
    invoke-static {v3, v1, v2, v0}, Lcom/android/server/net/UrspNetworkManagementService;->access$200(Lcom/android/server/net/UrspNetworkManagementService;ZI[I)V

    goto :goto_7e

    :pswitch_39
    const-string v0, "MSG_SET_STATE_FOR_FOC"

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->log(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_44

    move v1, v2

    nop

    :cond_44
    move v0, v1

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [I

    iget-object v3, p0, Lcom/android/server/net/UrspNetworkManagementService$UrspNmsHandler;->this$0:Lcom/android/server/net/UrspNetworkManagementService;

    # invokes: Lcom/android/server/net/UrspNetworkManagementService;->setUrspStateForFoc(Z[II)V
    invoke-static {v3, v0, v2, v1}, Lcom/android/server/net/UrspNetworkManagementService;->access$400(Lcom/android/server/net/UrspNetworkManagementService;Z[II)V

    goto :goto_7e

    :pswitch_51
    const-string v0, "MSG_SET_NETID_FOR_FOC"

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->log(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/net/UrspNetworkManagementService$UrspNmsHandler;->this$0:Lcom/android/server/net/UrspNetworkManagementService;

    # invokes: Lcom/android/server/net/UrspNetworkManagementService;->setUrspNetIdForFoc(I)V
    invoke-static {v1, v0}, Lcom/android/server/net/UrspNetworkManagementService;->access$300(Lcom/android/server/net/UrspNetworkManagementService;I)V

    goto :goto_7e

    :pswitch_5e
    const-string v0, "MSG_SET_UID_RULE_FOR_MDO"

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->log(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v2, :cond_6b

    move v1, v2

    nop

    :cond_6b
    iget-object v2, p0, Lcom/android/server/net/UrspNetworkManagementService$UrspNmsHandler;->this$0:Lcom/android/server/net/UrspNetworkManagementService;

    # invokes: Lcom/android/server/net/UrspNetworkManagementService;->setUrspUidForMdo(ZI)V
    invoke-static {v2, v1, v0}, Lcom/android/server/net/UrspNetworkManagementService;->access$100(Lcom/android/server/net/UrspNetworkManagementService;ZI)V

    goto :goto_7e

    :pswitch_71
    const-string v0, "MSG_SET_NETID_FOR_MDO"

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->log(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/net/UrspNetworkManagementService$UrspNmsHandler;->this$0:Lcom/android/server/net/UrspNetworkManagementService;

    # invokes: Lcom/android/server/net/UrspNetworkManagementService;->setUrspNetIdForMdo(I)V
    invoke-static {v1, v0}, Lcom/android/server/net/UrspNetworkManagementService;->access$000(Lcom/android/server/net/UrspNetworkManagementService;I)V

    nop

    :goto_7e
    return-void

    nop

    :pswitch_data_80
    .packed-switch 0x2711
        :pswitch_71
        :pswitch_5e
        :pswitch_51
        :pswitch_39
        :pswitch_22
    .end packed-switch
.end method
