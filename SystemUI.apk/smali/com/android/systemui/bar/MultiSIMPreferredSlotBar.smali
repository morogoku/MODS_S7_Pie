.class public Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;
.super Lcom/android/systemui/bar/QSBarItem;
.source "MultiSIMPreferredSlotBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;,
        Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;
    }
.end annotation


# static fields
.field private static final DISABLED_ALPHA:F = 0.4f

.field private static final MESSAGE_CHANGE_NETWORK_MODE:I = 0x3e9

.field private static final MESSAGE_DELAY_DATASERVICE_SET:I = 0x3eb

.field private static final MESSAGE_DELAY_DATASERVICE_TIMEOUT:I = 0x3ec

.field private static final MESSAGE_SEND_NETWORK_MODE_CHANGED_INTENT:I = 0x3ef

.field private static final MESSAGE_SET_PREFERRED_NETWORK_TYPE:I = 0x3ea

.field private static final MESSAGE_SET_PREFERRED_NETWORK_TYPE_IN_THREAD:I = 0x3ee

.field private static final MESSAGE_SET_PREFERRED_NETWORK_TYPE_ONESLOT:I = 0x3ed

.field private static final MESSAGE_UPDATE_MULTISIM_PREFERRED_DATA_BUTTON:I = 0x3e8

.field private static final NETOWRKMODECHANGE_MAX_TIMEOUT:I = 0x2710

.field private static final NORMAL_ALPHA:F = 1.0f

