.class public Lcom/android/systemui/lockstar/component/PluginLockClock;
.super Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;
.source "PluginLockClock.java"


# instance fields
.field private final mClockCallback:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;

.field private mClockGravity:I

.field private mClockPaddingEnd:I

.field private mClockPaddingStart:I

.field private mClockRecoverType:I

.field private mClockType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/lockstar/PluginLockInstanceState;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/lockstar/PluginLockInstanceState;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/lockstar/component/PluginLockClock;->mClockType:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/lockstar/component/PluginLockClock;->mClockGravity:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/lockstar/component/PluginLockClock;->mClockPaddingStart:I

    iput v1, p0, Lcom/android/systemui/lockstar/component/PluginLockClock;->mClockPaddingEnd:I

    iput v0, p0, Lcom/android/systemui/lockstar/component/PluginLockClock;->mClockRecoverType:I

    new-instance v0, Lcom/android/systemui/lockstar/component/PluginLockClock$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/lockstar/component/PluginLockClock$1;-><init>(Lcom/android/systemui/lockstar/component/PluginLockClock;)V

    iput-object v0, p0, Lcom/android/systemui/lockstar/component/PluginLockClock;->mClockCallback:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/lockstar/component/PluginLockClock;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/lockstar/component/PluginLockClock;->mClockRecoverType:I

    return v0
.end method


# virtual methods
.method public apply(Lcom/android/systemui/lockstar/model/DynamicLockData;Lcom/android/systemui/lockstar/model/DynamicLockData;)V
    .locals 5

    const-string v0, "PluginLockClock"

    const-string v1, "apply()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/android/systemui/lockstar/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;->getClockInfo()Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/lockstar/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;->getClockInfo()Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->getClockType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/lockstar/component/PluginLockClock;->mClockType:I

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->getGravity()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/lockstar/component/PluginLockClock;->mClockGravity:I

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->getPaddingStart()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/lockstar/component/PluginLockClock;->mClockPaddingStart:I

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->getPaddingEnd()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/lockstar/component/PluginLockClock;->mClockPaddingEnd:I

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->getRecoverType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/lockstar/component/PluginLockClock;->mClockRecoverType:I

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/component/PluginLockClock;->getClockBackupValue()I

    move-result v1

    const-string v2, "PluginLockClock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apply() backupClock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/lockstar/component/PluginLockClock;->mClockCallback:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;

    invoke-virtual {p0, v2}, Lcom/android/systemui/lockstar/component/PluginLockClock;->registerClockCallback(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;)V

    iget v2, p0, Lcom/android/systemui/lockstar/component/PluginLockClock;->mClockType:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/lockstar/component/PluginLockClock;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getClockType()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/lockstar/component/PluginLockClock;->setClockBackupValue(I)V

    :cond_2
    return-void
.end method

.method public getClockGravity()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/lockstar/component/PluginLockClock;->mClockGravity:I

    return v0
.end method

.method public getClockPaddingEnd()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/lockstar/component/PluginLockClock;->mClockPaddingEnd:I

    return v0
.end method

.method public getClockPaddingStart()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/lockstar/component/PluginLockClock;->mClockPaddingStart:I

    return v0
.end method

.method public getClockType()I
    .locals 3

    const-string v0, "PluginLockClock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClockType() type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/lockstar/component/PluginLockClock;->mClockType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/lockstar/component/PluginLockClock;->mClockType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/lockstar/component/PluginLockClock;->mClockType:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/component/PluginLockClock;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getClockType()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isClockEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/component/PluginLockClock;->getClockBackupValue()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public recover()V
    .locals 3

    const-string v0, "PluginLockClock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recover() mClockRecoverType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/lockstar/component/PluginLockClock;->mClockRecoverType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/lockstar/component/PluginLockClock;->mClockType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/lockstar/component/PluginLockClock;->mClockRecoverType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/lockstar/component/PluginLockClock;->setClockBackupValue(I)V

    :cond_0
    return-void
.end method

.method public reset(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/PluginLockClock;->mClockCallback:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;

    invoke-virtual {p0, v0}, Lcom/android/systemui/lockstar/component/PluginLockClock;->unregisterClockCallback(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;)V

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/component/PluginLockClock;->getClockBackupValue()I

    move-result v0

    const-string v1, "PluginLockClock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reset() backupClockType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/systemui/lockstar/component/PluginLockClock;->mClockType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-eq v0, v2, :cond_0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/lockstar/component/PluginLockClock;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    invoke-virtual {v1, v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->setClockType(I)Z

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/lockstar/component/PluginLockClock;->setClockBackupValue(I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic setInstanceState(Lcom/android/systemui/lockstar/PluginLockInstanceState;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->setInstanceState(Lcom/android/systemui/lockstar/PluginLockInstanceState;)V

    return-void
.end method
