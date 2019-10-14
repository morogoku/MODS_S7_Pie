.class public Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;
.super Ljava/lang/Object;
.source "SimpleIndicatorCarrierCrew.java"


# static fields
.field private static CACHED_VALUE_FALSE:I

.field private static CACHED_VALUE_RAW:I

.field private static CACHED_VALUE_TRUE:I


# instance fields
.field private mIsHomeCarrierDisabled:I

.field private mIsLockCarrierDisabled:I

.field private mIsPanelCarrierDisabled:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;->CACHED_VALUE_FALSE:I

    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;->CACHED_VALUE_RAW:I

    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;->CACHED_VALUE_TRUE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;->CACHED_VALUE_RAW:I

    iput v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;->mIsHomeCarrierDisabled:I

    sget v0, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;->CACHED_VALUE_RAW:I

    iput v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;->mIsLockCarrierDisabled:I

    sget v0, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;->CACHED_VALUE_RAW:I

    iput v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;->mIsPanelCarrierDisabled:I

    return-void
.end method


# virtual methods
.method public isHomeCarrierDisabled()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;->mIsHomeCarrierDisabled:I

    sget v1, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;->CACHED_VALUE_TRUE:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLockCarrierDisabled()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;->mIsLockCarrierDisabled:I

    sget v1, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;->CACHED_VALUE_TRUE:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPanelCarrierDisabled()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;->mIsPanelCarrierDisabled:I

    sget v1, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;->CACHED_VALUE_TRUE:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateAllData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "icon_blacklist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v1, "slimindicator_lock_carrier"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "slimindicator_home_carrier"

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v3, "slimindicator_panel_carrier"

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v1, :cond_0

    sget v4, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;->CACHED_VALUE_TRUE:I

    goto :goto_0

    :cond_0
    sget v4, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;->CACHED_VALUE_FALSE:I

    :goto_0
    iput v4, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;->mIsLockCarrierDisabled:I

    if-eqz v2, :cond_1

    sget v4, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;->CACHED_VALUE_TRUE:I

    goto :goto_1

    :cond_1
    sget v4, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;->CACHED_VALUE_FALSE:I

    :goto_1
    iput v4, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;->mIsHomeCarrierDisabled:I

    if-eqz v3, :cond_2

    sget v4, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;->CACHED_VALUE_TRUE:I

    goto :goto_2

    :cond_2
    sget v4, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;->CACHED_VALUE_FALSE:I

    :goto_2
    iput v4, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;->mIsPanelCarrierDisabled:I

    :cond_3
    return-void
.end method
