.class Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;
.super Ljava/lang/Object;
.source "NfcConnectivity.java"

# interfaces
.implements Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;


# direct methods
.method private constructor <init>(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;-><init>(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const-string v0, "android.nfc.extra.ADAPTER_STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    # getter for: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_ADAPTER_STATE_CHANGED state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    # setter for: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mState:I
    invoke-static {v2, v0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$402(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;I)I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4d

    const/16 v2, 0xb

    if-eq v0, v2, :cond_4d

    packed-switch v0, :pswitch_data_62

    packed-switch v0, :pswitch_data_6c

    goto :goto_60

    :pswitch_32
    iget-object v2, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    # getter for: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$200(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    const/4 v3, 0x0

    # invokes: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->enableInternal(Z)Z
    invoke-static {v2, v3}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$500(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;Z)Z

    goto :goto_4d

    :pswitch_45
    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    const/4 v2, 0x3

    # invokes: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->sendStateChanged(I)V
    invoke-static {v1, v2}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$300(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;I)V

    goto :goto_60

    :pswitch_4c
    goto :goto_60

    :cond_4d
    :goto_4d
    iget-object v2, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    # getter for: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mPrevState:I
    invoke-static {v2}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$600(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)I

    move-result v2

    if-ne v2, v0, :cond_60

    iget-object v2, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    const/4 v3, 0x2

    # invokes: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->sendStateChanged(I)V
    invoke-static {v2, v3}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$300(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;I)V

    iget-object v2, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    # setter for: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mPrevState:I
    invoke-static {v2, v1}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$602(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;I)I

    :cond_60
    :goto_60
    return-void

    nop

    :pswitch_data_62
    .packed-switch 0x3
        :pswitch_4c
        :pswitch_45
        :pswitch_32
    .end packed-switch

    :pswitch_data_6c
    .packed-switch 0xd
        :pswitch_4c
        :pswitch_45
    .end packed-switch
.end method
