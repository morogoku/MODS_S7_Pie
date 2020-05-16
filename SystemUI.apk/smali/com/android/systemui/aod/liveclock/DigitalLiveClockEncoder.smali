.class public Lcom/android/systemui/aod/liveclock/DigitalLiveClockEncoder;
.super Ljava/lang/Object;
.source "DigitalLiveClockEncoder.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DigitalClockEncoder.aod.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native getImageDataByDuploV32(II[BBIZZ)[B
.end method


# virtual methods
.method public getImageDataByDuploV32FromNative(Landroid/os/Bundle;)[B
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "imageWidth"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "imageHeight"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v2, "imgData"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v11

    const-string v2, "Margin"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v12

    const-string/jumbo v2, "standardColor"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string v2, "lineIterEnable"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    const-string/jumbo v2, "standardColorEnable"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    move-object/from16 v2, p0

    move v3, v1

    move v4, v10

    move-object v5, v11

    move v6, v12

    move v7, v13

    move v8, v14

    move v9, v15

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/aod/liveclock/DigitalLiveClockEncoder;->getImageDataByDuploV32(II[BBIZZ)[B

    move-result-object v2

    return-object v2
.end method
