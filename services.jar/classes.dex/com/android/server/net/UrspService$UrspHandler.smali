.class Lcom/android/server/net/UrspService$UrspHandler;
.super Landroid/os/Handler;
.source "UrspService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/UrspService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UrspHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/UrspService;


# direct methods
.method constructor <init>(Lcom/android/server/net/UrspService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/net/UrspService$UrspHandler;->this$0:Lcom/android/server/net/UrspService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_f0

    const-string v0, "default case"

    invoke-static {v0}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    goto/16 :goto_ee

    :pswitch_23
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_ee

    iget-object v3, p0, Lcom/android/server/net/UrspService$UrspHandler;->this$0:Lcom/android/server/net/UrspService;

    # getter for: Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;
    invoke-static {v3}, Lcom/android/server/net/UrspService;->access$000(Lcom/android/server/net/UrspService;)[Lcom/android/server/net/UrspCore;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/server/net/UrspCore;->getAllUrspRule()[I

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_35
    if-ge v5, v4, :cond_47

    aget v6, v3, v5

    iget-object v7, p0, Lcom/android/server/net/UrspService$UrspHandler;->this$0:Lcom/android/server/net/UrspService;

    # getter for: Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;
    invoke-static {v7}, Lcom/android/server/net/UrspService;->access$000(Lcom/android/server/net/UrspService;)[Lcom/android/server/net/UrspCore;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7, v1, v6, v2}, Lcom/android/server/net/UrspCore;->setUrspBlackListUidRule(ZIZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    :cond_47
    goto/16 :goto_ee

    :pswitch_49
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_ee

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_53

    move v3, v1

    goto :goto_54

    :cond_53
    move v3, v2

    :goto_54
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [I

    if-eqz v3, :cond_87

    array-length v5, v4

    move v6, v2

    :goto_5c
    if-ge v6, v5, :cond_9b

    aget v7, v4, v6

    iget-object v8, p0, Lcom/android/server/net/UrspService$UrspHandler;->this$0:Lcom/android/server/net/UrspService;

    # getter for: Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;
    invoke-static {v8}, Lcom/android/server/net/UrspService;->access$000(Lcom/android/server/net/UrspService;)[Lcom/android/server/net/UrspCore;

    move-result-object v8

    aget-object v8, v8, v2

    invoke-virtual {v8, v7}, Lcom/android/server/net/UrspCore;->isUrspRuleEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_79

    iget-object v8, p0, Lcom/android/server/net/UrspService$UrspHandler;->this$0:Lcom/android/server/net/UrspService;

    # getter for: Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;
    invoke-static {v8}, Lcom/android/server/net/UrspService;->access$000(Lcom/android/server/net/UrspService;)[Lcom/android/server/net/UrspCore;

    move-result-object v8

    aget-object v8, v8, v2

    invoke-virtual {v8, v2, v7, v2}, Lcom/android/server/net/UrspCore;->setUrspRule(ZIZ)V

    :cond_79
    iget-object v8, p0, Lcom/android/server/net/UrspService$UrspHandler;->this$0:Lcom/android/server/net/UrspService;

    # getter for: Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;
    invoke-static {v8}, Lcom/android/server/net/UrspService;->access$000(Lcom/android/server/net/UrspService;)[Lcom/android/server/net/UrspCore;

    move-result-object v8

    aget-object v8, v8, v2

    invoke-virtual {v8, v1, v7, v2}, Lcom/android/server/net/UrspCore;->setUrspBlackListUidRule(ZIZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5c

    :cond_87
    array-length v1, v4

    move v5, v2

    :goto_89
    if-ge v5, v1, :cond_9b

    aget v6, v4, v5

    iget-object v7, p0, Lcom/android/server/net/UrspService$UrspHandler;->this$0:Lcom/android/server/net/UrspService;

    # getter for: Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;
    invoke-static {v7}, Lcom/android/server/net/UrspService;->access$000(Lcom/android/server/net/UrspService;)[Lcom/android/server/net/UrspCore;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7, v2, v6, v2}, Lcom/android/server/net/UrspCore;->setUrspBlackListUidRule(ZIZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_89

    :cond_9b
    goto :goto_ee

    :pswitch_9c
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_ee

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v1, :cond_a6

    move v3, v1

    goto :goto_a7

    :cond_a6
    move v3, v2

    :goto_a7
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v3, :cond_d6

    iget-object v5, p0, Lcom/android/server/net/UrspService$UrspHandler;->this$0:Lcom/android/server/net/UrspService;

    # getter for: Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;
    invoke-static {v5}, Lcom/android/server/net/UrspService;->access$000(Lcom/android/server/net/UrspService;)[Lcom/android/server/net/UrspCore;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5, v4}, Lcom/android/server/net/UrspCore;->isUrspRuleEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_ca

    iget-object v5, p0, Lcom/android/server/net/UrspService$UrspHandler;->this$0:Lcom/android/server/net/UrspService;

    # getter for: Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;
    invoke-static {v5}, Lcom/android/server/net/UrspService;->access$000(Lcom/android/server/net/UrspService;)[Lcom/android/server/net/UrspCore;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5, v2, v4, v2}, Lcom/android/server/net/UrspCore;->setUrspRule(ZIZ)V

    :cond_ca
    iget-object v5, p0, Lcom/android/server/net/UrspService$UrspHandler;->this$0:Lcom/android/server/net/UrspService;

    # getter for: Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;
    invoke-static {v5}, Lcom/android/server/net/UrspService;->access$000(Lcom/android/server/net/UrspService;)[Lcom/android/server/net/UrspCore;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5, v1, v4, v2}, Lcom/android/server/net/UrspCore;->setUrspBlackListUidRule(ZIZ)V

    goto :goto_e1

    :cond_d6
    iget-object v1, p0, Lcom/android/server/net/UrspService$UrspHandler;->this$0:Lcom/android/server/net/UrspService;

    # getter for: Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;
    invoke-static {v1}, Lcom/android/server/net/UrspService;->access$000(Lcom/android/server/net/UrspService;)[Lcom/android/server/net/UrspCore;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1, v2, v4, v2}, Lcom/android/server/net/UrspCore;->setUrspBlackListUidRule(ZIZ)V

    :goto_e1
    goto :goto_ee

    :pswitch_e2
    const-string v0, "MSG_REQUEST_MDO_CONNECTION"

    invoke-static {v0}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    goto :goto_ee

    :pswitch_e8
    const-string v0, "MSG_INIT_URSP_SERVICE"

    invoke-static {v0}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    nop

    :cond_ee
    :goto_ee
    return-void

    nop

    :pswitch_data_f0
    .packed-switch 0x2711
        :pswitch_e8
        :pswitch_e2
        :pswitch_9c
        :pswitch_49
        :pswitch_23
    .end packed-switch
.end method
