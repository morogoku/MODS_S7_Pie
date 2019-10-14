.class Lcom/android/systemui/statusbar/policy/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field static final CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final DATA_ACTIVITY_5G_VZW:[I

.field static final DATA_ACTIVITY_ATT:[I

.field static final DATA_ACTIVITY_DEFAULT:[I

.field static final DATA_ACTIVITY_FIVE_G_ATT:[I

.field static final DATA_ACTIVITY_LTE_PLUS:[I

.field static final DATA_ACTIVITY_LTE_PLUS_KT:[I

.field static final DATA_ACTIVITY_SIMPLIFIED:[I

.field static final DATA_ACTIVITY_TMO:[I

.field static final DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final DC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FIVE_G_ATT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FIVE_G_VZW:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_ATT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_LTE_LTN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_USCC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_VZW:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_HALF_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_HALF_G_AMX:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_HALF_G_PLUS_AMX:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_ATT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_PLUS_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final SIMPLIFIED_E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final SIMPLIFIED_FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final SIMPLIFIED_FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final SIMPLIFIED_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final SIMPLIFIED_H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final SIMPLIFIED_H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final SIMPLIFIED_ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final SIMPLIFIED_THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final SIMPLIFIED_THREE_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final SIMPLIFIED_TWO_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_5_LEVEL_SIGNAL_STRENGTH_SIMPLIFIED:[[I

.field static final TELEPHONY_NO_NETWORK:I

.field static final TELEPHONY_PURE_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final THREE_G_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final THREE_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final THREE_G_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final TWO_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final TWO_G_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 33

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonyNoServiceIcon()I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    const/4 v0, 0x2

    new-array v1, v0, [[I

    const/4 v2, 0x5

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    new-array v1, v0, [[I

    const/4 v2, 0x6

    new-array v5, v2, [I

    fill-array-data v5, :array_2

    aput-object v5, v1, v4

    new-array v5, v2, [I

    fill-array-data v5, :array_3

    aput-object v5, v1, v3

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

    new-array v1, v0, [[I

    new-array v5, v2, [I

    fill-array-data v5, :array_4

    aput-object v5, v1, v4

    new-array v5, v2, [I

    fill-array-data v5, :array_5

    aput-object v5, v1, v3

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_5_LEVEL_SIGNAL_STRENGTH_SIMPLIFIED:[[I

    new-array v0, v0, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_PURE_SIGNAL_STRENGTH:[[I

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "CARRIER_NETWORK_CHANGE"

    sget-object v9, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const v15, 0x7f12022b

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v17}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v19, "3G"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v20

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v22

    sget v25, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v27, v1, v4

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const v28, 0x7f12026a

    const v29, 0x7f08064b

    const/16 v30, 0x1

    const v31, 0x7f0806c1

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v31}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "WFC"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v7

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v9

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const/4 v15, 0x0

    const/16 v18, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v18}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v20, "Unknown"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v21

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v23

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v28, v1, v4

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const v32, 0x7f0806ce

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v32}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "E"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v7

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v9

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f12026f

    const v16, 0x7f080661

    const v18, 0x7f0806c7

    move-object v5, v0

    invoke-direct/range {v5 .. v18}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v20, "1X"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v21

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v23

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v28, v1, v4

    const v29, 0x7f120267

    const v30, 0x7f080648

    const/16 v31, 0x1

    const v32, 0x7f0806bf

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v32}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "G"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v7

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v9

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f12027c

    const v16, 0x7f080662

    const v18, 0x7f0806c8

    move-object v5, v0

    invoke-direct/range {v5 .. v18}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v20, "H"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v21

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v23

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v28, v1, v4

    const v29, 0x7f12027d

    const v30, 0x7f080664

    const/16 v31, 0x0

    const v32, 0x7f0806c9

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v32}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "H_Plus"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v7

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v9

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f12027d

    const v16, 0x7f080665

    const v18, 0x7f0806ca

    move-object v5, v0

    invoke-direct/range {v5 .. v18}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v20, "4G"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v21

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v23

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v28, v1, v4

    const v29, 0x7f12026b

    const v30, 0x7f080651

    const/16 v31, 0x1

    const v32, 0x7f0806c4

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v32}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "4G+"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v7

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v9

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f12026c

    const v16, 0x7f080654

    const/16 v17, 0x1

    const v18, 0x7f0806c5

    move-object v5, v0

    invoke-direct/range {v5 .. v18}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v20, "LTE"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v21

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v23

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v28, v1, v4

    const v29, 0x7f12027e

    const v30, 0x7f080667

    const v32, 0x7f0806cb

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v32}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "LTE+"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v7

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v9

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f12027f

    const v16, 0x7f08066a

    const v18, 0x7f0806cd

    move-object v5, v0

    invoke-direct/range {v5 .. v18}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v20, "4.5G"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v21

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v23

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v28, v1, v4

    const v29, 0x7f12026b

    const v30, 0x7f080650

    const v32, 0x7f0806c3

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v32}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_HALF_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "DC"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v7

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v9

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f120268

    const v16, 0x7f080660

    const/16 v17, 0x0

    const v18, 0x7f0806c6

    move-object v5, v0

    invoke-direct/range {v5 .. v18}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v20, "4G_LTE_LTN"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v21

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v23

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v28, v1, v4

    const v29, 0x7f12027e

    const v30, 0x7f080653

    const/16 v31, 0x0

    const v32, 0x7f080691

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v32}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_LTE_LTN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "4G_ATT"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v7

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v9

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f12026b

    const v16, 0x7f080652

    const v18, 0x7f0806c4

    move-object v5, v0

    invoke-direct/range {v5 .. v18}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_ATT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v20, "LTE_ATT"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v21

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v23

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v28, v1, v4

    const v30, 0x7f080668

    const v32, 0x7f0806cb

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v32}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_ATT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "5G_ATT"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v7

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v9

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f12027e

    const v16, 0x7f080659

    const v18, 0x7f0806cb

    move-object v5, v0

    invoke-direct/range {v5 .. v18}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_ATT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v20, "3G_TMO"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v21

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v23

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v28, v1, v4

    const v29, 0x7f12026a

    const v30, 0x7f08064f

    const v32, 0x7f0806c1

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v32}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "4G_TMO"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v7

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v9

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f12026b

    const v16, 0x7f080655

    const v18, 0x7f0806c4

    move-object v5, v0

    invoke-direct/range {v5 .. v18}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v20, "LTE_TMO"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v21

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v23

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v28, v1, v4

    const v29, 0x7f12027e

    const v30, 0x7f08066d

    const v32, 0x7f0806cb

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v32}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "4G_VZW"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v7

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v9

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v16, 0x7f080657

    move-object v5, v0

    invoke-direct/range {v5 .. v18}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_VZW:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v20, "5G"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v21

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v23

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v28, v1, v4

    const v29, 0x7f12026d

    const v30, 0x7f080658

    const/16 v31, 0x1

    const v32, 0x7f0806c4

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v32}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_VZW:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "4G_USCC"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v7

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v9

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v16, 0x7f080656

    move-object v5, v0

    invoke-direct/range {v5 .. v18}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_USCC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v20, "3G_Plus"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v21

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v23

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v28, v1, v4

    const v29, 0x7f12026a

    const v30, 0x7f08064d

    const/16 v31, 0x0

    const v32, 0x7f0806c2

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v32}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "2G"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v7

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v9

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f12026e

    const v16, 0x7f080649

    const v18, 0x7f0806c0

    move-object v5, v0

    invoke-direct/range {v5 .. v18}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TWO_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v20, "2G_KT"

    sget-object v21, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v23, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v28, v1, v4

    const v29, 0x7f12027c

    const v30, 0x7f08064a

    const v32, 0x7f0806c8

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v32}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TWO_G_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "3G_KT"

    sget-object v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v9, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f12026a

    const v16, 0x7f08064c

    const v18, 0x7f0806c1

    move-object v5, v0

    invoke-direct/range {v5 .. v18}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v20, "LTE_KT"

    sget-object v21, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v23, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v28, v1, v4

    const v29, 0x7f12027e

    const v30, 0x7f080669

    const v32, 0x7f0806cb

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v32}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "LTE_Plus_KT"

    sget-object v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v9, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f12027e

    const v16, 0x7f08066b

    const/16 v17, 0x1

    const v18, 0x7f0806cd

    move-object v5, v0

    invoke-direct/range {v5 .. v18}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v20, "4.5G_AMX"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v21

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v23

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v28, v1, v4

    const v29, 0x7f12026b

    const v30, 0x7f08068f

    const/16 v31, 0x1

    const v32, 0x7f0806c3

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v32}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_HALF_G_AMX:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "4.5G_Plus_AMX"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v7

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v9

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f12026b

    const v16, 0x7f080690

    const v18, 0x7f0806c3

    move-object v5, v0

    invoke-direct/range {v5 .. v18}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_HALF_G_PLUS_AMX:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v20, "DataDisabled"

    sget-object v23, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v28, v1, v4

    const/16 v21, 0x0

    const/16 v26, 0x0

    const v29, 0x7f12022f

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v31}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "E"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v7

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v9

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f12026f

    const v16, 0x7f08067b

    const/16 v17, 0x0

    const v18, 0x7f0806c7

    move-object v5, v0

    invoke-direct/range {v5 .. v18}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->SIMPLIFIED_E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v20, "1X"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v21

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v23

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v28, v1, v4

    const v29, 0x7f12026e

    const v30, 0x7f080675

    const/16 v31, 0x1

    const v32, 0x7f0806bf

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v32}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->SIMPLIFIED_ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "G"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v7

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v9

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f12027c

    const v16, 0x7f08067c

    const v18, 0x7f0806c8

    move-object v5, v0

    invoke-direct/range {v5 .. v18}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->SIMPLIFIED_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v20, "2G"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v21

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v23

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v28, v1, v4

    const v30, 0x7f080676

    const/16 v31, 0x0

    const v32, 0x7f0806c0

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v32}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->SIMPLIFIED_TWO_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "3G"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v7

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v9

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f12026a

    const v16, 0x7f080677

    const/16 v17, 0x1

    const v18, 0x7f0806c1

    move-object v5, v0

    invoke-direct/range {v5 .. v18}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->SIMPLIFIED_THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v20, "3G_Plus"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v21

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v23

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v28, v1, v4

    const v29, 0x7f12026a

    const v30, 0x7f080678

    const v32, 0x7f0806c2

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v32}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->SIMPLIFIED_THREE_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "H"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v7

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v9

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f120268

    const v16, 0x7f08067d

    const/16 v17, 0x0

    const v18, 0x7f0806c9

    move-object v5, v0

    invoke-direct/range {v5 .. v18}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->SIMPLIFIED_H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v20, "H_Plus"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v21

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v23

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v28, v1, v4

    const v29, 0x7f120268

    const v30, 0x7f08067e

    const v32, 0x7f0806ca

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v32}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->SIMPLIFIED_H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "4G"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v7

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v9

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f12026b

    const v16, 0x7f080679

    const/16 v17, 0x1

    const v18, 0x7f0806c4

    move-object v5, v0

    invoke-direct/range {v5 .. v18}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->SIMPLIFIED_FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v20, "4G+"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v21

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v23

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v28, v1, v4

    const v29, 0x7f12026c

    const v30, 0x7f08067a

    const/16 v31, 0x1

    const v32, 0x7f0806c5

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v32}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->SIMPLIFIED_FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_8

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_SIMPLIFIED:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_9

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_DEFAULT:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_a

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_ATT:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_b

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_FIVE_G_ATT:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_c

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_TMO:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_d

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_LTE_PLUS:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_e

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_LTE_PLUS_KT:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_f

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_5G_VZW:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0806e1
        0x7f0806e3
        0x7f0806e5
        0x7f0806e7
        0x7f0806e9
    .end array-data

    :array_1
    .array-data 4
        0x7f0806e1
        0x7f0806e3
        0x7f0806e5
        0x7f0806e7
        0x7f0806e9
    .end array-data

    :array_2
    .array-data 4
        0x7f0806eb
        0x7f0806ef
        0x7f0806f3
        0x7f0806f7
        0x7f0806fb
        0x7f0806ff
    .end array-data

    :array_3
    .array-data 4
        0x7f0806eb
        0x7f0806ef
        0x7f0806f3
        0x7f0806f7
        0x7f0806fb
        0x7f0806ff
    .end array-data

    :array_4
    .array-data 4
        0x7f0806ed
        0x7f0806f1
        0x7f0806f5
        0x7f0806f9
        0x7f0806fd
        0x7f080701
    .end array-data

    :array_5
    .array-data 4
        0x7f0806ed
        0x7f0806f1
        0x7f0806f5
        0x7f0806f9
        0x7f0806fd
        0x7f080701
    .end array-data

    :array_6
    .array-data 4
        0x7f08073e
        0x7f080740
        0x7f080742
        0x7f080744
        0x7f080746
        0x7f080748
    .end array-data

    :array_7
    .array-data 4
        0x7f080730
        0x7f080732
        0x7f080734
        0x7f080736
        0x7f080738
        0x7f08073a
    .end array-data

    :array_8
    .array-data 4
        0x7f08071c
        0x7f08070e
        0x7f08072d
        0x7f080716
    .end array-data

    :array_9
    .array-data 4
        0x7f080718
        0x7f080702
        0x7f080721
        0x7f080710
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x7f080708
        0x7f080727
        0x7f080713
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x7f080707
        0x7f080726
        0x7f080712
    .end array-data

    :array_c
    .array-data 4
        0x7f08071d
        0x7f08070f
        0x7f08072e
        0x7f080717
    .end array-data

    :array_d
    .array-data 4
        0x7f08071a
        0x7f08070c
        0x7f08072b
        0x7f080714
    .end array-data

    :array_e
    .array-data 4
        0x7f08071b
        0x7f08070d
        0x7f08072c
        0x7f080715
    .end array-data

    :array_f
    .array-data 4
        0x7f080719
        0x7f080703
        0x7f080722
        0x7f080711
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getTelephonyNoServiceIcon()I
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_PURE_SIGNAL_ICON:Z

    if-eqz v0, :cond_0

    const v0, 0x7f08073c

    :goto_0
    goto :goto_2

    :cond_0
    const-string v0, "VZW"

    sget-object v1, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f080720

    goto :goto_0

    :cond_1
    const-string v0, "TMB"

    sget-object v1, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "MTR"

    sget-object v1, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const v0, 0x7f08071e

    goto :goto_2

    :cond_3
    :goto_1
    const v0, 0x7f08071f

    goto :goto_0

    :goto_2
    nop

    return v0
.end method

.method static getTelephonySignalContentDesc()[I
    .locals 2

    sget v0, Lcom/android/systemui/Rune;->STATBAR_MAX_SIGNAL_LEVEL:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

    return-object v1

    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    return-object v1
.end method

.method static getTelephonySignalStrength()[[I
    .locals 2

    sget v0, Lcom/android/systemui/Rune;->STATBAR_MAX_SIGNAL_LEVEL:I

    sget-boolean v1, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_PURE_SIGNAL_ICON:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_PURE_SIGNAL_STRENGTH:[[I

    return-object v1

    :cond_0
    sget-boolean v1, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_SIMPLIFIED_SIGNAL_CLUSTER:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_5_LEVEL_SIGNAL_STRENGTH_SIMPLIFIED:[[I

    return-object v1

    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

    return-object v1

    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    return-object v1
.end method
