.class public Lcom/samsung/android/rlc/util/SecureStringData;
.super Ljava/lang/Object;
.source "SecureStringData.java"


# static fields
.field public static final ACTION_ACCESSTOKEN_RESPONSE:[B

.field public static final ACTION_ACCESSTOKEN_RESPONSE_FAIL:[B

.field public static final ACTION_ACCESSTOKEN_V02_REQUEST:[B

.field public static final ACTION_ACCESSTOKEN_V02_RESPONSE:[B

.field public static final ACTION_EXTERNAL_ACCESSTOKEN:[B

.field public static final COLUMN_OAUTH_APP_ID:[B

.field public static final COLUMN_OAUTH_KEY:[B

.field public static final COLUMN_OAUTH_TOKEN:[B

.field public static final COLUMN_OAUTH_TOKEN_SECRET:[B

.field public static final COLUMN_OAUTH_USER_ID:[B

.field public static final COLUMN_OAUTH_VALUE:[B

.field public static final CONTENT_ENCRYPT_KEY_SEED_TEXT:[B

.field public static final CONTEXT:[B

.field public static final EXTRA_APP_ID:[B

.field public static final EXTRA_APP_SECRET:[B

.field public static final EXTRA_KEY_ACCESSTOKEN:[B

.field public static final EXTRA_KEY_ADDITIONAL:[B

.field public static final EXTRA_KEY_API_SERVER_URL:[B

.field public static final EXTRA_KEY_AUTH_SERVER_URL:[B

.field public static final EXTRA_KEY_BIRTHDAY:[B

.field public static final EXTRA_KEY_CC:[B

.field public static final EXTRA_KEY_CLIENT_ID:[B

.field public static final EXTRA_KEY_CLIENT_SECRET:[B

.field public static final EXTRA_KEY_DEVICE_PHYSICAL_ADDRESS:[B

.field public static final EXTRA_KEY_EMAIL_ID:[B

.field public static final EXTRA_KEY_ERROR_MESSAGE:[B

.field public static final EXTRA_KEY_EXPIRED_ACCESS_TOKEN:[B

.field public static final EXTRA_KEY_MCC:[B

.field public static final EXTRA_KEY_MODE:[B

.field public static final EXTRA_KEY_MYPACKAGE:[B

.field public static final EXTRA_KEY_OSP_VER:[B

.field public static final EXTRA_KEY_RESULT_CODE:[B

.field public static final EXTRA_KEY_SERVER_URL:[B

.field public static final EXTRA_KEY_USER_ID:[B

.field public static final EXTRA_VALUE_HIDE_NOTIFICATION:[B

.field public static final EXTRA_VALUE_OSP_02:[B

.field public static final GET_DEVICE_ID:[B

.field public static final GET_SYSTEM_SERVICE:[B

.field public static final MD5:[B

.field public static final PHONE:[B

.field public static final PREFERENCE:[B

.field public static final PREF_KEY_ACCOUNTEMAIL:[B

.field public static final PREF_KEY_DEVICE_PHYSICAL_ADDRESS:[B

.field public static final PREF_KEY_SECRET:[B

.field public static final PREF_KEY_SERVERURL:[B

.field public static final PREF_KEY_SERVERURL2:[B

.field public static final PREF_KEY_TOKEN:[B

.field public static final PREF_KEY_USERID:[B

.field public static final SAMSUNG_ACCOUNT_TYPE:[B

.field public static final STRING:[B

.field public static final TELEPHONY_MGR:[B

.field public static final TOKEN_URI_S:[B

.field public static final USERID_URI_S:[B


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_1a4

    sput-object v0, Lcom/samsung/android/rlc/util/SecureStringData;->PREFERENCE:[B

    const/16 v0, 0x1c

    new-array v1, v0, [B

    fill-array-data v1, :array_1b4

    sput-object v1, Lcom/samsung/android/rlc/util/SecureStringData;->ACTION_EXTERNAL_ACCESSTOKEN:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_1c6

    sput-object v1, Lcom/samsung/android/rlc/util/SecureStringData;->ACTION_ACCESSTOKEN_RESPONSE:[B

    const/16 v1, 0x18

    new-array v1, v1, [B

    fill-array-data v1, :array_1d8

    sput-object v1, Lcom/samsung/android/rlc/util/SecureStringData;->ACTION_ACCESSTOKEN_RESPONSE_FAIL:[B

    const/4 v1, 0x5

    new-array v2, v1, [B

    fill-array-data v2, :array_1e8

    sput-object v2, Lcom/samsung/android/rlc/util/SecureStringData;->EXTRA_APP_ID:[B

    const/16 v2, 0x9

    new-array v3, v2, [B

    fill-array-data v3, :array_1f0

    sput-object v3, Lcom/samsung/android/rlc/util/SecureStringData;->EXTRA_APP_SECRET:[B

    new-array v3, v1, [B

    fill-array-data v3, :array_1fa

    sput-object v3, Lcom/samsung/android/rlc/util/SecureStringData;->COLUMN_OAUTH_APP_ID:[B

    const/16 v3, 0xa

    new-array v4, v3, [B

    fill-array-data v4, :array_202

    sput-object v4, Lcom/samsung/android/rlc/util/SecureStringData;->COLUMN_OAUTH_TOKEN:[B

    const/16 v4, 0x10

    new-array v5, v4, [B

    fill-array-data v5, :array_20c

    sput-object v5, Lcom/samsung/android/rlc/util/SecureStringData;->COLUMN_OAUTH_TOKEN_SECRET:[B

    const/4 v5, 0x6

    new-array v6, v5, [B

    fill-array-data v6, :array_218

    sput-object v6, Lcom/samsung/android/rlc/util/SecureStringData;->COLUMN_OAUTH_USER_ID:[B

    new-array v6, v1, [B

    fill-array-data v6, :array_220

    sput-object v6, Lcom/samsung/android/rlc/util/SecureStringData;->COLUMN_OAUTH_VALUE:[B

    const/4 v6, 0x3

    new-array v7, v6, [B

    fill-array-data v7, :array_228

    sput-object v7, Lcom/samsung/android/rlc/util/SecureStringData;->COLUMN_OAUTH_KEY:[B

    const/16 v7, 0x3f

    new-array v7, v7, [B

    fill-array-data v7, :array_22e

    sput-object v7, Lcom/samsung/android/rlc/util/SecureStringData;->TOKEN_URI_S:[B

    const/16 v7, 0x3d

    new-array v7, v7, [B

    fill-array-data v7, :array_252

    sput-object v7, Lcom/samsung/android/rlc/util/SecureStringData;->USERID_URI_S:[B

    const/16 v7, 0x12

    new-array v7, v7, [B

    fill-array-data v7, :array_276

    sput-object v7, Lcom/samsung/android/rlc/util/SecureStringData;->SAMSUNG_ACCOUNT_TYPE:[B

    new-array v7, v1, [B

    fill-array-data v7, :array_284

    sput-object v7, Lcom/samsung/android/rlc/util/SecureStringData;->PREF_KEY_TOKEN:[B

    new-array v7, v5, [B

    fill-array-data v7, :array_28c

    sput-object v7, Lcom/samsung/android/rlc/util/SecureStringData;->PREF_KEY_SECRET:[B

    new-array v7, v5, [B

    fill-array-data v7, :array_294

    sput-object v7, Lcom/samsung/android/rlc/util/SecureStringData;->PREF_KEY_USERID:[B

    new-array v7, v3, [B

    fill-array-data v7, :array_29c

    sput-object v7, Lcom/samsung/android/rlc/util/SecureStringData;->PREF_KEY_SERVERURL:[B

    const/16 v7, 0x26

    new-array v7, v7, [B

    fill-array-data v7, :array_2a6

    sput-object v7, Lcom/samsung/android/rlc/util/SecureStringData;->ACTION_ACCESSTOKEN_V02_REQUEST:[B

    const/16 v7, 0x27

    new-array v7, v7, [B

    fill-array-data v7, :array_2be

    sput-object v7, Lcom/samsung/android/rlc/util/SecureStringData;->ACTION_ACCESSTOKEN_V02_RESPONSE:[B

    new-array v7, v2, [B

    fill-array-data v7, :array_2d6

    sput-object v7, Lcom/samsung/android/rlc/util/SecureStringData;->EXTRA_KEY_CLIENT_ID:[B

    const/16 v7, 0xd

    new-array v8, v7, [B

    fill-array-data v8, :array_2e0

    sput-object v8, Lcom/samsung/android/rlc/util/SecureStringData;->EXTRA_KEY_CLIENT_SECRET:[B

    const/4 v8, 0x7

    new-array v9, v8, [B

    fill-array-data v9, :array_2ec

    sput-object v9, Lcom/samsung/android/rlc/util/SecureStringData;->EXTRA_KEY_OSP_VER:[B

    new-array v2, v2, [B

    fill-array-data v2, :array_2f4

    sput-object v2, Lcom/samsung/android/rlc/util/SecureStringData;->EXTRA_KEY_MYPACKAGE:[B

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_2fe

    sput-object v2, Lcom/samsung/android/rlc/util/SecureStringData;->EXTRA_KEY_MODE:[B

    new-array v2, v3, [B

    fill-array-data v2, :array_304

    sput-object v2, Lcom/samsung/android/rlc/util/SecureStringData;->EXTRA_KEY_ADDITIONAL:[B

    const/16 v2, 0x14

    new-array v2, v2, [B

    fill-array-data v2, :array_30e

    sput-object v2, Lcom/samsung/android/rlc/util/SecureStringData;->EXTRA_KEY_EXPIRED_ACCESS_TOKEN:[B

    new-array v2, v5, [B

    fill-array-data v2, :array_31c

    sput-object v2, Lcom/samsung/android/rlc/util/SecureStringData;->EXTRA_VALUE_OSP_02:[B

    const/16 v2, 0x1d

    new-array v5, v2, [B

    fill-array-data v5, :array_324

    sput-object v5, Lcom/samsung/android/rlc/util/SecureStringData;->EXTRA_VALUE_HIDE_NOTIFICATION:[B

    const/16 v5, 0xb

    new-array v9, v5, [B

    fill-array-data v9, :array_338

    sput-object v9, Lcom/samsung/android/rlc/util/SecureStringData;->EXTRA_KEY_RESULT_CODE:[B

    const/16 v9, 0xc

    new-array v9, v9, [B

    fill-array-data v9, :array_342

    sput-object v9, Lcom/samsung/android/rlc/util/SecureStringData;->EXTRA_KEY_ACCESSTOKEN:[B

    new-array v8, v8, [B

    fill-array-data v8, :array_34c

    sput-object v8, Lcom/samsung/android/rlc/util/SecureStringData;->EXTRA_KEY_USER_ID:[B

    const/16 v8, 0x8

    new-array v9, v8, [B

    fill-array-data v9, :array_354

    sput-object v9, Lcom/samsung/android/rlc/util/SecureStringData;->EXTRA_KEY_BIRTHDAY:[B

    new-array v8, v8, [B

    fill-array-data v8, :array_35c

    sput-object v8, Lcom/samsung/android/rlc/util/SecureStringData;->EXTRA_KEY_EMAIL_ID:[B

    new-array v8, v6, [B

    fill-array-data v8, :array_364

    sput-object v8, Lcom/samsung/android/rlc/util/SecureStringData;->EXTRA_KEY_MCC:[B

    new-array v8, v3, [B

    fill-array-data v8, :array_36a

    sput-object v8, Lcom/samsung/android/rlc/util/SecureStringData;->EXTRA_KEY_SERVER_URL:[B

    const/16 v8, 0xe

    new-array v8, v8, [B

    fill-array-data v8, :array_374

    sput-object v8, Lcom/samsung/android/rlc/util/SecureStringData;->EXTRA_KEY_API_SERVER_URL:[B

    const/16 v8, 0xf

    new-array v8, v8, [B

    fill-array-data v8, :array_380

    sput-object v8, Lcom/samsung/android/rlc/util/SecureStringData;->EXTRA_KEY_AUTH_SERVER_URL:[B

    const/4 v8, 0x2

    new-array v8, v8, [B

    fill-array-data v8, :array_38c

    sput-object v8, Lcom/samsung/android/rlc/util/SecureStringData;->EXTRA_KEY_CC:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_392

    sput-object v0, Lcom/samsung/android/rlc/util/SecureStringData;->EXTRA_KEY_DEVICE_PHYSICAL_ADDRESS:[B

    new-array v0, v7, [B

    fill-array-data v0, :array_3a4

    sput-object v0, Lcom/samsung/android/rlc/util/SecureStringData;->EXTRA_KEY_ERROR_MESSAGE:[B

    new-array v0, v7, [B

    fill-array-data v0, :array_3b0

    sput-object v0, Lcom/samsung/android/rlc/util/SecureStringData;->PREF_KEY_ACCOUNTEMAIL:[B

    new-array v0, v3, [B

    fill-array-data v0, :array_3bc

    sput-object v0, Lcom/samsung/android/rlc/util/SecureStringData;->PREF_KEY_SERVERURL2:[B

    new-array v0, v6, [B

    fill-array-data v0, :array_3c6

    sput-object v0, Lcom/samsung/android/rlc/util/SecureStringData;->PREF_KEY_DEVICE_PHYSICAL_ADDRESS:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_3cc

    sput-object v0, Lcom/samsung/android/rlc/util/SecureStringData;->CONTENT_ENCRYPT_KEY_SEED_TEXT:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_3e0

    sput-object v0, Lcom/samsung/android/rlc/util/SecureStringData;->PHONE:[B

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_3e8

    sput-object v0, Lcom/samsung/android/rlc/util/SecureStringData;->TELEPHONY_MGR:[B

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_3fe

    sput-object v0, Lcom/samsung/android/rlc/util/SecureStringData;->CONTEXT:[B

    new-array v0, v4, [B

    fill-array-data v0, :array_40e

    sput-object v0, Lcom/samsung/android/rlc/util/SecureStringData;->STRING:[B

    new-array v0, v6, [B

    fill-array-data v0, :array_41a

    sput-object v0, Lcom/samsung/android/rlc/util/SecureStringData;->MD5:[B

    new-array v0, v4, [B

    fill-array-data v0, :array_420

    sput-object v0, Lcom/samsung/android/rlc/util/SecureStringData;->GET_SYSTEM_SERVICE:[B

    new-array v0, v5, [B

    fill-array-data v0, :array_42c

    sput-object v0, Lcom/samsung/android/rlc/util/SecureStringData;->GET_DEVICE_ID:[B

    return-void

    :array_1a4
    .array-data 1
        0x75t
        0xdt
        0x78t
        0x4ft
        0x26t
        0x58t
        0x27t
        0x14t
        0x7at
        0x6t
        0x51t
        0x5et
        0x18t
        0x5et
        0xct
        0x40t
        0x5t
        0x47t
        0x41t
        0x7t
        0x5et
        0x5t
    .end array-data

    nop

    :array_1b4
    .array-data 1
        0x7ft
        0xdt
        0x7et
        0x4ft
        0x0t
        0x52t
        0x0t
        0xdt
        0x6ct
        0x11t
        0x63t
        0x1t
        0x7bt
        0x1ct
        0x77t
        0x10t
        0x12t
        0x7et
        0x13t
        0x7ft
        0xat
        0x68t
        0x9t
        0x6et
        0x15t
        0x6bt
        0x18t
        0x61t
    .end array-data

    :array_1c6
    .array-data 1
        0x7ft
        0xdt
        0x7et
        0x4ft
        0x0t
        0x52t
        0x0t
        0xdt
        0x68t
        0xet
        0x6bt
        0x9t
        0x72t
        0x8t
        0x76t
        0x12t
        0x75t
        0x1dt
        0x7dt
        0x7ct
        0x1et
        0x6at
        0xbt
        0x68t
        0x13t
        0x68t
        0xdt
        0x7ft
    .end array-data

    :array_1d8
    .array-data 1
        0x7bt
        0xdt
        0x7at
        0x4ft
        0x3ct
        0x52t
        0x3ct
        0xdt
        0x6ct
        0xet
        0x6ft
        0x9t
        0x7et
        0x8t
        0x7at
        0x12t
        0x71t
        0x1dt
        0x79t
        0x7ct
        0x16t
        0x7at
        0x1dt
        0x7et
    .end array-data

    :array_1e8
    .array-data 1
        0x44t
        0x12t
        0x45t
        0x4t
        0x49t
    .end array-data

    nop

    :array_1f0
    .array-data 1
        0x48t
        0x12t
        0x49t
        0x16t
        0x5et
        0x13t
        0x4et
        0x1bt
        0x5et
    .end array-data

    nop

    :array_1fa
    .array-data 1
        0x64t
        0x12t
        0x65t
        0x24t
        0x69t
    .end array-data

    nop

    :array_202
    .array-data 1
        0x65t
        0xft
        0x76t
        0xft
        0x69t
        0x32t
        0x4dt
        0x37t
        0x40t
        0x3dt
    .end array-data

    nop

    :array_20c
    .array-data 1
        0x7ft
        0xft
        0x68t
        0xft
        0x73t
        0x32t
        0x4bt
        0x37t
        0x4at
        0x3dt
        0x74t
        0xat
        0x75t
        0x1at
        0x61t
        0xat
    .end array-data

    :array_218
    .array-data 1
        0x53t
        0x27t
        0x4at
        0x31t
        0x72t
        0x3dt
    .end array-data

    nop

    :array_220
    .array-data 1
        0x53t
        0x34t
        0x5ft
        0x22t
        0x4et
    .end array-data

    nop

    :array_228
    .array-data 1
        0x48t
        0x29t
        0x55t
    .end array-data

    :array_22e
    .array-data 1
        0x5ct
        0x73t
        0x5ct
        0x6at
        0x4ct
        0x66t
        0x57t
        0x2bt
        0x43t
        0x24t
        0xet
        0x2bt
        0xdt
        0x6ft
        0x4dt
        0x70t
        0x4ft
        0x31t
        0x3t
        0x3et
        0x3t
        0x23t
        0x13t
        0x2bt
        0x8t
        0x20t
        0xbt
        0x3et
        0x13t
        0x26t
        0x1ft
        0x24t
        0x9t
        0x47t
        0x49t
        0x58t
        0x4bt
        0x4ct
        0x46t
        0x4et
        0x5dt
        0x50t
        0x57t
        0x49t
        0x52t
        0x4ct
        0x4et
        0x56t
        0x50t
        0x44t
        0x50t
        0x50t
        0xct
        0x1bt
        0x1ct
        0xft
        0x1ct
        0x1t
        0x16t
        0x18t
        0xat
        0x17t
        0x6t
    .end array-data

    :array_252
    .array-data 1
        0x5et
        0xft
        0x5et
        0x6at
        0x4et
        0x62t
        0x55t
        0x2bt
        0x41t
        0x28t
        0xct
        0x2bt
        0xft
        0x6bt
        0x4ft
        0x70t
        0x4dt
        0x2dt
        0x1t
        0x3et
        0x1t
        0x27t
        0x11t
        0x2bt
        0xat
        0x2ct
        0x9t
        0x3et
        0x11t
        0x22t
        0x1dt
        0x24t
        0xbt
        0x7bt
        0x4bt
        0x58t
        0x49t
        0x48t
        0x44t
        0x4et
        0x5ft
        0x5ct
        0x55t
        0x49t
        0x50t
        0x48t
        0x4ct
        0x56t
        0x52t
        0x58t
        0x52t
        0x50t
        0xet
        0x15t
        0x2t
        0x13t
        0x8t
        0xat
        0x14t
        0x18t
        0x18t
    .end array-data

    nop

    :array_276
    .array-data 1
        0x71t
        0xdt
        0x74t
        0x4ft
        0x36t
        0x52t
        0x3at
        0xdt
        0x76t
        0x1dt
        0x71t
        0x42t
        0x2ft
        0x59t
        0x1et
        0x51t
        0x1at
        0x57t
    .end array-data

    nop

    :array_284
    .array-data 1
        0x71t
        0x18t
        0x74t
        0x19t
        0x7et
    .end array-data

    nop

    :array_28c
    .array-data 1
        0x75t
        0x17t
        0x7ct
        0x7t
        0x68t
        0x17t
    .end array-data

    nop

    :array_294
    .array-data 1
        0x73t
        0x7t
        0x6at
        0x11t
        0x72t
        0x1dt
    .end array-data

    nop

    :array_29c
    .array-data 1
        0x79t
        0x17t
        0x69t
        0x12t
        0x79t
        0x4t
        0x4bt
        0x2ft
        0x4ft
        0x30t
    .end array-data

    nop

    :array_2a6
    .array-data 1
        0x45t
        0xdt
        0x48t
        0x4ft
        0x8t
        0x50t
        0x1ft
        0x1ct
        0x53t
        0x1ft
        0x5bt
        0x3t
        0x5et
        0x3t
        0x19t
        0x6dt
        0x18t
        0x6ct
        0x11t
        0x7bt
        0x12t
        0x7dt
        0xet
        0x78t
        0x3t
        0x72t
        0x6dt
        0x7at
        0x8t
        0x79t
        0x62t
        0x75t
        0x76t
        0x60t
        0x7dt
        0x71t
        0x68t
        0x77t
    .end array-data

    nop

    :array_2be
    .array-data 1
        0x44t
        0x3t
        0x47t
        0x43t
        0x5t
        0x5at
        0x14t
        0x14t
        0x5at
        0x9t
        0x4ct
        0x17t
        0x4bt
        0x11t
        0xat
        0x7dt
        0x9t
        0x72t
        0xet
        0x67t
        0xft
        0x67t
        0x15t
        0x60t
        0x1at
        0x14t
        0xat
        0x1et
        0x6dt
        0x1bt
        0x1t
        0x15t
        0x17t
        0xct
        0x15t
        0x10t
        0x15t
        0xat
        0x2t
    .end array-data

    :array_2d6
    .array-data 1
        0x6at
        0xct
        0x6et
        0x7t
        0x64t
        0x1et
        0x4et
        0x37t
        0x42t
    .end array-data

    nop

    :array_2e0
    .array-data 1
        0x6et
        0xct
        0x6at
        0x1ft
        0x60t
        0x6t
        0x4at
        0x2dt
        0x5dt
        0x28t
        0x4dt
        0x30t
        0x5dt
    .end array-data

    nop

    :array_2ec
    .array-data 1
        0x48t
        0x13t
        0x4at
        0x1ft
        0x42t
        0xbt
        0x54t
    .end array-data

    :array_2f4
    .array-data 1
        0x64t
        0x17t
        0x6ct
        0x1t
        0x6ft
        0xat
        0x64t
        0x13t
        0x67t
    .end array-data

    nop

    :array_2fe
    .array-data 1
        0x49t
        0x3t
        0x41t
        0x3t
    .end array-data

    :array_304
    .array-data 1
        0x6bt
        0x4t
        0x6ct
        0x8t
        0x72t
        0x14t
        0x6bt
        0x14t
        0x67t
        0x18t
    .end array-data

    nop

    :array_30e
    .array-data 1
        0x71t
        0x1ct
        0x7at
        0x4t
        0x6et
        0x12t
        0x6ct
        0x28t
        0x55t
        0x2bt
        0x56t
        0x2ct
        0x7ft
        0x2dt
        0x50t
        0x7t
        0x4ct
        0x2t
        0x41t
        0x8t
    .end array-data

    :array_31c
    .array-data 1
        0x49t
        0x1dt
        0x45t
        0x13t
        0x29t
        0x10t
    .end array-data

    nop

    :array_324
    .array-data 1
        0x55t
        0x2t
        0x59t
        0x3ct
        0x42t
        0x2et
        0x42t
        0x32t
        0x5et
        0x3et
        0x50t
        0x3bt
        0x53t
        0x2dt
        0x4ft
        0x2ct
        0x4ft
        0x3et
        0x46t
        0x3ft
        0x5at
        0x20t
        0x4ct
        0x2at
        0x5at
        0x3ft
        0x5dt
        0x29t
        0x44t
    .end array-data

    nop

    :array_338
    .array-data 1
        0x79t
        0x10t
        0x6et
        0x15t
        0x76t
        0x12t
        0x5ct
        0x2dt
        0x51t
        0x21t
        0x51t
    .end array-data

    :array_342
    .array-data 1
        0x6dt
        0x3t
        0x6et
        0x4t
        0x67t
        0x5t
        0x48t
        0x2ft
        0x54t
        0x2at
        0x59t
        0x20t
    .end array-data

    :array_34c
    .array-data 1
        0x72t
        0x9t
        0x65t
        0x1dt
        0x49t
        0x2ct
        0x45t
    .end array-data

    :array_354
    .array-data 1
        0x6at
        0xat
        0x72t
        0xdt
        0x69t
        0x0t
        0x6ft
        0x19t
    .end array-data

    :array_35c
    .array-data 1
        0x6dt
        0x9t
        0x62t
        0x0t
        0x60t
        0x32t
        0x55t
        0x3et
    .end array-data

    :array_364
    .array-data 1
        0x6et
        0x9t
        0x6ft
    .end array-data

    :array_36a
    .array-data 1
        0x79t
        0x17t
        0x69t
        0x12t
        0x79t
        0x4t
        0x4bt
        0x2ft
        0x4ft
        0x30t
    .end array-data

    nop

    :array_374
    .array-data 1
        0x6ft
        0x10t
        0x69t
        0x27t
        0x46t
        0x30t
        0x56t
        0x35t
        0x46t
        0x23t
        0x64t
        0x8t
        0x60t
        0x17t
    .end array-data

    nop

    :array_380
    .array-data 1
        0x6et
        0xbt
        0x6et
        0x14t
        0x58t
        0x3ft
        0x4ft
        0x2bt
        0x4at
        0x37t
        0x5ct
        0x19t
        0x77t
        0x19t
        0x68t
    .end array-data

    :array_38c
    .array-data 1
        0x61t
        0x1t
    .end array-data

    nop

    :array_392
    .array-data 1
        0x78t
        0x0t
        0x68t
        0x1et
        0x5dt
        0x19t
        0x64t
        0x37t
        0x7bt
        0x27t
        0x72t
        0x3ct
        0x77t
        0x3ft
        0x79t
        0xdt
        0x40t
        0x9t
        0x43t
        0x1et
        0x4bt
        0x9t
        0x48t
        0x24t
        0x64t
        0x34t
        0x7at
        0x39t
    .end array-data

    :array_3a4
    .array-data 1
        0x68t
        0x14t
        0x69t
        0x16t
        0x75t
        0x38t
        0x46t
        0x37t
        0x51t
        0x34t
        0x42t
        0x3dt
        0x41t
    .end array-data

    nop

    :array_3b0
    .array-data 1
        0x6ct
        0x1t
        0x6dt
        0x12t
        0x76t
        0xat
        0x6dt
        0x26t
        0x56t
        0x2dt
        0x5bt
        0x2at
        0x5ft
    .end array-data

    nop

    :array_3bc
    .array-data 1
        0x79t
        0x17t
        0x69t
        0x12t
        0x79t
        0x4t
        0x4bt
        0x2ft
        0x4ft
        0x30t
    .end array-data

    nop

    :array_3c6
    .array-data 1
        0x47t
        0x13t
        0x57t
    .end array-data

    :array_3cc
    .array-data 1
        0x5et
        0xft
        0x5et
        0x2at
        0x4et
        0x22t
        0x55t
        0x2et
        0x4et
        0x26t
        0x42t
        0x38t
        0x48t
        0x32t
        0x4dt
        0x3et
        0x58t
        0x33t
        0x45t
        0x2at
        0x48t
        0x3ft
        0x49t
        0x39t
        0x53t
        0x31t
        0x43t
        0x23t
        0x4et
    .end array-data

    nop

    :array_3e0
    .array-data 1
        0x75t
        0x1bt
        0x73t
        0x15t
        0x79t
    .end array-data

    nop

    :array_3e8
    .array-data 1
        0x43t
        0xet
        0x4et
        0x19t
        0x50t
        0x1et
        0x52t
        0x55t
        0xbt
        0x45t
        0x5t
        0x4dt
        0x13t
        0x54t
        0xbt
        0x54t
        0x1ft
        0x2t
        0x62t
        0x32t
        0x68t
        0x3at
        0x72t
        0x23t
        0x76t
        0x23t
        0x66t
        0x16t
        0x49t
        0x18t
        0x39t
        0x1ft
        0x38t
        0x9t
    .end array-data

    nop

    :array_3fe
    .array-data 1
        0x76t
        0x0t
        0x7dt
        0x15t
        0x61t
        0x14t
        0x6dt
        0x5dt
        0x21t
        0x6et
        0x21t
        0x77t
        0x31t
        0x7bt
        0x2at
        0x22t
        0x46t
        0x1t
        0x46t
        0x18t
        0x56t
        0x2t
        0x5bt
    .end array-data

    :array_40e
    .array-data 1
        0x7at
        0xat
        0x6et
        0x1ct
        0x26t
        0x5ft
        0x28t
        0x51t
        0x2et
        0x19t
        0x50t
        0x3ft
        0x51t
        0x25t
        0x55t
        0x2dt
    .end array-data

    :array_41a
    .array-data 1
        0x4et
        0xet
        0x3et
    .end array-data

    :array_420
    .array-data 1
        0x77t
        0x3t
        0x65t
        0x25t
        0x48t
        0x2et
        0x4ct
        0x3et
        0x4bt
        0x1t
        0x7et
        0x17t
        0x7dt
        0x9t
        0x74t
        0xet
    .end array-data

    :array_42c
    .array-data 1
        0x6ct
        0x5t
        0x7ct
        0x36t
        0x5ct
        0x3at
        0x42t
        0x33t
        0x45t
        0x18t
        0x69t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSecureString([B)Ljava/lang/String;
    .registers 8

    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, p0

    int-to-byte v3, v2

    const/4 v4, 0x0

    :goto_7
    if-ge v1, v2, :cond_1e

    aget-byte v5, p0, v1

    xor-int/2addr v5, v4

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    aget-byte v5, v0, v1

    add-int/lit8 v6, v3, 0x1

    int-to-byte v3, v3

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    aget-byte v4, p0, v1

    add-int/lit8 v1, v1, 0x1

    move v3, v6

    goto :goto_7

    :cond_1e
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method
