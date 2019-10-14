.class public Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;
.super Ljava/lang/Object;
.source "ManufacturerData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;,
        Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;
    }
.end annotation


# instance fields
.field public final MANUFACTURER_DEVICE_ID_GEAR:I

.field public final MANUFACTURER_DEVICE_ID_GEAR_360:I

.field public final MANUFACTURER_DEVICE_ID_GEAR_VR_CONTROLLER:I

.field public final MANUFACTURER_DEVICE_ID_GLOBE:I

.field public final MANUFACTURER_DEVICE_ID_WEARABLE_MAX:I

.field public final MANUFACTURER_DEVICE_ID_WEARABLE_MIN:I

.field public final MANUFACTURER_DEVICE_TYPE_BLE:B

.field public final MANUFACTURER_DEVICE_TYPE_CLASSIC:B

.field public final MANUFACTURER_DEVICE_TYPE_DEFAULT:B

.field public final MANUFACTURER_DEVICE_TYPE_HF_ROLE_SUPPORTED:B

.field public final MANUFACTURER_DEVICE_TYPE_HIDDEN_CONDITION:B

.field public final MANUFACTURER_DEVICE_TYPE_NONE:B

.field public final MANUFACTURER_DEVICE_TYPE_SLD_L:B

.field public final MANUFACTURER_DEVICE_TYPE_SLD_R:B

.field private MANUFACTURER_LENGTH_SS_LE_ASSOCIATED_SERVICE_DATA:I

.field private MANUFACTURER_LENGTH_SS_LE_CONNECTIVITY:I

.field private MANUFACTURER_LENGTH_SS_LE_DEVICE:I

.field private MANUFACTURER_LENGTH_SS_LE_PACKET_NUMBER:I

.field private MANUFACTURER_LENGTH_SS_LE_PROXIMITY:I

.field private MANUFACTURER_OFFSET_OLD_DEVICE_ID:I

.field private MANUFACTURER_OFFSET_OLD_DEVICE_TYPE:I

.field private MANUFACTURER_OFFSET_OLD_SERVICE_ID:I

.field private MANUFACTURER_OFFSET_SS_ASSOCIATED_SERVICE_ID:I

.field private MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

.field private MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

.field private MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_TYPE:I

.field private MANUFACTURER_OFFSET_SS_BREDR_DEVICE_CONTACT_CRC:I

.field private MANUFACTURER_OFFSET_SS_BREDR_DEVICE_CONTACT_HASH:I

.field private MANUFACTURER_OFFSET_SS_BREDR_DEVICE_ICON:I

.field private MANUFACTURER_OFFSET_SS_BREDR_DEVICE_TYPE:I

.field private MANUFACTURER_OFFSET_SS_BREDR_PROXIMITY_INFO:I

.field private MANUFACTURER_OFFSET_SS_BREDR_PROXIMITY_TYPE:I

.field private MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_CONTACT_CRC:I

.field private MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

.field private MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_TYPE:I

.field private MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_EXTRA:I

.field private MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

.field private MANUFACTURER_OFFSET_SS_LE_CONNECTIVITY_TYPE:I

.field private MANUFACTURER_OFFSET_SS_LE_DEVICE_CONTACT_HASH:I

.field private MANUFACTURER_OFFSET_SS_LE_DEVICE_ICON:I

.field private MANUFACTURER_OFFSET_SS_LE_DEVICE_TYPE:I

.field private MANUFACTURER_OFFSET_SS_LE_FEATURES:I

.field private MANUFACTURER_OFFSET_SS_LE_PACKET_NUMBER:I

.field private MANUFACTURER_OFFSET_SS_LE_PROXIMITY_INFO:I

.field private MANUFACTURER_OFFSET_SS_LE_PROXIMITY_TYPE:I

.field private MANUFACTURER_OFFSET_SS_SERVICE_ID:I

.field private final MANUFACTURER_SS_LE_ASSOCIATED_SERVICE_DATA_FIELD:B

.field private final MANUFACTURER_SS_LE_CONNECTIVITY_FIELD:B

.field private final MANUFACTURER_SS_LE_DEVICE_FIELD:B

.field private final MANUFACTURER_SS_LE_PACKET_NUMBER_FIELD:B

.field private final MANUFACTURER_SS_LE_PROXIMITY_FIELD:B

