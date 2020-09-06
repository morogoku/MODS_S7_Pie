.class public final Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;
.super Ljava/lang/Object;
.source "ExtHealthInfo.java"


# instance fields
.field public batteryChargeType:I

.field public batteryCurrentAverage:I

.field public batteryCurrentAvg:I

.field public batteryCurrentNow:I

.field public batteryHighVoltageCharger:I

.field public batteryOnline:I

.field public batteryPowerSharingOnline:Z

.field public batterySWSelfDischarging:Z

.field public batterySecCurrentEvent:I

.field public batterySecEvent:I

.field public chargerOTGOnline:Z

.field public chargerPogoOnline:Z

.field public final defaultHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

.field public final diskStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/health/V2_0/DiskStats;",
            ">;"
        }
    .end annotation
.end field

.field public final storageInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/health/V2_0/StorageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public wirelessPowerSharingTxEvent:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/health/V1_0/HealthInfo;

    invoke-direct {v0}, Landroid/hardware/health/V1_0/HealthInfo;-><init>()V

    iput-object v0, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->defaultHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->diskStats:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->storageInfos:Ljava/util/ArrayList;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit16 v3, v2, 0x98

    int-to-long v5, v3

    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    :goto_24
    if-ge v4, v2, :cond_37

    new-instance v5, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;

    invoke-direct {v5}, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;-><init>()V

    mul-int/lit16 v6, v4, 0x98

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_37
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit16 v4, v1, 0x98

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    nop

    :goto_1e
    if-ge v2, v1, :cond_2f

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;

    mul-int/lit16 v5, v2, 0x98

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_2f
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;

    if-eq v2, v3, :cond_11

    return v1

    :cond_11
    move-object v2, p1

    check-cast v2, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;

    iget-object v3, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->defaultHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v4, v2, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->defaultHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    return v1

    :cond_1f
    iget v3, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryCurrentAverage:I

    iget v4, v2, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryCurrentAverage:I

    if-eq v3, v4, :cond_26

    return v1

    :cond_26
    iget v3, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryCurrentNow:I

    iget v4, v2, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryCurrentNow:I

    if-eq v3, v4, :cond_2d

    return v1

    :cond_2d
    iget v3, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryOnline:I

    iget v4, v2, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryOnline:I

    if-eq v3, v4, :cond_34

    return v1

    :cond_34
    iget v3, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryCurrentAvg:I

    iget v4, v2, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryCurrentAvg:I

    if-eq v3, v4, :cond_3b

    return v1

    :cond_3b
    iget v3, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryChargeType:I

    iget v4, v2, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryChargeType:I

    if-eq v3, v4, :cond_42

    return v1

    :cond_42
    iget-boolean v3, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryPowerSharingOnline:Z

    iget-boolean v4, v2, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryPowerSharingOnline:Z

    if-eq v3, v4, :cond_49

    return v1

    :cond_49
    iget-boolean v3, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->chargerPogoOnline:Z

    iget-boolean v4, v2, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->chargerPogoOnline:Z

    if-eq v3, v4, :cond_50

    return v1

    :cond_50
    iget v3, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryHighVoltageCharger:I

    iget v4, v2, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryHighVoltageCharger:I

    if-eq v3, v4, :cond_57

    return v1

    :cond_57
    iget-boolean v3, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batterySWSelfDischarging:Z

    iget-boolean v4, v2, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batterySWSelfDischarging:Z

    if-eq v3, v4, :cond_5e

    return v1

    :cond_5e
    iget v3, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batterySecEvent:I

    iget v4, v2, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batterySecEvent:I

    if-eq v3, v4, :cond_65

    return v1

    :cond_65
    iget v3, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batterySecCurrentEvent:I

    iget v4, v2, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batterySecCurrentEvent:I

    if-eq v3, v4, :cond_6c

    return v1

    :cond_6c
    iget-boolean v3, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->chargerOTGOnline:Z

    iget-boolean v4, v2, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->chargerOTGOnline:Z

    if-eq v3, v4, :cond_73

    return v1

    :cond_73
    iget v3, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->wirelessPowerSharingTxEvent:I

    iget v4, v2, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->wirelessPowerSharingTxEvent:I

    if-eq v3, v4, :cond_7a

    return v1

    :cond_7a
    iget-object v3, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->diskStats:Ljava/util/ArrayList;

    iget-object v4, v2, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->diskStats:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_85

    return v1

    :cond_85
    iget-object v3, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->storageInfos:Ljava/util/ArrayList;

    iget-object v4, v2, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->storageInfos:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_90

    return v1

    :cond_90
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->defaultHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryCurrentAverage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryCurrentNow:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryOnline:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryCurrentAvg:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryChargeType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryPowerSharingOnline:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->chargerPogoOnline:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryHighVoltageCharger:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batterySWSelfDischarging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batterySecEvent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batterySecCurrentEvent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->chargerOTGOnline:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->wirelessPowerSharingTxEvent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->diskStats:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->storageInfos:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    iget-object v1, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->defaultHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    const-wide/16 v11, 0x0

    add-long v2, p3, v11

    invoke-virtual {v1, v9, v10, v2, v3}, Landroid/hardware/health/V1_0/HealthInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v1, 0x48

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryCurrentAverage:I

    const-wide/16 v1, 0x4c

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryCurrentNow:I

    const-wide/16 v1, 0x50

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryOnline:I

    const-wide/16 v1, 0x54

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryCurrentAvg:I

    const-wide/16 v1, 0x58

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryChargeType:I

    const-wide/16 v1, 0x5c

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryPowerSharingOnline:Z

    const-wide/16 v1, 0x5d

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->chargerPogoOnline:Z

    const-wide/16 v1, 0x60

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryHighVoltageCharger:I

    const-wide/16 v1, 0x64

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batterySWSelfDischarging:Z

    const-wide/16 v1, 0x68

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batterySecEvent:I

    const-wide/16 v1, 0x6c

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batterySecCurrentEvent:I

    const-wide/16 v1, 0x70

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->chargerOTGOnline:Z

    const-wide/16 v1, 0x74

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->wirelessPowerSharingTxEvent:I

    const-wide/16 v1, 0x78

    add-long v3, p3, v1

    const-wide/16 v13, 0x8

    add-long/2addr v3, v13

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    mul-int/lit8 v3, v8, 0x70

    int-to-long v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    add-long v1, p3, v1

    add-long v15, v1, v11

    const/16 v17, 0x1

    move-object v1, v9

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v15

    move v11, v8

    move/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    iget-object v2, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->diskStats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v12, 0x0

    move v2, v12

    :goto_bb
    if-ge v2, v11, :cond_d0

    new-instance v3, Landroid/hardware/health/V2_0/DiskStats;

    invoke-direct {v3}, Landroid/hardware/health/V2_0/DiskStats;-><init>()V

    mul-int/lit8 v4, v2, 0x70

    int-to-long v4, v4

    invoke-virtual {v3, v9, v1, v4, v5}, Landroid/hardware/health/V2_0/DiskStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    iget-object v4, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->diskStats:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_bb

    :cond_d0
    const-wide/16 v1, 0x88

    add-long v3, p3, v1

    add-long/2addr v3, v13

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    mul-int/lit8 v3, v11, 0x30

    int-to-long v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    add-long v1, p3, v1

    const-wide/16 v7, 0x0

    add-long/2addr v7, v1

    const/4 v13, 0x1

    move-object v1, v9

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move v8, v13

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    iget-object v2, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->storageInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    nop

    :goto_f5
    move v2, v12

    if-ge v2, v11, :cond_10b

    new-instance v3, Landroid/hardware/health/V2_0/StorageInfo;

    invoke-direct {v3}, Landroid/hardware/health/V2_0/StorageInfo;-><init>()V

    mul-int/lit8 v4, v2, 0x30

    int-to-long v4, v4

    invoke-virtual {v3, v9, v1, v4, v5}, Landroid/hardware/health/V2_0/StorageInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    iget-object v4, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->storageInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v2, 0x1

    goto :goto_f5

    :cond_10b
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x98

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".defaultHealthInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->defaultHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryCurrentAverage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryCurrentAverage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryCurrentNow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryCurrentNow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryOnline = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryOnline:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryCurrentAvg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryCurrentAvg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryChargeType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryChargeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryPowerSharingOnline = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryPowerSharingOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .chargerPogoOnline = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->chargerPogoOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryHighVoltageCharger = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryHighVoltageCharger:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .batterySWSelfDischarging = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batterySWSelfDischarging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .batterySecEvent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batterySecEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .batterySecCurrentEvent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batterySecCurrentEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .chargerOTGOnline = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->chargerOTGOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .wirelessPowerSharingTxEvent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->wirelessPowerSharingTxEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .diskStats = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->diskStats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .storageInfos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->storageInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 19

    move-object v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->defaultHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    const-wide/16 v3, 0x0

    add-long v5, p2, v3

    invoke-virtual {v2, v1, v5, v6}, Landroid/hardware/health/V1_0/HealthInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v5, 0x48

    add-long v5, p2, v5

    iget v2, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryCurrentAverage:I

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v5, 0x4c

    add-long v5, p2, v5

    iget v2, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryCurrentNow:I

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v5, 0x50

    add-long v5, p2, v5

    iget v2, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryOnline:I

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v5, 0x54

    add-long v5, p2, v5

    iget v2, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryCurrentAvg:I

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v5, 0x58

    add-long v5, p2, v5

    iget v2, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryChargeType:I

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v5, 0x5c

    add-long v5, p2, v5

    iget-boolean v2, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryPowerSharingOnline:Z

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v5, 0x5d

    add-long v5, p2, v5

    iget-boolean v2, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->chargerPogoOnline:Z

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v5, 0x60

    add-long v5, p2, v5

    iget v2, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batteryHighVoltageCharger:I

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v5, 0x64

    add-long v5, p2, v5

    iget-boolean v2, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batterySWSelfDischarging:Z

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v5, 0x68

    add-long v5, p2, v5

    iget v2, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batterySecEvent:I

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v5, 0x6c

    add-long v5, p2, v5

    iget v2, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->batterySecCurrentEvent:I

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v5, 0x70

    add-long v5, p2, v5

    iget-boolean v2, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->chargerOTGOnline:Z

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v5, 0x74

    add-long v5, p2, v5

    iget v2, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->wirelessPowerSharingTxEvent:I

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    iget-object v2, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->diskStats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v5, 0x78

    add-long v7, p2, v5

    const-wide/16 v9, 0x8

    add-long/2addr v7, v9

    invoke-virtual {v1, v7, v8, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long v7, p2, v5

    const-wide/16 v11, 0xc

    add-long/2addr v7, v11

    const/4 v13, 0x0

    invoke-virtual {v1, v7, v8, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x70

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    move v8, v13

    :goto_a2
    if-ge v8, v2, :cond_b8

    iget-object v13, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->diskStats:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/health/V2_0/DiskStats;

    mul-int/lit8 v11, v8, 0x70

    int-to-long v11, v11

    invoke-virtual {v13, v7, v11, v12}, Landroid/hardware/health/V2_0/DiskStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v8, v8, 0x1

    const-wide/16 v11, 0xc

    const/4 v13, 0x0

    goto :goto_a2

    :cond_b8
    add-long v5, p2, v5

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    iget-object v2, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->storageInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v5, 0x88

    add-long v7, p2, v5

    add-long/2addr v7, v9

    invoke-virtual {v1, v7, v8, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long v7, p2, v5

    const-wide/16 v9, 0xc

    add-long/2addr v7, v9

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x30

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    nop

    :goto_dd
    move v8, v9

    if-ge v8, v2, :cond_f1

    iget-object v9, v0, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->storageInfos:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/health/V2_0/StorageInfo;

    mul-int/lit8 v10, v8, 0x30

    int-to-long v10, v10

    invoke-virtual {v9, v7, v10, v11}, Landroid/hardware/health/V2_0/StorageInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v9, v8, 0x1

    goto :goto_dd

    :cond_f1
    add-long v5, p2, v5

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x98

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
