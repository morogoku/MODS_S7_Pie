.class public Lcom/android/systemui/statusbar/policy/EthernetSignalController;
.super Lcom/android/systemui/statusbar/policy/SignalController;
.source "EthernetSignalController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/EthernetSignalController$EthernetHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/policy/SignalController<",
        "Lcom/android/systemui/statusbar/policy/SignalController$State;",
        "Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private mEthernetChannel:Lcom/android/internal/util/AsyncChannel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 17

    move-object/from16 v6, p0

    const-string v1, "EthernetSignalController"

    const/4 v3, 0x3

    move-object v0, v6

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-object v1, v6, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    new-instance v2, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    const-string v8, "Ethernet Icons"

    sget-object v9, Lcom/android/systemui/statusbar/policy/EthernetIcons;->ETHERNET_ICONS:[[I

    sget-object v11, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->ETHERNET_CONNECTION_VALUES:[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->ETHERNET_CONNECTION_VALUES:[I

    const/4 v4, 0x0

    aget v16, v3, v4

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v16}, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/EthernetSignalController;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mEthernetChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method


# virtual methods
.method public cleanState()Lcom/android/systemui/statusbar/policy/SignalController$State;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/policy/SignalController$State;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/SignalController$State;-><init>()V

    return-object v0
.end method

.method getActivityIcon()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    if-eqz v1, :cond_0

    const v0, 0x7f080711

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    if-eqz v1, :cond_1

    const v0, 0x7f080703

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    if-eqz v1, :cond_2

    const v0, 0x7f080722

    goto :goto_0

    :cond_2
    const v0, 0x7f080719

    :cond_3
    :goto_0
    return v0
.end method

.method public notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    const-string v1, "0"

    const-string v2, "net.smart_switch.disabled"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mTag:Ljava/lang/String;

    const-string v2, "notifyListeners : invisible by smart_switch"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->getContentDescription()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->getCurrentIconId()I

    move-result v3

    invoke-direct {v2, v0, v3, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->getActivityIcon()I

    move-result v3

    invoke-interface {p1, v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V

    return-void
.end method

.method setActivity(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq p1, v2, :cond_1

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_3

    :cond_3
    :goto_2
    move v1, v3

    :goto_3
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mTransportType:I

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/policy/EthernetSignalController$EthernetHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/EthernetSignalController$EthernetHandler;-><init>(Lcom/android/systemui/statusbar/policy/EthernetSignalController;Lcom/android/systemui/statusbar/policy/EthernetSignalController$1;)V

    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mEthernetChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mContext:Landroid/content/Context;

    const-string v2, "ethernet"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/EthernetManager;

    invoke-virtual {v1}, Landroid/net/EthernetManager;->getEthernetServiceMessenger()Landroid/os/Messenger;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mEthernetChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/SignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    return-void
.end method
