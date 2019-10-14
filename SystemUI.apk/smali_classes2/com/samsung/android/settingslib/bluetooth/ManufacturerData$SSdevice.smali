.class public Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;
.super Ljava/lang/Object;
.source "ManufacturerData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SSdevice"
.end annotation


# instance fields
.field public final ACCESSORY:B

.field public final AIRPURIFIER:B

.field public final AI_SPEAKER:B

.field public final AV:B

.field public final BAND:B

.field public final BD:B

.field public final CAMCORDER:B

.field public final CAMERA:B

.field public final CAR:B

.field public final CONNECT_TAG:B

.field public final COOKTOP:B

.field public final DISHWASHER:B

.field public final DRYER:B

.field public final EBOARD:B

.field public final FLOOR_AC:B

.field public final HEADPHONE:B

.field public final HOOD:B

.field public final IOT:B

.field public final KIMCHI_REFRIGERATOR:B

.field public final MICROWAVEOVEN:B

.field public final MONITOR:B

.field public final OVEN:B

.field public final PC:B

.field public final PHONE:B

.field public final PRINTER:B

.field public final RANGE:B

.field public final REFRIGERATOR:B

.field public final ROBOT_VACUUM:B

.field public final ROOM_AC:B

.field public final ROUTER:B

.field public final SIGNAGE:B

.field public final SMART_HOME:B

.field public final SPEAKER:B

.field public final STEAM_CLOSET:B

.field public final SYSTEM_AC:B

.field public final TABLET:B

.field public final TV:B

.field public final WASHER:B

.field public final WATCH:B

.field public final WEARABLE:B