.field private static final QsPrefferedBtnImage:[I

.field private static final SIMSELECT_LIST_ASKALLAWAY:I = 0x0

.field private static final SIMSELECT_LIST_OTHERS:I = 0x3

.field private static final SIMSELECT_LIST_SIM1:I = 0x1

.field private static final SIMSELECT_LIST_SIM2:I = 0x2

.field private static final SIMSLOT1:I = 0x0

.field private static final SIMSLOT2:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MultiSIMPreferredSlotBar"


# instance fields
.field private Netchangefinished:Z

.field private SimImageIdx:[I

.field private SimName:[Ljava/lang/String;

.field private SimState_1:Ljava/lang/String;

.field private SimState_2:Ljava/lang/String;

.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mAirplaneMode:Z

.field private mAlphaEnabled:Z

.field private mCTCforceoff:Z

.field private mChangedByDataButton:Z

.field private mContext:Landroid/content/Context;

.field private mDataBlockedForSim1:Z

.field private mDataBlockedForSim2:Z

.field private mDefaultDataButton:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

.field private mDefaultDataSimId:I

.field private mDefaultSmsButton:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

.field private mDefaultSmsSimId:I

.field private mDefaultVoiceButton:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

.field private mDefaultVoiceSimId:I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsSRoaming:Z

.field private mLandscapeContainer:Landroid/widget/LinearLayout;

.field private mMobileDataChanging:Z

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mMobileDataSettingEnabled:Z

.field private mNetworkTypeHandler:Landroid/os/Handler;

.field private mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPopupNormalTextColor:I

.field private mPopupSelectedTextColor:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mPopupWindowTopMargin:I

.field private mPreferedVoice:I

.field private mPreferedVoiceObserver:Landroid/database/ContentObserver;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsValueList:[Landroid/net/Uri;

.field private mSimCardManagerIcon:Landroid/widget/ImageView;

.field private mSimCardManagerText:Landroid/widget/TextView;

.field private mSlotButtonGroup:Landroid/widget/LinearLayout;

.field private mSlotButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;",
            ">;"
        }
    .end annotation
.end field

.field private mSlotListAskButtonGroup:Landroid/view/ViewGroup;

.field private mSlotListAskButtonText:Landroid/widget/TextView;

.field private mSlotListButton1Group:Landroid/view/ViewGroup;

.field private mSlotListButton2Group:Landroid/view/ViewGroup;

.field private mSlotListButtonImage1:Landroid/widget/ImageView;

.field private mSlotListButtonImage2:Landroid/widget/ImageView;

.field private mSlotListButtonText1:Landroid/widget/TextView;

.field private mSlotListButtonText2:Landroid/widget/TextView;

.field private mSlotListOthersButtonGroup:Landroid/view/ViewGroup;

.field private mSlotListOthersButtonText:Landroid/widget/TextView;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUIHandler:Landroid/os/Handler;

.field private simSlotIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->QsPrefferedBtnImage:[I

    return-void

    :array_0
    .array-data 4
        0x7f080518
        0x7f080519
        0x7f08051a
        0x7f080520
        0x7f08051e
        0x7f08051d
        0x7f08051c
        0x7f08051f
        0x7f08051b
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/systemui/bar/QSBarItem;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotButtons:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDataBlockedForSim1:Z

    iput-boolean v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDataBlockedForSim2:Z

    iput-boolean v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mAlphaEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mAirplaneMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mIsSRoaming:Z

    iput v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDefaultVoiceSimId:I

    iput v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDefaultSmsSimId:I

    iput v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDefaultDataSimId:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->SimImageIdx:[I

    const-string v2, "SIM 1"

    const-string v3, "SIM 2"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->SimName:[Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mChangedByDataButton:Z

    iput-boolean v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->Netchangefinished:Z

    iput-boolean v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mCTCforceoff:Z

    new-instance v2, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$1;-><init>(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)V

    iput-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    new-instance v2, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$2;-><init>(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)V

    iput-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$3;-><init>(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)V

    iput-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$4;

    sget-object v3, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Looper;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$4;-><init>(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$5;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$5;-><init>(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPreferedVoiceObserver:Landroid/database/ContentObserver;

    new-instance v2, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$6;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$6;-><init>(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mMobileDataObserver:Landroid/database/ContentObserver;

    new-array v1, v1, [Landroid/net/Uri;

    const-string v2, "emergency_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSettingsValueList:[Landroid/net/Uri;

    new-instance v1, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$7;-><init>(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)V

    iput-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iput-object p1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.settings.SIMCARD_MGT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.telephony.action.DEFAULT_SMS_SUBSCRIPTION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_FAIL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.softsim.ServiceStatus"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/util/MultiSimMgrUtils;->getCurrentVoiceCall(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDefaultVoiceSimId:I

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->getPhoneId(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDefaultSmsSimId:I

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->getPhoneId(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDefaultDataSimId:I

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->SimImageIdx:[I

    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "select_icon_1"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v0

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->SimName:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "select_name_1"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->SimImageIdx:[I

    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "select_icon_2"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v3

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->SimName:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "select_name_2"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "prefered_voice_call"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPreferedVoiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "mobile_data"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v0, v2, v4}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSettingsValueList:[Landroid/net/Uri;

    aget-object v2, v2, v3

    invoke-interface {v0, v2}, Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;->onChanged(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSRoamingVirtualSlot(Landroid/content/Context;)I

    move-result v0

    sget v2, Lcom/android/systemui/util/MultiSimMgrUtils;->SOFTSIM_STATUS_ENABLE:I

    if-ne v0, v2, :cond_0

    iput-boolean v3, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mIsSRoaming:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "statusbar"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "SysUiNetworkType"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$8;

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$8;-><init>(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mNetworkTypeHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void

    nop

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDefaultVoiceSimId:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDefaultVoiceSimId:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->SimImageIdx:[I

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->SimName:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotButtons:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->updateSlotListPopupContents()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->updateBarVisibilities()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mIsSRoaming:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mIsSRoaming:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->dimissSlotListPopupWindow()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDefaultVoiceButton:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->changeNetworkMode(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mCTCforceoff:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mCTCforceoff:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->setPreferredNetworkMode(II)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mNetworkTypeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->Netchangefinished:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPreferedVoice:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPreferedVoice:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mMobileDataChanging:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mMobileDataChanging:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mMobileDataSettingEnabled:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mMobileDataSettingEnabled:Z

    return p1
.end method

.method static synthetic access$3000(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mAirplaneMode:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mAirplaneMode:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->launchDataSlotChoice()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDataBlockedForSim1:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->setDefaultMobileData(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDataBlockedForSim2:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->showSlotListPopupWindow(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->launchSimManager()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDefaultSmsSimId:I

    return v0
.end method

.method static synthetic access$4000()[I
    .locals 1

    sget-object v0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->QsPrefferedBtnImage:[I

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDefaultSmsSimId:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDefaultSmsButton:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDefaultDataSimId:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDefaultDataSimId:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDefaultDataButton:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mChangedByDataButton:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mChangedByDataButton:Z

    return p1
.end method

.method private calculatePopupWindowPos(Landroid/view/View;Landroid/view/View;)[I
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v2, v1, [I

    new-array v1, v1, [I

    move-object/from16 v3, p1

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v7, p2

    invoke-virtual {v7, v6, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iget-object v10, v0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v11, v0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v12, v0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupWindowTopMargin:I

    const/4 v13, 0x1

    aget v14, v1, v13

    sub-int v14, v10, v14

    sub-int/2addr v14, v12

    if-ge v14, v8, :cond_0

    move v14, v13

    goto :goto_0

    :cond_0
    move v14, v6

    :goto_0
    aget v15, v1, v6

    sub-int v15, v11, v15

    if-ge v15, v9, :cond_1

    move v15, v13

    goto :goto_1

    :cond_1
    move v15, v6

    :goto_1
    if-eqz v14, :cond_3

    if-eqz v15, :cond_2

    aget v16, v1, v6

    add-int v16, v16, v5

    sub-int v16, v16, v9

    goto :goto_2

    :cond_2
    aget v16, v1, v6

    :goto_2
    aput v16, v2, v6

    aget v6, v1, v13

    add-int/2addr v6, v4

    sub-int/2addr v6, v8

    aput v6, v2, v13

    goto :goto_4

    :cond_3
    if-eqz v15, :cond_4

    aget v16, v1, v6

    add-int v16, v16, v5

    sub-int v16, v16, v9

    goto :goto_3

    :cond_4
    aget v16, v1, v6

    :goto_3
    aput v16, v2, v6

    aget v6, v1, v13

    add-int/2addr v6, v12

    aput v6, v2, v13

    :goto_4
    if-eqz v15, :cond_5

    iget-object v6, v0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    const v13, 0x7f13000a

    invoke-virtual {v6, v13}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_5

    :cond_5
    iget-object v6, v0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    const v13, 0x7f130009

    invoke-virtual {v6, v13}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :goto_5
    return-object v2
.end method

.method private changeNetworkMode(Landroid/os/Message;)V
    .locals 8

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isImsNonDDS()Z

    move-result v2

    const/16 v3, 0x9

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "preferred_network_mode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSubId(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v5

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :goto_1
    const-string v5, "MultiSIMPreferredSlotBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changeNetworkMode: slotId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", subId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", networkType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isChinaModel()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isHKTWModel()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    invoke-static {v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->isLTESupportSim(I)Z

    move-result v5

    if-nez v5, :cond_2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    :cond_2
    if-nez v1, :cond_3

    move v3, v4

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    iput v3, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    move v3, v4

    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "preferred_network_mode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-static {v6}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSubId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v4

    goto :goto_3

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :goto_3
    const-string v4, "MultiSIMPreferredSlotBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showChangeToNetworkModePopup = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getPreferredNetworkType(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/systemui/util/MultiSimMgrUtils;->mPhoneCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v6, v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isMultisim()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getPreferredNetworkType(I)I

    move-result v4

    if-eq v2, v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/util/MultiSimMgrUtils;->restrictNetworkModeChange(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v1, v2}, Lcom/android/systemui/util/MultiSimMgrUtils;->checkSimCoverage(II)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "MultiSIMPreferredSlotBar"

    const-string/jumbo v5, "showChangeToNetworkModePopup NetworkType Change"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->selectNetworkMode(I)V

    goto :goto_4

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/util/MultiSimMgrUtils;->restrictNetworkModeChange(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getPreferredNetworkType(I)I

    move-result v4

    if-ne v2, v4, :cond_5

    iget v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-static {v4}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSlaveNetworkMode(I)I

    move-result v4

    if-eq v3, v4, :cond_6

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isImsNonDDS()Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    const-string v4, "MultiSIMPreferredSlotBar"

    const-string/jumbo v5, "showChangeToNetworkModePopup Slave Network Change"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->selectNetworkMode(I)V

    goto :goto_4

    :cond_6
    iget-boolean v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mChangedByDataButton:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mUIHandler:Landroid/os/Handler;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mUIHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_7
    :goto_4
    return-void
.end method

.method private createSlotListPopupWindow()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    const v1, 0x7f0d019a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0533

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButton1Group:Landroid/view/ViewGroup;

    const v1, 0x7f0a0535

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText1:Landroid/widget/TextView;

    const v1, 0x7f0a0534

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButtonImage1:Landroid/widget/ImageView;

    const v1, 0x7f0a0536

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButton2Group:Landroid/view/ViewGroup;

    const v1, 0x7f0a0538

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText2:Landroid/widget/TextView;

    const v1, 0x7f0a0537

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButtonImage2:Landroid/widget/ImageView;

    const v1, 0x7f0a0072

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListAskButtonGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0a0073

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListAskButtonText:Landroid/widget/TextView;

    const v1, 0x7f0a03b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListOthersButtonGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0a03b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListOthersButtonText:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0804c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0705cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setElevation(F)V

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-direct {p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->updateSlotListPopupContents()V

    return-void
.end method

.method private dimissSlotListPopupWindow()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private getBarVisibility()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->isKeyguardShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getPhoneId(I)I
    .locals 1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 13

    iget v0, p1, Landroid/os/Message;->arg2:I

    iget v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    move v0, v1

    iget-boolean v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->Netchangefinished:Z

    const/16 v4, 0x3ec

    if-eqz v1, :cond_3

    const-string v1, "MultiSIMPreferredSlotBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network change finish return!!:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->Netchangefinished:Z

    iget-boolean v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mChangedByDataButton:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mUIHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mUIHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3eb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void

    :cond_3
    const-string v1, "MultiSIMPreferredSlotBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSetPreferredNetworkTypeResponse ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->Netchangefinished:Z

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->selectNetworkModeByMTK()Z

    move-result v1

    const-wide/16 v5, 0x2710

    const/16 v2, 0x3ea

    const/16 v7, 0x3ee

    if-eqz v1, :cond_4

    const-string v1, "MultiSIMPreferredSlotBar"

    const-string v8, "Mojito set N/W mode for support L+W mode"

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getPreferredNetworkType(I)I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->setPreferredNetworkMode(II)V

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mNetworkTypeHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mNetworkTypeHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSubId(I)I

    move-result v9

    invoke-static {v0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getPreferredNetworkType(I)I

    move-result v10

    iget-object v11, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    iget v12, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-virtual {v11, v2, v3, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v8, v7, v9, v10, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_4
    invoke-static {v0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getPreferredNetworkType(I)I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->setPreferredNetworkMode(II)V

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mNetworkTypeHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mNetworkTypeHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSubId(I)I

    move-result v9

    invoke-static {v0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getPreferredNetworkType(I)I

    move-result v10

    iget-object v11, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v2, v3, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v8, v7, v9, v10, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private initBarViews(Landroid/view/ViewGroup;)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mBarRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mBarRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0a0539

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotButtonGroup:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mBarRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0a03f3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    sget-object v2, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;->VOICE:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;

    iget-object v3, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;-><init>(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDefaultVoiceButton:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotButtons:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDefaultVoiceButton:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPreferedVoiceObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mBarRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0a03f2

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    sget-object v4, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;->SMS:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;

    iget-object v5, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4, v5, v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;-><init>(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v3, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDefaultSmsButton:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    iget-object v3, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotButtons:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDefaultSmsButton:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mBarRootView:Landroid/view/ViewGroup;

    const v4, 0x7f0a03f0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    sget-object v5, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;->DATA:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;

    iget-object v6, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5, v6, v3}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;-><init>(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDefaultDataButton:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotButtons:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDefaultDataButton:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mBarRootView:Landroid/view/ViewGroup;

    const v5, 0x7f0a02b6

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mLandscapeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->isLandscape()Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotButtonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mLandscapeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotButtonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mLandscapeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mBarRootView:Landroid/view/ViewGroup;

    const v6, 0x7f0a052d

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSimCardManagerText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mBarRootView:Landroid/view/ViewGroup;

    const v6, 0x7f0a052c

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSimCardManagerIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSimCardManagerIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSimCardManagerIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0807c9

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    iget-object v7, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSimCardManagerIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    sget-boolean v7, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_CTC_SIM_CARD_MANAGER:Z

    if-eqz v7, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->isCTCUpgradeSimCardManager()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDefaultSmsButton:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-static {v7}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->access$3100(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v7, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$9;

    invoke-direct {v7, p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$9;-><init>(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)V

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$10;

    invoke-direct {v7, p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$10;-><init>(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)V

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_3
    iget-object v7, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotButtonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v7, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotButtonGroup:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string/jumbo v7, "ril.ICC_TYPE"

    const-string v9, "0"

    invoke-static {v2, v7, v9}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->SimState_1:Ljava/lang/String;

    const-string/jumbo v7, "ril.ICC_TYPE"

    const-string v9, "0"

    invoke-static {v6, v7, v9}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->SimState_2:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0705d2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupWindowTopMargin:I

    iget-object v6, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06024c

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupNormalTextColor:I

    iget-object v6, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06024d

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupSelectedTextColor:I

    invoke-direct {p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->createSlotListPopupWindow()V

    iget-object v6, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mBarRootView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->getBarVisibility()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_4
    move v2, v5

    :goto_1
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private isCTCUpgradeSimCardManager()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.android.app.simcardmanagement"

    const/16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method private isDataBlocked(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->isDataLockFeatureEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/systemui/util/MultiSimMgrUtils;->isNonCMCCChangeDDS(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/systemui/util/MultiSimMgrUtils;->isDataAllowedFromSimSlotByMDM(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isDataLockFeatureEnabled(I)Z
    .locals 6

    const-string v0, "AddDataLock"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_ConfigSimLock"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getMultiSimNumeric(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.radio.networklocklist"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const-string v2, "MultiSIMPreferredSlotBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DataLockFeature] Enable for operator = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", slot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSimState(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "NETWORK_LOCKED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "MultiSIMPreferredSlotBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network locked for slot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isNeedCrossMappingForNetchange()Z
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/systemui/util/MultiSimMgrUtils;->isSupportChangeNetworkModeForSlotNoActiveSim:Z

    if-nez v1, :cond_1

    const-string v1, "0"

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->SimState_1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->SimState_2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-static {v1, v2}, Lcom/android/systemui/util/MultiSimMgrUtils;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "Combination"

    const-string v2, "Strawberry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "Sangria"

    const-string v2, "Strawberry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Mojito"

    const-string v2, "Strawberry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isSupportCrossMapping()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "MultiSIMPreferredSlotBar"

    const-string v2, "CrossMapping Need for networkMode change"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_2
    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->selectNetworkModeByMTK()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "0"

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->SimState_1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "0"

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->SimState_2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-static {v1, v2}, Lcom/android/systemui/util/MultiSimMgrUtils;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "MultiSIMPreferredSlotBar"

    const-string v2, "MTK, CrossMapping Need for networkMode change"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private launchDataSlotChoice()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "MultiSIMPreferredSlotBar"

    const-string v2, "onClick()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$DataSlotChoice"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MultiSIMPreferredSlotBar"

    const-string v3, "activity not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private launchSimManager()V
    .locals 6

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_FIRST_SIM_LOCK:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->firstSimLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "MultiSIMPreferredSlotBar"

    const-string v2, "onClick()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const v2, 0x10008000

    :try_start_0
    const-string v3, "com.sec.android.app.simsettingmgr"

    const-string v4, "com.sec.android.app.simsettingmgr.NetworkManagement"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "extra_up_button"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v3, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "com.sec.android.app.simcardmgr"

    const-string v5, "com.sec.android.app.simcardmgr.NetworkManagement"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v2, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "MultiSIMPreferredSlotBar"

    const-string v4, "activity not found"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private removeRemainMessage()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const-string v0, "MultiSIMPreferredSlotBar"

    const-string/jumbo v1, "remove_remainMessage!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mNetworkTypeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mNetworkTypeHandler:Landroid/os/Handler;

    const/16 v2, 0x3ee

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iput-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mNetworkTypeHandler:Landroid/os/Handler;

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_3
    return-void
.end method

.method private selectNetworkMode(I)V
    .locals 12

    const-string/jumbo v0, "ril.ICC_TYPE0"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSystemSingleProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->SimState_1:Ljava/lang/String;

    const-string/jumbo v0, "ril.ICC_TYPE1"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSystemSingleProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->SimState_2:Ljava/lang/String;

    const-string v0, "MultiSIMPreferredSlotBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SimState_1 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->SimState_1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SimState_2 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->SimState_2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isEnabledSim : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-static {v2, v3}, Lcom/android/systemui/util/MultiSimMgrUtils;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->isNeedCrossMappingForNetchange()Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3ee

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isImsNonDDS()Z

    move-result v0

    const-wide/16 v4, 0x2710

    const/16 v6, 0x3ec

    const/16 v7, 0x3ea

    if-eqz v0, :cond_0

    const-string v0, "MultiSIMPreferredSlotBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "4G+4G set N/W mode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getPreferredNetworkType(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " simSlot: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getPreferredNetworkType(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->setPreferredNetworkMode(II)V

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mNetworkTypeHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mNetworkTypeHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSubId(I)I

    move-result v9

    invoke-static {p1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getPreferredNetworkType(I)I

    move-result v10

    iget-object v11, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v7, v3, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v8, v2, v9, v10, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-boolean v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->Netchangefinished:Z

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-static {v0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSlaveNetworkMode(I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->setPreferredNetworkMode(II)V

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mNetworkTypeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mNetworkTypeHandler:Landroid/os/Handler;

    iget v8, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-static {v8}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSubId(I)I

    move-result v8

    iget v9, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-static {v9}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSlaveNetworkMode(I)I

    move-result v9

    iget-object v10, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    iget v11, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-virtual {v10, v7, v3, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v1, v2, v8, v9, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-boolean v3, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->Netchangefinished:Z

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    const-string v0, "MultiSIMPreferredSlotBar"

    const-string v4, "Qcom/Sangria/Mojito set one slot!"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isChinaModel()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isHKTWModel()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isSuport75Mode()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCTCcardinserted(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-static {v0}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCTCcardinserted(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "MultiSIMPreferredSlotBar"

    const-string v2, "CTC card set to GSM only so need force off , except CTC + CTC"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mCTCforceoff:Z

    iget v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->setPreferredNetworkMode(II)V

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-static {v0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSlaveNetworkMode(I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->setPreferredNetworkMode(II)V

    invoke-static {p1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getPreferredNetworkType(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->setPreferredNetworkMode(II)V

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mNetworkTypeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mNetworkTypeHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSubId(I)I

    move-result v4

    invoke-static {p1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getPreferredNetworkType(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x3ed

    iget v8, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-virtual {v6, v7, v3, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method private setDefaultMobileData(I)V
    .locals 6

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v1

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    const-string v3, "MultiSIMPreferredSlotBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ChangeData:prefSubId ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", DataSlotId ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, p1, :cond_3

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->getDataEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "4305"

    invoke-static {v3, v4}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mChangedByDataButton:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mUIHandler:Landroid/os/Handler;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mUIHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mUIHandler:Landroid/os/Handler;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/systemui/util/MultiSimMgrUtils;->setDefaultDataSlot(Landroid/content/Context;I)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "4305"

    invoke-static {v3, v4}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private setPreferredNetworkMode(II)V
    .locals 3

    const-string v0, "MultiSIMPreferredSlotBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreferredNetworkMode DB:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isChinaModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isHKTWModel()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p2}, Lcom/android/systemui/util/MultiSimMgrUtils;->isLTESupportSim(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    const-string v0, "MultiSIMPreferredSlotBar"

    const-string v1, "CMCC SIM card but it\'s 2g Sim, so set DB 3/2 auto"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "preferred_network_mode"

    invoke-static {v0, v1, p2, p1}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "preferred_network_mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSubId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private showSlotListPopupWindow(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;)V
    .locals 8

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_FIRST_SIM_LOCK:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->firstSimLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->createSlotListPopupWindow()V

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mAlphaEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mAlphaEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButtonImage1:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButtonImage2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2
    const/4 v0, 0x0

    sget-object v2, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$19;->$SwitchMap$com$android$systemui$bar$MultiSIMPreferredSlotBar$ButtonType:[I

    invoke-virtual {p1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDefaultDataButton:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-virtual {v2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->getButtonTypeGroup()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->isDataBlocked(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDataBlockedForSim1:Z

    invoke-direct {p0, v3}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->isDataBlocked(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDataBlockedForSim2:Z

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButton1Group:Landroid/view/ViewGroup;

    new-instance v4, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$17;

    invoke-direct {v4, p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$17;-><init>(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)V

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButton2Group:Landroid/view/ViewGroup;

    new-instance v4, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$18;

    invoke-direct {v4, p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$18;-><init>(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)V

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mMobileDataSettingEnabled:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText1:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupNormalTextColor:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText2:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupNormalTextColor:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDefaultDataSimId:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText1:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupSelectedTextColor:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText2:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupNormalTextColor:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDefaultDataSimId:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText1:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupNormalTextColor:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText2:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupSelectedTextColor:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDataBlockedForSim1:Z

    const v4, 0x3ecccccd    # 0.4f

    if-eqz v2, :cond_6

    iput-boolean v3, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mAlphaEnabled:Z

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButtonImage1:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText1:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_6
    iget-boolean v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDataBlockedForSim2:Z

    if-eqz v2, :cond_7

    iput-boolean v3, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mAlphaEnabled:Z

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButtonImage2:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText2:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_7
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v2

    const-string v4, "4302"

    invoke-static {v2, v4}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDefaultSmsButton:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-virtual {v2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->getButtonTypeGroup()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButton1Group:Landroid/view/ViewGroup;

    new-instance v4, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$15;

    invoke-direct {v4, p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$15;-><init>(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)V

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButton2Group:Landroid/view/ViewGroup;

    new-instance v4, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$16;

    invoke-direct {v4, p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$16;-><init>(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)V

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDefaultSmsSimId:I

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText1:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupSelectedTextColor:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText2:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupNormalTextColor:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText1:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupNormalTextColor:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText2:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupSelectedTextColor:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v2

    const-string v4, "4301"

    invoke-static {v2, v4}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mDefaultVoiceButton:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-virtual {v2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->getButtonTypeGroup()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListAskButtonGroup:Landroid/view/ViewGroup;

    new-instance v4, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$11;

    invoke-direct {v4, p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$11;-><init>(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)V

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButton1Group:Landroid/view/ViewGroup;

    new-instance v4, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$12;

    invoke-direct {v4, p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$12;-><init>(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)V

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButton2Group:Landroid/view/ViewGroup;

    new-instance v4, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$13;

    invoke-direct {v4, p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$13;-><init>(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)V

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListOthersButtonGroup:Landroid/view/ViewGroup;

    new-instance v4, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$14;

    invoke-direct {v4, p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$14;-><init>(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)V

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/util/MultiSimMgrUtils;->getCurrentVoiceCall(Landroid/content/Context;)I

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListAskButtonText:Landroid/widget/TextView;

    if-nez v2, :cond_9

    iget v5, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupSelectedTextColor:I

    goto :goto_2

    :cond_9
    iget v5, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupNormalTextColor:I

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText1:Landroid/widget/TextView;

    if-ne v2, v3, :cond_a

    iget v5, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupSelectedTextColor:I

    goto :goto_3

    :cond_a
    iget v5, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupNormalTextColor:I

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText2:Landroid/widget/TextView;

    const/4 v5, 0x2

    if-ne v2, v5, :cond_b

    iget v5, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupSelectedTextColor:I

    goto :goto_4

    :cond_b
    iget v5, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupNormalTextColor:I

    :goto_4
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListOthersButtonText:Landroid/widget/TextView;

    const/4 v5, 0x3

    if-ne v2, v5, :cond_c

    iget v5, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupSelectedTextColor:I

    goto :goto_5

    :cond_c
    iget v5, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupNormalTextColor:I

    :goto_5
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v2

    const-string v4, "4300"

    invoke-static {v2, v4}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :goto_6
    sget-object v2, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;->VOICE:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;

    const/16 v4, 0x8

    const v5, 0x7f0804c1

    if-ne p1, v2, :cond_d

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListAskButtonGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButton1Group:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    :cond_d
    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListAskButtonGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButton1Group:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0804c2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_7
    sget-object v2, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;->VOICE:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;

    if-ne p1, v2, :cond_e

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/util/MultiSimMgrUtils;->isSupportCallpreferredOthers(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListOthersButtonGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButton2Group:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    :cond_e
    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListOthersButtonGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButton2Group:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0804c0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_8
    if-eqz v0, :cond_f

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->calculatePopupWindowPos(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    const v5, 0x800033

    aget v1, v2, v1

    aget v3, v2, v3

    invoke-virtual {v4, v0, v5, v1, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateBarVisibilities()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mBarRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mBarRootView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->getBarVisibility()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mQSCallback:Lcom/android/systemui/bar/QSBarItem$QSCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mQSCallback:Lcom/android/systemui/bar/QSBarItem$QSCallback;

    invoke-interface {v0}, Lcom/android/systemui/bar/QSBarItem$QSCallback;->onQSHeightChanged()V

    :cond_2
    return-void
.end method

.method private updateSlotListPopupContents()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButtonImage1:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->QsPrefferedBtnImage:[I

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->SimImageIdx:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->SimName:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButtonImage2:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->QsPrefferedBtnImage:[I

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->SimImageIdx:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->SimName:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPreferedVoiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPreferedVoiceObserver:Landroid/database/ContentObserver;

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v1, v2}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    iput-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-direct {p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->removeRemainMessage()V

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iput-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-void
.end method

.method public getBarHeight()I
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->getBarVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected hideShowingExpandedBar(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->updateBarVisibilities()V

    return-void
.end method

.method public inflateViews(Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0198

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mBarRootView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->initBarViews(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->updateAnimator()V

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mBarRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isMultisim()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->launchSimManager()V

    return-void
.end method

.method public onColorChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const-string v0, "MultiSIMPreferredSlotBar"

    const-string v1, "onColorChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mBarRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-virtual {v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->updateTextColor()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06024c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupNormalTextColor:I

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f06024d

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupSelectedTextColor:I

    invoke-direct {p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->dimissSlotListPopupWindow()V

    iput-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSimCardManagerText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    const v1, 0x7f06024b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSimCardManagerIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    const-string v0, "MultiSIMPreferredSlotBar"

    const-string/jumbo v1, "onLongClick()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->launchSimManager()V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4306"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/bar/QSBarItem;->onOrientationChanged(I)V

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mBarRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->dimissSlotListPopupWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->isLandscape()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotButtonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mLandscapeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mSlotButtonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mLandscapeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mBarRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mBarRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mQSCallback:Lcom/android/systemui/bar/QSBarItem$QSCallback;

    invoke-interface {v1}, Lcom/android/systemui/bar/QSBarItem$QSCallback;->onQSHeightChanged()V

    return-void
.end method

.method public onQsClosed()V
    .locals 2

    const-string v0, "MultiSIMPreferredSlotBar"

    const-string/jumbo v1, "onQsClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->dimissSlotListPopupWindow()V

    return-void
.end method

.method public setCurrentVoiceCall(I)I
    .locals 5

    const-string v0, "MultiSIMPreferredSlotBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetCurrentVoiceCall() : current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getCurrentVoiceCall(Landroid/content/Context;)I

    move-result v0

    if-ne v0, p1, :cond_0

    const-string v0, "MultiSIMPreferredSlotBar"

    const-string v1, "SetCurrentVoiceCall() : do not set current again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "prefered_voice_call"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.app.telephonyui.action.OPEN_CALL_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "root_key"

    const-string v3, "CALLING_ACCOUNTS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x50008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "MultiSIMPreferredSlotBar"

    const-string v4, "activity not found."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "prefered_voice_call"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    const-string v1, "MultiSIMPreferredSlotBar"

    const-string v2, "SetCurrentVoiceCall() always ask!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "4303"

    invoke-static {v1, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    add-int/lit8 v2, p1, -0x1

    invoke-static {v2}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSubId(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/util/MultiSimMgrUtils;->subscriptionIdToPhoneAccountHandle(Landroid/content/Context;I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "prefered_voice_call"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    add-int/lit8 v3, p1, -0x1

    invoke-static {v3}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSubId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(I)V

    const-string v2, "MultiSIMPreferredSlotBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetCurrentVoiceCall() : current = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4303"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public setStatusBarState(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/bar/QSBarItem;->setStatusBarState(I)V

    invoke-direct {p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->updateBarVisibilities()V

    return-void
.end method
