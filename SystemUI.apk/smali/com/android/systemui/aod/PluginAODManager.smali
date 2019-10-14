.class public Lcom/android/systemui/aod/PluginAODManager;
.super Ljava/lang/Object;
.source "PluginAODManager.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field private mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

.field private mAnalogLiveClockEncoder:Lcom/android/systemui/aod/liveclock/AnalogLiveClockEncoder;

.field private mContext:Landroid/content/Context;

.field private mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

.field private mDigitalLiveClockEncoder:Lcom/android/systemui/aod/liveclock/DigitalLiveClockEncoder;

.field private mDozeHost:Lcom/android/systemui/doze/DozeHost;

.field private mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentActionList:[Ljava/lang/String;

.field private mKeyguardServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

.field private final mLiveClockCallback:Lcom/samsung/systemui/splugins/aod/PluginAODLiveClockManager$Callback;

.field private final mMusicContentCallback:Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager$Callback;

.field private mMusicControllerListener:Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

.field private mNotiLogManager:Lcom/android/systemui/aod/LogManager;

.field private final mNotificationCallback:Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager$Callback;

.field private mNotificationTotalCount:I

.field private final mRemoteViewsCallback:Lcom/samsung/systemui/splugins/aod/PluginAODRemoteViewsManager$Callback;

.field private final mServiceBoxCalendarCallback:Lcom/samsung/systemui/splugins/aod/PluginAODServiceBoxCalendarManager$Callback;

.field private final mServiceBoxCallback:Lcom/samsung/systemui/splugins/aod/PluginAODServiceBoxManager$Callback;

.field private final mSmartAlerts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field private final mSysUIConfig:Lcom/samsung/systemui/splugins/aod/PluginAODSystemUIConfiguration;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mVisibleNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mIntentActionList:[Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/systemui/splugins/aod/PluginAODSystemUIConfiguration;

    invoke-direct {v0}, Lcom/samsung/systemui/splugins/aod/PluginAODSystemUIConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mSysUIConfig:Lcom/samsung/systemui/splugins/aod/PluginAODSystemUIConfiguration;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mMusicControllerListener:Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/aod/LogManager;

    const-string v1, "AOD_Notification"

    const/16 v2, 0x96

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/aod/LogManager;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mNotiLogManager:Lcom/android/systemui/aod/LogManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mVisibleNotifications:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mNotificationTotalCount:I

    new-instance v0, Lcom/android/systemui/aod/-$$Lambda$PluginAODManager$cLbNYj13FCx6_DN4MeqKxg8yxV4;

    invoke-direct {v0, p0}, Lcom/android/systemui/aod/-$$Lambda$PluginAODManager$cLbNYj13FCx6_DN4MeqKxg8yxV4;-><init>(Lcom/android/systemui/aod/PluginAODManager;)V

    iput-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mServiceBoxCalendarCallback:Lcom/samsung/systemui/splugins/aod/PluginAODServiceBoxCalendarManager$Callback;

    new-instance v0, Lcom/android/systemui/aod/PluginAODManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/aod/PluginAODManager$1;-><init>(Lcom/android/systemui/aod/PluginAODManager;)V

    iput-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mServiceBoxCallback:Lcom/samsung/systemui/splugins/aod/PluginAODServiceBoxManager$Callback;

    new-instance v0, Lcom/android/systemui/aod/-$$Lambda$PluginAODManager$JYIRodwsNdHfkiEGK3MUttvsvS0;

    invoke-direct {v0, p0}, Lcom/android/systemui/aod/-$$Lambda$PluginAODManager$JYIRodwsNdHfkiEGK3MUttvsvS0;-><init>(Lcom/android/systemui/aod/PluginAODManager;)V

    iput-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mLiveClockCallback:Lcom/samsung/systemui/splugins/aod/PluginAODLiveClockManager$Callback;

    new-instance v0, Lcom/android/systemui/aod/PluginAODManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/aod/PluginAODManager$2;-><init>(Lcom/android/systemui/aod/PluginAODManager;)V

    iput-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/systemui/aod/PluginAODManager$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/aod/PluginAODManager$3;-><init>(Lcom/android/systemui/aod/PluginAODManager;)V

    iput-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mNotificationCallback:Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager$Callback;

    new-instance v0, Lcom/android/systemui/aod/PluginAODManager$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/aod/PluginAODManager$4;-><init>(Lcom/android/systemui/aod/PluginAODManager;)V

    iput-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mMusicContentCallback:Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager$Callback;

    new-instance v0, Lcom/android/systemui/aod/PluginAODManager$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/aod/PluginAODManager$5;-><init>(Lcom/android/systemui/aod/PluginAODManager;)V

    iput-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mRemoteViewsCallback:Lcom/samsung/systemui/splugins/aod/PluginAODRemoteViewsManager$Callback;

    iput-object p1, p0, Lcom/android/systemui/aod/PluginAODManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/aod/PluginAODManager;->initSystemUIConfiguration()V

    invoke-direct {p0}, Lcom/android/systemui/aod/PluginAODManager;->registerBroadcast()V

    invoke-direct {p0}, Lcom/android/systemui/aod/PluginAODManager;->registerUpdateMonitor()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/aod/PluginAODManager;)Lcom/android/systemui/doze/DozeHost;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/aod/PluginAODSystemUIConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mSysUIConfig:Lcom/samsung/systemui/splugins/aod/PluginAODSystemUIConfiguration;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/aod/PluginAODManager;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mKeyguardServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/aod/PluginAODManager;Lcom/android/systemui/servicebox/KeyguardServiceBoxController;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/aod/PluginAODManager;->mKeyguardServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/aod/PluginAOD;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/aod/PluginAODManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mVisibleNotifications:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/aod/PluginAODManager;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mNotificationTotalCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/cover/PluginViewCover;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/aod/PluginAODManager;)Lcom/android/systemui/statusbar/NotificationEntryManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/aod/PluginAODManager;Lcom/android/systemui/statusbar/NotificationEntryManager;)Lcom/android/systemui/statusbar/NotificationEntryManager;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/aod/PluginAODManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/aod/PluginAODManager;)Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mMusicControllerListener:Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/aod/PluginAODManager;Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;)Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/aod/PluginAODManager;->mMusicControllerListener:Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/aod/PluginAODManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/aod/PluginAODManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/aod/PluginAODManager;->unregisterMusicListener()V

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/aod/PluginAODManager;
    .locals 1

    const-class v0, Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/aod/PluginAODManager;

    return-object v0
