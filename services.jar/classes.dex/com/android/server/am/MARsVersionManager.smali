.class public Lcom/android/server/am/MARsVersionManager;
.super Ljava/lang/Object;
.source "MARsVersionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MARsVersionManager$AdjustRestriction;,
        Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;,
        Lcom/android/server/am/MARsVersionManager$AdjustTargetExcludePackage;,
        Lcom/android/server/am/MARsVersionManager$PolicyInfo;,
        Lcom/android/server/am/MARsVersionManager$MARsSettingsInfo;
    }
.end annotation


# static fields
.field static final ADJUST_RESTRICTION_TYPE_ALLOW_CHINESE_APP:I = 0x1

.field static final ADJUST_RESTRICTION_TYPE_ALLOW_ESSENTIAL_INTENT:I = 0x3

.field static final ADJUST_RESTRICTION_TYPE_ALLOW_FOREGROUND_APP:I = 0x7

.field static final ADJUST_RESTRICTION_TYPE_ALLOW_VIDEO_CACHING_APP:I = 0x6

.field static final ADJUST_RESTRICTION_TYPE_BLOCK_CHINESE_APP:I = 0x2

.field static final ADJUST_RESTRICTION_TYPE_BLOCK_ESSENTIAL_INTENT:I = 0x4

.field static final ADJUST_RESTRICTION_TYPE_BLOCK_FAKETOP_ACTIVITY:I = 0x8

.field static final ADJUST_RESTRICTION_TYPE_BLOCK_TOP_ACTIVITY:I = 0x5

.field static final TAG:Ljava/lang/String; = "MARsVersionManager"

