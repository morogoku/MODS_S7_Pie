.class public Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
.super Ljava/lang/Object;
.source "StatusBarIconHolder.java"


# instance fields
.field private mEthernetState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$EthernetIconState;

.field private mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

.field private mMPTCPState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

.field private mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

.field private mNwBoosterState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

.field private mTag:I

.field private mType:I

.field private mVisible:Z

.field private mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mTag:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mVisible:Z

    return-void
.end method

.method public static fromEthernetIconState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$EthernetIconState;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>()V

    iput-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mEthernetState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$EthernetIconState;

    const/4 v1, 0x4

    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    return-object v0
.end method

.method public static fromIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>()V

    iput-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    return-object v0
.end method

.method public static fromMPTCPIconState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>()V

    iput-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMPTCPState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

    const/4 v1, 0x5

    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    return-object v0
.end method

.method public static fromMobileIconState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>()V

    iput-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mTag:I

    return-object v0
.end method

.method public static fromNwBoosterIconState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>()V

    iput-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mNwBoosterState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    return-object v0
.end method

.method public static fromWifiIconState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>()V

    iput-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    return-object v0
.end method


# virtual methods
.method public getEthernetState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$EthernetIconState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mEthernetState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$EthernetIconState;

    return-object v0
.end method

.method public getIcon()Lcom/android/internal/statusbar/StatusBarIcon;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    return-object v0
.end method

.method public getMPTCPState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMPTCPState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

    return-object v0
.end method

.method public getMobileState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    return-object v0
.end method

.method public getNwBoosterState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mNwBoosterState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mTag:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    return v0
.end method

.method public getWifiState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMPTCPState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;->visible:Z

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mEthernetState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$EthernetIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$EthernetIconState;->visible:Z

    return v0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mNwBoosterState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->visible:Z

    return v0

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    return v0

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    return v0

    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-boolean v0, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setEthernetState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$EthernetIconState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mEthernetState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$EthernetIconState;

    return-void
.end method

.method public setMPTCPState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMPTCPState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

    return-void
.end method

.method public setMobileState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    return-void
.end method

.method public setNwBoosterState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mNwBoosterState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->isVisible()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMPTCPState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;->visible:Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mEthernetState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$EthernetIconState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$EthernetIconState;->visible:Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mNwBoosterState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->visible:Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iput-boolean p1, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    return-void
.end method
