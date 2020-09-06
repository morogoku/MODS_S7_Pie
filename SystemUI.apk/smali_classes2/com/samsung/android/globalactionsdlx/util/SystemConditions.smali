.class public final enum Lcom/samsung/android/globalactionsdlx/util/SystemConditions;
.super Ljava/lang/Enum;
.source "SystemConditions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/globalactionsdlx/util/SystemConditions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum CAN_SET_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum GET_KEYGUARD_SHOW_STATE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum GET_MOBILE_DATA_ENABLED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum HAS_ANY_SIM:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_AIRPLANE_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_ALLOWED_SAFE_BOOT:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_ATT_FOTA_CLIENT_PACKAGE_ENABLED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_BIKE_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_BIKE_MODE_INSTALLED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_BIXBY_PACKAGE_ENABLED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_BUG_REPORT_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_CARRIRER_LOCK_PLUS_ENABLED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_COM_CONTAINER_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_CURRENT_USER_SECURE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_DESKTOP_MODE_DUAL_VIEW:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_DOMESTIC_OTA_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_DO_PROVISIONING_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_EMERGENCY_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_EMERGENCY_MODE_USER_AGREEMENT:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_ENCRYPTION_STATUS_ACTIVE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_FIRSTNET_SIM:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_FMM_LOCKED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_FOTA_AVAILABLE_FOR_GLOBALACTIONS:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_KIDS_HOME_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_LOCK_DOWN_IN_POWER_MENU:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_LOCK_NETWORK_AND_SECURITY:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_LOGOUT_ENABLED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_MISSING_PHONE_LOCK:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_MODIFYING:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_RMM_LOCKED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_SECURE_KEYGUARD:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_SHOP_DEMO:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_SIM_LOCK:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_SIM_STATE_ABSENT:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_STRONG_AUTH_FOR_LOCK_DOWN:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_SUPPORT_EMERGENCY_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_TABLET_DEVICE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_TSAFE_LOCK:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_ULTRA_POWER_SAVING_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_UPSM_ENABLED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_VALID_VERSION:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_VOICE_ASSISTANT_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum IS_WHITE_THEME:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

.field public static final enum PWD_CHANGE_ENFORCED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;


