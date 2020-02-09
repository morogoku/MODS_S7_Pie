.class abstract Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;
.super Ljava/lang/Object;
.source "AbstractPluginLockItem.java"


# instance fields
.field mClockCallbackRegisterTime:J

.field final mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

.field private final mCr:Landroid/content/ContentResolver;

.field private mInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

.field final mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/lockstar/PluginLockInstanceState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->mCr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-object p3, p0, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    invoke-static {p1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    return-void
.end method


# virtual methods
.method getClockBackupValue()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->getClock()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method getNotificationBackupValue()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->getNotification()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method getNotificationOriginBackupValue()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->getNotificationOrigin()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method getSettingsSystem(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->mCr:Landroid/content/ContentResolver;

    const/4 v1, -0x2

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method getWallpaperDynamicBackupValue()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->getWallpaperDynamic()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_0
    const/4 v1, -0x2

    return v1
.end method

.method getWallpaperSourceBackupValue()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->getWallpaperSource()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method getWallpaperTypeBackupValue()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->getWallpaperType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method putSettingsSystem(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->mCr:Landroid/content/ContentResolver;

    const/4 v1, -0x2

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method registerClockCallback(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->mClockCallbackRegisterTime:J

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->registerClockChangedCallback(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;)V

    return-void
.end method

.method resetNotificationBackValue()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->setNotification(I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->setNotificationOrigin(Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    invoke-virtual {v1}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method setClockBackupValue(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->setClock(I)V

    iget-object v1, p0, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    invoke-virtual {v1}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method public setInstanceState(Lcom/android/systemui/lockstar/PluginLockInstanceState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    return-void
.end method

.method setNotificationBackupValue(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->setNotification(I)V

    iget-object v1, p0, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    invoke-virtual {v1}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method setNotificationOriginBackupValue(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->setNotificationOrigin(Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    invoke-virtual {v1}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method setWallpaperBackupValue(III)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->setWallpaperDynamic(I)V

    invoke-virtual {v0, p2}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->setWallpaperSource(I)V

    invoke-virtual {v0, p3}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->setWallpaperType(I)V

    iget-object v1, p0, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    invoke-virtual {v1}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method setWallpaperDynamicBackupValue(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->setWallpaperDynamic(I)V

    iget-object v1, p0, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    invoke-virtual {v1}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method setWallpaperSourceBackupValue(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->setWallpaperSource(I)V

    iget-object v1, p0, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    invoke-virtual {v1}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method setWallpaperTypeBackupValue(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->setWallpaperType(I)V

    iget-object v1, p0, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    invoke-virtual {v1}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method unregisterClockCallback(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->mClockCallbackRegisterTime:J

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->unregisterClockChangedCallback(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;)V

    return-void
.end method