.end method

.method private initSystemUIConfiguration()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mSysUIConfig:Lcom/samsung/systemui/splugins/aod/PluginAODSystemUIConfiguration;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/systemui/splugins/aod/PluginAODSystemUIConfiguration;->set(II)V

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/aod/PluginAODManager;->mSysUIConfig:Lcom/samsung/systemui/splugins/aod/PluginAODSystemUIConfiguration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    nop

    :cond_0
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lcom/samsung/systemui/splugins/aod/PluginAODSystemUIConfiguration;->set(II)V

    return-void
.end method

.method private isSmartAlertNoti(Landroid/service/notification/StatusBarNotification;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "smart_alert_title"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/aod/PluginAODManager;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->requestCalendarData()V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/systemui/aod/PluginAODManager;ILandroid/os/Bundle;)[B
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/aod/PluginAODManager;->getDigitalLiveClockEncoder()Lcom/android/systemui/aod/liveclock/DigitalLiveClockEncoder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/aod/liveclock/DigitalLiveClockEncoder;->getImageDataByDuploV32FromNative(Landroid/os/Bundle;)[B

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/aod/PluginAODManager;->getDigitalLiveClockEncoder()Lcom/android/systemui/aod/liveclock/DigitalLiveClockEncoder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/aod/liveclock/DigitalLiveClockEncoder;->getImageDataByDuploV32FromNative(Landroid/os/Bundle;)[B

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/aod/PluginAODManager;->getAnalogLiveClockEncoder()Lcom/android/systemui/aod/liveclock/AnalogLiveClockEncoder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/aod/liveclock/AnalogLiveClockEncoder;->getAnalogImageDataForDreamDeviceFromNative(Landroid/os/Bundle;)[B

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$sendIntent$2(Lcom/android/systemui/aod/PluginAODManager;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/aod/PluginAOD;->sendIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private logSmartAlert(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/aod/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/StatusBarNotification;

    if-eqz v3, :cond_0

    const/16 v4, 0x5b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x7c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x5d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onUpdateSmartAlert:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/aod/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " showingKeys "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "UserHandle"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/aod/PluginAODManager;->mNotiLogManager:Lcom/android/systemui/aod/LogManager;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/aod/LogManager;->add(Ljava/lang/String;)V

    return-void
.end method

.method private logVisibleNotification(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/StatusBarNotification;

    if-eqz v3, :cond_0

    const/16 v4, 0x5b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x7c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x5d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    goto :goto_0

    :cond_1
    const-string v2, "[updateVisibleNotifications] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " showingKeys "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "UserHandle"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/aod/PluginAODManager;->mNotiLogManager:Lcom/android/systemui/aod/LogManager;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/aod/LogManager;->add(Ljava/lang/String;)V

    return-void
.end method

.method private registerBroadcast()V
    .locals 5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/aod/PluginAODManager;->mIntentActionList:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/aod/PluginAODManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/aod/PluginAODManager$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/aod/PluginAODManager$6;-><init>(Lcom/android/systemui/aod/PluginAODManager;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerUpdateMonitor()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/aod/PluginAODManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method private unregisterMusicListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mMusicControllerListener:Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/aod/PluginAODManager;->mMusicControllerListener:Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->removeCallback(Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mMusicControllerListener:Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    return-void
.end method


# virtual methods
.method public addNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/aod/PluginAODManager;->isSmartAlertNoti(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/aod/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "addNotification"

    invoke-direct {p0, v0}, Lcom/android/systemui/aod/PluginAODManager;->logSmartAlert(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/aod/PluginAOD;->getNotificationManager()Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager;->addNotification(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/cover/PluginViewCover;->getNotificationManager()Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager;->addNotification(Landroid/service/notification/StatusBarNotification;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public applyAODFlags(Landroid/view/WindowManager$LayoutParams;ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/systemui/splugins/aod/PluginAOD;->applyAODFlags(Landroid/view/WindowManager$LayoutParams;ZZ)V

    :cond_0
    return-void
.end method

.method public chargingAnimStarted(Z)V
    .locals 2

    sget-object v0, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_BATTERY_CHARGER_CONNECTION_VI:Ljava/lang/String;

    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/aod/PluginAOD;->onChargingAnimStarted(Z)V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mNotiLogManager:Lcom/android/systemui/aod/LogManager;

    invoke-virtual {v0, p2}, Lcom/android/systemui/aod/LogManager;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getAnalogLiveClockEncoder()Lcom/android/systemui/aod/liveclock/AnalogLiveClockEncoder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mAnalogLiveClockEncoder:Lcom/android/systemui/aod/liveclock/AnalogLiveClockEncoder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/aod/liveclock/AnalogLiveClockEncoder;

    invoke-direct {v0}, Lcom/android/systemui/aod/liveclock/AnalogLiveClockEncoder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mAnalogLiveClockEncoder:Lcom/android/systemui/aod/liveclock/AnalogLiveClockEncoder;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mAnalogLiveClockEncoder:Lcom/android/systemui/aod/liveclock/AnalogLiveClockEncoder;

    return-object v0
.end method

.method public getDigitalLiveClockEncoder()Lcom/android/systemui/aod/liveclock/DigitalLiveClockEncoder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mDigitalLiveClockEncoder:Lcom/android/systemui/aod/liveclock/DigitalLiveClockEncoder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/aod/liveclock/DigitalLiveClockEncoder;

    invoke-direct {v0}, Lcom/android/systemui/aod/liveclock/DigitalLiveClockEncoder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mDigitalLiveClockEncoder:Lcom/android/systemui/aod/liveclock/DigitalLiveClockEncoder;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mDigitalLiveClockEncoder:Lcom/android/systemui/aod/liveclock/DigitalLiveClockEncoder;

    return-object v0
.end method

.method public getSysUIConfig()Lcom/samsung/systemui/splugins/aod/PluginAODSystemUIConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mSysUIConfig:Lcom/samsung/systemui/splugins/aod/PluginAODSystemUIConfiguration;

    return-object v0
.end method

.method public isPlugged()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    if-eqz v0, :cond_0

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

.method public removeNotification(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/aod/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v0, "removeNotification"

    invoke-direct {p0, v0}, Lcom/android/systemui/aod/PluginAODManager;->logSmartAlert(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/aod/PluginAOD;->getNotificationManager()Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager;->removeNotification(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/cover/PluginViewCover;->getNotificationManager()Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager;->removeNotification(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public sendIntent(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/aod/-$$Lambda$PluginAODManager$mk_xevo2gouSjyYXb0GL3m3uz-4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/aod/-$$Lambda$PluginAODManager$mk_xevo2gouSjyYXb0GL3m3uz-4;-><init>(Lcom/android/systemui/aod/PluginAODManager;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAODPlugin(Lcom/samsung/systemui/splugins/aod/PluginAOD;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/aod/PluginAODManager;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/aod/PluginAOD;->getServiceBoxManager()Lcom/samsung/systemui/splugins/aod/PluginAODServiceBoxManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/aod/PluginAODManager;->mServiceBoxCallback:Lcom/samsung/systemui/splugins/aod/PluginAODServiceBoxManager$Callback;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/aod/PluginAODServiceBoxManager;->setCallback(Lcom/samsung/systemui/splugins/aod/PluginAODServiceBoxManager$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/aod/PluginAOD;->getServiceBoxCalendarManager()Lcom/samsung/systemui/splugins/aod/PluginAODServiceBoxCalendarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/aod/PluginAODManager;->mServiceBoxCalendarCallback:Lcom/samsung/systemui/splugins/aod/PluginAODServiceBoxCalendarManager$Callback;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/aod/PluginAODServiceBoxCalendarManager;->setCallback(Lcom/samsung/systemui/splugins/aod/PluginAODServiceBoxCalendarManager$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/aod/PluginAOD;->getMusicContentManager()Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/aod/PluginAODManager;->mMusicContentCallback:Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager$Callback;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager;->setCallback(Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/aod/PluginAOD;->getNotificationManager()Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/aod/PluginAODManager;->mNotificationCallback:Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager$Callback;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager;->setCallback(Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/aod/PluginAOD;->getLiveClockManager()Lcom/samsung/systemui/splugins/aod/PluginAODLiveClockManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/aod/PluginAODManager;->mLiveClockCallback:Lcom/samsung/systemui/splugins/aod/PluginAODLiveClockManager$Callback;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/aod/PluginAODLiveClockManager;->setCallback(Lcom/samsung/systemui/splugins/aod/PluginAODLiveClockManager$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/aod/PluginAOD;->getRemoteViewsManager()Lcom/samsung/systemui/splugins/aod/PluginAODRemoteViewsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/aod/PluginAODManager;->mRemoteViewsCallback:Lcom/samsung/systemui/splugins/aod/PluginAODRemoteViewsManager$Callback;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/aod/PluginAODRemoteViewsManager;->setCallback(Lcom/samsung/systemui/splugins/aod/PluginAODRemoteViewsManager$Callback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/aod/PluginAODManager;->unregisterMusicListener()V

    :cond_1
    return-void
.end method

.method public setAODRemoteViews(Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/aod/PluginAOD;->getRemoteViewsManager()Lcom/samsung/systemui/splugins/aod/PluginAODRemoteViewsManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/systemui/splugins/aod/PluginAODRemoteViewsManager;->setAODRemoteViews(Ljava/lang/String;Landroid/widget/RemoteViews;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/cover/PluginViewCover;->getRemoteViewsManager()Lcom/samsung/systemui/splugins/aod/PluginAODRemoteViewsManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/systemui/splugins/aod/PluginAODRemoteViewsManager;->setAODRemoteViews(Ljava/lang/String;Landroid/widget/RemoteViews;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCoverPlugin(Lcom/samsung/systemui/splugins/cover/PluginViewCover;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/aod/PluginAODManager;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/cover/PluginViewCover;->getServiceBoxCalendarManager()Lcom/samsung/systemui/splugins/aod/PluginAODServiceBoxCalendarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/aod/PluginAODManager;->mServiceBoxCalendarCallback:Lcom/samsung/systemui/splugins/aod/PluginAODServiceBoxCalendarManager$Callback;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/aod/PluginAODServiceBoxCalendarManager;->setCallback(Lcom/samsung/systemui/splugins/aod/PluginAODServiceBoxCalendarManager$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/cover/PluginViewCover;->getMusicContentManager()Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/aod/PluginAODManager;->mMusicContentCallback:Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager$Callback;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager;->setCallback(Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/cover/PluginViewCover;->getNotificationManager()Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/aod/PluginAODManager;->mNotificationCallback:Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager$Callback;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager;->setCallback(Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/cover/PluginViewCover;->getRemoteViewsManager()Lcom/samsung/systemui/splugins/aod/PluginAODRemoteViewsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/aod/PluginAODManager;->mRemoteViewsCallback:Lcom/samsung/systemui/splugins/aod/PluginAODRemoteViewsManager$Callback;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/aod/PluginAODRemoteViewsManager;->setCallback(Lcom/samsung/systemui/splugins/aod/PluginAODRemoteViewsManager$Callback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/aod/PluginAODManager;->unregisterMusicListener()V

    :cond_1
    return-void
.end method

.method public setDozeHost(Lcom/android/systemui/doze/DozeHost;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/aod/PluginAODManager;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    return-void
.end method

.method public updateActiveNotifications(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/aod/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v2}, Lcom/android/systemui/aod/PluginAODManager;->isSmartAlertNoti(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/aod/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/aod/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    const-string/jumbo v1, "updateActiveNotifications"

    invoke-direct {p0, v1}, Lcom/android/systemui/aod/PluginAODManager;->logSmartAlert(Ljava/lang/String;)V

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/aod/PluginAOD;->getNotificationManager()Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager;->updateActiveNotifications(Ljava/util/List;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/cover/PluginViewCover;->getNotificationManager()Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager;->updateActiveNotifications(Ljava/util/List;)V

    :cond_4
    :goto_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateCalendarData(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/aod/PluginAOD;->getServiceBoxCalendarManager()Lcom/samsung/systemui/splugins/aod/PluginAODServiceBoxCalendarManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/systemui/splugins/aod/PluginAODServiceBoxCalendarManager;->updateCalendarData(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/cover/PluginViewCover;->getServiceBoxCalendarManager()Lcom/samsung/systemui/splugins/aod/PluginAODServiceBoxCalendarManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/systemui/splugins/aod/PluginAODServiceBoxCalendarManager;->updateCalendarData(Ljava/util/List;Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/systemui/aod/PluginAODManager;->isSmartAlertNoti(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/aod/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/android/systemui/aod/PluginAODManager;->isSmartAlertNoti(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v0, "updateNotification"

    invoke-direct {p0, v0}, Lcom/android/systemui/aod/PluginAODManager;->logSmartAlert(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/aod/PluginAOD;->getNotificationManager()Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager;->updateNotification(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/cover/PluginViewCover;->getNotificationManager()Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager;->updateNotification(Landroid/service/notification/StatusBarNotification;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public updateVisibleNotifications(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mVisibleNotifications:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/aod/PluginAODManager;->mVisibleNotifications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/systemui/aod/PluginAODManager;->mVisibleNotifications:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput p2, p0, Lcom/android/systemui/aod/PluginAODManager;->mNotificationTotalCount:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/aod/PluginAOD;->getNotificationManager()Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager;->updateVisibleNotifications(Ljava/util/List;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/cover/PluginViewCover;->getNotificationManager()Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager;->updateVisibleNotifications(Ljava/util/List;I)V

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/aod/PluginAODManager;->logVisibleNotification(Ljava/util/List;I)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
