.class public Lcom/android/systemui/qs/tiles/VoLteTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "VoLteTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final DB_VOICECALL_TYPE_SLOT1:Ljava/lang/String; = "voicecall_type"

.field private static final DB_VOICECALL_TYPE_SLOT2:Ljava/lang/String; = "voicecall_type2"

.field private static final VOICECALL_TYPE_CS:I = 0x1

.field private static final VOICECALL_TYPE_VOLTE:I

.field static final VOLTE_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field private mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field private mInCall:Z

.field private mInWifiCall:Z

.field private mListening:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mSettingsValueList:[Landroid/net/Uri;

.field private mSystemUIImsManager:Lcom/android/systemui/util/SystemUIImsManager;

.field private mTM:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.telephonyui"

    const-string v3, "com.samsung.android.app.telephonyui.netsettings.ui.NetSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/VoLteTile;->VOLTE_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    const-string/jumbo v1, "voicecall_type"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "voicecall_type2"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingsValueList:[Landroid/net/Uri;

    new-instance v0, Lcom/android/systemui/qs/tiles/VoLteTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/VoLteTile$1;-><init>(Lcom/android/systemui/qs/tiles/VoLteTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/qs/tiles/VoLteTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/VoLteTile$2;-><init>(Lcom/android/systemui/qs/tiles/VoLteTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance v0, Lcom/android/systemui/qs/tiles/VoLteTile$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/VoLteTile$3;-><init>(Lcom/android/systemui/qs/tiles/VoLteTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const-class v0, Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SystemUIImsManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSystemUIImsManager:Lcom/android/systemui/util/SystemUIImsManager;

    new-instance v0, Lcom/android/systemui/qs/tiles/VoLteTile$4;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const-string v3, "airplane_mode_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/VoLteTile$4;-><init>(Lcom/android/systemui/qs/tiles/VoLteTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mTM:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/VoLteTile;Lcom/android/systemui/qs/tiles/VoLteTile$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mTM:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x4860

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/VoLteTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/VoLteTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/VoLteTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/VoLteTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/VoLteTile;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/VoLteTile;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/VoLteTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/VoLteTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/VoLteTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/VoLteTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->showItPolicyToast()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/VoLteTile;)Lcom/android/systemui/qs/GlobalSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/tiles/VoLteTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/VoLteTile;)Lcom/android/systemui/util/SettingsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/tiles/VoLteTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/tiles/VoLteTile;)Lcom/android/systemui/util/SystemUIImsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSystemUIImsManager:Lcom/android/systemui/util/SystemUIImsManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/tiles/VoLteTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/qs/tiles/VoLteTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/qs/tiles/VoLteTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->isVoLteSupportedOperator()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/qs/tiles/VoLteTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/qs/tiles/VoLteTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->hasVoLteSIM()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/qs/tiles/VoLteTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/qs/tiles/VoLteTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/VoLteTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/VoLteTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mInCall:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/qs/tiles/VoLteTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mInCall:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/VoLteTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/VoLteTile;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mTM:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/VoLteTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/VoLteTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mInWifiCall:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/qs/tiles/VoLteTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mInWifiCall:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/VoLteTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getOperatorNumeric()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getDefaultDataPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getOperatorNumeric(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getVoiceCallType()I
    .locals 8

    invoke-static {}, Lcom/android/systemui/Rune;->supportDualIms()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->getVoiceCallType(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3, v2}, Lcom/android/systemui/util/SettingsHelper;->getVoiceCallType(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSystemUIImsManager:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-virtual {v4}, Lcom/android/systemui/util/SystemUIImsManager;->getVoLTESupportedSIM()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVoiceCallType : voLTEEnabledState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    if-eqz v0, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-ne v4, v2, :cond_3

    return v0

    :cond_3
    const/4 v1, 0x2

    if-ne v4, v1, :cond_4

    return v3

    :cond_4
    return v2

    :cond_5
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getDefaultDataPhoneId()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->getVoiceCallType(I)I

    move-result v0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v2}, Lcom/android/systemui/util/SettingsHelper;->getVoiceCallType(I)I

    move-result v0

    return v0
.end method

.method private hasVoLteSIM()Z
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getDefaultDataPhoneId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSystemUIImsManager:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SystemUIImsManager;->hasVoLteSIM(I)Z

    move-result v1

    return v1
.end method

.method private isVoLteSupportedOperator()Z
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getDefaultDataPhoneId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSystemUIImsManager:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SystemUIImsManager;->isVoLteSupportedOperator(I)Z

    move-result v1

    return v1
.end method

.method private isVoLteSupportedSIM()Z
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getDefaultDataPhoneId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSystemUIImsManager:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SystemUIImsManager;->isVoLteSupportedSIM(I)Z

    move-result v1

    return v1
.end method

.method private setVoiceCallType(I)V
    .locals 6

    invoke-static {}, Lcom/android/systemui/Rune;->supportDualIms()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSystemUIImsManager:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/SystemUIImsManager;->getVoLTESupportedSIM()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVoiceCallType : voLTEEnabledState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3, p1, v1}, Lcom/android/systemui/util/SettingsHelper;->setVoiceCallType(II)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/util/SettingsHelper;->setVoiceCallType(II)V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2, p1, v1}, Lcom/android/systemui/util/SettingsHelper;->setVoiceCallType(II)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/util/SettingsHelper;->setVoiceCallType(II)V

    :cond_2
    :goto_0
    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getDefaultDataPhoneId()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/util/SettingsHelper;->setVoiceCallType(II)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/util/SettingsHelper;->setVoiceCallType(II)V

    :goto_1
    return-void