# direct methods
.method static constructor <clinit>()V
    .registers 17

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "GET_MOBILE_DATA_ENABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->GET_MOBILE_DATA_ENABLED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_ENCRYPTION_STATUS_ACTIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_ENCRYPTION_STATUS_ACTIVE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_LOGOUT_ENABLED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_LOGOUT_ENABLED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_SECURE_KEYGUARD"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_SECURE_KEYGUARD:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_CURRENT_USER_SECURE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_CURRENT_USER_SECURE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_FMM_LOCKED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_FMM_LOCKED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_CARRIRER_LOCK_PLUS_ENABLED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_CARRIRER_LOCK_PLUS_ENABLED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_RMM_LOCKED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_RMM_LOCKED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_STRONG_AUTH_FOR_LOCK_DOWN"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_STRONG_AUTH_FOR_LOCK_DOWN:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_BIKE_MODE_INSTALLED"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_BIKE_MODE_INSTALLED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_BIXBY_PACKAGE_ENABLED"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_BIXBY_PACKAGE_ENABLED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_KIDS_HOME_MODE"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_KIDS_HOME_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "CAN_SET_MODE"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->CAN_SET_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_UPSM_ENABLED"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_UPSM_ENABLED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_MODIFYING"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_MODIFYING:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_EMERGENCY_MODE"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_EMERGENCY_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_VALID_VERSION"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_VALID_VERSION:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_COM_CONTAINER_MODE"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_COM_CONTAINER_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_DO_PROVISIONING_MODE"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_DO_PROVISIONING_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "GET_KEYGUARD_SHOW_STATE"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->GET_KEYGUARD_SHOW_STATE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_BIKE_MODE"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_BIKE_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_BUG_REPORT_MODE"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_BUG_REPORT_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_MISSING_PHONE_LOCK"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_MISSING_PHONE_LOCK:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_ULTRA_POWER_SAVING_MODE"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_ULTRA_POWER_SAVING_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_SHOP_DEMO"

    const/16 v15, 0x18

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_SHOP_DEMO:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_AIRPLANE_MODE"

    const/16 v15, 0x19

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_AIRPLANE_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_LOCK_NETWORK_AND_SECURITY"

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_LOCK_NETWORK_AND_SECURITY:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_LOCK_DOWN_IN_POWER_MENU"

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_LOCK_DOWN_IN_POWER_MENU:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_EMERGENCY_MODE_USER_AGREEMENT"

    const/16 v15, 0x1c

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_EMERGENCY_MODE_USER_AGREEMENT:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_TSAFE_LOCK"

    const/16 v15, 0x1d

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_TSAFE_LOCK:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "HAS_ANY_SIM"

    const/16 v15, 0x1e

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->HAS_ANY_SIM:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_SIM_LOCK"

    const/16 v15, 0x1f

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_SIM_LOCK:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_FIRSTNET_SIM"

    const/16 v15, 0x20

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_FIRSTNET_SIM:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_ATT_FOTA_CLIENT_PACKAGE_ENABLED"

    const/16 v15, 0x21

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_ATT_FOTA_CLIENT_PACKAGE_ENABLED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_FOTA_AVAILABLE_FOR_GLOBALACTIONS"

    const/16 v15, 0x22

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_FOTA_AVAILABLE_FOR_GLOBALACTIONS:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_SIM_STATE_ABSENT"

    const/16 v15, 0x23

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_SIM_STATE_ABSENT:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_DOMESTIC_OTA_MODE"

    const/16 v15, 0x24

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_DOMESTIC_OTA_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_TABLET_DEVICE"

    const/16 v15, 0x25

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_TABLET_DEVICE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_ALLOWED_SAFE_BOOT"

    const/16 v15, 0x26

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_ALLOWED_SAFE_BOOT:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_DESKTOP_MODE_DUAL_VIEW"

    const/16 v15, 0x27

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_DESKTOP_MODE_DUAL_VIEW:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_VOICE_ASSISTANT_MODE"

    const/16 v15, 0x28

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_VOICE_ASSISTANT_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_WHITE_THEME"

    const/16 v15, 0x29

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_WHITE_THEME:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "IS_SUPPORT_EMERGENCY_MODE"

    const/16 v15, 0x2a

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_SUPPORT_EMERGENCY_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const-string v1, "PWD_CHANGE_ENFORCED"

    const/16 v15, 0x2b

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->PWD_CHANGE_ENFORCED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const/16 v0, 0x2c

    new-array v0, v0, [Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->GET_MOBILE_DATA_ENABLED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_ENCRYPTION_STATUS_ACTIVE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_LOGOUT_ENABLED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_SECURE_KEYGUARD:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_CURRENT_USER_SECURE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_FMM_LOCKED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_CARRIRER_LOCK_PLUS_ENABLED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_RMM_LOCKED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_STRONG_AUTH_FOR_LOCK_DOWN:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    aput-object v1, v0, v10

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_BIKE_MODE_INSTALLED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    aput-object v1, v0, v11

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_BIXBY_PACKAGE_ENABLED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    aput-object v1, v0, v12

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_KIDS_HOME_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    aput-object v1, v0, v13

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->CAN_SET_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    aput-object v1, v0, v14

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_UPSM_ENABLED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_MODIFYING:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_EMERGENCY_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_VALID_VERSION:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_COM_CONTAINER_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_DO_PROVISIONING_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->GET_KEYGUARD_SHOW_STATE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_BIKE_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_BUG_REPORT_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_MISSING_PHONE_LOCK:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_ULTRA_POWER_SAVING_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_SHOP_DEMO:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_AIRPLANE_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_LOCK_NETWORK_AND_SECURITY:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_LOCK_DOWN_IN_POWER_MENU:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_EMERGENCY_MODE_USER_AGREEMENT:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_TSAFE_LOCK:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->HAS_ANY_SIM:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_SIM_LOCK:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_FIRSTNET_SIM:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_ATT_FOTA_CLIENT_PACKAGE_ENABLED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_FOTA_AVAILABLE_FOR_GLOBALACTIONS:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_SIM_STATE_ABSENT:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_DOMESTIC_OTA_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_TABLET_DEVICE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_ALLOWED_SAFE_BOOT:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_DESKTOP_MODE_DUAL_VIEW:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_VOICE_ASSISTANT_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_WHITE_THEME:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_SUPPORT_EMERGENCY_MODE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->PWD_CHANGE_ENFORCED:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->$VALUES:[Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/globalactionsdlx/util/SystemConditions;
    .registers 2

    const-class v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/globalactionsdlx/util/SystemConditions;
    .registers 1

    sget-object v0, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->$VALUES:[Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-virtual {v0}, [Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    return-object v0
.end method
