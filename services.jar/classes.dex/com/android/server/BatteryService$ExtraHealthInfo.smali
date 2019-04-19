.class Lcom/android/server/BatteryService$ExtraHealthInfo;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExtraHealthInfo"
.end annotation


# instance fields
.field private batteryChargeType:I

.field private batteryCurrentAvg:I

.field private batteryCurrentNow:I

.field private batteryHighVoltageCharger:Z

.field private batteryOnline:I

.field private batteryPowerSharingOnline:Z

.field private batterySWSelfDischarging:Z

.field private batterySecCurrentEvent:I

.field private batterySecEvent:I

.field private chargerOTGOnline:Z

.field private chargerPogoOnline:Z

.field final synthetic this$0:Lcom/android/server/BatteryService;

.field private wirelessPowerSharingTxEvent:I


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/BatteryService$ExtraHealthInfo;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/BatteryService$ExtraHealthInfo;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/BatteryService$ExtraHealthInfo;->chargerPogoOnline:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/BatteryService$ExtraHealthInfo;)I
    .registers 2

    iget v0, p0, Lcom/android/server/BatteryService$ExtraHealthInfo;->batteryCurrentAvg:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/BatteryService$ExtraHealthInfo;Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$ExtraHealthInfo;->copy(Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/BatteryService$ExtraHealthInfo;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/BatteryService$ExtraHealthInfo;->chargerOTGOnline:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/BatteryService$ExtraHealthInfo;)I
    .registers 2

    iget v0, p0, Lcom/android/server/BatteryService$ExtraHealthInfo;->batterySecEvent:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/BatteryService$ExtraHealthInfo;)I
    .registers 2

    iget v0, p0, Lcom/android/server/BatteryService$ExtraHealthInfo;->batteryOnline:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/BatteryService$ExtraHealthInfo;)I
    .registers 2

    iget v0, p0, Lcom/android/server/BatteryService$ExtraHealthInfo;->batterySecCurrentEvent:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/BatteryService$ExtraHealthInfo;)I
    .registers 2

    iget v0, p0, Lcom/android/server/BatteryService$ExtraHealthInfo;->wirelessPowerSharingTxEvent:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/BatteryService$ExtraHealthInfo;)I
    .registers 2

    iget v0, p0, Lcom/android/server/BatteryService$ExtraHealthInfo;->batteryChargeType:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/BatteryService$ExtraHealthInfo;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/BatteryService$ExtraHealthInfo;->batteryPowerSharingOnline:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/BatteryService$ExtraHealthInfo;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/BatteryService$ExtraHealthInfo;->batteryHighVoltageCharger:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/BatteryService$ExtraHealthInfo;)I
    .registers 2

    iget v0, p0, Lcom/android/server/BatteryService$ExtraHealthInfo;->batteryCurrentNow:I

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/BatteryService$ExtraHealthInfo;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/BatteryService$ExtraHealthInfo;->batterySWSelfDischarging:Z

    return v0
.end method

.method private copy(Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;)V
    .registers 3

    iget v0, p1, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryCurrentNow:I

    iput v0, p0, Lcom/android/server/BatteryService$ExtraHealthInfo;->batteryCurrentNow:I

    iget v0, p1, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryOnline:I

    iput v0, p0, Lcom/android/server/BatteryService$ExtraHealthInfo;->batteryOnline:I

    iget v0, p1, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryCurrentAvg:I

    iput v0, p0, Lcom/android/server/BatteryService$ExtraHealthInfo;->batteryCurrentAvg:I

    iget v0, p1, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryChargeType:I

    iput v0, p0, Lcom/android/server/BatteryService$ExtraHealthInfo;->batteryChargeType:I

    iget-boolean v0, p1, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryPowerSharingOnline:Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService$ExtraHealthInfo;->batteryPowerSharingOnline:Z

    iget-boolean v0, p1, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->chargerPogoOnline:Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService$ExtraHealthInfo;->chargerPogoOnline:Z

    iget-boolean v0, p1, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryHighVoltageCharger:Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService$ExtraHealthInfo;->batteryHighVoltageCharger:Z

    iget-boolean v0, p1, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batterySWSelfDischarging:Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService$ExtraHealthInfo;->batterySWSelfDischarging:Z

    iget v0, p1, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batterySecEvent:I

    iput v0, p0, Lcom/android/server/BatteryService$ExtraHealthInfo;->batterySecEvent:I

    iget v0, p1, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batterySecCurrentEvent:I

    iput v0, p0, Lcom/android/server/BatteryService$ExtraHealthInfo;->batterySecCurrentEvent:I

    iget-boolean v0, p1, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->chargerOTGOnline:Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService$ExtraHealthInfo;->chargerOTGOnline:Z

    iget v0, p1, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->wirelessPowerSharingTxEvent:I

    iput v0, p0, Lcom/android/server/BatteryService$ExtraHealthInfo;->wirelessPowerSharingTxEvent:I

    return-void
.end method
