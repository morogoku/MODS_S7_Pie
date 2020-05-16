.class Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverDrawable;
.super Lcom/android/settingslib/graph/BatteryMeterDrawableBase;
.source "BatterySaverTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/BatterySaverTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatterySaverDrawable"
.end annotation


# static fields
.field private static final MAX_BATTERY:I = 0x64


# instance fields
.field private mState:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;-><init>(Landroid/content/Context;I)V

    const/16 v0, 0x64

    invoke-super {p0, v0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->setBatteryLevel(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverDrawable;->setPowerSave(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverDrawable;->setCharging(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverDrawable;->setPowerSaveAsColorError(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverDrawable;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverDrawable;->mState:I

    return p1
.end method


# virtual methods
.method protected batteryColorForLevel(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setBatteryLevel(I)V
    .locals 0

    return-void
.end method
