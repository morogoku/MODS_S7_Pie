.class synthetic Lcom/samsung/android/knox/EnterpriseKnoxManager$1;
.super Ljava/lang/Object;
.source "EnterpriseKnoxManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/EnterpriseKnoxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$knox$EnterpriseKnoxManager$EnterpriseKnoxSdkVersion:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->values()[Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseKnoxManager$EnterpriseKnoxSdkVersion:[I

    :try_start_9
    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseKnoxManager$EnterpriseKnoxSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_1_0:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    :try_start_16
    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseKnoxManager$EnterpriseKnoxSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_1_0_1:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    :try_start_23
    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseKnoxManager$EnterpriseKnoxSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_1_0_2:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v0

    :goto_30
    :try_start_30
    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseKnoxManager$EnterpriseKnoxSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_1_1_0:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    move-exception v0

    :goto_3d
    :try_start_3d
    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseKnoxManager$EnterpriseKnoxSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_1_2_0:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_48} :catch_49

    goto :goto_4a

    :catch_49
    move-exception v0

    :goto_4a
    :try_start_4a
    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseKnoxManager$EnterpriseKnoxSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_0:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_55} :catch_56

    goto :goto_57

    :catch_56
    move-exception v0

    :goto_57
    :try_start_57
    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseKnoxManager$EnterpriseKnoxSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_1:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_62} :catch_63

    goto :goto_64

    :catch_63
    move-exception v0

    :goto_64
    :try_start_64
    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseKnoxManager$EnterpriseKnoxSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_2:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_70} :catch_71

    goto :goto_72

    :catch_71
    move-exception v0

    :goto_72
    :try_start_72
    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseKnoxManager$EnterpriseKnoxSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_3:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72 .. :try_end_7e} :catch_7f

    goto :goto_80

    :catch_7f
    move-exception v0

    :goto_80
    :try_start_80
    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseKnoxManager$EnterpriseKnoxSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_4:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8c} :catch_8d

    goto :goto_8e

    :catch_8d
    move-exception v0

    :goto_8e
    :try_start_8e
    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseKnoxManager$EnterpriseKnoxSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_4_1:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_9a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e .. :try_end_9a} :catch_9b

    goto :goto_9c

    :catch_9b
    move-exception v0

    :goto_9c
    :try_start_9c
    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseKnoxManager$EnterpriseKnoxSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_5:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a9

    goto :goto_aa

    :catch_a9
    move-exception v0

    :goto_aa
    :try_start_aa
    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseKnoxManager$EnterpriseKnoxSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_5_1:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_b7

    goto :goto_b8

    :catch_b7
    move-exception v0

    :goto_b8
    :try_start_b8
    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseKnoxManager$EnterpriseKnoxSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_c4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b8 .. :try_end_c4} :catch_c5

    goto :goto_c6

    :catch_c5
    move-exception v0

    :goto_c6
    :try_start_c6
    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseKnoxManager$EnterpriseKnoxSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_d2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c6 .. :try_end_d2} :catch_d3

    goto :goto_d4

    :catch_d3
    move-exception v0

    :goto_d4
    :try_start_d4
    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseKnoxManager$EnterpriseKnoxSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7_1:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_e0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d4 .. :try_end_e0} :catch_e1

    goto :goto_e2

    :catch_e1
    move-exception v0

    :goto_e2
    :try_start_e2
    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseKnoxManager$EnterpriseKnoxSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_8:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ee
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e2 .. :try_end_ee} :catch_ef

    goto :goto_f0

    :catch_ef
    move-exception v0

    :goto_f0
    :try_start_f0
    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseKnoxManager$EnterpriseKnoxSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_9:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_fc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f0 .. :try_end_fc} :catch_fd

    goto :goto_fe

    :catch_fd
    move-exception v0

    :goto_fe
    :try_start_fe
    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseKnoxManager$EnterpriseKnoxSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_0:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_10a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fe .. :try_end_10a} :catch_10b

    goto :goto_10c

    :catch_10b
    move-exception v0

    :goto_10c
    :try_start_10c
    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseKnoxManager$EnterpriseKnoxSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_1:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_118
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10c .. :try_end_118} :catch_119

    goto :goto_11a

    :catch_119
    move-exception v0

    :goto_11a
    :try_start_11a
    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseKnoxManager$EnterpriseKnoxSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_2:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_126
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11a .. :try_end_126} :catch_127

    goto :goto_128

    :catch_127
    move-exception v0

    :goto_128
    :try_start_128
    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseKnoxManager$EnterpriseKnoxSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_2_1:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_134
    .catch Ljava/lang/NoSuchFieldError; {:try_start_128 .. :try_end_134} :catch_135

    goto :goto_136

    :catch_135
    move-exception v0

    :goto_136
    :try_start_136
    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseKnoxManager$EnterpriseKnoxSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_3:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_142
    .catch Ljava/lang/NoSuchFieldError; {:try_start_136 .. :try_end_142} :catch_143

    goto :goto_144

    :catch_143
    move-exception v0

    :goto_144
    :try_start_144
    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseKnoxManager$EnterpriseKnoxSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_NONE:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_150
    .catch Ljava/lang/NoSuchFieldError; {:try_start_144 .. :try_end_150} :catch_151

    goto :goto_152

    :catch_151
    move-exception v0

    :goto_152
    return-void
.end method
