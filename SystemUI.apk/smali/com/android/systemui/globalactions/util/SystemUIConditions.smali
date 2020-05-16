.class public final enum Lcom/android/systemui/globalactions/util/SystemUIConditions;
.super Ljava/lang/Enum;
.source "SystemUIConditions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/globalactions/util/SystemUIConditions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum GET_POWER_DIALOG_CUSTOM_ITEMS_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum GET_PROKIOSK_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_ALLOWED_SHOW_ACTIONS:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_BIXBY_PACKAGE_ENABLED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_CELLULAR_DATA_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_COM_CONTAINER_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_DO_PROVISIONING_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_ENABLE_USE_OF_PACKET_DATA:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_KIOSK_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_POWER_OFF_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_SAFE_MODE_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_SETTINGS_CHANGES_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_STATUSBAR_EXPAND_DISABLED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_WHITE_THEME:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum PWD_CHANGE_ENFORCED:Lcom/android/systemui/globalactions/util/SystemUIConditions;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v1, "IS_CLEAR_COVER_CLOSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v1, "IS_WHITE_THEME"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_WHITE_THEME:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v1, "IS_SETTINGS_CHANGES_ALLOWED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_SETTINGS_CHANGES_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v1, "IS_CELLULAR_DATA_ALLOWED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CELLULAR_DATA_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v1, "IS_POWER_OFF_ALLOWED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_POWER_OFF_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v1, "IS_SAFE_MODE_ALLOWED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_SAFE_MODE_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v1, "IS_ENABLE_USE_OF_PACKET_DATA"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_ENABLE_USE_OF_PACKET_DATA:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v1, "IS_COM_CONTAINER_MODE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_COM_CONTAINER_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v1, "GET_PROKIOSK_STATE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_PROKIOSK_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v1, "GET_POWER_DIALOG_CUSTOM_ITEMS_STATE"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_POWER_DIALOG_CUSTOM_ITEMS_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v1, "IS_ALLOWED_SHOW_ACTIONS"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_ALLOWED_SHOW_ACTIONS:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v1, "IS_KIOSK_MODE"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_KIOSK_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v1, "IS_DO_PROVISIONING_MODE"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_DO_PROVISIONING_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v1, "IS_STATUSBAR_EXPAND_DISABLED"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_STATUSBAR_EXPAND_DISABLED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v1, "IS_BIXBY_PACKAGE_ENABLED"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_BIXBY_PACKAGE_ENABLED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v1, "PWD_CHANGE_ENFORCED"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->PWD_CHANGE_ENFORCED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/systemui/globalactions/util/SystemUIConditions;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_WHITE_THEME:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_SETTINGS_CHANGES_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CELLULAR_DATA_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_POWER_OFF_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_SAFE_MODE_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_ENABLE_USE_OF_PACKET_DATA:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_COM_CONTAINER_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_PROKIOSK_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_POWER_DIALOG_CUSTOM_ITEMS_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_ALLOWED_SHOW_ACTIONS:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_KIOSK_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    aput-object v1, v0, v13

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_DO_PROVISIONING_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    aput-object v1, v0, v14

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_STATUSBAR_EXPAND_DISABLED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_BIXBY_PACKAGE_ENABLED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->PWD_CHANGE_ENFORCED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->$VALUES:[Lcom/android/systemui/globalactions/util/SystemUIConditions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/globalactions/util/SystemUIConditions;
    .locals 1

    const-class v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/globalactions/util/SystemUIConditions;
    .locals 1

    sget-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->$VALUES:[Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v0}, [Lcom/android/systemui/globalactions/util/SystemUIConditions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/globalactions/util/SystemUIConditions;

    return-object v0
.end method