.end method

.method private showNoSIMDialog()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v1, 0x7f120494

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setTitle(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120495

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v1, 0x104000a

    new-instance v2, Lcom/android/systemui/qs/tiles/VoLteTile$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/VoLteTile$5;-><init>(Lcom/android/systemui/qs/tiles/VoLteTile;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance v1, Lcom/android/systemui/qs/tiles/VoLteTile$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/VoLteTile$6;-><init>(Lcom/android/systemui/qs/tiles/VoLteTile;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    return-void
.end method


# virtual methods
.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isVoLteTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->showItPolicyToast()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/systemui/qs/tiles/VoLteTile;->VOLTE_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1390

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const v1, 0x7f120aa6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleClick()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->getMetricsCategory()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isVoLteTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->showItPolicyToast()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const v2, 0x7f120c8b

    invoke-static {v0, v2, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isSimReady()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_VOLTE_CHECK_OPERATOR:Z

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/systemui/Rune;->supportDualIms()Z

    move-result v0

    const v2, 0x7f120c8f

    const v4, 0x7f120c8d

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSystemUIImsManager:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/SystemUIImsManager;->getVoLTEEnableState()I

    move-result v0

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSystemUIImsManager:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-virtual {v5}, Lcom/android/systemui/util/SystemUIImsManager;->getVoLTESupportedSIM()I

    move-result v5

    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_3
    if-nez v5, :cond_4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_4
    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->isVoLteSupportedOperator()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->hasVoLteSIM()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->setEnabled(Z)V

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->showNoSIMDialog()V

    :goto_1
    return-void
.end method

.method protected handleDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mTM:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const v1, 0x7f120c8b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isSimReady()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->showDetail(Z)V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mListening:Z

    if-eqz p1, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->isVoLteEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mInCall:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mInWifiCall:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    goto :goto_1

    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const v2, 0x7f120aa6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    const v0, 0x7f08056c

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->dualTarget:Z

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/VoLteTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->getVoiceCallType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSHost;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isVoLteEnabled()Z
    .locals 5

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->getVoiceCallType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sget-boolean v3, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_VOLTE_CHECK_OPERATOR:Z

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/systemui/Rune;->supportDualIms()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSystemUIImsManager:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-virtual {v3}, Lcom/android/systemui/util/SystemUIImsManager;->getVoLTESupportedSIM()I

    move-result v3

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v4}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v4

    if-eq v4, v2, :cond_1

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isSimReady()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1

    :cond_2
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v3

    if-eq v3, v2, :cond_3

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isSimReady()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->isVoLteSupportedSIM()Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    nop

    :goto_1
    return v1

    :cond_4
    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v3

    if-eq v3, v2, :cond_5

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isSimReady()Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    nop

    :cond_5
    return v1
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method setEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->setVoiceCallType(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->setVoiceCallType(I)V

    :goto_0
    return-void
.end method
