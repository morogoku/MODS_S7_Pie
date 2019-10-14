.class Lcom/android/server/input/InputManagerService$34;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$34;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.intent.action.SARDEVICE_CP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_de

    const-string v1, "cmd"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    const-string/jumbo v5, "option"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    const-string/jumbo v5, "option"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_26
    const-string v5, "device"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    const-string/jumbo v7, "slot"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_41

    const-string/jumbo v7, "slot"

    invoke-virtual {p2, v7, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    :cond_41
    const-string/jumbo v7, "on"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    iget-object v7, p0, Lcom/android/server/input/InputManagerService$34;->this$0:Lcom/android/server/input/InputManagerService;

    shl-int v8, v3, v6

    # |= operator for: Lcom/android/server/input/InputManagerService;->mSARState:I
    invoke-static {v7, v8}, Lcom/android/server/input/InputManagerService;->access$4576(Lcom/android/server/input/InputManagerService;I)I

    goto :goto_5a

    :cond_52
    iget-object v7, p0, Lcom/android/server/input/InputManagerService$34;->this$0:Lcom/android/server/input/InputManagerService;

    shl-int v8, v3, v6

    not-int v8, v8

    # &= operator for: Lcom/android/server/input/InputManagerService;->mSARState:I
    invoke-static {v7, v8}, Lcom/android/server/input/InputManagerService;->access$4572(Lcom/android/server/input/InputManagerService;I)I

    :goto_5a
    const-string v7, "InputManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "received SARDEVICE_CP, callAction = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " deviceID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " cableConnection = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/input/InputManagerService$34;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->cableConnection:I
    invoke-static {v9}, Lcom/android/server/input/InputManagerService;->access$4600(Lcom/android/server/input/InputManagerService;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " option = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " slot = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " mSARState"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/input/InputManagerService$34;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mSARState:I
    invoke-static {v9}, Lcom/android/server/input/InputManagerService;->access$4500(Lcom/android/server/input/InputManagerService;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v7, v5, 0x1

    if-nez v7, :cond_ad

    and-int/lit8 v7, v5, 0x20

    if-eqz v7, :cond_dc

    :cond_ad
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/input/InputManagerService$34;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mSARState:I
    invoke-static {v8}, Lcom/android/server/input/InputManagerService;->access$4500(Lcom/android/server/input/InputManagerService;)I

    move-result v8

    if-eqz v8, :cond_d2

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$34;->this$0:Lcom/android/server/input/InputManagerService;

    # setter for: Lcom/android/server/input/InputManagerService;->mIsValidIntentForSAR:Z
    invoke-static {v2, v3}, Lcom/android/server/input/InputManagerService;->access$4702(Lcom/android/server/input/InputManagerService;Z)Z

    const/4 v7, 0x1

    const-string v2, "band:lo"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c7

    or-int/lit8 v7, v7, 0x20

    goto :goto_d7

    :cond_c7
    const-string v2, "band:hi"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    or-int/lit8 v7, v7, 0x10

    goto :goto_d7

    :cond_d2
    iget-object v3, p0, Lcom/android/server/input/InputManagerService$34;->this$0:Lcom/android/server/input/InputManagerService;

    # setter for: Lcom/android/server/input/InputManagerService;->mIsValidIntentForSAR:Z
    invoke-static {v3, v2}, Lcom/android/server/input/InputManagerService;->access$4702(Lcom/android/server/input/InputManagerService;Z)Z

    :cond_d7
    :goto_d7
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$34;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2, v5, v7}, Lcom/android/server/input/InputManagerService;->enableDeviceForBackOff(II)I

    :cond_dc
    goto/16 :goto_165

    :cond_de
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_132

    const-string/jumbo v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    const-string v5, "InputManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "received NETWORK_STATE_CHANGED_ACTION, currentState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ""

    const-string v6, "TOUCHKEY"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_131

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_123

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$34;->this$0:Lcom/android/server/input/InputManagerService;

    # setter for: Lcom/android/server/input/InputManagerService;->mIsValidIntentForWifi:Z
    invoke-static {v2, v3}, Lcom/android/server/input/InputManagerService;->access$4802(Lcom/android/server/input/InputManagerService;Z)Z

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$34;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService;->enableDeviceForBackOff(Z)I

    goto :goto_131

    :cond_123
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v3, :cond_131

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$34;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/input/InputManagerService;->enableDeviceForBackOff(Z)I

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$34;->this$0:Lcom/android/server/input/InputManagerService;

    # setter for: Lcom/android/server/input/InputManagerService;->mIsValidIntentForWifi:Z
    invoke-static {v3, v2}, Lcom/android/server/input/InputManagerService;->access$4802(Lcom/android/server/input/InputManagerService;Z)Z

    :cond_131
    :goto_131
    goto :goto_165

    :cond_132
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    const-string/jumbo v1, "state"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v4, "InputManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "received HEADSET_PLUG state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v3, :cond_160

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$34;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService;->setTouchKeyEarjack(Z)I

    goto :goto_165

    :cond_160
    iget-object v3, p0, Lcom/android/server/input/InputManagerService$34;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/input/InputManagerService;->setTouchKeyEarjack(Z)I

    :cond_165
    :goto_165
    return-void
.end method
