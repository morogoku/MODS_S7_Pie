.class public Lcom/android/systemui/lockstar/component/PluginLockNotification;
.super Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;
.source "PluginLockNotification.java"


# instance fields
.field private final mClockCallback:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;

.field private mClockRecoverType:I

.field private mNotiCallbackRegisterTime:J

.field private mNotiCardBottomPadding:I

.field private mNotiCardTopPadding:I

.field private mNotiIconGravity:I

.field private mNotiIconPaddingEnd:I

.field private mNotiIconPaddingStart:I

.field private mNotiIconPaddingTop:I

.field private mNotiType:I

.field private mNotiTypeCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/lockstar/PluginLockInstanceState;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/lockstar/PluginLockInstanceState;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mNotiType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mNotiCardTopPadding:I

    iput v0, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mNotiCardBottomPadding:I

    iput v0, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mNotiIconGravity:I

    iput v0, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mNotiIconPaddingTop:I

    iput v0, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mNotiIconPaddingStart:I

    iput v0, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mNotiIconPaddingEnd:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mClockRecoverType:I

    new-instance v0, Lcom/android/systemui/lockstar/component/PluginLockNotification$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/lockstar/component/PluginLockNotification$1;-><init>(Lcom/android/systemui/lockstar/component/PluginLockNotification;)V

    iput-object v0, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mClockCallback:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/lockstar/component/PluginLockNotification;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mClockRecoverType:I

    return v0
.end method

.method public static synthetic lambda$registerNotiTypeCallback$0(Lcom/android/systemui/lockstar/component/PluginLockNotification;Landroid/net/Uri;)V
    .locals 4

    if-eqz p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mNotiCallbackRegisterTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenMinimizingNotification()I

    move-result v0

    const-string v1, "PluginLockNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Noti type changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mClockCallback:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;

    invoke-virtual {p0, v1}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->registerClockCallback(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->setNotificationBackupValue(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->setNotificationOriginBackupValue(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->recover()V

    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->setNotificationOriginBackupValue(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private registerNotiTypeCallback()V
    .locals 5

    new-instance v0, Lcom/android/systemui/lockstar/component/-$$Lambda$PluginLockNotification$-a-nN_hIlwOcqN3mbxa_wBHMlL4;

    invoke-direct {v0, p0}, Lcom/android/systemui/lockstar/component/-$$Lambda$PluginLockNotification$-a-nN_hIlwOcqN3mbxa_wBHMlL4;-><init>(Lcom/android/systemui/lockstar/component/PluginLockNotification;)V

    iput-object v0, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mNotiTypeCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mNotiTypeCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const-string v3, "lockscreen_minimizing_notification"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method private setNotificationType(I)V
    .locals 1

    const-string v0, "lockscreen_minimizing_notification"

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->putSettingsSystem(Ljava/lang/String;I)V

    return-void
.end method

.method private unregisterNotiTypeCallback()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mNotiTypeCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/systemui/lockstar/model/DynamicLockData;Lcom/android/systemui/lockstar/model/DynamicLockData;)V
    .locals 6

    const-string v0, "PluginLockNotification"

    const-string v1, "apply()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/android/systemui/lockstar/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;->getClockInfo()Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/lockstar/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;->getClockInfo()Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->getRecoverType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mClockRecoverType:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->getNotificationBackupValue()I

    move-result v1

    const-string v2, "PluginLockNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apply() backupValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/android/systemui/lockstar/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/lockstar/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_3
    invoke-virtual {p2}, Lcom/android/systemui/lockstar/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->getNotiType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_4

    return-void

    :cond_4
    iget v3, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mNotiType:I

    if-eq v3, v2, :cond_5

    iput v2, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mNotiType:I

    :cond_5
    invoke-virtual {p2}, Lcom/android/systemui/lockstar/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->getCardData()Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationCardData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationCardData;->getNotiCardTop()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mNotiCardTopPadding:I

    invoke-virtual {p2}, Lcom/android/systemui/lockstar/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->getCardData()Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationCardData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationCardData;->getNotiCardBottom()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mNotiCardBottomPadding:I

    invoke-virtual {p2}, Lcom/android/systemui/lockstar/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->getIconOnlyData()Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->getPaddingTop()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mNotiIconPaddingTop:I

    invoke-virtual {p2}, Lcom/android/systemui/lockstar/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->getIconOnlyData()Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->getPaddingStart()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mNotiIconPaddingStart:I

    invoke-virtual {p2}, Lcom/android/systemui/lockstar/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->getIconOnlyData()Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->getPaddingEnd()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mNotiIconPaddingEnd:I

    invoke-virtual {p2}, Lcom/android/systemui/lockstar/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->getIconOnlyData()Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->getGravity()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mNotiIconGravity:I

    iget-object v3, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mClockCallback:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;

    invoke-virtual {p0, v3}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->registerClockCallback(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;)V

    const/4 v3, -0x3

    invoke-virtual {p0, v3}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->setNotificationBackupValue(I)V

    iget-object v3, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenMinimizingNotification()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->setNotificationOriginBackupValue(I)V

    const/4 v4, 0x2

    if-ne v2, v4, :cond_6

    const/4 v4, 0x1

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    :goto_0
    invoke-direct {p0, v4}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->setNotificationType(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mNotiCallbackRegisterTime:J

    invoke-direct {p0}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->registerNotiTypeCallback()V

    :cond_7
    return-void
.end method

.method public getNotiCardBottomPadding()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mNotiCardBottomPadding:I

    return v0
.end method

.method public getNotiCardTopPadding()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mNotiCardTopPadding:I

    return v0
.end method

.method public getNotiIconGravity()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mNotiIconGravity:I

    return v0
.end method

.method public getNotiIconPaddingEnd()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mNotiIconPaddingEnd:I

    return v0
.end method

.method public getNotiIconPaddingStart()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mNotiIconPaddingStart:I

    return v0
.end method

.method public getNotiIconPaddingTop()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mNotiIconPaddingTop:I

    return v0
.end method

.method public isNotiIconOnly()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->getNotificationBackupValue()I

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mNotiType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public recover()V
    .locals 2

    const-string v0, "PluginLockNotification"

    const-string/jumbo v1, "recover()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->setNotificationBackupValue(I)V

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mClockCallback:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;

    invoke-virtual {p0, v0}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->unregisterClockCallback(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;)V

    return-void
.end method

.method public reset(Z)V
    .locals 2

    const-string v0, "PluginLockNotification"

    const-string/jumbo v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mNotiType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mNotiCardTopPadding:I

    iput v0, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mNotiCardBottomPadding:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mNotiIconGravity:I

    iput v0, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mNotiIconPaddingTop:I

    iput v0, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mNotiIconPaddingStart:I

    iput v0, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mNotiIconPaddingEnd:I

    iget-object v1, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mClockCallback:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;

    invoke-virtual {p0, v1}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->unregisterClockCallback(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;)V

    invoke-direct {p0}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->unregisterNotiTypeCallback()V

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->getNotificationOriginBackupValue()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, -0x2

    if-eq v1, v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->setNotificationType(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->resetNotificationBackValue()V

    :cond_1
    return-void
.end method

.method public bridge synthetic setInstanceState(Lcom/android/systemui/lockstar/PluginLockInstanceState;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->setInstanceState(Lcom/android/systemui/lockstar/PluginLockInstanceState;)V

    return-void
.end method
