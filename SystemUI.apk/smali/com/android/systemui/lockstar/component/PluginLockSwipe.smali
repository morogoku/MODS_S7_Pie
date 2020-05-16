.class public Lcom/android/systemui/lockstar/component/PluginLockSwipe;
.super Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;
.source "PluginLockSwipe.java"


# instance fields
.field private mNonSwipeMode:I

.field private mNonSwipeModeAngle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/lockstar/PluginLockInstanceState;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/lockstar/PluginLockInstanceState;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/lockstar/component/PluginLockSwipe;->mNonSwipeMode:I

    const/16 v0, 0x2d

    iput v0, p0, Lcom/android/systemui/lockstar/component/PluginLockSwipe;->mNonSwipeModeAngle:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/systemui/lockstar/model/DynamicLockData;Lcom/android/systemui/lockstar/model/DynamicLockData;)V
    .locals 2

    const-string v0, "PluginLockSwipe"

    const-string v1, "apply()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/android/systemui/lockstar/model/DynamicLockData;->getNonSwipeModeData()Lcom/android/systemui/lockstar/model/DynamicLockData$NonSwipeModeData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/lockstar/model/DynamicLockData;->getNonSwipeModeData()Lcom/android/systemui/lockstar/model/DynamicLockData$NonSwipeModeData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/lockstar/model/DynamicLockData$NonSwipeModeData;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/lockstar/model/DynamicLockData;->getNonSwipeModeData()Lcom/android/systemui/lockstar/model/DynamicLockData$NonSwipeModeData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/model/DynamicLockData$NonSwipeModeData;->getMode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/lockstar/component/PluginLockSwipe;->mNonSwipeMode:I

    invoke-virtual {p2}, Lcom/android/systemui/lockstar/model/DynamicLockData;->getNonSwipeModeData()Lcom/android/systemui/lockstar/model/DynamicLockData$NonSwipeModeData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/model/DynamicLockData$NonSwipeModeData;->getAngle()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/lockstar/component/PluginLockSwipe;->mNonSwipeModeAngle:I

    :cond_1
    return-void
.end method

.method public getNonSwipeMode()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/lockstar/component/PluginLockSwipe;->mNonSwipeMode:I

    return v0
.end method

.method public getNonSwipeModeAngle()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/lockstar/component/PluginLockSwipe;->mNonSwipeModeAngle:I

    return v0
.end method

.method public reset(Z)V
    .locals 2

    const-string v0, "PluginLockSwipe"

    const-string/jumbo v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/lockstar/component/PluginLockSwipe;->mNonSwipeMode:I

    const/16 v0, 0x2d

    iput v0, p0, Lcom/android/systemui/lockstar/component/PluginLockSwipe;->mNonSwipeModeAngle:I

    return-void
.end method

.method public bridge synthetic setInstanceState(Lcom/android/systemui/lockstar/PluginLockInstanceState;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->setInstanceState(Lcom/android/systemui/lockstar/PluginLockInstanceState;)V

    return-void
.end method