.field static final mAdjustRestrictionDefault:[[Ljava/lang/String;

.field static final mAutoRunParameterDefault:[Ljava/lang/String;

.field static final mCurrentImportantDefault:[[Ljava/lang/String;

.field static final mExcludePackageDefault:[[Ljava/lang/String;

.field static final mMARsSettingsInfoDefault:[[Ljava/lang/String;

.field static final mPolicyInfoDefault:[[Ljava/lang/String;


# instance fields
.field DEBUG:Z

.field mAm:Lcom/android/server/am/ActivityManagerService;

.field public mApplicationSizeIncreased:J

.field mContext:Landroid/content/Context;

.field public mExcludeTargetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/MARsVersionManager$AdjustTargetExcludePackage;",
            ">;"
        }
    .end annotation
.end field

.field public mIsCurrentImportantList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;",
            ">;"
        }
    .end annotation
.end field

.field public mIsCurrentImportantMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mMARsSettingsInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/MARsVersionManager$MARsSettingsInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mNotifiUpdatedCount:J

.field public mPolicyInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/MARsVersionManager$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

.field public mRestrictionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/MARsVersionManager$AdjustRestriction;",
            ">;"
        }
    .end annotation
.end field

.field public mTrafficAmount:J

.field public mTrafficInterval:J

.field mTrigger:Lcom/android/server/am/MARsTrigger;

.field public mUnusedTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 18

    const/4 v0, 0x4

    new-array v1, v0, [[Ljava/lang/String;

    const-string/jumbo v2, "marsversion"

    const-string v3, "1020190104"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "skipratio"

    const-string v4, "90"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string/jumbo v2, "killthreshold"

    const-string v5, "100"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string/jumbo v2, "restrictionthreshold"

    const-string v6, "100"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sput-object v1, Lcom/android/server/am/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    new-array v1, v0, [[Ljava/lang/String;

    const-string v7, "1"

    const-string v8, "1"

    const-string v9, "13"

    const-string v10, "354255120"

    const-string v11, "12"

    const-string v12, "10"

    const-string v13, "10"

    const-string v14, "337379600"

    filled-new-array/range {v7 .. v14}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v7, "2"

    const-string v8, "0"

    const-string v9, "21"

    const-string v10, "270272648"

    const-string v11, "10"

    const-string v12, "10"

    const-string v13, "5"

    const-string v14, "270272640"

    filled-new-array/range {v7 .. v14}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v7, "4"

    const-string v8, "0"

    const-string v9, "25"

    const-string v10, "270272648"

    const-string v11, "26"

    const-string v12, "5"

    const-string v13, "1"

    const-string v14, "270272640"

    filled-new-array/range {v7 .. v14}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v7, "8"

    const-string v8, "1"

    const-string v9, "26"

    const-string v10, "0"

    const-string v11, "2"

    const-string v12, "5"

    const-string v13, "0"

    const-string v14, "0"

    filled-new-array/range {v7 .. v14}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    sput-object v1, Lcom/android/server/am/MARsVersionManager;->mPolicyInfoDefault:[[Ljava/lang/String;

    const-string v1, "2"

    const-string v2, "15"

    const-string v7, "300"

    const-string v8, "1"

    const-string v9, "1"

    filled-new-array {v1, v2, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/MARsVersionManager;->mAutoRunParameterDefault:[Ljava/lang/String;

    const/4 v1, 0x6

    new-array v2, v1, [[Ljava/lang/String;

    const-string v7, "0"

    const-string v8, "24"

    const-string v9, "contains"

    const-string v10, ".cts."

    filled-new-array {v7, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v3

    const-string v7, "0"

    const-string v8, "24"

    const-string/jumbo v9, "endsWith"

    const-string v10, ".cts"

    filled-new-array {v7, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    const-string v7, "0"

    const-string v8, "24"

    const-string/jumbo v9, "equals"

    const-string v10, "com.samsung.accessory"

    filled-new-array {v7, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    const-string v7, "2"

    const-string v8, "1"

    const-string/jumbo v9, "equals"

    const-string v10, "com.sec.android.app.shealth"

    filled-new-array {v7, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    const-string v7, "0"

    const-string v8, "10"

    const-string/jumbo v9, "equals"

    const-string v10, "com.sec.aecmonitor"

    filled-new-array {v7, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v0

    const-string v7, "0"

    const-string v8, "10"

    const-string/jumbo v9, "equals"

    const-string v10, "com.salab.act"

    filled-new-array {v7, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    aput-object v7, v2, v8

    sput-object v2, Lcom/android/server/am/MARsVersionManager;->mExcludePackageDefault:[[Ljava/lang/String;

    const/16 v2, 0x9

    new-array v7, v2, [[Ljava/lang/String;

    const-string v9, "0"

    const-string v10, "8000"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v3

    const-string v9, "1"

    const-string v10, "18284"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v4

    const-string v9, "2"

    const-string v10, "65529"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v5

    const-string v9, "4"

    const-string v10, "24032"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v6

    const-string v9, "5"

    const-string v10, "18284"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v0

    const-string v9, "6"

    const-string v10, "18284"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const-string v9, "7"

    const-string v10, "20251"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v1

    const-string v9, "8"

    const-string v10, "20264"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x7

    aput-object v9, v7, v10

    const-string v9, "9"

    const-string v11, "24446"

    filled-new-array {v9, v11}, [Ljava/lang/String;

    move-result-object v9

    const/16 v11, 0x8

    aput-object v9, v7, v11

    sput-object v7, Lcom/android/server/am/MARsVersionManager;->mCurrentImportantDefault:[[Ljava/lang/String;

    const/16 v7, 0x2f

    new-array v7, v7, [[Ljava/lang/String;

    const-string v12, "1"

    const-string v13, "allow"

    const-string v14, "com.eg.android.AlipayGphone"

    const-string/jumbo v16, "equals"

    const-string v17, "com.eg.android.AlipayGphone.IAlixPay"

    const/4 v15, 0x0

    filled-new-array/range {v12 .. v17}, [Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v3

    const-string v12, "1"

    const-string v13, "allow"

    const-string v14, "com.alipay.android.app"

    const-string/jumbo v16, "equals"

    const-string v17, "com.eg.android.AlipayGphone.IAlixPay"

    filled-new-array/range {v12 .. v17}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v4

    const-string v12, "1"

    const-string v13, "allow"

    const-string v14, "com.tencent.mobileqq"

    const/16 v16, 0x0

    const/16 v17, 0x0

    filled-new-array/range {v12 .. v17}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v5

    const-string v12, "1"

    const-string v13, "allow"

    const-string v14, "com.tencent.mm"

    filled-new-array/range {v12 .. v17}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v6

    const-string v12, "1"

    const-string v13, "allow"

    const-string v14, "com.cmcc.sso"

    filled-new-array/range {v12 .. v17}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v0

    const-string v12, "1"

    const-string v13, "allow"

    const-string v14, "com.cmdm.rcs"

    filled-new-array/range {v12 .. v17}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    const-string v12, "2"

    const-string v13, "block"

    const-string v14, "com.baidu.netdisk_ss"

    const-string v15, "com.sec.android.cloudagent"

    filled-new-array/range {v12 .. v17}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v1

    const-string v12, "2"

    const-string v13, "block"

    const-string v15, "com.samsung.android.opencalendar"

    const/4 v14, 0x0

    filled-new-array/range {v12 .. v17}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v10

    const-string v12, "3"

    const-string v13, "allow"

    const-string v15, "com.samsung.accessory"

    const-string/jumbo v16, "equals"

    const-string v17, "android.accessory.service.action.ACCESSORY_SERVICE_CONNECTION_IND"

    filled-new-array/range {v12 .. v17}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v11

    const-string v12, "3"

    const-string v13, "allow"

    const-string v15, "com.samsung.accessory"

    const-string/jumbo v16, "equals"

    const-string v17, "com.samsung.accessory.action.SERVICE_CONNECTION_REQUESTED"

    filled-new-array/range {v12 .. v17}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    const-string v8, "3"

    const-string v9, "allow"

    const-string v11, "com.samsung.accessory"

    const-string/jumbo v12, "equals"

    const-string v13, "android.accessory.device.action.REGISTER_AFTER_INSTALL"

    const/4 v10, 0x0

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, v7, v1

    const-string v8, "3"

    const-string v9, "allow"

    const-string v11, "com.samsung.accessory"

    const-string/jumbo v12, "equals"

    const-string v13, "com.samsung.accessory.action.REGISTER_AGENT"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, v7, v1

    const-string v8, "3"

    const-string v9, "allow"

    const-string/jumbo v12, "startsWith"

    const-string v13, "com.samsung.android.cocktail.action.COCKTAIL"

    const/4 v11, 0x0

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    aput-object v0, v7, v1

    const-string v8, "3"

    const-string v9, "allow"

    const-string/jumbo v12, "startsWith"

    const-string v13, "com.samsung.android.cocktail.v2.action.COCKTAIL"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    aput-object v0, v7, v1

    const-string v8, "3"

    const-string v9, "allow"

    const-string/jumbo v12, "startsWith"

    const-string v13, "com.samsung.android.app.memo.EDGE_"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    aput-object v0, v7, v1

    const-string v8, "3"

    const-string v9, "allow"

    const-string v11, "com.wssnps"

    const-string/jumbo v12, "startsWith"

    const-string v13, "com.sec.android.intent.action.REQUEST_BACKUP_"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf

    aput-object v0, v7, v1

    const-string v8, "3"

    const-string v9, "allow"

    const-string v11, "com.wssnps"

    const-string/jumbo v12, "startsWith"

    const-string v13, "com.sec.android.intent.action.REQUEST_RESTORE_"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    aput-object v0, v7, v1

    const-string v8, "3"

    const-string v9, "allow"

    const-string v11, "com.wssnps"

    const-string/jumbo v12, "startsWith"

    const-string v13, "com.samsung.android.intent.action.REQUEST_BACKUP_"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11

    aput-object v0, v7, v1

    const-string v8, "3"

    const-string v9, "allow"

    const-string v11, "com.wssnps"

    const-string/jumbo v12, "startsWith"

    const-string v13, "com.samsung.android.intent.action.REQUEST_RESTORE_"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12

    aput-object v0, v7, v1

    const-string v8, "3"

    const-string v9, "allow"

    const-string v11, "com.wssnps"

    const-string/jumbo v12, "startsWith"

    const-string v13, "com.samsung.android.intent.action.REQUEST_VERIFY"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x13

    aput-object v0, v7, v1

    const-string v8, "3"

    const-string v9, "allow"

    const-string v11, "com.wssnps"

    const-string/jumbo v12, "startsWith"

    const-string v13, "com.samsung.android.intent.action.RESPONSE_VERIFY"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    aput-object v0, v7, v1

    const-string v8, "3"

    const-string v9, "allow"

    const-string v11, "com.sec.android.easyMover"

    const-string/jumbo v12, "startsWith"

    const-string v13, "com.sec.android.intent.action.REQUEST_BACKUP_"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x15

    aput-object v0, v7, v1

    const-string v8, "3"

    const-string v9, "allow"

    const-string v11, "com.sec.android.easyMover"

    const-string/jumbo v12, "startsWith"

    const-string v13, "com.sec.android.intent.action.REQUEST_RESTORE_"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x16

    aput-object v0, v7, v1

    const-string v8, "3"

    const-string v9, "allow"

    const-string v11, "com.sec.android.easyMover"

    const-string/jumbo v12, "startsWith"

    const-string v13, "com.samsung.android.intent.action.REQUEST_BACKUP_"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x17

    aput-object v0, v7, v1

    const-string v8, "3"

    const-string v9, "allow"

    const-string v11, "com.sec.android.easyMover"

    const-string/jumbo v12, "startsWith"

    const-string v13, "com.samsung.android.intent.action.REQUEST_RESTORE_"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x18

    aput-object v0, v7, v1

    const-string v8, "3"

    const-string v9, "allow"

    const-string v11, "com.sec.android.easyMover"

    const-string/jumbo v12, "startsWith"

    const-string v13, "com.samsung.android.intent.action.REQUEST_VERIFY"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x19

    aput-object v0, v7, v1

    const-string v8, "3"

    const-string v9, "allow"

    const-string v11, "com.sec.android.easyMover"

    const-string/jumbo v12, "startsWith"

    const-string v13, "com.samsung.android.intent.action.RESPONSE_VERIFY"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1a

    aput-object v0, v7, v1

    const-string v8, "3"

    const-string v9, "allow"

    const-string/jumbo v12, "equals"

    const-string v13, "android.intent.action.MEDIA_BUTTON"

    const/4 v11, 0x0

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1b

    aput-object v0, v7, v1

    const-string v8, "3"

    const-string v9, "allow"

    const-string/jumbo v12, "equals"

    const-string v13, "com.samsung.android.intent.action.MEDIA_BUTTON"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1c

    aput-object v0, v7, v1

    const-string v8, "3"

    const-string v9, "allow"

    const-string/jumbo v12, "equals"

    const-string v13, "com.sec.android.app.dictionary.SEARCH"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1d

    aput-object v0, v7, v1

    const-string v8, "3"

    const-string v9, "allow"

    const-string/jumbo v12, "equals"

    const-string v13, "com.sec.android.app.dictionary.SEARCH_WORD"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1e

    aput-object v0, v7, v1

    const-string v8, "3"

    const-string v9, "allow"

    const-string/jumbo v12, "equals"

    const-string v13, "com.sec.android.app.dictionary.CLOSE"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f

    aput-object v0, v7, v1

    const-string v8, "3"

    const-string v9, "allow"

    const-string/jumbo v12, "equals"

    const-string v13, "com.sec.android.contextaware.HEADSET_PLUG"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    aput-object v0, v7, v1

    const-string v8, "3"

    const-string v9, "allow"

    const-string v10, "com.samsung.android.app.music.chn"

    const-string v11, "com.samsung.android.app.sreminder"

    const-string/jumbo v12, "startsWith"

    const-string v13, "com.sec.android.app.music"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x21

    aput-object v0, v7, v1

    const-string v8, "3"

    const-string v9, "allow"

    const-string v10, "com.samsung.android.scloud"

    const-string v11, "com.sec.spp.push"

    const-string/jumbo v12, "equals"

    const-string v13, "com.sec.spp.RegistrationChangedAction"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x22

    aput-object v0, v7, v1

    const-string v8, "3"

    const-string v9, "allow"

    const-string v10, "com.samsung.android.scloud"

    const-string v11, "com.sec.spp.push"

    const-string/jumbo v12, "equals"

    const-string/jumbo v13, "tj9u972o46"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x23

    aput-object v0, v7, v1

    const-string v8, "3"

    const-string v9, "allow"

    const-string/jumbo v12, "equals"

    const-string v13, "com.samsung.app.highlightvideo.Analyse"

    const/4 v10, 0x0

    const/4 v11, 0x0

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    aput-object v0, v7, v1

    const-string v8, "5"

    const-string v9, "block"

    const-string/jumbo v12, "startsWith"

    const-string v13, "com.and.games505.Terraria"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x25

    aput-object v0, v7, v1

    const-string v8, "6"

    const-string v9, "allow"

    const-string v10, "com.youku.phone"

    const/4 v12, 0x0

    const/4 v13, 0x0

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x26

    aput-object v0, v7, v1

    const-string v8, "6"

    const-string v9, "allow"

    const-string v10, "com.sohu.sohuvideo"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x27

    aput-object v0, v7, v1

    const-string v8, "6"

    const-string v9, "allow"

    const-string v10, "com.letv.android.client"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x28

    aput-object v0, v7, v1

    const-string v8, "6"

    const-string v9, "allow"

    const-string v10, "com.qiyi.video"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x29

    aput-object v0, v7, v1

    const-string v8, "6"

    const-string v9, "allow"

    const-string v10, "com.tencent.qqlive"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2a

    aput-object v0, v7, v1

    const-string v8, "7"

    const-string v9, "allow"

    const-string v10, "com.sina.weibo"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2b

    aput-object v0, v7, v1

    const-string v8, "7"

    const-string v9, "allow"

    const-string v10, "com.tencent.mm"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2c

    aput-object v0, v7, v1

    const-string v8, "7"

    const-string v9, "allow"

    const-string v10, "com.tencent.mobileqq"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2d

    aput-object v0, v7, v1

    const-string v8, "8"

    const-string v9, "block"

    const-string v10, "com.igexin.sdk.GActivity"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    aput-object v0, v7, v1

    sput-object v7, Lcom/android/server/am/MARsVersionManager;->mAdjustRestrictionDefault:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;Lcom/android/server/am/MARsTrigger;Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MARsVersionManager;->DEBUG:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsVersionManager;->mMARsSettingsInfoList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsVersionManager;->mIsCurrentImportantList:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsVersionManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/server/am/MARsVersionManager;->mTrafficInterval:J

    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/android/server/am/MARsVersionManager;->mUnusedTime:J

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/server/am/MARsVersionManager;->mTrafficAmount:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/MARsVersionManager;->mNotifiUpdatedCount:J

    iput-wide v0, p0, Lcom/android/server/am/MARsVersionManager;->mApplicationSizeIncreased:J

    iput-object p1, p0, Lcom/android/server/am/MARsVersionManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iput-object p2, p0, Lcom/android/server/am/MARsVersionManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    iput-object p3, p0, Lcom/android/server/am/MARsVersionManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private convertListToMap(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/MARsVersionManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/server/am/MARsVersionManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_38

    iget-object v1, p0, Lcom/android/server/am/MARsVersionManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;

    iget v2, v2, Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;->policyNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;

    iget v3, v3, Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;->importantValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_30
    const-string v0, "MARsVersionManager"

    const-string/jumbo v1, "mIsCurrentImportantMap is null! "

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    return-void
.end method

.method private convertRestrictionTypeToName(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_16

    const/4 v0, 0x2

    if-eq p1, v0, :cond_16

    const/4 v0, 0x7

    if-ne p1, v0, :cond_a

    goto :goto_16

    :cond_a
    const/4 v0, 0x3

    if-eq p1, v0, :cond_13

    const/4 v0, 0x4

    if-ne p1, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    return-object v0

    :cond_13
    :goto_13
    const-string v0, "Essential intent"

    return-object v0

    :cond_16
    :goto_16
    const-string v0, "CHN app"

    return-object v0
.end method

.method private isActionMatch(Lcom/android/server/am/MARsVersionManager$AdjustRestriction;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    const-string/jumbo v2, "equals"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_59

    :cond_13
    iget-object v1, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    const-string/jumbo v2, "equalsIgnoreCase"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_59

    :cond_25
    iget-object v1, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    const-string v2, "contains"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_59

    :cond_36
    iget-object v1, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    const-string/jumbo v2, "startsWith"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_59

    :cond_48
    iget-object v1, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    const-string/jumbo v2, "endsWith"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    iget-object v1, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    :cond_59
    :goto_59
    return v0
.end method

.method private isAdjustRestrictionMatchInternal(Lcom/android/server/am/MARsVersionManager$AdjustRestriction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->callee:Ljava/lang/String;

    if-eqz v0, :cond_e

    if-eqz p2, :cond_e

    iget-object v0, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->callee:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_e
    iget-object v0, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->callee:Ljava/lang/String;

    if-nez v0, :cond_36

    :cond_12
    iget-object v0, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->caller:Ljava/lang/String;

    if-eqz v0, :cond_20

    if-eqz p3, :cond_20

    iget-object v0, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->caller:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    :cond_20
    iget-object v0, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->caller:Ljava/lang/String;

    if-nez v0, :cond_36

    :cond_24
    iget-object v0, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    if-eqz v0, :cond_30

    if-eqz p4, :cond_30

    invoke-direct {p0, p1, p4}, Lcom/android/server/am/MARsVersionManager;->isActionMatch(Lcom/android/server/am/MARsVersionManager$AdjustRestriction;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    :cond_30
    iget-object v0, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    if-nez v0, :cond_36

    :cond_34
    const/4 v0, 0x1

    return v0

    :cond_36
    const/4 v0, 0x0

    return v0
.end method

.method private isRestrictionTypeAllowed(I)Z
    .registers 3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_9

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_c

    return v0

    :pswitch_8
    return v0

    :cond_9
    :pswitch_9
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public convertPolicyNameToNum(Ljava/lang/String;)I
    .registers 4

    const-string/jumbo v0, "force"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    return v1

    :cond_b
    const-string v0, "applocker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    return v0

    :cond_15
    const-string v0, "autorun"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x2

    return v0

    :cond_1f
    const-string/jumbo v0, "freecess"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x4

    return v0

    :cond_2a
    const-string/jumbo v0, "udspolicy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x5

    return v0

    :cond_35
    const-string/jumbo v0, "sbikepolicy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x6

    return v0

    :cond_40
    const-string/jumbo v0, "disablepolicy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const/16 v0, 0x8

    return v0

    :cond_4c
    return v1
.end method

.method convertPolicyNumToName(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/MARsVersionManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    if-nez p1, :cond_8

    const-string/jumbo v0, "force"

    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/android/server/am/MARsVersionManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v0, 0x1

    if-ne v0, p1, :cond_10

    const-string v0, "applocker"

    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/android/server/am/MARsVersionManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v0, 0x2

    if-ne v0, p1, :cond_18

    const-string v0, "autorun"

    return-object v0

    :cond_18
    iget-object v0, p0, Lcom/android/server/am/MARsVersionManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v0, 0x4

    if-ne v0, p1, :cond_21

    const-string/jumbo v0, "freecesspolicy"

    return-object v0

    :cond_21
    iget-object v0, p0, Lcom/android/server/am/MARsVersionManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v0, 0x5

    if-ne v0, p1, :cond_2a

    const-string/jumbo v0, "udspolicy"

    return-object v0

    :cond_2a
    iget-object v0, p0, Lcom/android/server/am/MARsVersionManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v0, 0x6

    if-ne v0, p1, :cond_33

    const-string/jumbo v0, "sbikepolicy"

    return-object v0

    :cond_33
    iget-object v0, p0, Lcom/android/server/am/MARsVersionManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/16 v0, 0x8

    if-ne v0, p1, :cond_3d

    const-string/jumbo v0, "disablepolicy"

    return-object v0

    :cond_3d
    const/4 v0, 0x0

    return-object v0
.end method

.method public dumpMARsDefaultValue()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsVersionManager$PolicyInfo;

    iget-boolean v2, p0, Lcom/android/server/am/MARsVersionManager;->DEBUG:Z

    if-eqz v2, :cond_2d

    const-string v2, "MARsVersionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpMARsDefaultValue----> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    goto :goto_6

    :cond_2e
    iget-object v0, p0, Lcom/android/server/am/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsVersionManager$AdjustTargetExcludePackage;

    iget-boolean v2, p0, Lcom/android/server/am/MARsVersionManager;->DEBUG:Z

    if-eqz v2, :cond_5b

    const-string v2, "MARsVersionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpMARsDefaultValue----> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    goto :goto_34

    :cond_5c
    iget-object v0, p0, Lcom/android/server/am/MARsVersionManager;->mIsCurrentImportantList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_62
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;

    iget-boolean v2, p0, Lcom/android/server/am/MARsVersionManager;->DEBUG:Z

    if-eqz v2, :cond_89

    const-string v2, "MARsVersionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpMARsDefaultValue----> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_89
    goto :goto_62

    :cond_8a
    iget-object v0, p0, Lcom/android/server/am/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_90
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;

    iget-boolean v2, p0, Lcom/android/server/am/MARsVersionManager;->DEBUG:Z

    if-eqz v2, :cond_b7

    const-string v2, "MARsVersionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpMARsDefaultValue----> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b7
    goto :goto_90

    :cond_b8
    return-void
.end method

.method public getAdjustRestrictionFromDefaultValue()V
    .registers 22

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/server/am/MARsVersionManager;->mAdjustRestrictionDefault:[[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_3c

    aget-object v5, v1, v4

    aget-object v6, v5, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    aget-object v15, v5, v7

    const/4 v7, 0x2

    aget-object v16, v5, v7

    const/4 v7, 0x3

    aget-object v17, v5, v7

    const/4 v7, 0x4

    aget-object v18, v5, v7

    const/4 v7, 0x5

    aget-object v19, v5, v7

    new-instance v20, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;

    move-object/from16 v7, v20

    move-object/from16 v8, p0

    move v9, v6

    move-object v10, v15

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object/from16 v14, v19

    invoke-direct/range {v7 .. v14}, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;-><init>(Lcom/android/server/am/MARsVersionManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_3c
    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsVersionManager;->setAdjustRestriction(Ljava/util/ArrayList;)V

    return-void
.end method

.method public getExcludeTargetFromDefaultValue()V
    .registers 18

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/server/am/MARsVersionManager;->mExcludePackageDefault:[[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_34

    aget-object v5, v1, v4

    aget-object v6, v5, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v7, 0x2

    aget-object v14, v5, v7

    const/4 v7, 0x3

    aget-object v15, v5, v7

    new-instance v16, Lcom/android/server/am/MARsVersionManager$AdjustTargetExcludePackage;

    move-object/from16 v7, v16

    move-object/from16 v8, p0

    move v9, v6

    move v10, v13

    move-object v11, v14

    move-object v12, v15

    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/MARsVersionManager$AdjustTargetExcludePackage;-><init>(Lcom/android/server/am/MARsVersionManager;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_34
    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsVersionManager;->setAdjustTargetExcludePackage(Ljava/util/ArrayList;)V

    return-void
.end method

.method public getIsCurrentImportantFromDefaultValue()V
    .registers 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/server/am/MARsVersionManager;->mCurrentImportantDefault:[[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_26

    aget-object v5, v1, v4

    aget-object v6, v5, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    new-instance v8, Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;

    invoke-direct {v8, p0, v6, v7}, Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;-><init>(Lcom/android/server/am/MARsVersionManager;II)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_26
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsVersionManager;->setAdjustTargetCurrentImportant(Ljava/util/ArrayList;)V

    return-void
.end method

.method getMARsLocalVersionFromDefaultValue()Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/am/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    move v0, v3

    :goto_7
    if-ge v0, v2, :cond_1c

    aget-object v5, v1, v0

    const-string/jumbo v6, "marsversion"

    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    const/4 v6, 0x1

    aget-object v4, v5, v6

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1c
    return-object v4
.end method

.method public getMARsSettingsInfoFromDefaultValue()V
    .registers 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/server/am/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_1e

    aget-object v5, v1, v4

    aget-object v6, v5, v3

    const/4 v7, 0x1

    aget-object v7, v5, v7

    new-instance v8, Lcom/android/server/am/MARsVersionManager$MARsSettingsInfo;

    invoke-direct {v8, p0, v6, v7}, Lcom/android/server/am/MARsVersionManager$MARsSettingsInfo;-><init>(Lcom/android/server/am/MARsVersionManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_1e
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsVersionManager;->setMARsSettingsInfoList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public getPolicyFromDefaultValue()V
    .registers 33

    move-object/from16 v13, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    sget-object v15, Lcom/android/server/am/MARsVersionManager;->mPolicyInfoDefault:[[Ljava/lang/String;

    array-length v12, v15

    const/16 v16, 0x0

    move/from16 v10, v16

    :goto_f
    if-ge v10, v12, :cond_75

    aget-object v17, v15, v10

    aget-object v0, v17, v16

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v0, 0x1

    aget-object v0, v17, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/4 v0, 0x2

    aget-object v0, v17, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/4 v0, 0x3

    aget-object v0, v17, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    const/4 v0, 0x4

    aget-object v0, v17, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    const/4 v0, 0x5

    aget-object v0, v17, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    const/4 v0, 0x6

    aget-object v0, v17, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    const/4 v0, 0x7

    aget-object v0, v17, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    invoke-virtual {v13, v11}, Lcom/android/server/am/MARsVersionManager;->convertPolicyNumToName(I)Ljava/lang/String;

    move-result-object v27

    new-instance v28, Lcom/android/server/am/MARsVersionManager$PolicyInfo;

    move-object/from16 v0, v28

    move-object v1, v13

    move-object/from16 v2, v27

    move v3, v11

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move-wide/from16 v8, v22

    move/from16 v29, v10

    move/from16 v30, v11

    move-wide/from16 v10, v24

    move/from16 v31, v12

    move/from16 v12, v26

    invoke-direct/range {v0 .. v12}, Lcom/android/server/am/MARsVersionManager$PolicyInfo;-><init>(Lcom/android/server/am/MARsVersionManager;Ljava/lang/String;IIIIIJJI)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v29, 0x1

    move/from16 v12, v31

    goto :goto_f

    :cond_75
    invoke-virtual {v13, v14}, Lcom/android/server/am/MARsVersionManager;->setPolicy(Ljava/util/ArrayList;)V

    return-void
.end method

.method public isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    iget-object v0, p0, Lcom/android/server/am/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;

    iget v2, v1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->restrictionType:I

    if-ne p1, v2, :cond_60

    invoke-direct {p0, v1, p2, p3, p4}, Lcom/android/server/am/MARsVersionManager;->isAdjustRestrictionMatchInternal(Lcom/android/server/am/MARsVersionManager$AdjustRestriction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_60

    iget-boolean v0, p0, Lcom/android/server/am/MARsVersionManager;->DEBUG:Z

    if-eqz v0, :cond_5e

    const-string v0, "MARsVersionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " restrictionType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsVersionManager;->convertRestrictionTypeToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isAllowed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsVersionManager;->isRestrictionTypeAllowed(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " callee = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " caller = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    const/4 v0, 0x1

    return v0

    :cond_60
    goto :goto_6

    :cond_61
    const/4 v0, 0x0

    return v0
.end method

.method isAppStartUpHistoryEnabled()Z
    .registers 7

    const-string v0, "com.samsung.android.sm.ACTION_AUTO_RUN"

    iget-object v1, p0, Lcom/android/server/am/MARsVersionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.android.sm.ACTION_AUTO_RUN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/am/MARsVersionManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-object v3, Lcom/android/server/am/MARsPolicyManager;->SMART_MANAGER_PKG_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_2a

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2a

    const/4 v3, 0x1

    return v3

    :cond_2a
    return v3
.end method

.method public setAdjustRestriction(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/MARsVersionManager$AdjustRestriction;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/am/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    return-void
.end method

.method public setAdjustTargetCurrentImportant(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/am/MARsVersionManager;->mIsCurrentImportantList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/am/MARsVersionManager;->mIsCurrentImportantList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsVersionManager;->convertListToMap(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setAdjustTargetExcludePackage(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/MARsVersionManager$AdjustTargetExcludePackage;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/am/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    return-void
.end method

.method public setMARsSettingsInfoList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/MARsVersionManager$MARsSettingsInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/am/MARsVersionManager;->mMARsSettingsInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method public setPolicy(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/MARsVersionManager$PolicyInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/am/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    return-void
.end method
