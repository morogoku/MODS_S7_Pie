.class final enum Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;
.super Ljava/lang/Enum;
.source "ImmersiveController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

.field public static final enum ATTACHED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

.field public static final enum BAR_MODE_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

.field public static final enum BUTTONS_VISIBILITY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

.field public static final enum BUTTON_ORDER_SETTING_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

.field public static final enum CONFIGURATION_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

.field public static final enum DARK_INTENSITY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

.field public static final enum DETACHED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

.field public static final enum ENTRY:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

.field public static final enum EXIT:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

.field public static final enum FLOATING_BUTTON_VISIBILITY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

.field public static final enum GESTURE_DISABLED_BY_POLICY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

.field public static final enum GESTURE_HINT_SETTING_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

.field public static final enum GESTURE_STYLE_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

.field public static final enum GESTURE_WHILE_HIDDEN_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

.field public static final enum HIDE_BAR_SETTING_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

.field public static final enum HIDE_ENABLED_SETTING_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

.field public static final enum KEYGUARD_STATE_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

.field public static final enum ONE_HAND_MODE_SETTING_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

.field public static final enum OPENTHEME_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

.field public static final enum ORIENTATION_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

.field public static final enum REQUESTED_SYSTEM_KEY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

.field public static final enum SPAY_HINT_VISIBILITY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

.field public static final enum VISIBILITY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

.field public static final enum WINDOW_STATE_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const-string v1, "ENTRY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->ENTRY:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const-string v1, "EXIT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->EXIT:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const-string v1, "VISIBILITY_CHANGED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->VISIBILITY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const-string v1, "WINDOW_STATE_CHANGED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->WINDOW_STATE_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const-string v1, "BAR_MODE_CHANGED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->BAR_MODE_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const-string v1, "BUTTONS_VISIBILITY_CHANGED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->BUTTONS_VISIBILITY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const-string v1, "BUTTON_ORDER_SETTING_CHANGED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->BUTTON_ORDER_SETTING_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const-string v1, "ORIENTATION_CHANGED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->ORIENTATION_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const-string v1, "CONFIGURATION_CHANGED"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->CONFIGURATION_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const-string v1, "OPENTHEME_CHANGED"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->OPENTHEME_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const-string v1, "GESTURE_WHILE_HIDDEN_CHANGED"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->GESTURE_WHILE_HIDDEN_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const-string v1, "GESTURE_STYLE_CHANGED"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->GESTURE_STYLE_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const-string v1, "GESTURE_HINT_SETTING_CHANGED"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->GESTURE_HINT_SETTING_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const-string v1, "HIDE_BAR_SETTING_CHANGED"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->HIDE_BAR_SETTING_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const-string v1, "HIDE_ENABLED_SETTING_CHANGED"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->HIDE_ENABLED_SETTING_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const-string v1, "DARK_INTENSITY_CHANGED"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->DARK_INTENSITY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const-string v1, "KEYGUARD_STATE_CHANGED"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->KEYGUARD_STATE_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const-string v1, "REQUESTED_SYSTEM_KEY_CHANGED"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->REQUESTED_SYSTEM_KEY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const-string v1, "ATTACHED"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->ATTACHED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const-string v1, "DETACHED"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->DETACHED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const-string v1, "SPAY_HINT_VISIBILITY_CHANGED"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->SPAY_HINT_VISIBILITY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const-string v1, "FLOATING_BUTTON_VISIBILITY_CHANGED"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->FLOATING_BUTTON_VISIBILITY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const-string v1, "GESTURE_DISABLED_BY_POLICY_CHANGED"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->GESTURE_DISABLED_BY_POLICY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const-string v1, "ONE_HAND_MODE_SETTING_CHANGED"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->ONE_HAND_MODE_SETTING_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const/16 v0, 0x18

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->ENTRY:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->EXIT:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->VISIBILITY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->WINDOW_STATE_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->BAR_MODE_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->BUTTONS_VISIBILITY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->BUTTON_ORDER_SETTING_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->ORIENTATION_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->CONFIGURATION_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->OPENTHEME_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->GESTURE_WHILE_HIDDEN_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->GESTURE_STYLE_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    aput-object v1, v0, v13

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->GESTURE_HINT_SETTING_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    aput-object v1, v0, v14

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->HIDE_BAR_SETTING_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->HIDE_ENABLED_SETTING_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->DARK_INTENSITY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->KEYGUARD_STATE_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->REQUESTED_SYSTEM_KEY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->ATTACHED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->DETACHED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->SPAY_HINT_VISIBILITY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->FLOATING_BUTTON_VISIBILITY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->GESTURE_DISABLED_BY_POLICY_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->ONE_HAND_MODE_SETTING_CHANGED:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->$VALUES:[Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->$VALUES:[Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$Event;

    return-object v0
.end method
