.class public Lcom/android/systemui/aod/liveclock/AnalogLiveClockEncoder;
.super Ljava/lang/Object;
.source "AnalogLiveClockEncoder.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AnalogClockEncoder.aod.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native getAnalogImageDataForDreamDevice([B[BZZZ)[B
.end method


# virtual methods
.method public getAnalogImageDataForDreamDeviceFromNative(Landroid/os/Bundle;)[B
    .locals 11

    const-string v0, "in_bitstream"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "adaptive_Color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    const-string v1, "Color_hh_en"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    const-string v1, "Color_mm_en"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    const-string v1, "Color_ss_en"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move v4, v8

    move v5, v9

    move v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/aod/liveclock/AnalogLiveClockEncoder;->getAnalogImageDataForDreamDevice([B[BZZZ)[B

    move-result-object v1

    return-object v1
.end method