.field public final MANUFACTURER_TYPE_DEFAULT:I

.field public final MANUFACTURER_TYPE_OLD:I

.field public final MANUFACTURER_TYPE_SS_BREDR:I

.field public final MANUFACTURER_TYPE_SS_LE:I

.field private mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

.field private mManufacturerRawData:[B

.field private mManufacturerType:I

.field private mSSdevice:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;


# direct methods
.method public constructor <init>([B)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_TYPE_DEFAULT:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_TYPE_OLD:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_TYPE_SS_BREDR:I

    const/4 v3, 0x3

    iput v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_TYPE_SS_LE:I

    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_ID_GEAR:I

    const/16 v4, 0x90

    iput v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_ID_WEARABLE_MIN:I

    const/16 v4, 0xfb

    iput v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_ID_GEAR_VR_CONTROLLER:I

    const/16 v4, 0xfe

    iput v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_ID_GEAR_360:I

    const/16 v4, 0xdb

    iput v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_ID_GLOBE:I

    const/16 v4, 0xff

    iput v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_ID_WEARABLE_MAX:I

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_TYPE_DEFAULT:B

    iput-byte v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_TYPE_CLASSIC:B

    iput-byte v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_TYPE_BLE:B

    iput-byte v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_TYPE_SLD_L:B

    const/4 v4, 0x4

    iput-byte v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_TYPE_SLD_R:B

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_TYPE_NONE:B

    iput-byte v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_TYPE_HIDDEN_CONDITION:B

    iput-byte v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_TYPE_HF_ROLE_SUPPORTED:B

    const/4 v5, 0x5

    iput v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_OLD_SERVICE_ID:I

    const/4 v6, 0x7

    iput v6, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_OLD_DEVICE_ID:I

    const/16 v7, 0xa

    iput v7, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_OLD_DEVICE_TYPE:I

    iput v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_SERVICE_ID:I

    iput v6, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_ASSOCIATED_SERVICE_ID:I

    const/16 v6, 0x8

    iput v6, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_PROXIMITY_TYPE:I

    const/16 v8, 0x9

    iput v8, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_PROXIMITY_INFO:I

    iput v7, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_DEVICE_TYPE:I

    const/16 v7, 0xb

    iput v7, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_DEVICE_ICON:I

    const/16 v7, 0xc

    iput v7, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_DEVICE_CONTACT_HASH:I

    const/16 v7, 0xf

    iput v7, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_DEVICE_CONTACT_CRC:I

    const/16 v7, 0x1f

    iput v7, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

    iput v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_TYPE:I

    iput v6, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    iget v7, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    iput v7, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_PACKET_NUMBER:I

    iget v7, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    iput v7, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_PROXIMITY_TYPE:I

    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_PROXIMITY_INFO:I

    iget v7, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    iput v7, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_TYPE:I

    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_ICON:I

    iput v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_CONTACT_HASH:I

    iget v7, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    iput v7, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_CONNECTIVITY_TYPE:I

    iget v7, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    iput v7, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

    iput v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_TYPE:I

    iput v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_EXTRA:I

    iput v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_CONTACT_CRC:I

    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_PACKET_NUMBER:I

    iput v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_PROXIMITY:I

    const/4 v3, 0x6

    iput v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_DEVICE:I

    const/16 v3, 0x12

    iput v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_CONNECTIVITY:I

    iput v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_ASSOCIATED_SERVICE_DATA:I

    iput-byte v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_SS_LE_PACKET_NUMBER_FIELD:B

    iput-byte v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_SS_LE_PROXIMITY_FIELD:B

    iput-byte v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_SS_LE_DEVICE_FIELD:B

    iput-byte v6, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_SS_LE_CONNECTIVITY_FIELD:B

    const/16 v1, 0x10

    iput-byte v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_SS_LE_ASSOCIATED_SERVICE_DATA_FIELD:B

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-direct {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;-><init>(Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;)V

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;

    invoke-direct {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;-><init>(Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;)V

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mSSdevice:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->updateDeviceInfo([B)V

    return-void
.end method

.method private setBluetoothType([B)V
    .locals 4

    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    const/16 v1, 0xff

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    iget v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_TYPE:I

    add-int/2addr v1, v2

    aget-byte v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setBluetoothType(B)V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    aget-byte v0, p1, v0

    and-int/2addr v0, v1

    if-lez v0, :cond_1

    array-length v1, p1

    iget v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    add-int/2addr v2, v0

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    iget v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_TYPE:I

    add-int/2addr v2, v3

    aget-byte v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setBluetoothType(B)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceId()[B

    move-result-object v0

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/2addr v2, v1

    const/16 v3, 0x90

    if-lt v2, v3, :cond_0

    if-gt v2, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    array-length v1, v1

    iget v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_OLD_DEVICE_TYPE:I

    if-le v1, v3, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_OLD_DEVICE_TYPE:I

    aget-byte v3, p1, v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setBluetoothType(B)V

    :cond_0
    nop

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setContactCrc([B)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_EXTRA:I

    add-int/2addr v0, v1

    aget-byte v0, p1, v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    iget v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_CONTACT_CRC:I

    add-int/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setContactCrc([BI)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_DEVICE_CONTACT_CRC:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setContactCrc([BI)V

    nop

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setContactHash([B)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_TYPE:I

    iget v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_CONTACT_HASH:I

    add-int/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setContactHash([BI)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_DEVICE_CONTACT_HASH:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setContactHash([BI)V

    nop

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setDeviceCategory([B)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_TYPE:I

    aget-byte v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setDeviceCategory(B)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_DEVICE_TYPE:I

    aget-byte v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setDeviceCategory(B)V

    nop

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setDeviceCategoryPrefix([B)V
    .locals 7

    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mSSdevice:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-static {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->access$000(Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;)B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->getCategoryPrefix(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setPrefixName(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_1
    const-string v0, ""

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    aget-byte v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setPrefixName(Ljava/lang/String;)V

    return-void

    :cond_0
    iget v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    array-length v3, p1

    if-le v3, v2, :cond_5

    aget-byte v3, p1, v2

    const/16 v4, 0x5b

    if-eq v3, v4, :cond_1

    goto :goto_2

    :cond_1
    array-length v3, p1

    sub-int/2addr v3, v2

    new-array v3, v3, [B

    const/4 v4, 0x0

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_4

    add-int v5, v4, v2

    aget-byte v5, p1, v5

    aput-byte v5, v3, v4

    aget-byte v5, v3, v4

    const/16 v6, 0x5d

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v5, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setPrefixName(Ljava/lang/String;)V

    return-void

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v4, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setPrefixName(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v3, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setPrefixName(Ljava/lang/String;)V

    return-void

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setDeviceIconIndex([B)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_TYPE:I

    iget v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_ICON:I

    add-int/2addr v1, v2

    aget-byte v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setDeviceIconIndex(B)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_DEVICE_ICON:I

    aget-byte v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setDeviceIconIndex(B)V

    nop

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setDeviceId([B)V
    .locals 4

    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    iget v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

    add-int/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setDeviceId([BI)V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    if-lez v0, :cond_0

    array-length v1, p1

    iget v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    add-int/2addr v2, v0

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    iget v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

    add-int/2addr v2, v3

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setDeviceId([BI)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_OLD_DEVICE_ID:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setDeviceId([BI)V

    nop

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setManufacturerRawData([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    return-void
.end method

.method private setManufacturerType([B)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    array-length v1, p1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_OLD_SERVICE_ID:I

    aget-byte v1, p1, v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_OLD_SERVICE_ID:I

    add-int/2addr v1, v4

    aget-byte v1, p1, v1

    if-ne v1, v3, :cond_1

    iput v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    goto/16 :goto_2

    :cond_1
    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_SERVICE_ID:I

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_ASSOCIATED_SERVICE_ID:I

    aget-byte v1, p1, v1

    if-nez v1, :cond_2

    iput v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    goto :goto_2

    :cond_2
    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_SERVICE_ID:I

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_7

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_ASSOCIATED_SERVICE_ID:I

    aget-byte v1, p1, v1

    if-ne v1, v3, :cond_7

    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    aget-byte v1, p1, v1

    iget v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    add-int/2addr v2, v4

    nop

    :goto_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_6

    shl-int v3, v4, v0

    int-to-byte v3, v3

    and-int v5, v1, v3

    int-to-byte v5, v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_4

    const/16 v6, 0x10

    if-eq v5, v6, :cond_3

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iput v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_PROXIMITY_TYPE:I

    iget v6, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_PROXIMITY:I

    add-int/2addr v2, v6

    goto :goto_1

    :pswitch_1
    iput v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_PACKET_NUMBER:I

    iget v6, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_PACKET_NUMBER:I

    add-int/2addr v2, v6

    goto :goto_1

    :cond_3
    iput v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    iget v6, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    aget-byte v6, p1, v6

    add-int/2addr v6, v4

    iput v6, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_ASSOCIATED_SERVICE_DATA:I

    iget v6, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_ASSOCIATED_SERVICE_DATA:I

    add-int/2addr v2, v6

    goto :goto_1

    :cond_4
    iput v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_CONNECTIVITY_TYPE:I

    iget v6, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_CONNECTIVITY:I

    add-int/2addr v2, v6

    goto :goto_1

    :cond_5
    iput v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_TYPE:I

    iget v6, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_DEVICE:I

    add-int/2addr v2, v6

    nop

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    goto :goto_2

    :cond_7
    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    :goto_2
    return-void

    :cond_8
    :goto_3
    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setTxPower([B)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setTxPower(I)V

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_PROXIMITY_TYPE:I

    aget-byte v0, p1, v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_PROXIMITY_TYPE:I

    iget v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_PROXIMITY_INFO:I

    add-int/2addr v1, v2

    aget-byte v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setTxPower(I)V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_PROXIMITY_TYPE:I

    aget-byte v0, p1, v0

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_PROXIMITY_INFO:I

    aget-byte v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setTxPower(I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public byteToString([B)Ljava/lang/String;
    .locals 7

    const-string v0, "0123456789abcdef"

    if-nez p1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    array-length v3, p1

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-byte v4, p1, v3

    const-string v5, "0123456789abcdef"

    and-int/lit16 v6, v4, 0xf0

    shr-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "0123456789abcdef"

    and-int/lit8 v6, v4, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public describe()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ManufacturerType] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", [TxPower] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getTxPower()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", [DeviceCategory] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceCategory()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", [DeviceIconIndex] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceIconIndex()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", [DevicePrefix] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getPrefixName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", [Contact] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getContactHash()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->byteToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getContactCrc()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->byteToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", [Device ID] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceId()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->byteToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", [BT Type] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getBluetoothType()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getBluetoothType()B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getBluetoothType()B

    move-result v0

    return v0
.end method

.method public getContactCrc()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getContactCrc()[B

    move-result-object v0

    return-object v0
.end method

.method public getContactHash()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getContactHash()[B

    move-result-object v0

    return-object v0
.end method

.method public getDeviceCategory()B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceCategory()B

    move-result v0

    return v0
.end method

.method public getDeviceIcon()I
    .locals 4

    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mSSdevice:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceCategory()B

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceIconIndex()B

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->getDeviceIcon(BB)I

    move-result v0

    return v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getDeviceId()[B

    move-result-object v0

    aget-byte v2, v0, v1

    if-nez v2, :cond_2

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xfb

    if-ne v2, v3, :cond_0

    sget v1, Lcom/android/settingslib/R$drawable;->list_ic_vr_controller:I

    return v1

    :cond_0
    const/16 v3, 0xfe

    if-eq v2, v3, :cond_1

    const/16 v3, 0xdb

    if-ne v2, v3, :cond_2

    :cond_1
    sget v1, Lcom/android/settingslib/R$drawable;->list_ic_gear_camera:I

    return v1

    :cond_2
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getDeviceId()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceId()[B

    move-result-object v0

    return-object v0
.end method

.method public getManufacturerRawData()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    return-object v0
.end method

.method public getManufacturerType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    return v0
.end method

.method public getPrefixName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getPrefixName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSSManufacturerType()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportFeature(B)Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    aget-byte v0, v0, v1

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateDeviceInfo([B)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setManufacturerRawData([B)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setManufacturerType([B)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setTxPower([B)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setDeviceCategory([B)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setDeviceIconIndex([B)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setDeviceCategoryPrefix([B)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setContactHash([B)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setContactCrc([B)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setDeviceId([B)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setBluetoothType([B)V

    sget-boolean v0, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ManufacturerData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDeviceInfo :: describe data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->describe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
