.class public Lcom/android/server/am/DynamicHiddenApp;
.super Ljava/lang/Object;
.source "DynamicHiddenApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;,
        Lcom/android/server/am/DynamicHiddenApp$HotnessValue;
    }
.end annotation


# static fields
.field static final BG_COUNT_CACHED:I = 0x1

.field static final BG_COUNT_CACHED_HIDDEN:I = 0x3

.field static final BG_COUNT_EMPTY:I = 0x2

.field static final BG_COUNT_NON_CACHED:I = 0x4

.field static DEBUG:Z = false

.field static DEBUG_Component:Z = false

.field static final DECREASE_SCORE_THREAD_TIME_INTERNAL:J = 0x5265c00L

.field static final DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

.field static DHA_HOTNESS_ENABLE:Z = false

.field static DHA_HOTNESS_LFU_MINCachedRate:F = 0.0f

.field static DHA_HOTNESS_LFU_MINEmptyRate:F = 0.0f

.field static DHA_HOTNESS_LRU_PROTECT_MIN:I = 0x0

.field static final DHA_HOTNESS_PROTECT_TIME:J = 0x1388L

.field static final DHA_HOTNESS_SKIP_ARRAY:[Ljava/lang/String;

.field static DHA_INCREASE_THRESHOLD:J = 0x0L

.field static final DHA_MAX_MARGIN:J = 0x800000L

.field static final DHA_MIN_MARGIN:J = 0x400000L

.field static DHA_PACKAGE_ENABLE:Z = false

.field static final DHA_STATICEXCEPT_PROC_ARRAY:[[Ljava/lang/String;

.field static ES_LRU_BASE_ENABLE:Z = false

.field static FALL_PREVENT_ENABLE:Z = false

.field static FHA_ENABLE:Z = false

.field static final HOTNESS_ACTIVITY:I = 0x0

.field static final HOTNESS_EMPTY:I = 0x1

.field static HRT_MaxCached_Enable:Z = false

.field static HRT_MinCached_Enable:Z = false

.field static INIT_CACHED_APPS:I = 0x0

.field static INIT_EMPTY_APPS:I = 0x0

.field static LDHA_ES_ENABLE:Z = false

.field static LDHA_SPC_ENABLE:Z = false

.field static LIMITATION_RECENT_CACHED_SLOT:Z = false

.field public static LMK_CRITICAL_ADJ:I = 0x0

.field public static LMK_CRITICAL_UPGRADE:Z = false

.field public static LMK_CUSTOM_SW_LIMIT:I = 0x0

.field public static LMK_CUSTOM_TM_LIMIT:I = 0x0

.field public static LMK_DEBUG:Z = false

.field public static LMK_DOWNGRADE_PRESSURE:I = 0x0

.field public static LMK_ENABLE_ADAPTIVE_LMK:Z = false

.field public static LMK_ENABLE_CMARBINFREE_SUB:Z = false

.field public static LMK_ENABLE_MULTI_KILL:Z = false

.field public static LMK_ENABLE_REENTRY_LMK:Z = false

.field public static LMK_ENABLE_SWAPFREE_LIMIT:Z = false

.field public static LMK_ENABLE_UPGRADE_CRIADJ:Z = false

.field public static LMK_ENABLE_USERSPACE_LMK:Z = false

.field public static LMK_ENHANCE_BATCH_KILL:Z = false

.field public static LMK_FREELIMIT_ENABLE:Z = false

.field public static LMK_FREELIMIT_VAL:I = 0x0

.field public static LMK_KILL_HEAVIEST_TASK:Z = false

.field public static LMK_KILL_TIMEOUT_MS:I = 0x0

.field public static LMK_LOW_ADJ:I = 0x0

.field public static LMK_LOW_RAM_DEVICE:Z = false

.field public static LMK_MEDIUM_ADJ:I = 0x0

.field public static LMK_UPGRADE_PRESSURE:I = 0x0

.field public static LMK_USE_MINFREE_LEVELS:Z = false

.field static MAX_CACHED_APPS:I = 0x0

.field static MAX_EMPTY_APPS:I = 0x0

.field static MAX_REC_CACHED_APPS:I = 0x0

.field static MIN_CACHED_APPS:I = 0x0

.field static MIN_EMPTY_APPS:I = 0x0

.field static final ML_SLOT_FOR_MEM_12G:I = 0x5

.field static final ML_SLOT_FOR_MEM_6G:I = 0x1

.field static final ML_SLOT_FOR_MEM_8G:I = 0x3

.field static final PRELOADNUM:I = 0x2

.field static PREVENT_HOTNESS:Z = false

.field static RECENT_CACHED_ENABLE:Z = false

.field static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final TAG_DHA:Ljava/lang/String; = "DynamicHiddenApp"

.field static final TAG_HOTNESS:Ljava/lang/String; = "ActivityManager_Hotness"

.field static TOTAL_MEMORY:I

.field static volatile curTopApp:Lcom/android/server/am/ProcessRecord;

.field static debuggingR:Lcom/android/server/am/ProcessRecord;

.field static dha_amsexcept_map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static dha_keepempty_key:I

.field static dha_keepempty_key_knox:I

.field static dha_keepempty_map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static highRes_MaxCached:I

.field static highRes_MinCached:I

.field static isLogPrinted:Z

.field static mAMSExceptionEnable:Z

.field static mDhaKeepEmptyEnable:I

.field static mDhaKeepEmptyEnableKnox:I

.field static mDirectLMKADJArray:Ljava/lang/String;

.field static mDirectLMKMultiVal:F

.field static mKnoxAMSExceptionEnable:Z

.field static mLMKArray:Ljava/lang/String;

.field static mLMKScale:F

.field static normalRes_MaxCached:I

.field static normalRes_MinCached:I

.field static strPrevAppForActivityHotness:Ljava/lang/String;

.field static strPrevAppForEmptyHotness:Ljava/lang/String;


# instance fields
.field ActiveLaunchCount:I

.field final ActiveLaunchLimit:I

.field ActiveLaunchSlot:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private DHA_HOTNESS_MAX_VALUE:I

.field MlLaunchCount:I

.field MlLaunchLimit:I

.field MlLaunchSlot:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field hotnessCached:I

.field hotnessEmpty:I

.field killingProcessesUss:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field killingProcessesUssTotal:J

.field mAm:Lcom/android/server/am/ActivityManagerService;

.field mConstants:Lcom/android/server/am/ActivityManagerConstants;

.field mContext:Landroid/content/Context;

.field private mDecreaseHotnessScoreThread:Ljava/lang/Thread;

.field mDynamicLMKFlag:Z

.field private final mHotnessAdjMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/DynamicHiddenApp$HotnessValue;",
            ">;"
        }
    .end annotation
.end field

.field private final mHotnessLFU:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mInfo:Lcom/android/internal/util/MemInfoReader;

.field private final mLastKillTimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mMaxCached:I

.field mMaxEmpty:I

.field mMax_ES_Total:I

.field mNumCachedHiddenProcs:I

.field mNumNonCachedProcs:I

.field private final mOomAdj:[I

.field mProcessList:Lcom/android/server/am/ProcessList;

.field private mProtectedTargetMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSzDHAStep:I

.field private mSzDHAThreshold:J

.field private mSzDHAThresholdRate:F

.field private final mTotalMemMb:J

.field numCached:I

.field numEmpty:I

.field numRecCached:I


# direct methods
.method static constructor <clinit>()V
    .registers 17

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DEBUG_Component:Z

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->debuggingR:Lcom/android/server/am/ProcessRecord;

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->isLogPrinted:Z

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->curTopApp:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v1, "ro.config.fha_enable"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->FHA_ENABLE:Z

    const-string/jumbo v1, "ro.config.dha_hotness_enable"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_ENABLE:Z

    const-string/jumbo v1, "ro.config.prevent_hotness"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->PREVENT_HOTNESS:Z

    const-string/jumbo v1, "ro.cfg.dha_2ndprop_thMB"

    const-string v2, "4096"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->TOTAL_MEMORY:I

    const-string/jumbo v1, "ro.config.dha_cached_max"

    const-string v2, "16"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->INIT_CACHED_APPS:I

    const-string/jumbo v1, "ro.config.dha_cached_min"

    const-string v2, "4"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    const-string/jumbo v1, "ro.config.dha_cached_max"

    const-string v2, "16"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    const-string/jumbo v1, "ro.config.dha_empty_init"

    const-string v2, "24"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->INIT_EMPTY_APPS:I

    const-string/jumbo v1, "ro.config.dha_empty_min"

    const-string v2, "8"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    const-string/jumbo v1, "ro.config.dha_empty_max"

    const-string v2, "24"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    const-string/jumbo v1, "ro.config.ldha_es_enable"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    const-string/jumbo v1, "ro.config.ldha_spc_enable"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->LDHA_SPC_ENABLE:Z

    const-string/jumbo v1, "ro.config.dha_rec_cch_enable"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->RECENT_CACHED_ENABLE:Z

    const-string/jumbo v1, "ro.config.dha_rec_cch_limit"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->LIMITATION_RECENT_CACHED_SLOT:Z

    const-string/jumbo v1, "ro.config.dha_rec_cch_max"

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_REC_CACHED_APPS:I

    const-string/jumbo v1, "ro.config.dha_hrt_max_enable"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->HRT_MaxCached_Enable:Z

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->normalRes_MaxCached:I

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    const/4 v2, 0x4

    sub-int/2addr v1, v2

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->highRes_MaxCached:I

    const-string/jumbo v1, "ro.config.dha_hrt_min_enable"

    const-string/jumbo v3, "false"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->HRT_MinCached_Enable:Z

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->normalRes_MinCached:I

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    const/4 v3, 0x2

    sub-int/2addr v1, v3

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->highRes_MinCached:I

    const-string/jumbo v1, "ro.config.dha_pwhitelist_enable"

    const-string v4, "1"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnable:I

    const-string/jumbo v1, "ro.config.dha_knox_plist_enable"

    const-string v4, "0"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnableKnox:I

    const-string/jumbo v1, "ro.config.dha_lmk_scale"

    const-string v4, "-1"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    const-string/jumbo v1, "ro.config.dha_lmk_array"

    const-string/jumbo v4, "none"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    const-string/jumbo v1, "ro.config.dha_dirlmkadj_array"

    const-string/jumbo v4, "none"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->mDirectLMKADJArray:Ljava/lang/String;

    const-string/jumbo v1, "ro.config.dha_dirlmkmul_val"

    const-string v4, "0"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->mDirectLMKMultiVal:F

    const-string/jumbo v1, "ro.config.ams_exception_enable"

    const-string/jumbo v4, "true"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->mAMSExceptionEnable:Z

    const-string/jumbo v1, "ro.config.ams_knoxexpt_enable"

    const-string/jumbo v4, "true"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->mKnoxAMSExceptionEnable:Z

    const-string/jumbo v1, "ro.config.fall_prevent_enable"

    const-string/jumbo v4, "true"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    const-string/jumbo v1, "ro.config.dha_package_enable"

    const-string/jumbo v4, "false"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->DHA_PACKAGE_ENABLE:Z

    const-string/jumbo v1, "ro.config.dha_es_lru_en"

    const-string/jumbo v4, "false"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->ES_LRU_BASE_ENABLE:Z

    const-wide/32 v4, 0x200000

    sput-wide v4, Lcom/android/server/am/DynamicHiddenApp;->DHA_INCREASE_THRESHOLD:J

    const-string/jumbo v1, "ro.config.hotness_LRU_Min"

    const-string v4, "6"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_LRU_PROTECT_MIN:I

    const-string/jumbo v1, "ro.config.hotness_LFU_CaRate"

    const-string v4, "1.0"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_LFU_MINCachedRate:F

    const-string/jumbo v1, "ro.config.hotness_LFU_EmRate"

    const-string v4, "2.0"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_LFU_MINEmptyRate:F

    const-string/jumbo v1, "unknown"

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->strPrevAppForActivityHotness:Ljava/lang/String;

    const-string/jumbo v1, "unknown"

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->strPrevAppForEmptyHotness:Ljava/lang/String;

    const-string v4, "Reserved"

    const-string v5, "com.sec.android.gallery3d"

    const-string v6, "Reserved"

    const-string v7, "Reserved"

    const-string v8, "Reserved"

    const-string v9, "Reserved"

    const-string v10, "Reserved"

    const-string v11, "Reserved"

    const-string v12, "INCALLUI"

    const-string v13, "com.sec.android.app.camera"

    const-string v14, "MMS"

    const-string v15, "Reserved"

    const-string v16, "Reserved"

    filled-new-array/range {v4 .. v16}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [[Ljava/lang/String;

    const-string v4, "android.process.acore"

    const-string v5, "2"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    const-string v0, "CONTACTS"

    const-string v4, "0"

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v1, v4

    const-string v0, "DIALER"

    const-string v4, "0"

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "android.process.media"

    const-string v3, "2"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v1, v3

    const-string v0, "com.samsung.cmh:CMH"

    const-string v3, "2"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "com.tencent.mm"

    const-string v2, "1"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->DHA_STATICEXCEPT_PROC_ARRAY:[[Ljava/lang/String;

    const-string v0, "com.sec.android.app.tinym"

    const-string v1, "com.slab.ACT"

    const-string v2, "com.google.android.packageinstaller"

    const-string v3, "com.android.systemui"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_SKIP_ARRAY:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_map:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    const-string/jumbo v0, "ro.config.dha_pwhl_key"

    const-string v1, "512"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_key:I

    const-string/jumbo v0, "ro.config.dha_pwhl_key_knox"

    const-string v1, "1539"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_key_knox:I

    const-string/jumbo v0, "ro.cfg.low"

    const-string v1, "1001"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_LOW_ADJ:I

    const-string/jumbo v0, "ro.cfg.medium"

    const-string v1, "900"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_MEDIUM_ADJ:I

    const-string/jumbo v0, "ro.cfg.critical"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_CRITICAL_ADJ:I

    const-string/jumbo v0, "ro.cfg.debug"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_DEBUG:Z

    const-string/jumbo v0, "ro.cfg.critical_upgrade"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_CRITICAL_UPGRADE:Z

    const-string/jumbo v0, "ro.cfg.upgrade_pressure"

    const-string v1, "100"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_UPGRADE_PRESSURE:I

    const-string/jumbo v0, "ro.cfg.downgrade_pressure"

    const-string v1, "100"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_DOWNGRADE_PRESSURE:I

    const-string/jumbo v0, "ro.cfg.kill_heaviest_task"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_KILL_HEAVIEST_TASK:Z

    const-string/jumbo v0, "ro.config.low_ram"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_LOW_RAM_DEVICE:Z

    const-string/jumbo v0, "ro.cfg.kill_timeout_ms"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_KILL_TIMEOUT_MS:I

    const-string/jumbo v0, "ro.cfg.use_minfree_levels"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_USE_MINFREE_LEVELS:Z

    const-string/jumbo v0, "ro.cfg.enhance_batch_kill"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENHANCE_BATCH_KILL:Z

    const-string/jumbo v0, "ro.cfg.enable_adaptive_lmk"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_ADAPTIVE_LMK:Z

    const-string/jumbo v0, "ro.cfg.enable_userspace_lmk"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_USERSPACE_LMK:Z

    const-string/jumbo v0, "ro.cfg.enable_reentry_lmk"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_REENTRY_LMK:Z

    const-string/jumbo v0, "ro.cfg.enable_swapfree_limit"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_SWAPFREE_LIMIT:Z

    const-string/jumbo v0, "ro.cfg.enable_cmarbinfree_sub"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_CMARBINFREE_SUB:Z

    const-string/jumbo v0, "ro.cfg.enable_multi_kill"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_MULTI_KILL:Z

    const-string/jumbo v0, "ro.cfg.enable_upgrade_criadj"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_UPGRADE_CRIADJ:Z

    const-string/jumbo v0, "ro.cfg.freelimit_enable"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_ENABLE:Z

    const-string/jumbo v0, "ro.cfg.freelimit_val"

    const-string v1, "11"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_VAL:I

    const-string/jumbo v0, "ro.cfg.custom_sw_limit"

    const-string v1, "500"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_SW_LIMIT:I

    const-string/jumbo v0, "ro.cfg.custom_tm_limit"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_TM_LIMIT:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Landroid/content/Context;Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_98

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mOomAdj:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    const-wide/32 v0, 0x2000000

    iput-wide v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->INIT_EMPTY_APPS:I

    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->INIT_EMPTY_APPS:I

    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->INIT_CACHED_APPS:I

    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mDynamicLMKFlag:Z

    const v2, 0xf4240

    iput v2, p0, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_MAX_VALUE:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mLastKillTimeMap:Ljava/util/HashMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mProtectedTargetMap:Landroid/util/ArrayMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->numRecCached:I

    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->hotnessCached:I

    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->hotnessEmpty:I

    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchCount:I

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchLimit:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchLimit:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchSlot:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    iput-object p3, p0, Lcom/android/server/am/DynamicHiddenApp;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->initProperty()V

    return-void

    nop

    :array_98
    .array-data 4
        0x0
        0x64
        0xc8
        0x12c
        0x384
        0x38a
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/am/DynamicHiddenApp;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private final computeHotnessAdjLocked(Ljava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_ab

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_16
    if-ltz v2, :cond_81

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ContentProviderRecord;

    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_28
    if-ltz v4, :cond_7e

    iget-object v5, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ContentProviderConnection;

    iget-object v6, v5, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    if-ne v6, v1, :cond_37

    goto :goto_7b

    :cond_37
    iget v7, v1, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    iget v8, v6, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    if-ge v7, v8, :cond_7b

    sget-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v7, :cond_77

    const-string v7, "ActivityManager_Hotness"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content provider process:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " hotness:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", client process:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " hotness:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    iget v7, v6, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    iput v7, v1, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    :cond_7b
    :goto_7b
    add-int/lit8 v4, v4, -0x1

    goto :goto_28

    :cond_7e
    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    :cond_81
    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v2, :cond_a7

    const-string v2, "ActivityManager_Hotness"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " hotness:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a7
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_6

    :cond_ab
    return-void
.end method

.method private dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    if-eqz p4, :cond_23

    const-string v0, "MMS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    const-string v0, "CONTACTS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    const-string v0, "INCALLUI"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    const-string v0, "DIALER"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_86

    :cond_23
    const-string v0, "MMS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/am/DynamicHiddenApp;->getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_86

    :cond_39
    const-string v0, "CONTACTS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/am/DynamicHiddenApp;->getContactsPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_86

    :cond_4f
    const-string v0, "DIALER"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    iget-wide v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    const-wide/16 v2, 0xc00

    cmp-long v0, v0, v2

    if-lez v0, :cond_86

    const-string v0, "com.samsung.android.dialer"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_86

    :cond_69
    const-string v0, "INCALLUI"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/am/DynamicHiddenApp;->getInCallUIPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_86

    :cond_7f
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_86
    :goto_86
    return-void
.end method

.method private getDefaultIMEPackage()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2a

    aget-object v0, v1, v2

    :cond_2a
    return-object v0
.end method

.method private getDefaultLauncher(I)Ljava/lang/String;
    .registers 10

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    const/4 v3, 0x0

    :try_start_13
    invoke-interface {v1, v0, v3, v2, p1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_38

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_38

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " getDefaultLauncher currentLauncher -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_37} :catch_39

    return-object v4

    :cond_38
    goto :goto_3d

    :catch_39
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3d
    return-object v3
.end method

.method private getInCallUIPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-string v0, "com.android.incallui"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_VOICECALL_CONFIG_INCALLUI_PACKAGE_NAME"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    return-object v0

    :cond_13
    :try_start_13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_1f} :catch_20

    goto :goto_22

    :catch_20
    move-exception v2

    move-object v1, v0

    :goto_22
    return-object v1
.end method

.method private getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-string v0, "com.android.mms"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    return-object v0

    :cond_13
    :try_start_13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_1f} :catch_20

    goto :goto_22

    :catch_20
    move-exception v2

    move-object v1, v0

    :goto_22
    return-object v1
.end method

.method public static isAMSExceptionProcess(Ljava/lang/String;)I
    .registers 2

    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_19
    const/4 v0, -0x1

    return v0
.end method

.method public static isBlockedRecentCached()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->FHA_ENABLE:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->RECENT_CACHED_ENABLE:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public static isDhaKeepEmptyProcess(Ljava/lang/String;)I
    .registers 2

    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_map:Ljava/util/HashMap;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_map:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_map:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_19
    const/4 v0, -0x1

    return v0
.end method

.method public static isWebviewProcess(Ljava/lang/String;)I
    .registers 2

    const-string v0, ":sandboxed_process"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string/jumbo v0, "sandboxed_process0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x2

    return v0

    :cond_13
    const/4 v0, 0x4

    return v0

    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method private setProcessLimit()V
    .registers 4

    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    if-le v0, v1, :cond_a

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    :cond_a
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1a

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    :cond_1a
    return-void
.end method


# virtual methods
.method public MLLaunchKillCheck(Lcom/android/server/am/ProcessRecord;)V
    .registers 6

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->curProcState:I

    packed-switch v0, :pswitch_data_78

    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchCount:I

    iget v1, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchLimit:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_53

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchSlot:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchCount:I

    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v0, :cond_76

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MachineLearning App Launch process < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->isMlLaunch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    :pswitch_52
    goto :goto_76

    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ML_Kill : over "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " slots"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    invoke-virtual {p1, v3}, Lcom/android/server/am/ProcessRecord;->setMlLaunch(Z)V

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ProcessRecord;->setMlLaunchTime(J)V

    :cond_76
    :goto_76
    return-void

    nop

    :pswitch_data_78
    .packed-switch 0xf
        :pswitch_52
        :pswitch_52
        :pswitch_52
    .end packed-switch
.end method

.method public activeLaunchKillCheck(Lcom/android/server/am/ProcessRecord;)V
    .registers 11

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->curProcState:I

    packed-switch v0, :pswitch_data_9c

    const-wide/16 v0, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    sub-long/2addr v2, v4

    iget-wide v0, p1, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    const/4 v1, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_45

    const-wide/16 v7, 0xbb8

    cmp-long v0, v2, v7

    if-lez v0, :cond_45

    const-string v0, "AL_Kill : over 3 sec"

    invoke-virtual {p1, v0, v6}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessRecord;->setActiveLaunch(Z)V

    invoke-virtual {p1, v4, v5}, Lcom/android/server/am/ProcessRecord;->setActiveLaunchTime(J)V

    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v0, :cond_9a

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AL_Kill : over 3 sec: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9a

    :pswitch_44
    goto :goto_9a

    :cond_45
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    const/4 v7, 0x2

    if-ge v0, v7, :cond_8f

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v0, :cond_9a

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Active App Launch process < 2 : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p1, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9a

    :cond_8f
    const-string v0, "AL_Kill : over 3 slots"

    invoke-virtual {p1, v0, v6}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessRecord;->setActiveLaunch(Z)V

    invoke-virtual {p1, v4, v5}, Lcom/android/server/am/ProcessRecord;->setActiveLaunchTime(J)V

    :cond_9a
    :goto_9a
    return-void

    nop

    :pswitch_data_9c
    .packed-switch 0xf
        :pswitch_44
        :pswitch_44
        :pswitch_44
    .end packed-switch
.end method

.method public checkKeptProcess(Lcom/android/server/am/ProcessRecord;)I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->mAMSExceptionEnable:Z

    if-eqz v2, :cond_33

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/16 v3, 0x64

    const/4 v4, 0x2

    if-ge v2, v3, :cond_1b

    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    if-eqz v2, :cond_33

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    if-gt v2, v4, :cond_33

    const/4 v0, 0x1

    goto :goto_33

    :cond_1b
    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->mKnoxAMSExceptionEnable:Z

    if-eqz v2, :cond_33

    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    if-eqz v2, :cond_33

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    if-lt v2, v4, :cond_2e

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_2e

    const/4 v0, 0x1

    goto :goto_33

    :cond_2e
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    if-nez v2, :cond_33

    const/4 v1, 0x1

    :cond_33
    :goto_33
    sget v2, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnable:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3c

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnableKnox:I

    if-ne v2, v3, :cond_41

    :cond_3c
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    if-lez v2, :cond_41

    const/4 v1, 0x1

    :cond_41
    if-eq v0, v3, :cond_46

    if-eqz v1, :cond_46

    const/4 v0, 0x2

    :cond_46
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/16 v4, 0x10

    if-eq v2, v4, :cond_4d

    goto :goto_57

    :cond_4d
    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    if-eqz v2, :cond_57

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_57

    const/4 v0, 0x1

    :cond_57
    :goto_57
    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    if-ne v2, v3, :cond_5c

    const/4 v0, 0x3

    :cond_5c
    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->isMlLaunch:Z

    if-ne v2, v3, :cond_61

    const/4 v0, 0x4

    :cond_61
    return v0
.end method

.method final decreaseHotnessAdj(Lcom/android/server/am/ProcessRecord;I)V
    .registers 8

    if-eqz p1, :cond_be

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez v0, :cond_8

    goto/16 :goto_be

    :cond_8
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->strPrevAppForEmptyHotness:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    :cond_13
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->strPrevAppForEmptyHotness:Ljava/lang/String;

    const-string/jumbo v0, "unknown"

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->strPrevAppForActivityHotness:Ljava/lang/String;

    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v0, :cond_38

    const-string v0, "ActivityManager_Hotness"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decreaseHotnessAdj "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3b
    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v2, :cond_77

    const-string v2, "ActivityManager_Hotness"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decreaseHotnessAdj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", hotness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    invoke-virtual {v1, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v2

    if-lez v2, :cond_87

    invoke-virtual {v1, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->decreaseHotness(I)V

    iget-object v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_87
    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v2, :cond_b9

    const-string v2, "ActivityManager_Hotness"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decreaseHotnessAdj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", hotness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b9
    monitor-exit v0

    return-void

    :catchall_bb
    move-exception v1

    monitor-exit v0
    :try_end_bd
    .catchall {:try_start_3b .. :try_end_bd} :catchall_bb

    throw v1

    :cond_be
    :goto_be
    return-void
.end method

.method decrementEmptyAppCount(II)I
    .registers 6

    move v0, p1

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    if-gt v0, v1, :cond_1a

    add-int/lit8 v1, p2, -0x1

    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    iget v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    if-ge v1, v2, :cond_13

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    :cond_13
    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    if-ge v0, v1, :cond_19

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    :cond_19
    return v0

    :cond_1a
    iget v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    if-le v1, v0, :cond_28

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    if-ge v0, v1, :cond_2a

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    goto :goto_2a

    :cond_28
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    :cond_2a
    :goto_2a
    return v0
.end method

.method decrement_ES_AppCount(II)I
    .registers 6

    add-int v0, p1, p2

    iget v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    if-le v1, v0, :cond_17

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_19

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    add-int v0, v1, v2

    goto :goto_19

    :cond_17
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    :cond_19
    :goto_19
    return v0
.end method

.method public destroyKeptProcessActivity(Lcom/android/server/am/ProcessRecord;II)Z
    .registers 8

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->curProcState:I

    packed-switch v0, :pswitch_data_5e

    const/4 v0, 0x0

    return v0

    :pswitch_7
    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-le v0, p3, :cond_5d

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    if-ne v0, v1, :cond_37

    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PWHL - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in Cached"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string v2, "Convert from hidden to empty"

    invoke-virtual {v0, p1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleDestroyAllActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    goto :goto_5d

    :cond_37
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PWHL_KNOX - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in Cached"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string v2, "Convert from hidden to empty knox"

    invoke-virtual {v0, p1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleDestroyAllActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    :cond_5d
    :goto_5d
    return v1

    :pswitch_data_5e
    .packed-switch 0xf
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public dhaProcessesLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V
    .registers 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-wide/32 v9, 0x1b7740

    sub-long v11, v7, v9

    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numRecCached:I

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->hotnessCached:I

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->hotnessEmpty:I

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/DynamicHiddenApp;->initActiveLaunchParam()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/DynamicHiddenApp;->initMLLaunchCountParam()V

    sget-boolean v16, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v16, :cond_46

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/DynamicHiddenApp;->setProcessLimit()V

    :cond_46
    add-int/lit8 v16, v6, -0x1

    :goto_48
    move/from16 v17, v16

    move/from16 v9, v17

    if-ltz v9, :cond_c91

    move-object/from16 v10, p1

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    const/4 v15, 0x0

    move/from16 v20, v6

    iget-boolean v6, v0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v6, :cond_c79

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v6, :cond_c79

    sget-boolean v6, Lcom/android/server/am/DynamicHiddenApp;->mAMSExceptionEnable:Z

    move-wide/from16 v21, v7

    const/4 v7, 0x2

    if-eqz v6, :cond_9a

    iget v6, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-nez v6, :cond_83

    iget-boolean v6, v0, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    if-eqz v6, :cond_9a

    iget v6, v0, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    if-gt v6, v7, :cond_9a

    nop

    :goto_7b
    move/from16 v31, v9

    move-wide/from16 v32, v11

    move-wide/from16 v25, v13

    goto/16 :goto_c81

    :cond_83
    sget-boolean v6, Lcom/android/server/am/DynamicHiddenApp;->mKnoxAMSExceptionEnable:Z

    if-eqz v6, :cond_9a

    iget-boolean v6, v0, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    if-eqz v6, :cond_9a

    iget v6, v0, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    if-lt v6, v7, :cond_95

    iget v6, v0, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    const/4 v8, 0x3

    if-gt v6, v8, :cond_95

    goto :goto_7b

    :cond_95
    iget v6, v0, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    if-nez v6, :cond_9a

    const/4 v15, 0x1

    :cond_9a
    sget v6, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnable:I

    const/4 v8, 0x1

    if-eq v6, v8, :cond_a3

    sget v6, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnableKnox:I

    if-ne v6, v8, :cond_a8

    :cond_a3
    iget v6, v0, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    if-lez v6, :cond_a8

    const/4 v15, 0x1

    :cond_a8
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    iget v7, v0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const-wide/16 v23, 0xbb8

    move-wide/from16 v25, v13

    const-wide/16 v13, -0x1

    const-wide/16 v27, 0x400

    packed-switch v7, :pswitch_data_e6a

    move/from16 v29, v6

    move/from16 v30, v8

    move/from16 v31, v9

    move-wide/from16 v32, v11

    iget v6, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    sget-boolean v6, Lcom/android/server/am/DynamicHiddenApp;->LDHA_SPC_ENABLE:Z

    if-eqz v6, :cond_c81

    iget v6, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v7, 0x384

    if-lt v6, v7, :cond_c81

    if-eqz v15, :cond_7ae

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_7a6

    iget-object v6, v1, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7a6

    iget-object v6, v1, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setHotness(II)V

    goto/16 :goto_7a7

    :pswitch_f6
    move/from16 v29, v6

    move/from16 v30, v8

    move/from16 v31, v9

    goto/16 :goto_1bd

    :pswitch_fe
    sget-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->RECENT_CACHED_ENABLE:Z

    if-eqz v7, :cond_1b7

    iget v7, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    const/4 v13, 0x1

    add-int/2addr v7, v13

    iput v7, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    iget v7, v1, Lcom/android/server/am/DynamicHiddenApp;->numRecCached:I

    add-int/2addr v7, v13

    iput v7, v1, Lcom/android/server/am/DynamicHiddenApp;->numRecCached:I

    sget-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->LIMITATION_RECENT_CACHED_SLOT:Z

    if-eqz v7, :cond_1b1

    if-eqz v15, :cond_121

    iget v7, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    sub-int/2addr v7, v13

    iput v7, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    iget v7, v1, Lcom/android/server/am/DynamicHiddenApp;->numRecCached:I

    sub-int/2addr v7, v13

    iput v7, v1, Lcom/android/server/am/DynamicHiddenApp;->numRecCached:I

    move/from16 v31, v9

    goto/16 :goto_1ad

    :cond_121
    iget v7, v1, Lcom/android/server/am/DynamicHiddenApp;->numRecCached:I

    sget v13, Lcom/android/server/am/DynamicHiddenApp;->MAX_REC_CACHED_APPS:I

    if-le v7, v13, :cond_1b1

    const-string v7, "DHA"

    sget-boolean v13, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    if-eqz v13, :cond_183

    iget-object v13, v1, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    iget v14, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_183

    iget-wide v13, v0, Lcom/android/server/am/ProcessRecord;->lastPss:J

    mul-long v13, v13, v27

    move/from16 v29, v6

    iget-object v6, v1, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    move/from16 v30, v8

    iget v8, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v31, v9

    iget-wide v8, v1, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    add-long/2addr v8, v13

    iput-wide v8, v1, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    const-string v6, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KPU : put ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v9, v13, v27

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " K"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v25, v13

    goto :goto_189

    :cond_183
    move/from16 v29, v6

    move/from16 v30, v8

    move/from16 v31, v9

    :goto_189
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":REC_cached #"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/am/DynamicHiddenApp;->numRecCached:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v0, v6, v8}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    iget v6, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    sub-int/2addr v6, v8

    iput v6, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    iget v6, v1, Lcom/android/server/am/DynamicHiddenApp;->numRecCached:I

    sub-int/2addr v6, v8

    iput v6, v1, Lcom/android/server/am/DynamicHiddenApp;->numRecCached:I

    :cond_1ad
    :goto_1ad
    move-wide/from16 v32, v11

    goto/16 :goto_c81

    :cond_1b1
    move/from16 v31, v9

    move-wide/from16 v32, v11

    goto/16 :goto_c81

    :cond_1b7
    move/from16 v29, v6

    move/from16 v30, v8

    move/from16 v31, v9

    :goto_1bd
    iget v6, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    iget-object v7, v1, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v7, v7, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    if-le v6, v7, :cond_1f3

    iget-wide v6, v0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    cmp-long v6, v6, v11

    if-gez v6, :cond_1f3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "empty for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v7, 0x1b7740

    add-long v9, v11, v7

    iget-wide v13, v0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    sub-long/2addr v9, v13

    const-wide/16 v13, 0x3e8

    div-long/2addr v9, v13

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "s"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x1

    invoke-virtual {v0, v6, v9}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto :goto_1ad

    :cond_1f3
    const-wide/32 v7, 0x1b7740

    const/4 v9, 0x1

    iget-boolean v6, v0, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    if-ne v6, v9, :cond_292

    const-wide/16 v9, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    iget-wide v7, v0, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    sub-long v6, v18, v7

    iget-wide v8, v0, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    cmp-long v8, v8, v13

    if-eqz v8, :cond_238

    cmp-long v8, v6, v23

    if-lez v8, :cond_238

    const-string v8, "AL_Kill : over 3 sec"

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/android/server/am/ProcessRecord;->setActiveLaunch(Z)V

    invoke-virtual {v0, v13, v14}, Lcom/android/server/am/ProcessRecord;->setActiveLaunchTime(J)V

    sget-boolean v8, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v8, :cond_1ad

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AL_Kill : over 3 sec: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ad

    :cond_238
    iget v8, v1, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    const/4 v9, 0x2

    if-ge v8, v9, :cond_283

    iget-object v8, v1, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v8, v1, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v1, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    sget-boolean v8, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v8, :cond_1ad

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Active App Launch process < 2: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v0, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ad

    :cond_283
    const-string v8, "AL_Kill : over 3 slots"

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/android/server/am/ProcessRecord;->setActiveLaunch(Z)V

    invoke-virtual {v0, v13, v14}, Lcom/android/server/am/ProcessRecord;->setActiveLaunchTime(J)V

    goto/16 :goto_1ad

    :cond_292
    iget-boolean v6, v0, Lcom/android/server/am/ProcessRecord;->isMlLaunch:Z

    if-ne v6, v9, :cond_307

    iget v6, v1, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchCount:I

    iget v7, v1, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchLimit:I

    if-ge v6, v7, :cond_2e3

    iget-object v6, v1, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchSlot:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v6, v1, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchCount:I

    add-int/2addr v6, v9

    iput v6, v1, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchCount:I

    sget-boolean v6, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v6, :cond_2e1

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Machine Learning App Launch process < "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchLimit:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v0, Lcom/android/server/am/ProcessRecord;->isMlLaunch:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e1
    const/4 v7, 0x1

    goto :goto_308

    :cond_2e3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ML_Kill : over "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchLimit:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " slots kill"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/android/server/am/ProcessRecord;->setMlLaunch(Z)V

    invoke-virtual {v0, v13, v14}, Lcom/android/server/am/ProcessRecord;->setMlLaunchTime(J)V

    goto :goto_308

    :cond_307
    move v7, v9

    :goto_308
    iget v6, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    add-int/2addr v6, v7

    iput v6, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    sget-boolean v6, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v6, :cond_381

    iget v6, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    iget v7, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    add-int/2addr v6, v7

    iget v7, v1, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    if-le v6, v7, :cond_31c

    const/4 v6, 0x1

    goto :goto_31d

    :cond_31c
    const/4 v6, 0x0

    :goto_31d
    if-eqz v6, :cond_32a

    iget v7, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    sget v8, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    if-le v7, v8, :cond_327

    const/4 v7, 0x1

    goto :goto_328

    :cond_327
    const/4 v7, 0x0

    :goto_328
    move v6, v7

    goto :goto_334

    :cond_32a
    iget v7, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    sget v8, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    if-le v7, v8, :cond_332

    const/4 v7, 0x1

    goto :goto_333

    :cond_332
    const/4 v7, 0x0

    :goto_333
    move v6, v7

    :goto_334
    sget-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v7, :cond_38a

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CE numC[ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ] numE [ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ], Total: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " isDHAKill "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " adj "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " pname: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38a

    :cond_381
    iget v6, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    iget v7, v1, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    if-le v6, v7, :cond_389

    const/4 v6, 0x1

    goto :goto_38a

    :cond_389
    const/4 v6, 0x0

    :cond_38a
    :goto_38a
    if-eqz v6, :cond_38e

    const-string v16, "DHA"

    :cond_38e
    move-object/from16 v7, v16

    sget-boolean v8, Lcom/android/server/am/DynamicHiddenApp;->PREVENT_HOTNESS:Z

    if-eqz v8, :cond_436

    iget-object v8, v1, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_3ae

    iget-object v8, v1, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getIsHotness(I)Z

    move-result v8

    goto :goto_3af

    :cond_3ae
    const/4 v8, 0x0

    :goto_3af
    if-eqz v8, :cond_430

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v10, v1, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/4 v13, 0x1

    invoke-virtual {v10, v9, v13}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setIsHotness(ZI)V

    if-eqz v7, :cond_434

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_434

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "_H:empty #"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x1

    invoke-virtual {v10, v9, v13}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v9, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    sub-int/2addr v9, v13

    iput v9, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    sget-boolean v9, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v9, :cond_1ad

    const-string v9, "ActivityManager_Hotness"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "EM hotness protected "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ad

    :cond_430
    const/4 v9, 0x0

    invoke-virtual {v5, v9, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_434
    move/from16 v30, v8

    :cond_436
    if-eqz v15, :cond_45a

    iget-object v8, v1, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_452

    iget-object v8, v1, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v9}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setHotness(II)V

    goto :goto_453

    :cond_452
    const/4 v9, 0x1

    :goto_453
    iget v8, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    sub-int/2addr v8, v9

    iput v8, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    goto/16 :goto_1ad

    :cond_45a
    iget-boolean v8, v0, Lcom/android/server/am/ProcessRecord;->isPreload:Z

    if-eqz v8, :cond_483

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Preload - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " skipped"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    iput v8, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    goto/16 :goto_1ad

    :cond_483
    if-eqz v7, :cond_4fe

    sget-boolean v8, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    if-eqz v8, :cond_4db

    iget-object v8, v1, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_4db

    iget-wide v8, v0, Lcom/android/server/am/ProcessRecord;->lastPss:J

    mul-long v13, v8, v27

    iget-object v8, v1, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v8, v1, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    add-long/2addr v8, v13

    iput-wide v8, v1, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KPU : put ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v32, v11

    div-long v10, v13, v27

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " K"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v25, v13

    goto :goto_4dd

    :cond_4db
    move-wide/from16 v32, v11

    :goto_4dd
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":empty #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    iget v8, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    sub-int/2addr v8, v9

    iput v8, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    goto/16 :goto_c81

    :cond_4fe
    move-wide/from16 v32, v11

    sget-boolean v8, Lcom/android/server/am/DynamicHiddenApp;->PREVENT_HOTNESS:Z

    if-eqz v8, :cond_c81

    if-nez v30, :cond_c81

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_c81

    :pswitch_50c
    move/from16 v29, v6

    move/from16 v30, v8

    move/from16 v31, v9

    move-wide/from16 v32, v11

    sget-boolean v6, Lcom/android/server/am/DynamicHiddenApp;->DHA_PACKAGE_ENABLE:Z

    if-eqz v6, :cond_520

    iget v6, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    goto/16 :goto_c81

    :cond_520
    const/4 v7, 0x1

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string/jumbo v8, "sandboxed_process0"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_53c

    iget v6, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    add-int/2addr v6, v7

    iput v6, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    goto/16 :goto_c81

    :pswitch_533
    move/from16 v29, v6

    move/from16 v30, v8

    move/from16 v31, v9

    move-wide/from16 v32, v11

    const/4 v7, 0x1

    :cond_53c
    iget v6, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    add-int/2addr v6, v7

    iput v6, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    iget v6, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    add-int/2addr v6, v7

    iput v6, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    sget-boolean v6, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v6, :cond_5cd

    iget v6, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    iget v7, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    add-int/2addr v6, v7

    iget v7, v1, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    if-le v6, v7, :cond_555

    const/4 v6, 0x1

    goto :goto_556

    :cond_555
    const/4 v6, 0x0

    :goto_556
    if-eqz v6, :cond_563

    iget v7, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    sget v8, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    if-le v7, v8, :cond_560

    const/4 v7, 0x1

    goto :goto_561

    :cond_560
    const/4 v7, 0x0

    :goto_561
    move v6, v7

    goto :goto_580

    :cond_563
    iget v7, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    sget v8, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    if-le v7, v8, :cond_56b

    const/4 v7, 0x1

    goto :goto_56c

    :cond_56b
    const/4 v7, 0x0

    :goto_56c
    move v6, v7

    sget-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->ES_LRU_BASE_ENABLE:Z

    if-nez v7, :cond_580

    if-nez v6, :cond_580

    iget v7, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    iget v8, v1, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    sget v9, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_57e

    const/4 v7, 0x1

    goto :goto_57f

    :cond_57e
    const/4 v7, 0x0

    :goto_57f
    move v6, v7

    :cond_580
    :goto_580
    sget-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v7, :cond_5d6

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CA numC[ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ] numE [ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ], Total: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " isDHAKill "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " adj "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " pname: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d6

    :cond_5cd
    iget v6, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    iget v7, v1, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    if-le v6, v7, :cond_5d5

    const/4 v6, 0x1

    goto :goto_5d6

    :cond_5d5
    const/4 v6, 0x0

    :cond_5d6
    :goto_5d6
    if-eqz v6, :cond_5da

    const-string v16, "DHA"

    :cond_5da
    move-object/from16 v7, v16

    sget-boolean v8, Lcom/android/server/am/DynamicHiddenApp;->PREVENT_HOTNESS:Z

    if-eqz v8, :cond_5fd

    iget-object v8, v1, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_5fd

    iget-object v8, v1, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getIsHotness(I)Z

    move-result v8

    if-eqz v8, :cond_5fd

    const/4 v8, 0x1

    goto :goto_5fe

    :cond_5fd
    const/4 v8, 0x0

    :goto_5fe
    sget-boolean v9, Lcom/android/server/am/DynamicHiddenApp;->PREVENT_HOTNESS:Z

    if-eqz v9, :cond_6a7

    iget-object v9, v1, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_61c

    iget-object v9, v1, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getIsHotness(I)Z

    move-result v9

    goto :goto_61e

    :cond_61c
    const/4 v10, 0x0

    move v9, v10

    :goto_61e
    move v8, v9

    if-eqz v8, :cond_6a3

    invoke-virtual {v2, v10, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v9, v1, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    invoke-virtual {v9, v10, v10}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setIsHotness(ZI)V

    if-eqz v7, :cond_6a7

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_6a7

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_H:cached #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v9, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    sub-int/2addr v9, v11

    iput v9, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    iget v9, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    sub-int/2addr v9, v11

    iput v9, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    sget-boolean v9, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v9, :cond_c81

    const-string v9, "ActivityManager_Hotness"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CA hotness protected "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c81

    :cond_6a3
    const/4 v9, 0x0

    invoke-virtual {v4, v9, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_6a7
    if-eqz v7, :cond_79a

    if-eqz v15, :cond_71d

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6e6

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PWHL - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " in Cached"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v1, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":Convert from hidden to empty"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleDestroyAllActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    goto :goto_71b

    :cond_6e6
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PWHL_KNOX - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " in Cached"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v1, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":Convert from hidden to empty knox"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleDestroyAllActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    :goto_71b
    const/4 v10, 0x1

    goto :goto_78e

    :cond_71d
    sget-boolean v9, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    if-eqz v9, :cond_770

    iget-object v9, v1, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    iget v10, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_770

    iget-wide v9, v0, Lcom/android/server/am/ProcessRecord;->lastPss:J

    mul-long v9, v9, v27

    iget-object v11, v1, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    iget v12, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v11, v1, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    add-long/2addr v11, v9

    iput-wide v11, v1, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "KPU : put ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "] : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v13, v9, v27

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " K"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v13, v9

    goto :goto_772

    :cond_770
    move-wide/from16 v13, v25

    :goto_772
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":cached #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    move-wide/from16 v25, v13

    :goto_78e
    iget v9, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    sub-int/2addr v9, v10

    iput v9, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    iget v9, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    sub-int/2addr v9, v10

    iput v9, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    goto/16 :goto_c81

    :cond_79a
    sget-boolean v9, Lcom/android/server/am/DynamicHiddenApp;->PREVENT_HOTNESS:Z

    if-eqz v9, :cond_c81

    if-nez v8, :cond_c81

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_c81

    :cond_7a6
    const/4 v7, 0x1

    :goto_7a7
    iget v6, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    sub-int/2addr v6, v7

    iput v6, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    goto/16 :goto_c81

    :cond_7ae
    iget-boolean v6, v0, Lcom/android/server/am/ProcessRecord;->isPreload:Z

    if-eqz v6, :cond_7d7

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Preload - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " skipped"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iput v6, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    goto/16 :goto_c81

    :cond_7d7
    const/4 v7, 0x1

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_9ad

    iget v6, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    add-int/2addr v6, v7

    iput v6, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    sget-boolean v6, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v6, :cond_86c

    iget v6, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    iget v7, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    add-int/2addr v6, v7

    iget v7, v1, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    if-le v6, v7, :cond_7f4

    const/4 v6, 0x1

    goto :goto_7f5

    :cond_7f4
    const/4 v6, 0x0

    :goto_7f5
    if-eqz v6, :cond_802

    iget v7, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    sget v8, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    if-le v7, v8, :cond_7ff

    const/4 v7, 0x1

    goto :goto_800

    :cond_7ff
    const/4 v7, 0x0

    :goto_800
    move v6, v7

    goto :goto_81f

    :cond_802
    iget v7, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    sget v8, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    if-le v7, v8, :cond_80a

    const/4 v7, 0x1

    goto :goto_80b

    :cond_80a
    const/4 v7, 0x0

    :goto_80b
    move v6, v7

    sget-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->ES_LRU_BASE_ENABLE:Z

    if-nez v7, :cond_81f

    if-nez v6, :cond_81f

    iget v7, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    iget v8, v1, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    sget v9, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_81d

    const/4 v7, 0x1

    goto :goto_81e

    :cond_81d
    const/4 v7, 0x0

    :goto_81e
    move v6, v7

    :cond_81f
    :goto_81f
    sget-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v7, :cond_875

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CAS numC[ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ] numE [ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ], Total: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " isDHAKill "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " adj "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " pname: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_875

    :cond_86c
    iget v6, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    iget v7, v1, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    if-le v6, v7, :cond_874

    const/4 v6, 0x1

    goto :goto_875

    :cond_874
    const/4 v6, 0x0

    :cond_875
    :goto_875
    if-eqz v6, :cond_879

    const-string v16, "DHA"

    :cond_879
    move-object/from16 v7, v16

    sget-boolean v8, Lcom/android/server/am/DynamicHiddenApp;->PREVENT_HOTNESS:Z

    if-eqz v8, :cond_925

    iget-object v8, v1, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_899

    iget-object v8, v1, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getIsHotness(I)Z

    move-result v8

    goto :goto_89b

    :cond_899
    const/4 v9, 0x0

    move v8, v9

    :goto_89b
    if-eqz v8, :cond_91f

    invoke-virtual {v2, v9, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v10, v1, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    invoke-virtual {v10, v9, v9}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setIsHotness(ZI)V

    if-eqz v7, :cond_923

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_923

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_H:cached #"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    invoke-virtual {v10, v9, v11}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v9, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    sub-int/2addr v9, v11

    iput v9, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    iget v9, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    sub-int/2addr v9, v11

    iput v9, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    sget-boolean v9, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v9, :cond_c81

    const-string v9, "ActivityManager_Hotness"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CA hotness protected "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c81

    :cond_91f
    const/4 v9, 0x0

    invoke-virtual {v4, v9, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_923
    move/from16 v30, v8

    :cond_925
    if-eqz v7, :cond_9a1

    iget v8, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    iput v8, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    sget-boolean v8, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    if-eqz v8, :cond_980

    iget-object v8, v1, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_980

    iget-wide v8, v0, Lcom/android/server/am/ProcessRecord;->lastPss:J

    mul-long v13, v8, v27

    iget-object v8, v1, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v8, v1, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    add-long/2addr v8, v13

    iput-wide v8, v1, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KPU : put ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v10, v13, v27

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " K"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v25, v13

    :cond_980
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":SPC_cached #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    iget v8, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    sub-int/2addr v8, v9

    iput v8, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    goto/16 :goto_c81

    :cond_9a1
    sget-boolean v8, Lcom/android/server/am/DynamicHiddenApp;->PREVENT_HOTNESS:Z

    if-eqz v8, :cond_c81

    if-nez v30, :cond_c81

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_c81

    :cond_9ad
    iget-boolean v6, v0, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_a4a

    const-wide/16 v6, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, v0, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    sub-long/2addr v8, v10

    iget-wide v6, v0, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    cmp-long v6, v6, v13

    if-eqz v6, :cond_9ee

    cmp-long v6, v8, v23

    if-lez v6, :cond_9ee

    const-string v6, "AL_Kill : over 3 sec"

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/android/server/am/ProcessRecord;->setActiveLaunch(Z)V

    invoke-virtual {v0, v13, v14}, Lcom/android/server/am/ProcessRecord;->setActiveLaunchTime(J)V

    sget-boolean v6, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v6, :cond_c81

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AL_Kill : over 3 sec: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c81

    :cond_9ee
    iget v6, v1, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    const/4 v7, 0x2

    if-ge v6, v7, :cond_a3b

    iget-object v6, v1, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v6, v1, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v1, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    sget-boolean v6, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v6, :cond_c81

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Active App Launch process < 2 : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v0, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c81

    :cond_a3b
    const-string v6, "AL_Kill : over 3 slots"

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/android/server/am/ProcessRecord;->setActiveLaunch(Z)V

    invoke-virtual {v0, v13, v14}, Lcom/android/server/am/ProcessRecord;->setActiveLaunchTime(J)V

    goto/16 :goto_c81

    :cond_a4a
    iget-boolean v6, v0, Lcom/android/server/am/ProcessRecord;->isMlLaunch:Z

    if-ne v6, v7, :cond_ac0

    iget v6, v1, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchCount:I

    iget v8, v1, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchLimit:I

    if-ge v6, v8, :cond_a9b

    iget-object v6, v1, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchSlot:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v6, v1, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchCount:I

    add-int/2addr v6, v7

    iput v6, v1, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchCount:I

    sget-boolean v6, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v6, :cond_c81

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MachineLearning App Launch process < "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchLimit:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v0, Lcom/android/server/am/ProcessRecord;->isMlLaunch:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c81

    :cond_a9b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ML_Kill : over "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchLimit:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " slots"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/android/server/am/ProcessRecord;->setMlLaunch(Z)V

    invoke-virtual {v0, v13, v14}, Lcom/android/server/am/ProcessRecord;->setMlLaunchTime(J)V

    goto/16 :goto_c81

    :cond_ac0
    iget v6, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    add-int/2addr v6, v7

    iput v6, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    sget-boolean v6, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v6, :cond_b39

    iget v6, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    iget v7, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    add-int/2addr v6, v7

    iget v7, v1, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    if-le v6, v7, :cond_ad4

    const/4 v6, 0x1

    goto :goto_ad5

    :cond_ad4
    const/4 v6, 0x0

    :goto_ad5
    if-eqz v6, :cond_ae2

    iget v7, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    sget v8, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    if-le v7, v8, :cond_adf

    const/4 v7, 0x1

    goto :goto_ae0

    :cond_adf
    const/4 v7, 0x0

    :goto_ae0
    move v6, v7

    goto :goto_aec

    :cond_ae2
    iget v7, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    sget v8, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    if-le v7, v8, :cond_aea

    const/4 v7, 0x1

    goto :goto_aeb

    :cond_aea
    const/4 v7, 0x0

    :goto_aeb
    move v6, v7

    :goto_aec
    sget-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v7, :cond_b42

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CES numC[ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ] numE [ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ], Total: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " isDHAKill "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " adj "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " pname: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b42

    :cond_b39
    iget v6, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    iget v7, v1, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    if-le v6, v7, :cond_b41

    const/4 v6, 0x1

    goto :goto_b42

    :cond_b41
    const/4 v6, 0x0

    :cond_b42
    :goto_b42
    if-eqz v6, :cond_b46

    const-string v16, "DHA"

    :cond_b46
    move-object/from16 v7, v16

    sget-boolean v8, Lcom/android/server/am/DynamicHiddenApp;->PREVENT_HOTNESS:Z

    if-eqz v8, :cond_bf3

    iget-object v8, v1, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_b66

    iget-object v8, v1, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getIsHotness(I)Z

    move-result v8

    goto :goto_b67

    :cond_b66
    const/4 v8, 0x0

    :goto_b67
    if-eqz v8, :cond_bed

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v10, v1, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/4 v11, 0x1

    invoke-virtual {v10, v9, v11}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setIsHotness(ZI)V

    if-eqz v7, :cond_bf1

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_bf1

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_H:empty #"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    invoke-virtual {v10, v9, v11}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v9, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    sub-int/2addr v9, v11

    iput v9, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    iget v9, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    sub-int/2addr v9, v11

    iput v9, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    sget-boolean v9, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v9, :cond_c81

    const-string v9, "ActivityManager_Hotness"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EM hotness protected "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c81

    :cond_bed
    const/4 v9, 0x0

    invoke-virtual {v5, v9, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_bf1
    move/from16 v30, v8

    :cond_bf3
    if-eqz v7, :cond_c6e

    iget v8, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    iput v8, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    sget-boolean v8, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    if-eqz v8, :cond_c4e

    iget-object v8, v1, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_c4e

    iget-wide v8, v0, Lcom/android/server/am/ProcessRecord;->lastPss:J

    mul-long v13, v8, v27

    iget-object v8, v1, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v8, v1, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    add-long/2addr v8, v13

    iput-wide v8, v1, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KPU : put ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v10, v13, v27

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " K"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v25, v13

    :cond_c4e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":SPC_empty #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    iget v8, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    sub-int/2addr v8, v9

    iput v8, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    goto :goto_c81

    :cond_c6e
    sget-boolean v8, Lcom/android/server/am/DynamicHiddenApp;->PREVENT_HOTNESS:Z

    if-eqz v8, :cond_c81

    if-nez v30, :cond_c81

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_c81

    :cond_c79
    move-wide/from16 v21, v7

    move/from16 v31, v9

    move-wide/from16 v32, v11

    move-wide/from16 v25, v13

    :cond_c81
    :goto_c81
    move-wide/from16 v13, v25

    add-int/lit8 v16, v31, -0x1

    move/from16 v6, v20

    move-wide/from16 v7, v21

    move-wide/from16 v11, v32

    const/4 v0, 0x0

    const-wide/32 v9, 0x1b7740

    goto/16 :goto_48

    :cond_c91
    move/from16 v20, v6

    move-wide/from16 v21, v7

    move-wide/from16 v32, v11

    move-wide/from16 v25, v13

    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->PREVENT_HOTNESS:Z

    if-eqz v0, :cond_e5a

    iget-object v6, v1, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_ca0
    iget-object v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    :goto_cab
    if-ltz v0, :cond_cd5

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    iget-object v8, v1, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v9, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ccf

    iget-object v8, v1, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v9, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v8

    iput v8, v7, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    goto :goto_cd2

    :cond_ccf
    const/4 v8, 0x0

    iput v8, v7, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    :goto_cd2
    add-int/lit8 v0, v0, -0x1

    goto :goto_cab

    :cond_cd5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    :goto_cdb
    if-ltz v0, :cond_d05

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    iget-object v8, v1, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v9, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_cff

    iget-object v8, v1, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v9, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v8

    iput v8, v7, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    goto :goto_d02

    :cond_cff
    const/4 v8, 0x0

    iput v8, v7, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    :goto_d02
    add-int/lit8 v0, v0, -0x1

    goto :goto_cdb

    :cond_d05
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v7, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_LRU_PROTECT_MIN:I

    sub-int/2addr v0, v7

    int-to-float v0, v0

    sget v7, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_LFU_MINCachedRate:F

    mul-float/2addr v0, v7

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    int-to-float v7, v7

    sget v8, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_LFU_MINEmptyRate:F

    mul-float/2addr v8, v0

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_d22

    sget v7, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_LFU_MINEmptyRate:F

    mul-float/2addr v7, v0

    goto :goto_d23

    :cond_d22
    move v7, v8

    :goto_d23
    cmpl-float v8, v0, v8

    if-lez v8, :cond_e55

    new-instance v8, Lcom/android/server/am/DynamicHiddenApp$3;

    invoke-direct {v8, v1}, Lcom/android/server/am/DynamicHiddenApp$3;-><init>(Lcom/android/server/am/DynamicHiddenApp;)V

    invoke-static {v2, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {v1, v2}, Lcom/android/server/am/DynamicHiddenApp;->computeHotnessAdjLocked(Ljava/util/ArrayList;)V

    new-instance v8, Lcom/android/server/am/DynamicHiddenApp$4;

    invoke-direct {v8, v1}, Lcom/android/server/am/DynamicHiddenApp$4;-><init>(Lcom/android/server/am/DynamicHiddenApp;)V

    invoke-static {v3, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {v1, v3}, Lcom/android/server/am/DynamicHiddenApp;->computeHotnessAdjLocked(Ljava/util/ArrayList;)V

    sget-boolean v8, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v8, :cond_d5f

    const-string v8, "ActivityManager_Hotness"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CachedLFUMax = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", EmptyLFUMax = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d5f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    :goto_d65
    int-to-float v9, v8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v0

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_dc2

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    iget-object v10, v1, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v11, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_dbe

    iget-object v10, v1, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v11, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setIsHotness(ZI)V

    iget-object v11, v1, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v13, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v11, v13, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v1, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v11, v1, Lcom/android/server/am/DynamicHiddenApp;->hotnessCached:I

    const/4 v13, 0x1

    add-int/2addr v11, v13

    iput v11, v1, Lcom/android/server/am/DynamicHiddenApp;->hotnessCached:I

    sget-boolean v11, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v11, :cond_dbf

    const-string v11, "ActivityManager_Hotness"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " hotnessCachedP "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dbf

    :cond_dbe
    const/4 v12, 0x0

    :cond_dbf
    :goto_dbf
    add-int/lit8 v8, v8, -0x1

    goto :goto_d65

    :cond_dc2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    :goto_dc8
    int-to-float v9, v8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v7

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_e24

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    iget-object v10, v1, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v11, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e20

    iget-object v10, v1, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v11, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/4 v11, 0x1

    invoke-virtual {v10, v11, v11}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setIsHotness(ZI)V

    iget-object v11, v1, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v12, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v1, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v11, v1, Lcom/android/server/am/DynamicHiddenApp;->hotnessEmpty:I

    const/4 v12, 0x1

    add-int/2addr v11, v12

    iput v11, v1, Lcom/android/server/am/DynamicHiddenApp;->hotnessEmpty:I

    sget-boolean v11, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v11, :cond_e21

    const-string v11, "ActivityManager_Hotness"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " hotnessEmptyP "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e21

    :cond_e20
    const/4 v12, 0x1

    :cond_e21
    :goto_e21
    add-int/lit8 v8, v8, -0x1

    goto :goto_dc8

    :cond_e24
    sget-boolean v8, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v8, :cond_e4b

    const-string v8, "ActivityManager_Hotness"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "hotnessCached = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/am/DynamicHiddenApp;->hotnessCached:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", hotnessEmpty = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/am/DynamicHiddenApp;->hotnessEmpty:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e4b
    iget-object v8, v1, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/server/am/DynamicHiddenApp$5;

    invoke-direct {v9, v1}, Lcom/android/server/am/DynamicHiddenApp$5;-><init>(Lcom/android/server/am/DynamicHiddenApp;)V

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_e55
    monitor-exit v6

    goto :goto_e5a

    :catchall_e57
    move-exception v0

    monitor-exit v6
    :try_end_e59
    .catchall {:try_start_ca0 .. :try_end_e59} :catchall_e57

    throw v0

    :cond_e5a
    :goto_e5a
    iget v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    iget v6, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    invoke-virtual {v1, v0, v6}, Lcom/android/server/am/DynamicHiddenApp;->updateHiddenAppNum(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    iget v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    return-void

    nop

    :pswitch_data_e6a
    .packed-switch 0xf
        :pswitch_533
        :pswitch_50c
        :pswitch_fe
        :pswitch_f6
    .end packed-switch
.end method

.method public dumpComponent(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq p2, v2, :cond_42

    if-ne p6, v2, :cond_8

    goto :goto_42

    :cond_8
    const-string v2, "ActivityManager_Hotness"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caller:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/DynamicHiddenApp;->getShortString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%-5s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p4, v1, v0

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5, p6}, Lcom/android/server/am/DynamicHiddenApp;->getShortString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    :cond_42
    :goto_42
    const-string v2, "ActivityManager_Hotness"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caller:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%-5s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p4, v1, v0

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_90
    if-eqz p7, :cond_a9

    const-string v0, "ActivityManager_Hotness"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "extra :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a9
    return-void
.end method

.method dumpDHALocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 11

    const-string v0, "ACTIVITY MANAGER DHA Hotness (dumpsys activity dhahot)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " hotnessAdj value (mHotnessAdjMap) --"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tHotnessAdj: activity %8d , empty %8d , skip %s,"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-boolean v7, v2, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->skipPackage:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " proc name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14

    :cond_6e
    return-void
.end method

.method public dumpLMKDParameter(Ljava/io/PrintWriter;)V
    .registers 4

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LMKD_enable_userspace_lmk "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_USERSPACE_LMK:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LMKD_use_minfree_levels "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_USE_MINFREE_LEVELS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LMKD_enable_upgrade_criadj "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_UPGRADE_CRIADJ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LMKD_freelimit_enable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_ENABLE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LMKD_freelimit_val "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_VAL:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LMKD_upgrade_pressure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_UPGRADE_PRESSURE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LMKD_custom_sw_limit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_SW_LIMIT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LMKD_custom_tm_limit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_TM_LIMIT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method protected getBgProcCount(I)I
    .registers 3

    packed-switch p1, :pswitch_data_12

    const/4 v0, 0x0

    return v0

    :pswitch_5
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    return v0

    :pswitch_8
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    return v0

    :pswitch_b
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    return v0

    :pswitch_e
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public getContactsPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-string v0, "com.android.contacts"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    const-string v3, "com.android.contacts"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    return-object v1

    :cond_25
    return-object v0

    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_32} :catch_33

    goto :goto_35

    :catch_33
    move-exception v2

    move-object v1, v0

    :goto_35
    return-object v1
.end method

.method getShortString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_c7

    move-object v2, p1

    const-string v3, "com."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "com."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_15
    const-string v3, "android."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_25

    const-string v3, "android."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_25
    const-string/jumbo v3, "samsung."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_37

    const-string/jumbo v3, "samsung."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_37
    const-string/jumbo v3, "sec."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_49

    const-string/jumbo v3, "sec."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_49
    const-string v3, "app."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_59

    const-string v3, "app."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_59
    const-string/jumbo v3, "google."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6b

    const-string/jumbo v3, "google."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_6b
    const-string/jumbo v3, "org."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7d

    const-string/jumbo v3, "org."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_7d
    const-string v3, ".service"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8d

    const-string v3, ".service"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_8d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%20s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%7s"

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v0

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%20s"

    new-array v4, v1, [Ljava/lang/Object;

    const-string/jumbo v5, "null"

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%7s"

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopHotProcess()Landroid/util/ArrayMap;
    .registers 10

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/android/server/am/DynamicHiddenApp$2;

    invoke-direct {v1, p0}, Lcom/android/server/am/DynamicHiddenApp$2;-><init>(Lcom/android/server/am/DynamicHiddenApp;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mProtectedTargetMap:Landroid/util/ArrayMap;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mProtectedTargetMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    :cond_1c
    const/4 v1, 0x0

    move v2, v1

    :goto_1e
    const/4 v3, 0x2

    if-ge v2, v3, :cond_80

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_7d

    iget-object v6, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    invoke-virtual {v6}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    invoke-virtual {v6}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getUid()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/DynamicHiddenApp;->mProtectedTargetMap:Landroid/util/ArrayMap;

    if-eqz v6, :cond_7d

    iget-object v6, p0, Lcom/android/server/am/DynamicHiddenApp;->mProtectedTargetMap:Landroid/util/ArrayMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-eqz v6, :cond_6b

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_74

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_74

    :cond_6b
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v7

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_74
    :goto_74
    iget-object v7, p0, Lcom/android/server/am/DynamicHiddenApp;->mProtectedTargetMap:Landroid/util/ArrayMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_80
    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mProtectedTargetMap:Landroid/util/ArrayMap;

    return-object v1
.end method

.method incrementEmptyAppCount()I
    .registers 4

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    :cond_13
    return v0
.end method

.method increment_ES_AppCount(I)I
    .registers 5

    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    iget v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    add-int/2addr v0, v1

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    if-le v0, v1, :cond_b

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    :cond_b
    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    :cond_18
    return v0
.end method

.method public initActiveLaunchParam()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    goto :goto_11

    :cond_c
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_11
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    return-void
.end method

.method public initForHotness()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->setSkipPackageForLauncher()V

    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->runDecreaseHotnessScoreThread()V

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_LRU_PROTECT_MIN:I

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    if-ge v0, v1, :cond_10

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_LRU_PROTECT_MIN:I

    :cond_10
    return-void
.end method

.method public initMLLaunchCountParam()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchSlot:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchSlot:Ljava/util/ArrayList;

    goto :goto_11

    :cond_c
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchSlot:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_11
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchCount:I

    return-void
.end method

.method public initProperty()V
    .registers 7

    iget-wide v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->TOTAL_MEMORY:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    const/16 v1, 0x38a

    if-lez v0, :cond_28f

    const-string/jumbo v0, "ro.cfg.dha_cached_max"

    const-string/jumbo v2, "ro.config.dha_cached_max"

    const-string v3, "16"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->INIT_CACHED_APPS:I

    const-string/jumbo v0, "ro.cfg.dha_cached_min"

    const-string/jumbo v2, "ro.config.dha_cached_min"

    const-string v3, "4"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    const-string/jumbo v0, "ro.cfg.dha_cached_max"

    const-string/jumbo v2, "ro.config.dha_cached_max"

    const-string v3, "16"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    const-string/jumbo v0, "ro.cfg.dha_empty_init"

    const-string/jumbo v2, "ro.config.dha_empty_init"

    const-string v3, "24"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->INIT_EMPTY_APPS:I

    const-string/jumbo v0, "ro.cfg.dha_empty_min"

    const-string/jumbo v2, "ro.config.dha_empty_min"

    const-string v3, "8"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    const-string/jumbo v0, "ro.cfg.dha_empty_max"

    const-string/jumbo v2, "ro.config.dha_empty_max"

    const-string v3, "24"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    const-string/jumbo v0, "ro.cfg.ldha_es_enable"

    const-string/jumbo v2, "ro.config.ldha_es_enable"

    const-string/jumbo v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    const-string/jumbo v0, "ro.cfg.ldha_spc_enable"

    const-string/jumbo v2, "ro.config.ldha_spc_enable"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LDHA_SPC_ENABLE:Z

    const-string/jumbo v0, "ro.cfg.dha_pwhitelist_enable"

    const-string/jumbo v2, "ro.config.dha_pwhitelist_enable"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnable:I

    const-string/jumbo v0, "ro.config.dha_knox_plist_enable"

    const-string/jumbo v2, "ro.config.dha_knox_plist_enable"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnableKnox:I

    const-string/jumbo v0, "ro.cfg.dha_lmk_scale"

    const-string/jumbo v2, "ro.config.dha_lmk_scale"

    const-string v3, "-1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    const-string/jumbo v0, "ro.cfg.dha_lmk_array"

    const-string/jumbo v2, "ro.config.dha_lmk_array"

    const-string/jumbo v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    const-string/jumbo v0, "ro.cfg.dha_dirlmkadj_array"

    const-string/jumbo v2, "ro.config.dha_dirlmkadj_array"

    const-string/jumbo v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->mDirectLMKADJArray:Ljava/lang/String;

    const-string/jumbo v0, "ro.cfg.dha_dirlmkmul_val"

    const-string/jumbo v2, "ro.config.dha_dirlmkmul_val"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->mDirectLMKMultiVal:F

    const-string/jumbo v0, "ro.cfg.ams_exception_enable"

    const-string/jumbo v2, "ro.config.ams_exception_enable"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->mAMSExceptionEnable:Z

    const-string/jumbo v0, "ro.cfg.ams_knoxexpt_enable"

    const-string/jumbo v2, "ro.config.ams_knoxexpt_enable"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->mKnoxAMSExceptionEnable:Z

    const-string/jumbo v0, "ro.cfg.fall_prevent_enable"

    const-string/jumbo v2, "ro.config.fall_prevent_enable"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    const-string/jumbo v0, "ro.cfg.dha_package_enable"

    const-string/jumbo v2, "ro.config.dha_package_enable"

    const-string/jumbo v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DHA_PACKAGE_ENABLE:Z

    const-string/jumbo v0, "ro.cfg.dha_es_lru_en"

    const-string/jumbo v2, "ro.config.dha_es_lru_en"

    const-string/jumbo v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->ES_LRU_BASE_ENABLE:Z

    const-string/jumbo v0, "ro.cfg.dha_pwhl_key"

    const-string/jumbo v2, "ro.config.dha_pwhl_key"

    const-string v3, "512"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_key:I

    const-string/jumbo v0, "ro.cfg.dha_pwhl_key_knox"

    const-string/jumbo v2, "ro.config.dha_pwhl_key_knox"

    const-string v3, "1539"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_key_knox:I

    const-string/jumbo v0, "ro.cfg.dha_step"

    const-string/jumbo v2, "ro.config.dha_step"

    iget v3, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    const-string/jumbo v0, "ro.cfg.dha_th_rate"

    const-string/jumbo v2, "ro.config.dha_th_rate"

    iget v3, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    const-string/jumbo v2, "ro.cfg.dha_th_level"

    const-string/jumbo v3, "ro.config.dha_th_level"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    const-string/jumbo v0, "ro.cfg.dha_increase_th"

    const-string/jumbo v1, "ro.config.dha_increase_th"

    sget-wide v2, Lcom/android/server/am/DynamicHiddenApp;->DHA_INCREASE_THRESHOLD:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/DynamicHiddenApp;->DHA_INCREASE_THRESHOLD:J

    const-string/jumbo v0, "ro.cfg.dha_rec_cch_enable"

    const-string/jumbo v1, "ro.config.dha_rec_cch_enable"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->RECENT_CACHED_ENABLE:Z

    const-string/jumbo v0, "ro.cfg.dha_rec_cch_limit"

    const-string/jumbo v1, "ro.config.dha_rec_cch_limit"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LIMITATION_RECENT_CACHED_SLOT:Z

    const-string/jumbo v0, "ro.cfg.dha_rec_cch_max"

    const-string/jumbo v1, "ro.config.dha_rec_cch_max"

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_REC_CACHED_APPS:I

    goto :goto_2df

    :cond_28f
    const-string/jumbo v0, "ro.config.dha_step"

    iget v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    const-string/jumbo v0, "ro.config.dha_th_rate"

    iget v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    const-string/jumbo v2, "ro.config.dha_th_level"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    const-string/jumbo v0, "ro.config.dha_increase_th"

    sget-wide v1, Lcom/android/server/am/DynamicHiddenApp;->DHA_INCREASE_THRESHOLD:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/DynamicHiddenApp;->DHA_INCREASE_THRESHOLD:J

    :goto_2df
    iget-wide v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    const-wide/16 v2, 0x2af8

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-ltz v0, :cond_2ec

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchLimit:I

    goto :goto_2fa

    :cond_2ec
    iget-wide v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    const-wide/16 v4, 0x1b58

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2f8

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchLimit:I

    goto :goto_2fa

    :cond_2f8
    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchLimit:I

    :goto_2fa
    invoke-virtual {p0, v1}, Lcom/android/server/am/DynamicHiddenApp;->makeLists(Z)V

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->updateLMKThreshold()V

    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->setResCached()V

    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->setLMKD2ndParamter()V

    const-string v0, "DHA_PROPERTY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DHA STEP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DHA_PROPERTY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DHA TH RATE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DHA_PROPERTY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DHA mSzDHAThreshold "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DHA_PROPERTY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DHA DHA_INCREASE_THRESHOLD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/DynamicHiddenApp;->DHA_INCREASE_THRESHOLD:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public killTimeOverEmptyProcess(Lcom/android/server/am/ProcessRecord;IJ)V
    .registers 10

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_38

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    if-le p2, v0, :cond_38

    iget-wide v0, p1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    cmp-long v0, v0, p3

    if-gez v0, :cond_38

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "empty for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v1, 0x1b7740

    add-long/2addr v1, p3

    iget-wide v3, p1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    :cond_38
    return-void
.end method

.method public makeLists(Z)V
    .registers 9

    if-nez p1, :cond_c

    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_c
    const/4 v0, 0x0

    move v1, v0

    :goto_e
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp;->DHA_STATICEXCEPT_PROC_ARRAY:[[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2c

    sget-object v2, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    sget-object v4, Lcom/android/server/am/DynamicHiddenApp;->DHA_STATICEXCEPT_PROC_ARRAY:[[Ljava/lang/String;

    aget-object v4, v4, v1

    aget-object v4, v4, v0

    sget-object v5, Lcom/android/server/am/DynamicHiddenApp;->DHA_STATICEXCEPT_PROC_ARRAY:[[Ljava/lang/String;

    aget-object v5, v5, v1

    aget-object v3, v5, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v2, v4, v3, p1}, Lcom/android/server/am/DynamicHiddenApp;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_2c
    const/4 v1, 0x0

    move v2, v1

    move v1, v3

    :goto_2f
    sget-object v4, Lcom/android/server/am/DynamicHiddenApp;->DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_5e

    sget v4, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnableKnox:I

    if-ne v4, v3, :cond_47

    sget v4, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_key_knox:I

    and-int/2addr v4, v1

    if-eqz v4, :cond_47

    sget-object v4, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_map:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/am/DynamicHiddenApp;->DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x2

    invoke-direct {p0, v4, v5, v6, p1}, Lcom/android/server/am/DynamicHiddenApp;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    :cond_47
    sget v4, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnable:I

    if-ne v4, v3, :cond_59

    sget v4, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_key:I

    and-int/2addr v4, v1

    if-eqz v4, :cond_59

    sget-object v4, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_map:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/am/DynamicHiddenApp;->DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v5, v3, p1}, Lcom/android/server/am/DynamicHiddenApp;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    :cond_59
    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_5e
    sget-object v1, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_68
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/DynamicHiddenApp;->setSkipPackage(Ljava/lang/String;Z)V

    goto :goto_68

    :cond_78
    nop

    :goto_79
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_SKIP_ARRAY:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_88

    sget-object v2, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_SKIP_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/DynamicHiddenApp;->setSkipPackage(Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    :cond_88
    return-void
.end method

.method public removeKillingProcessUss(ILjava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5c

    iget-wide v0, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    iget-object v2, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    iget-wide v0, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2b

    iput-wide v2, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    :cond_2b
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KPU : remove ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] , Remain = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " K"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5c
    return-void
.end method

.method protected runDecreaseHotnessScoreThread()V
    .registers 3

    new-instance v0, Lcom/android/server/am/DynamicHiddenApp$1;

    const-string v1, "DecreaseHotnessScoreThread"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/DynamicHiddenApp$1;-><init>(Lcom/android/server/am/DynamicHiddenApp;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mDecreaseHotnessScoreThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mDecreaseHotnessScoreThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method setCallerHotnessAdj(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)V
    .registers 8

    if-eqz p1, :cond_d1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez v0, :cond_8

    goto/16 :goto_d1

    :cond_8
    if-eqz p2, :cond_c4

    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez v0, :cond_10

    goto/16 :goto_c4

    :cond_10
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_13
    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v3

    if-lez v3, :cond_66

    invoke-virtual {v1, v2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v2

    iput v2, p1, Lcom/android/server/am/ProcessRecord;->callerHotnessAdj:I

    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v2, :cond_bf

    const-string v2, "ActivityManager_Hotness"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCallerHotnessAdj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", hotnessAdj="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->callerHotnessAdj:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bf

    :cond_66
    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v2, :cond_bf

    const-string v2, "ActivityManager_Hotness"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCallerHotnessAdj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", hotnessAdj is zero"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bf

    :cond_93
    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v1, :cond_bf

    const-string v1, "ActivityManager_Hotness"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCallerHotnessAdj "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t have activity hotness!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bf
    :goto_bf
    monitor-exit v0

    return-void

    :catchall_c1
    move-exception v1

    monitor-exit v0
    :try_end_c3
    .catchall {:try_start_13 .. :try_end_c3} :catchall_c1

    throw v1

    :cond_c4
    :goto_c4
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v0, :cond_d0

    const-string v0, "ActivityManager_Hotness"

    const-string/jumbo v1, "setCallerHotnessAdj caller is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d0
    return-void

    :cond_d1
    :goto_d1
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v0, :cond_dd

    const-string v0, "ActivityManager_Hotness"

    const-string/jumbo v1, "setCallerHotnessAdj callee is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_dd
    return-void
.end method

.method setLMKD2ndParamter()V
    .registers 5

    iget-wide v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->TOTAL_MEMORY:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_4c

    const-string/jumbo v0, "ro.cfg.upgrade_pressure"

    const-string/jumbo v1, "ro.config.upgrade_pressure"

    const-string v2, "100"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_UPGRADE_PRESSURE:I

    const-string/jumbo v0, "ro.cfg.custom_sw_limit"

    const-string/jumbo v1, "ro.config.custom_sw_limit"

    const-string v2, "500"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_SW_LIMIT:I

    const-string/jumbo v0, "ro.cfg.freelimit_val"

    const-string/jumbo v1, "ro.config.freelimit_val"

    const-string v2, "11"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_VAL:I

    goto :goto_79

    :cond_4c
    const-string/jumbo v0, "ro.config.upgrade_pressure"

    const-string v1, "100"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_UPGRADE_PRESSURE:I

    const-string/jumbo v0, "ro.config.custom_sw_limit"

    const-string v1, "500"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_SW_LIMIT:I

    const-string/jumbo v0, "ro.config.freelimit_val"

    const-string v1, "11"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_VAL:I

    :goto_79
    return-void
.end method

.method public setResCached()V
    .registers 4

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    add-int/lit8 v0, v0, -0x4

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->highRes_MaxCached:I

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->normalRes_MaxCached:I

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    add-int/lit8 v0, v0, -0x2

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->highRes_MinCached:I

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->normalRes_MinCached:I

    const-string v0, "DHA_PROPERTY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "highRes_MaxCached : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->highRes_MaxCached:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " normalRes_MaxCached : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->normalRes_MaxCached:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DHA_PROPERTY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "highRes_MinCached : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->highRes_MinCached:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " normalRes_MinCached : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->normalRes_MinCached:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setResCached(Ljava/lang/String;)V
    .registers 5

    const-string v0, "Max"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    add-int/lit8 v0, v0, -0x4

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->highRes_MaxCached:I

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->normalRes_MaxCached:I

    const-string v0, "DHA_PROPERTY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "highRes_MaxCached : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->highRes_MaxCached:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " normalRes_MaxCached : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->normalRes_MaxCached:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    :cond_36
    const-string v0, "Min"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    add-int/lit8 v0, v0, -0x2

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->highRes_MinCached:I

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->normalRes_MinCached:I

    const-string v0, "DHA_PROPERTY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "highRes_MinCached : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->highRes_MinCached:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " normalRes_MinCached : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->normalRes_MinCached:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    :goto_6b
    return-void
.end method

.method setSkipPackage(Ljava/lang/String;Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    iput-boolean p2, v0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->skipPackage:Z

    goto :goto_20

    :cond_13
    new-instance v0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;-><init>(I)V

    iput-boolean p2, v0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->skipPackage:Z

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_20
    return-void
.end method

.method public setSkipPackageForLauncher()V
    .registers 9

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5e

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_5d

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_5d

    sget-boolean v5, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v5, :cond_55

    const-string v5, "ActivityManager_Hotness"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getLauncherPackage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/DynamicHiddenApp;->setSkipPackage(Ljava/lang/String;Z)V

    :cond_5d
    goto :goto_20

    :cond_5e
    return-void
.end method

.method public updateDHAParameter()V
    .registers 19

    move-object/from16 v1, p0

    :try_start_2
    const-string v0, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, "[=:]"

    const-string v5, "/data/log/dha_parameter.dat"

    const/4 v6, 0x0

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "ActivityManager"

    const-string v14, "Start updateDHAParameter"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_6b6

    const-string v13, "ActivityManager"

    const-string/jumbo v14, "updateDHAParameter exist"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/FileReader;

    invoke-direct {v14, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v6, v13

    :goto_37
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    const/4 v14, 0x0

    if-eqz v13, :cond_65c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_652

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v15, ""

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_652

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v15, "\n"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_64

    nop

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto/16 :goto_656

    :cond_64
    const-string v13, "[=:]"

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    move-object v2, v13

    const-string v13, "[=:]"

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    move-object v3, v13

    const-string v13, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "name = [ "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " ], value = [ "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " ]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v13, "ro.config.dha_cached_max"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    sput v13, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    const/4 v10, 0x1

    const/4 v11, 0x1

    goto :goto_37

    :cond_b5
    const-string/jumbo v13, "ro.config.dha_cached_min"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    sput v13, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    const/4 v10, 0x1

    const/4 v12, 0x1

    goto/16 :goto_37

    :cond_c8
    const-string/jumbo v13, "ro.config.dha_empty_max"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_dd

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    sput v13, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    :goto_d7
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto/16 :goto_64c

    :cond_dd
    const-string/jumbo v13, "ro.config.dha_empty_min"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_ed

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    sput v13, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    goto :goto_d7

    :cond_ed
    const-string/jumbo v13, "ro.config.dha_empty_init"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_fd

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    sput v13, Lcom/android/server/am/DynamicHiddenApp;->INIT_EMPTY_APPS:I

    goto :goto_d7

    :cond_fd
    const-string/jumbo v13, "mSzDHAStep"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10d

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v1, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    goto :goto_d7

    :cond_10d
    const-string/jumbo v13, "mSzDHAThreshold"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11e

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    int-to-long v13, v13

    iput-wide v13, v1, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    goto :goto_d7

    :cond_11e
    const-string/jumbo v13, "ro.config.dha_th_rate"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12e

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    iput v13, v1, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    goto :goto_d7

    :cond_12e
    const-string v13, "DHA_INCREASE_THRESHOLD"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13e

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    int-to-long v13, v13

    sput-wide v13, Lcom/android/server/am/DynamicHiddenApp;->DHA_INCREASE_THRESHOLD:J

    goto :goto_d7

    :cond_13e
    const-string/jumbo v13, "ro.config.dha_lmk_scale"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_150

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    sput v13, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    const/4 v9, 0x1

    goto/16 :goto_37

    :cond_150
    const-string/jumbo v13, "ro.config.dha_lmk_array"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_177

    sput-object v3, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    const/4 v9, 0x1

    const-string v13, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "dha_lmk_array mLMKArray ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_37

    :cond_177
    const-string/jumbo v13, "ro.config.dha_dirlmkadj_array"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19e

    sput-object v3, Lcom/android/server/am/DynamicHiddenApp;->mDirectLMKADJArray:Ljava/lang/String;

    const/4 v9, 0x1

    const-string v13, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "dha_lmk_array mDirectLMKADJArray ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Lcom/android/server/am/DynamicHiddenApp;->mDirectLMKADJArray:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_37

    :cond_19e
    const-string/jumbo v13, "ro.config.dha_dirlmkmul_val"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1c9

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    sput v13, Lcom/android/server/am/DynamicHiddenApp;->mDirectLMKMultiVal:F

    const/4 v9, 0x1

    const-string v13, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "dha_lmk_array mDirectLMKMultiVal ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v15, Lcom/android/server/am/DynamicHiddenApp;->mDirectLMKMultiVal:F

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_37

    :cond_1c9
    const-string/jumbo v13, "ro.config.dha_pwhitelist_enable"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1db

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    sput v13, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnable:I

    const/4 v8, 0x1

    goto/16 :goto_37

    :cond_1db
    const-string/jumbo v13, "ro.config.dha_knox_plist_enable"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1ed

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    sput v13, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnableKnox:I

    const/4 v8, 0x1

    goto/16 :goto_37

    :cond_1ed
    const-string/jumbo v13, "ro.config.dha_pwhl_key"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1ff

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    sput v13, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_key:I

    const/4 v8, 0x1

    goto/16 :goto_37

    :cond_1ff
    const-string/jumbo v13, "ro.config.dha_pwhl_key_knox"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_211

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    sput v13, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_key_knox:I

    const/4 v8, 0x1

    goto/16 :goto_37

    :cond_211
    const-string/jumbo v13, "ro.config.ldha_es_enable"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_222

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    sput-boolean v13, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    goto/16 :goto_d7

    :cond_222
    const-string/jumbo v13, "ro.config.ldha_spc_enable"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_233

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    sput-boolean v13, Lcom/android/server/am/DynamicHiddenApp;->LDHA_SPC_ENABLE:Z

    goto/16 :goto_d7

    :cond_233
    const-string/jumbo v13, "ro.config.ams_exception_enable"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_244

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    sput-boolean v13, Lcom/android/server/am/DynamicHiddenApp;->mAMSExceptionEnable:Z

    goto/16 :goto_d7

    :cond_244
    const-string/jumbo v13, "ro.config.ams_knoxexpt_enable"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_255

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    sput-boolean v13, Lcom/android/server/am/DynamicHiddenApp;->mKnoxAMSExceptionEnable:Z

    goto/16 :goto_d7

    :cond_255
    const-string/jumbo v13, "ro.config.fha_enable"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_267

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    sput-boolean v13, Lcom/android/server/am/DynamicHiddenApp;->FHA_ENABLE:Z

    const/4 v9, 0x1

    goto/16 :goto_37

    :cond_267
    const-string/jumbo v13, "ro.config.fha_cached_max"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_27b

    iget-object v13, v1, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxCachedProcessesNumFHA(I)V

    goto/16 :goto_d7

    :cond_27b
    const-string/jumbo v13, "ro.config.fha_empty_rate"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_28f

    iget-object v13, v1, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/server/am/ActivityManagerConstants;->updateEmptyRate(F)V

    goto/16 :goto_d7

    :cond_28f
    const-string/jumbo v13, "ro.config.fall_prevent_enable"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2a0

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    sput-boolean v13, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    goto/16 :goto_d7

    :cond_2a0
    const-string/jumbo v13, "ro.config.dha_es_lru_en"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2b1

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    sput-boolean v13, Lcom/android/server/am/DynamicHiddenApp;->ES_LRU_BASE_ENABLE:Z

    goto/16 :goto_d7

    :cond_2b1
    const-string/jumbo v13, "ro.config.dha_package_enable"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2c2

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    sput-boolean v13, Lcom/android/server/am/DynamicHiddenApp;->DHA_PACKAGE_ENABLE:Z

    goto/16 :goto_d7

    :cond_2c2
    const-string/jumbo v13, "ro.config.hotness_LRU_Min"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2d3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    sput v13, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_LRU_PROTECT_MIN:I

    goto/16 :goto_d7

    :cond_2d3
    const-string/jumbo v13, "ro.config.ro.config.hotness_LFU_CaRate"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2e4

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    sput v13, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_LFU_MINCachedRate:F

    goto/16 :goto_d7

    :cond_2e4
    const-string/jumbo v13, "ro.config.hotness_LFU_EmRate"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2f5

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    sput v13, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_LFU_MINEmptyRate:F

    goto/16 :goto_d7

    :cond_2f5
    const-string/jumbo v13, "ro.config.dha_hotness_enable"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_306

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    sput-boolean v13, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_ENABLE:Z

    goto/16 :goto_d7

    :cond_306
    const-string/jumbo v13, "ro.cfg.low"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_326

    iget-object v13, v1, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    sget-object v13, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_LOW_ADJ:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v13}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v13

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v13, v14}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    sput v13, Lcom/android/server/am/DynamicHiddenApp;->LMK_LOW_ADJ:I

    goto/16 :goto_d7

    :cond_326
    const-string/jumbo v13, "ro.cfg.medium"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_346

    iget-object v13, v1, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    sget-object v13, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_MEDIUM_ADJ:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v13}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v13

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v13, v14}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    sput v13, Lcom/android/server/am/DynamicHiddenApp;->LMK_MEDIUM_ADJ:I

    goto/16 :goto_d7

    :cond_346
    const-string/jumbo v13, "ro.cfg.critical"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_366

    iget-object v13, v1, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    sget-object v13, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_CRITICAL_ADJ:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v13}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v13

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v13, v14}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    sput v13, Lcom/android/server/am/DynamicHiddenApp;->LMK_CRITICAL_ADJ:I

    goto/16 :goto_d7

    :cond_366
    const-string/jumbo v13, "ro.cfg.debug"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_386

    iget-object v13, v1, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    sget-object v13, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_DEBUG:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v13}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v13

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-static {v13, v14}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    sput-boolean v13, Lcom/android/server/am/DynamicHiddenApp;->LMK_DEBUG:Z

    goto/16 :goto_d7

    :cond_386
    const-string/jumbo v13, "ro.cfg.critical_upgrade"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3a6

    iget-object v13, v1, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    sget-object v13, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_CRITICAL_UPGRADE:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v13}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v13

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-static {v13, v14}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    sput-boolean v13, Lcom/android/server/am/DynamicHiddenApp;->LMK_CRITICAL_UPGRADE:Z

    goto/16 :goto_d7

    :cond_3a6
    const-string/jumbo v13, "ro.cfg.upgrade_pressure"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3c6

    iget-object v13, v1, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    sget-object v13, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_UPGRADE_PRESSURE:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v13}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v13

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v13, v14}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    sput v13, Lcom/android/server/am/DynamicHiddenApp;->LMK_UPGRADE_PRESSURE:I

    goto/16 :goto_d7

    :cond_3c6
    const-string/jumbo v13, "ro.cfg.downgrade_pressure"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3ee

    iget-object v13, v1, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    sget-object v13, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_DOWNGRADE_PRESSURE:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v13}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v13

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v13, v14}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    sput v13, Lcom/android/server/am/DynamicHiddenApp;->LMK_DOWNGRADE_PRESSURE:I

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    mul-int/lit8 v13, v13, 0x5

    sput v13, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_SW_LIMIT:I

    goto/16 :goto_d7

    :cond_3ee
    const-string/jumbo v13, "ro.cfg.kill_heaviest_task"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_40e

    iget-object v13, v1, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    sget-object v13, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_KILL_HEAVIEST_TASK:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v13}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v13

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-static {v13, v14}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    sput-boolean v13, Lcom/android/server/am/DynamicHiddenApp;->LMK_KILL_HEAVIEST_TASK:Z

    goto/16 :goto_d7

    :cond_40e
    const-string/jumbo v13, "ro.cfg.kill_timeout_ms"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_436

    iget-object v13, v1, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    sget-object v13, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_KILL_TIMEOUT_MS:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v13}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v13

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v13, v14}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    sput v13, Lcom/android/server/am/DynamicHiddenApp;->LMK_KILL_TIMEOUT_MS:I

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    mul-int/lit8 v13, v13, 0xa

    sput v13, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_TM_LIMIT:I

    goto/16 :goto_d7

    :cond_436
    const-string/jumbo v13, "ro.cfg.use_minfree_levels"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_456

    iget-object v13, v1, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    sget-object v13, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_USE_MINFREE_LEVELS:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v13}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v13

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-static {v13, v14}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    sput-boolean v13, Lcom/android/server/am/DynamicHiddenApp;->LMK_USE_MINFREE_LEVELS:Z

    goto/16 :goto_d7

    :cond_456
    const-string/jumbo v13, "ro.cfg.enable_swapfree_limit"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_476

    iget-object v13, v1, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    sget-object v13, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_ENABLE_SWAPFREE_LIMIT:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v13}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v13

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-static {v13, v14}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    sput-boolean v13, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_SWAPFREE_LIMIT:Z

    goto/16 :goto_d7

    :cond_476
    const-string/jumbo v13, "ro.cfg.enable_cmarbinfree_sub"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_496

    iget-object v13, v1, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    sget-object v13, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_ENABLE_CMARBINFREE_SUB:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v13}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v13

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-static {v13, v14}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    sput-boolean v13, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_CMARBINFREE_SUB:Z

    goto/16 :goto_d7

    :cond_496
    const-string/jumbo v13, "ro.cfg.enable_upgrade_criadj"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4b6

    iget-object v13, v1, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    sget-object v13, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_ENABLE_UPGRADE_CRIADJ:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v13}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v13

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-static {v13, v14}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    sput-boolean v13, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_UPGRADE_CRIADJ:Z

    goto/16 :goto_d7

    :cond_4b6
    const-string/jumbo v13, "ro.cfg.freelimit_enable"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4d6

    iget-object v13, v1, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    sget-object v13, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_FREELIMIT_ENABLE:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v13}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v13

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-static {v13, v14}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    sput-boolean v13, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_ENABLE:Z

    goto/16 :goto_d7

    :cond_4d6
    const-string/jumbo v13, "ro.cfg.freelimit_val"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4f6

    iget-object v13, v1, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    sget-object v13, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_FREELIMIT_VAL:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v13}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v13

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v13, v14}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    sput v13, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_VAL:I

    goto/16 :goto_d7

    :cond_4f6
    const-string/jumbo v13, "ro.cfg.custom_sw_limit"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_520

    iget-object v13, v1, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    sget-object v13, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_DOWNGRADE_PRESSURE:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v13}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v13

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    div-int/lit8 v14, v14, 0x5

    invoke-static {v13, v14}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    div-int/lit8 v13, v13, 0x5

    sput v13, Lcom/android/server/am/DynamicHiddenApp;->LMK_DOWNGRADE_PRESSURE:I

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    sput v13, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_SW_LIMIT:I

    goto/16 :goto_d7

    :cond_520
    const-string/jumbo v13, "ro.cfg.custom_tm_limit"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_54a

    iget-object v13, v1, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    sget-object v13, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_KILL_TIMEOUT_MS:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v13}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v13

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    div-int/lit8 v14, v14, 0xa

    invoke-static {v13, v14}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    div-int/lit8 v13, v13, 0xa

    sput v13, Lcom/android/server/am/DynamicHiddenApp;->LMK_KILL_TIMEOUT_MS:I

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    sput v13, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_TM_LIMIT:I

    goto/16 :goto_d7

    :cond_54a
    const-string/jumbo v13, "ro.config.dha_rec_cch_enable"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_55b

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    sput-boolean v13, Lcom/android/server/am/DynamicHiddenApp;->RECENT_CACHED_ENABLE:Z

    goto/16 :goto_d7

    :cond_55b
    const-string/jumbo v13, "ro.config.dha_rec_cch_limit"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_56c

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    sput-boolean v13, Lcom/android/server/am/DynamicHiddenApp;->LIMITATION_RECENT_CACHED_SLOT:Z

    goto/16 :goto_d7

    :cond_56c
    const-string/jumbo v13, "ro.config.dha_rec_cch_max"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_57d

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    sput v13, Lcom/android/server/am/DynamicHiddenApp;->MAX_REC_CACHED_APPS:I

    goto/16 :goto_d7

    :cond_57d
    const-string/jumbo v13, "ro.config.dha_hrt_min_enable"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_58e

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    sput-boolean v13, Lcom/android/server/am/DynamicHiddenApp;->HRT_MinCached_Enable:Z

    goto/16 :goto_d7

    :cond_58e
    const-string/jumbo v13, "ro.config.swappiness"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_59f

    const-string/jumbo v13, "sys.sysctl.swappiness"

    invoke-static {v13, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d7

    :cond_59f
    const-string/jumbo v13, "ro.config.mmap_readaround_limit"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5b0

    const-string/jumbo v13, "sys.sysctl.mmap_readaround_limit"

    invoke-static {v13, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d7

    :cond_5b0
    const-string/jumbo v13, "ro.config.fault_around_bytes"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5c1

    const-string/jumbo v13, "sys.sysctl.fault_around_bytes"

    invoke-static {v13, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d7

    :cond_5c1
    const-string/jumbo v13, "ro.cfg.dha_2ndprop_thMB"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5d2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    sput v13, Lcom/android/server/am/DynamicHiddenApp;->TOTAL_MEMORY:I

    goto/16 :goto_d7

    :cond_5d2
    iget-wide v13, v1, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    sget v15, Lcom/android/server/am/DynamicHiddenApp;->TOTAL_MEMORY:I

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    int-to-long v4, v15

    cmp-long v4, v13, v4

    if-lez v4, :cond_644

    const-string/jumbo v4, "ro.cfg.dha_cached_max"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    const/4 v10, 0x1

    const/4 v11, 0x1

    goto :goto_656

    :cond_5f1
    const-string/jumbo v4, "ro.cfg.dha_cached_min"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_603

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    const/4 v10, 0x1

    const/4 v12, 0x1

    goto :goto_656

    :cond_603
    const-string/jumbo v4, "ro.cfg.dha_empty_max"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_613

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    goto :goto_64c

    :cond_613
    const-string/jumbo v4, "ro.cfg.dha_empty_init"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_623

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->INIT_EMPTY_APPS:I

    goto :goto_64c

    :cond_623
    const-string/jumbo v4, "ro.cfg.dha_empty_min"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_633

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    goto :goto_64c

    :cond_633
    const-string/jumbo v4, "ro.cfg.dha_lmk_scale"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64c

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    const/4 v9, 0x1

    goto :goto_656

    :cond_644
    const-string v4, "ActivityManager"

    const-string/jumbo v5, "not matched parameter"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64c
    :goto_64c
    move-object/from16 v4, v16

    move-object/from16 v5, v17

    goto/16 :goto_37

    :cond_652
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    :goto_656
    move-object/from16 v4, v16

    move-object/from16 v5, v17

    goto/16 :goto_37

    :cond_65c
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    if-eqz v8, :cond_668

    invoke-virtual {v1, v14}, Lcom/android/server/am/DynamicHiddenApp;->makeLists(Z)V

    :cond_668
    if-eqz v9, :cond_688

    iget-object v4, v1, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessList;->updateLMKThreshold()V

    iget-object v4, v1, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    const-string/jumbo v5, "ro.config.dha_th_level"

    const/16 v13, 0x38a

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    :cond_688
    if-eqz v10, :cond_698

    if-eqz v11, :cond_691

    const-string v4, "Max"

    invoke-virtual {v1, v4}, Lcom/android/server/am/DynamicHiddenApp;->setResCached(Ljava/lang/String;)V

    :cond_691
    if-eqz v12, :cond_698

    const-string v4, "Min"

    invoke-virtual {v1, v4}, Lcom/android/server/am/DynamicHiddenApp;->setResCached(Ljava/lang/String;)V

    :cond_698
    sget v4, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    sget v5, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    add-int/2addr v4, v5

    sput v4, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    const/high16 v4, 0x3f800000    # 1.0f

    sget v5, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    int-to-float v5, v5

    sget v13, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    sget v14, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    add-int/2addr v13, v14

    int-to-float v13, v13

    div-float/2addr v5, v13

    sub-float/2addr v4, v5

    sput v4, Lcom/android/server/am/ActivityManagerConstants;->EMPTY_RATE:F

    const-string v4, "ActivityManager"

    const-string v5, "complete parameter"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6cc

    :cond_6b6
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    const-string v4, "ActivityManager"

    const-string/jumbo v5, "file does not exist"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_6c2} :catch_6c8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_6c2} :catch_6c3

    goto :goto_6cc

    :catch_6c3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_6cd

    :catch_6c8
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_6cc
    nop

    :goto_6cd
    return-void
.end method

.method public updateHiddenAppNum(II)I
    .registers 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget v3, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    iget-object v4, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    if-eqz v4, :cond_191

    iget-object v4, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->readLightMemInfo()V

    iget-object v4, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v4

    iget-object v6, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v6}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeLegacy()J

    move-result-wide v6

    iget-object v8, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->getRbinTotalSize()J

    move-result-wide v8

    iget-object v10, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v10}, Lcom/android/internal/util/MemInfoReader;->getRbinAllocedSize()J

    move-result-wide v10

    add-long v12, v4, v6

    sub-long v14, v8, v10

    sub-long/2addr v12, v14

    sget-boolean v14, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v14, :cond_34

    iget v3, v0, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    :cond_34
    sget-boolean v14, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v14, :cond_d1

    const/4 v14, 0x0

    sget-boolean v15, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v15, :cond_40

    iget v14, v0, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    goto :goto_47

    :cond_40
    iget v15, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v16, v14

    iget v14, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    add-int/2addr v14, v15

    :goto_47
    const-string v15, "ActivityManager"

    move/from16 v17, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v15

    const-string v15, "AvailableMem = "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v15, 0x400

    move-wide/from16 v19, v10

    div-long v10, v12, v15

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "kB (Free: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v10, v4, v15

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "kB, Cached: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v10, v6, v15

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "kB) Threshold = "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    div-long/2addr v10, v15

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "kB [MaxHidden: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", Current Hidden"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", Current Empty"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "], Frag.Mem = 0KB, KPU Total = "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    div-long/2addr v10, v15

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "kB, RbinTotal = "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v10, v8, v15

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "kB, RbinAlloc = "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v10, v19, v15

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "kB, RecCached = "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/android/server/am/DynamicHiddenApp;->numRecCached:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v10, v18

    invoke-static {v10, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d5

    :cond_d1
    move/from16 v17, v3

    move-wide/from16 v19, v10

    :goto_d5
    const-wide/16 v10, 0x0

    cmp-long v3, v4, v10

    if-gtz v3, :cond_dc

    return v17

    :cond_dc
    iget v3, v0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    iget-wide v10, v0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    long-to-float v10, v10

    mul-float/2addr v10, v3

    const/4 v11, 0x0

    const/4 v14, 0x0

    sget-boolean v15, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v15, :cond_ed

    add-int v11, v1, v2

    iget v14, v0, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    goto :goto_f0

    :cond_ed
    move v11, v2

    iget v14, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    :goto_f0
    move/from16 v23, v3

    move-wide/from16 v21, v4

    iget-wide v3, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    add-long/2addr v3, v12

    long-to-float v3, v3

    cmpg-float v3, v3, v10

    if-gez v3, :cond_14d

    sget-boolean v3, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v3, :cond_105

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/DynamicHiddenApp;->decrement_ES_AppCount(II)I

    move-result v3

    :goto_104
    goto :goto_10a

    :cond_105
    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/DynamicHiddenApp;->decrementEmptyAppCount(II)I

    move-result v3

    goto :goto_104

    :goto_10a
    sget-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v4, :cond_191

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Decrease Slot Value : cached - "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "("

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    if-lt v15, v1, :cond_128

    const/4 v15, 0x0

    goto :goto_12b

    :cond_128
    iget v15, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    sub-int/2addr v15, v1

    :goto_12b
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "), empty - "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "("

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v15, v3, v2

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ")"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_191

    :cond_14d
    long-to-float v3, v12

    sget-wide v4, Lcom/android/server/am/DynamicHiddenApp;->DHA_INCREASE_THRESHOLD:J

    long-to-float v4, v4

    add-float/2addr v4, v10

    cmpl-float v3, v3, v4

    if-lez v3, :cond_18f

    if-ge v11, v14, :cond_15c

    iget v3, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    if-lt v1, v3, :cond_18f

    :cond_15c
    sget-boolean v3, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v3, :cond_165

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/DynamicHiddenApp;->increment_ES_AppCount(I)I

    move-result v3

    :goto_164
    goto :goto_16a

    :cond_165
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/DynamicHiddenApp;->incrementEmptyAppCount()I

    move-result v3

    goto :goto_164

    :goto_16a
    sget-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v4, :cond_191

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Increase Slot Max : cached - "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", empty - "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_191

    :cond_18f
    move/from16 v3, v17

    :cond_191
    :goto_191
    return v3
.end method

.method final updateHotnessAdj(Lcom/android/server/am/ProcessRecord;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/DynamicHiddenApp;->updateHotnessAdj(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method final updateHotnessAdj(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;)V
    .registers 12

    if-eqz p1, :cond_256

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez v0, :cond_8

    goto/16 :goto_256

    :cond_8
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->curTopApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->curTopApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    sget-object v1, Lcom/android/server/am/DynamicHiddenApp;->curTopApp:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v0, :cond_29

    const-string v0, "ActivityManager_Hotness"

    const-string v1, "TOP app is same!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return-void

    :cond_2a
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->strPrevAppForActivityHotness:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    return-void

    :cond_35
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->strPrevAppForActivityHotness:Ljava/lang/String;

    const-string/jumbo v0, "unknown"

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->strPrevAppForEmptyHotness:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_41
    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_157

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    iget-boolean v2, v1, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->skipPackage:Z

    if-eqz v2, :cond_67

    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v2, :cond_65

    const-string v2, "ActivityManager_Hotness"

    const-string/jumbo v3, "we don\'t need to update hotness"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    monitor-exit v0

    return-void

    :cond_67
    const/4 v2, 0x1

    if-ne p2, v2, :cond_78

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->callerHotnessAdj:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v4

    if-le v3, v4, :cond_7b

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->callerHotnessAdj:I

    invoke-virtual {v1, v3, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setHotness(II)V

    goto :goto_7b

    :cond_78
    invoke-virtual {v1, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->increaseHotness(I)V

    :cond_7b
    :goto_7b
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setPackageName(Ljava/lang/String;)V

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v3}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setUid(I)V

    iget v3, p0, Lcom/android/server/am/DynamicHiddenApp;->hotnessCached:I

    if-lez v3, :cond_11e

    invoke-virtual {v1, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    if-le v3, v4, :cond_11e

    iget-object v3, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_a9
    if-ltz v3, :cond_c6

    invoke-virtual {v1, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    if-ge v4, v5, :cond_c3

    goto :goto_c6

    :cond_c3
    add-int/lit8 v3, v3, -0x1

    goto :goto_a9

    :cond_c6
    :goto_c6
    iget-object v4, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v1, v2, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setIsHotness(ZI)V

    iget-object v4, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setIsHotness(ZI)V

    invoke-virtual {v4, v5, v2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setIsHotness(ZI)V

    iget-object v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v2, :cond_11e

    const-string v2, "ActivityManager_Hotness"

    const-string/jumbo v5, "hotness LFU changed"

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11e
    iget-object v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v2, :cond_194

    const-string v2, "ActivityManager_Hotness"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hotness updated ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_194

    :cond_157
    new-instance v1, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    invoke-direct {v1, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v2, :cond_194

    const-string v2, "ActivityManager_Hotness"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hotness newly updated ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_194
    :goto_194
    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_ENABLE:Z

    if-eqz v2, :cond_207

    invoke-virtual {v1, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v2

    iget v3, p0, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_MAX_VALUE:I

    if-le v2, v3, :cond_207

    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v2, :cond_1ac

    const-string v2, "ActivityManager_Hotness"

    const-string/jumbo v3, "hotness value reached MAX, the hotness value of all app will be tuned half"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ac
    iget-object v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_207

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    invoke-virtual {v4, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setHalf(I)V

    iget-object v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v5, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v5, :cond_206

    const-string v5, "ActivityManager_Hotness"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HotnessMAX! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_206
    goto :goto_1b6

    :cond_207
    monitor-exit v0
    :try_end_208
    .catchall {:try_start_41 .. :try_end_208} :catchall_253

    move-object v0, v1

    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v1, :cond_244

    const-string v1, "ActivityManager_Hotness"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateHotnessAdj ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", hotness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_244
    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->resumedAppForDHALocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_24f

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_250

    :cond_24f
    const/4 v2, 0x0

    :goto_250
    sput-object v2, Lcom/android/server/am/DynamicHiddenApp;->curTopApp:Lcom/android/server/am/ProcessRecord;

    return-void

    :catchall_253
    move-exception v1

    :try_start_254
    monitor-exit v0
    :try_end_255
    .catchall {:try_start_254 .. :try_end_255} :catchall_253

    throw v1

    :cond_256
    :goto_256
    return-void
.end method

.method final updateLastKillTime(Lcom/android/server/am/ProcessRecord;J)V
    .registers 8

    if-eqz p1, :cond_49

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez v0, :cond_7

    goto :goto_49

    :cond_7
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mLastKillTimeMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mLastKillTimeMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_46

    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v0, :cond_45

    const-string v0, "ActivityManager_Hotness"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLastKillTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    return-void

    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v1

    :cond_49
    :goto_49
    return-void
.end method