.field private final mCategoryPrefixList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;)V
    .locals 43

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->this$0:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->PHONE:B

    const/4 v2, 0x2

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->TABLET:B

    const/4 v2, 0x3

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->WEARABLE:B

    const/4 v2, 0x4

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->PC:B

    const/4 v2, 0x5

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->ACCESSORY:B

    const/4 v2, 0x6

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->TV:B

    const/4 v2, 0x7

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->AV:B

    const/16 v2, 0x8

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->SIGNAGE:B

    const/16 v2, 0x9

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->REFRIGERATOR:B

    const/16 v2, 0xa

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->WASHER:B

    const/16 v2, 0xb

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->DRYER:B

    const/16 v2, 0xc

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->FLOOR_AC:B

    const/16 v2, 0xd

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->ROOM_AC:B

    const/16 v2, 0xe

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->SYSTEM_AC:B

    const/16 v2, 0xf

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->AIRPURIFIER:B

    const/16 v2, 0x10

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->OVEN:B

    const/16 v2, 0x11

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->RANGE:B

    const/16 v2, 0x12

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->ROBOT_VACUUM:B

    const/16 v2, 0x13

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->SMART_HOME:B

    const/16 v2, 0x14

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->PRINTER:B

    const/16 v2, 0x15

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->HEADPHONE:B

    const/16 v2, 0x16

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->SPEAKER:B

    const/16 v2, 0x17

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->MONITOR:B

    const/16 v2, 0x18

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->EBOARD:B

    const/16 v2, 0x19

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->IOT:B

    const/16 v2, 0x1a

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->CAMERA:B

    const/16 v2, 0x1b

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->CAMCORDER:B

    const/16 v2, 0x1c

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->COOKTOP:B

    const/16 v2, 0x1d

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->DISHWASHER:B

    const/16 v2, 0x1e

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->MICROWAVEOVEN:B

    const/16 v2, 0x1f

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->HOOD:B

    const/16 v2, 0x20

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->KIMCHI_REFRIGERATOR:B

    const/16 v2, 0x21

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->WATCH:B

    const/16 v2, 0x22

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->BAND:B

    const/16 v2, 0x23

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->ROUTER:B

    const/16 v2, 0x24

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->BD:B

    const/16 v2, 0x25

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->CONNECT_TAG:B

    const/16 v2, 0x26

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->CAR:B

    const/16 v2, 0x27

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->STEAM_CLOSET:B

    const/16 v2, 0x28

    iput-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->AI_SPEAKER:B

    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "[Phone] "

    const-string v4, "[Tablet] "

    const-string v5, "[Wearable] "

    const-string v6, "[PC] "

    const-string v7, "[Accessory] "

    const-string v8, "[TV] "

    const-string v9, "[AV] "

    const-string v10, "[Signage] "

    const-string v11, "[Refrigerator] "

    const-string v12, "[Washer] "

    const-string v13, "[Dryer] "

    const-string v14, "[Floor A/C] "

    const-string v15, "[Room A/C] "

    const-string v16, "[System A/C] "

    const-string v17, "[Air Purifier] "

    const-string v18, "[Oven] "

    const-string v19, "[Range] "

    const-string v20, "[Robot Vacuum] "

    const-string v21, "[Smart Home] "

    const-string v22, "[Printer] "

    const-string v23, "[Headphone] "

    const-string v24, "[Speaker] "

    const-string v25, "[Monitor] "

    const-string v26, "[E-Board] "

    const-string v27, "[IoT] "

    const-string v28, "[Camera] "

    const-string v29, "[Camcorder] "

    const-string v30, "[Cooktop] "

    const-string v31, "[Dish Washer] "

    const-string v32, "[Microwave Oven] "

    const-string v33, "[Hood] "

    const-string v34, "[KimchiRef] "

    const-string v35, "[Watch] "

    const-string v36, "[Band] "

    const-string v37, "[Router] "

    const-string v38, "[BD] "

    const-string v39, "[Tag] "

    const-string v40, "[Car] "

    const-string v41, "[Airdresser] "

    const-string v42, "[AI Speaker] "

    filled-new-array/range {v3 .. v42}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->mCategoryPrefixList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCategoryPrefix(B)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->mCategoryPrefixList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, p1, -0x1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->mCategoryPrefixList:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getDeviceIcon(BB)I
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    packed-switch p2, :pswitch_data_1

    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_ai_speaker:I

    return v0

    :pswitch_1
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_ai_speaker_galaxy_home_mini:I

    return v0

    :pswitch_2
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_samsung_ai_speaker:I

    return v0

    :pswitch_3
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_steam_closet:I

    return v0

    :pswitch_4
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_car:I

    return v0

    :pswitch_5
    if-eq p2, v0, :cond_0

    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_tag:I

    return v0

    :cond_0
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_connect_tag:I

    return v0

    :pswitch_6
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_blueray_player:I

    return v0

    :pswitch_7
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_router:I

    return v0

    :pswitch_8
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_band:I

    return v0

    :pswitch_9
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_wearable:I

    return v0

    :pswitch_a
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_kimchi_refrigerator:I

    return v0

    :pswitch_b
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_hood:I

    return v0

    :pswitch_c
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_microwaveoven:I

    return v0

    :pswitch_d
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_dishwasher:I

    return v0

    :pswitch_e
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_cooktop:I

    return v0

    :pswitch_f
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_camcoder:I

    return v0

    :pswitch_10
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_camera:I

    return v0

    :pswitch_11
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_samsung_connect:I

    return v0

    :pswitch_12
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_eboard:I

    return v0

    :pswitch_13
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_tv:I

    return v0

    :pswitch_14
    if-eq p2, v0, :cond_1

    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_sound_accessory_default:I

    return v0

    :cond_1
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_dlna_audio:I

    return v0

    :pswitch_15
    packed-switch p2, :pswitch_data_2

    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_headset:I

    return v0

    :pswitch_16
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_true_wireless_earbuds:I

    return v0

    :pswitch_17
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_mono_headset:I

    return v0

    :pswitch_18
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_headset:I

    return v0

    :pswitch_19
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_printer:I

    return v0

    :pswitch_1a
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_smart_home:I

    return v0

    :pswitch_1b
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_cleaner:I

    return v0

    :pswitch_1c
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_range:I

    return v0

    :pswitch_1d
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_oven:I

    return v0

    :pswitch_1e
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_air_purifier:I

    return v0

    :pswitch_1f
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_system_airconditioner:I

    return v0

    :pswitch_20
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_airconditioner:I

    return v0

    :pswitch_21
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_floor_airconditioner:I

    return v0

    :pswitch_22
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_dryer:I

    return v0

    :pswitch_23
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_washer:I

    return v0

    :pswitch_24
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_refrigerator:I

    return v0

    :pswitch_25
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_signage:I

    return v0

    :pswitch_26
    packed-switch p2, :pswitch_data_3

    :pswitch_27
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_dlna_audio:I

    return v0

    :pswitch_28
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_soundbar:I

    return v0

    :pswitch_29
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_dlna_audio:I

    return v0

    :pswitch_2a
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_av360r7:I

    return v0

    :pswitch_2b
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_soundbar:I

    return v0

    :pswitch_2c
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_tv:I

    return v0

    :pswitch_2d
    packed-switch p2, :pswitch_data_4

    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_accessory_default:I

    return v0

    :pswitch_2e
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_keyboard:I

    return v0

    :pswitch_2f
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_game_device:I

    return v0

    :pswitch_30
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_mouse:I

    return v0

    :pswitch_31
    packed-switch p2, :pswitch_data_5

    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_laptop:I

    return v0

    :pswitch_32
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_laptop:I

    return v0

    :pswitch_33
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_pc:I

    return v0

    :pswitch_34
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_wearable:I

    return v0

    :pswitch_35
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_tablet:I

    return v0

    :pswitch_36
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_mobile:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_31
        :pswitch_2d
        :pswitch_2c
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2a
        :pswitch_27
        :pswitch_27
        :pswitch_29
        :pswitch_28
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_33
        :pswitch_32
    .end packed-switch
.end method
