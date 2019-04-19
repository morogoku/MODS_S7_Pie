.class public Lcom/android/server/am/ActivityManagerPerformance;
.super Ljava/lang/Object;
.source "ActivityManagerPerformance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerPerformance$MainHandler;
    }
.end annotation


# static fields
.field static AMP_ENABLE:Z = false

.field static AMP_PERF_ENABLE:Z = false

.field static AMP_RELAUNCH_RESUME_ON:Z = false

.field static DEBUG:Z = false

.field static DEBUG_TRACE:Z = false

.field private static final MSG_CFMS_EXEC_ACTIVITY:I = 0x5

.field private static final MSG_CFMS_HINT_AMS_HOME:I = 0x7

.field private static final MSG_CFMS_HINT_AMS_SWITCH:I = 0x6

.field private static final MSG_DISABLE_ACT_RESUME:I = 0x3

.field private static final MSG_DISABLE_ACT_START:I = 0x2

.field private static final MSG_DISABLE_APP_SWITCH:I = 0x1

.field private static final MSG_ENABLE_ACT_RESUME_TAIL:I = 0x4

.field static NOT_USER_BINARY:Z = false

.field static final TAG:Ljava/lang/String; = "ActivityManagerPerformance"

.field private static TIMEOUT_ACT_RESUME:I = 0x0

.field private static TIMEOUT_ACT_START:I = 0x0

.field private static TIMEOUT_APP_SWITCH:I = 0x0

.field private static TIMEOUT_PREV_RESUME:I = 0x0

.field static final TOP_STATE_APP:I = 0x4

.field static final TOP_STATE_HOME:I = 0x2

.field static final TOP_STATE_INIT:I = 0x0

.field static final TOP_STATE_IS_CREATING:I = 0x1

.field static final TOP_STATE_RECENTS_APP:I = 0x3

.field private static booster:Lcom/android/server/am/ActivityManagerPerformance;

.field static curTopAct:Lcom/android/server/am/ActivityRecord;

.field static curTopState:I

.field private static isChinaModel:Z

.field private static final mLockinit:Ljava/lang/Object;


# instance fields
.field private isMultiWindowResume:Z

.field private lastHomeBoostedTime:J

.field private lastHomePressedTime:J

.field private mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterLazy:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsScreenOn:Z

.field private mLockActResume:Ljava/lang/Object;

.field private mLockActStart:Ljava/lang/Object;

.field private mLockAppSwitch:Ljava/lang/Object;

.field private mLockHome:Ljava/lang/Object;

.field private mLockRelaunchResume:Ljava/lang/Object;

.field private mLockTail:Ljava/lang/Object;

.field private mLuckyMoneyBooster:Lcom/samsung/android/os/SemDvfsManager;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private needSkipResume:Z

.field private rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

.field private rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

.field private rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

.field private rLastActHome:Lcom/android/server/am/ActivityRecord;

.field private rLastActTail:Lcom/android/server/am/ActivityRecord;

.field private rLastRelaunchResume:Lcom/android/server/am/ActivityRecord;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->SHIP_BUILD:Z

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    move v0, v2

    goto :goto_e

    :cond_d
    :goto_d
    move v0, v1

    :goto_e
    sput-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->NOT_USER_BINARY:Z

    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->mIsDebugLevelHigh:Z

    if-eqz v0, :cond_18

    sget-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->NOT_USER_BINARY:Z

    if-nez v0, :cond_2b

    :cond_18
    const-string/jumbo v0, "true"

    const-string/jumbo v3, "sys.config.amp_debug"

    const-string/jumbo v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_2b
    goto :goto_2d

    :cond_2c
    move v1, v2

    :goto_2d
    sput-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "sys.config.amp_debug_trace"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "sys.config.amp_enable"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "sys.config.amp_perf_enable"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "sys.config.amp_relaunch_resume"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->AMP_RELAUNCH_RESUME_ON:Z

    const-string/jumbo v0, "sys.config.amp_to_act_resume"

    const-string v1, "1000"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_ACT_RESUME:I

    const-string/jumbo v0, "sys.config.amp_to_act_start"

    const-string v1, "2000"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_ACT_START:I

    const-string/jumbo v0, "sys.config.amp_to_app_switch"

    const-string v1, "3000"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_APP_SWITCH:I

    const-string/jumbo v0, "sys.config.amp_to_prev_resume"

    const-string v1, "3000"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_PREV_RESUME:I

    const-string v0, "China"

    const-string/jumbo v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->isChinaModel:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerPerformance;->mLockinit:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockActResume:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockActStart:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockAppSwitch:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockTail:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockHome:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockRelaunchResume:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    new-instance v0, Lcom/android/server/am/ActivityManagerPerformance$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityManagerPerformance$1;-><init>(Lcom/android/server/am/ActivityManagerPerformance;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "ActivityManagerPerformance"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandlerThread:Lcom/android/server/ServiceThread;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    new-instance v0, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;-><init>(Lcom/android/server/am/ActivityManagerPerformance;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerPerformance;->registerReceiver()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityManagerPerformance;ZLcom/android/server/am/ActivityRecord;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/ActivityManagerPerformance;ZLcom/android/server/am/ActivityRecord;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/ActivityManagerPerformance;ZLcom/android/server/am/ActivityRecord;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/ActivityManagerPerformance;ZLcom/android/server/am/ActivityRecord;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterTail(ZLcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/server/am/ActivityManagerPerformance;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/am/ActivityManagerPerformance;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerPerformance;->needSkipResume:Z

    return p1
.end method

.method static executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    if-eqz p0, :cond_1aa

    if-nez p1, :cond_6

    goto/16 :goto_1aa

    :cond_6
    const/4 v0, 0x0

    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1a
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->NOT_USER_BINARY:Z

    if-eqz v1, :cond_154

    const-string v1, "_perf_enable="

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_44

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- AMP perf enable change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_44
    const-string v1, "_enable="

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7b

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- AMP enable change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    if-eqz v2, :cond_7a

    if-eqz v1, :cond_75

    sget-object v2, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    invoke-direct {v2}, Lcom/android/server/am/ActivityManagerPerformance;->registerReceiver()V

    goto :goto_7a

    :cond_75
    sget-object v2, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    invoke-direct {v2}, Lcom/android/server/am/ActivityManagerPerformance;->unregisterReceiver()V

    :cond_7a
    :goto_7a
    return-void

    :cond_7b
    const-string v1, "_relaunch_resume="

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a1

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->AMP_RELAUNCH_RESUME_ON:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- AMP relaunch_resume change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_a1
    const-string v1, "_to_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_154

    move v1, v3

    :try_start_aa
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_ae
    .catch Ljava/lang/NumberFormatException; {:try_start_aa .. :try_end_ae} :catch_136

    move v1, v2

    nop

    const/16 v2, 0x64

    if-ge v1, v2, :cond_ba

    const-string v2, "-- AMP time cannot be under 100ms"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_ba
    const-string v2, "_app_switch="

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d9

    sput v1, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_APP_SWITCH:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- AMP TIMEOUT_APP_SWITCH change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_d9
    const-string v2, "_act_start="

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f8

    sput v1, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_ACT_START:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- AMP TIMEOUT_ACT_START change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_f8
    const-string v2, "_act_resume="

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_117

    sput v1, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_ACT_RESUME:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- AMP TIMEOUT_ACT_RESUME change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_117
    const-string v2, "_prev_resume="

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_154

    sput v1, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_PREV_RESUME:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- AMP TIMEOUT_PREV_RESUME change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catch_136
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-- AMP cannot change time. value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_154
    const-string v1, "_debug="

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17a

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- AMP debug change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sput-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    return-void

    :cond_17a
    const-string v1, "_debug_trace="

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- AMP debug_trace change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sput-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    return-void

    :cond_1a0
    sget-object v1, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    if-eqz v1, :cond_1a9

    sget-object v1, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityManagerPerformance;->dump(Ljava/io/PrintWriter;)V

    :cond_1a9
    return-void

    :cond_1aa
    :goto_1aa
    return-void
.end method

.method public static getBooster()Lcom/android/server/am/ActivityManagerPerformance;
    .registers 1

    sget-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    return-object v0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBooster(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)Lcom/android/server/am/ActivityManagerPerformance;
    .registers 4

    if-eqz p0, :cond_24

    if-nez p1, :cond_5

    goto :goto_24

    :cond_5
    sget-object v0, Lcom/android/server/am/ActivityManagerPerformance;->mLockinit:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz v1, :cond_1b

    sget-object v1, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    if-nez v1, :cond_1b

    if-eqz p0, :cond_1b

    if-eqz p1, :cond_1b

    new-instance v1, Lcom/android/server/am/ActivityManagerPerformance;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/ActivityManagerPerformance;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    :cond_1b
    invoke-static {}, Lcom/android/server/am/ActivityManagerPerformance;->getBooster()Lcom/android/server/am/ActivityManagerPerformance;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_21

    throw v1

    :cond_24
    :goto_24
    const/4 v0, 0x0

    return-object v0
.end method

.method static declared-synchronized notifyCurTopAct(Lcom/android/server/am/ActivityRecord;)V
    .registers 12

    const-class v0, Lcom/android/server/am/ActivityManagerPerformance;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz v1, :cond_170

    sget-object v1, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    if-ne v1, p0, :cond_d

    goto/16 :goto_170

    :cond_d
    const-string/jumbo v1, "notifyCurTopAct()"

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-nez p0, :cond_18

    move v6, v5

    goto :goto_29

    :cond_18
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v6

    if-eqz v6, :cond_20

    move v6, v3

    goto :goto_29

    :cond_20
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isActivityTypeRecents()Z

    move-result v6

    if-eqz v6, :cond_28

    move v6, v2

    goto :goto_29

    :cond_28
    move v6, v4

    :goto_29
    sget-boolean v7, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v7, :cond_e5

    const-string/jumbo v7, "notifyCurTopAct() activity changed"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n[Activity] prev: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", cur: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v8, :cond_d4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n[Process] prev: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    const/4 v10, 0x0

    if-eqz v9, :cond_6a

    sget-object v9, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    iget-object v9, v9, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_6b

    :cond_6a
    move-object v9, v10

    :goto_6b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", cur: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_78

    iget-object v9, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_79

    :cond_78
    move-object v9, v10

    :goto_79
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n[Package] prev: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    if-eqz v9, :cond_97

    sget-object v9, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    iget-object v9, v9, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_98

    :cond_97
    move-object v9, v10

    :goto_98
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", cur: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_a5

    iget-object v10, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    nop

    :cond_a5
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n[TOP_STATE] prev: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    invoke-static {v9}, Lcom/android/server/am/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", cur: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    :cond_d4
    const-string v8, "ActivityManagerPerformance"

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v8, :cond_e5

    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e5
    sput-object p0, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    sget v7, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    if-eq v7, v6, :cond_16e

    sget v7, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    sput v6, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-eqz v8, :cond_16e

    sget-object v8, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    if-eqz v8, :cond_16e

    sget-object v8, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    iget-boolean v8, v8, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    if-eqz v8, :cond_16e

    sget v8, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    const/4 v9, 0x0

    if-ne v8, v3, :cond_115

    sget-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v2, :cond_10e

    const-string v2, "ActivityManagerPerformance"

    const-string/jumbo v3, "notifyCurTopAct() call setBoosterHome()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10e
    sget-object v2, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    invoke-direct {v2, v5, v9, p0}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterHome(ZZLcom/android/server/am/ActivityRecord;)V
    :try_end_113
    .catchall {:try_start_3 .. :try_end_113} :catchall_172

    monitor-exit v0

    return-void

    :cond_115
    if-ne v7, v2, :cond_16e

    :try_start_117
    sget v2, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    if-eq v2, v4, :cond_11f

    sget v2, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I
    :try_end_11d
    .catchall {:try_start_117 .. :try_end_11d} :catchall_172

    if-ne v2, v5, :cond_16e

    :cond_11f
    :try_start_11f
    sget-object v2, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_135

    if-eq v2, p0, :cond_134

    if-eqz p0, :cond_135

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v8, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_134

    goto :goto_135

    :cond_134
    goto :goto_16e

    :cond_135
    :goto_135
    sget-object v3, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    if-eqz v3, :cond_151

    sget v3, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    if-ne v3, v4, :cond_151

    sget-object v3, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    iput-boolean v9, v3, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    sget-boolean v3, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v3, :cond_14f

    const-string v3, "ActivityManagerPerformance"

    const-string/jumbo v4, "notifyCurTopAct() skipped. isMultiWindowResume: true"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14f
    .catch Ljava/lang/NullPointerException; {:try_start_11f .. :try_end_14f} :catch_164
    .catchall {:try_start_11f .. :try_end_14f} :catchall_172

    :cond_14f
    monitor-exit v0

    return-void

    :cond_151
    :try_start_151
    sget-boolean v3, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v3, :cond_15d

    const-string v3, "ActivityManagerPerformance"

    const-string/jumbo v4, "notifyCurTopAct() call setBoosterAppSwitch()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15d
    sget-object v3, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    invoke-direct {v3, v5, p0}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/am/ActivityRecord;)V
    :try_end_162
    .catch Ljava/lang/NullPointerException; {:try_start_151 .. :try_end_162} :catch_164
    .catchall {:try_start_151 .. :try_end_162} :catchall_172

    monitor-exit v0

    return-void

    :catch_164
    move-exception v2

    :try_start_165
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v3, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    iput-boolean v9, v3, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z
    :try_end_16c
    .catchall {:try_start_165 .. :try_end_16c} :catchall_172

    monitor-exit v0

    return-void

    :cond_16e
    :goto_16e
    monitor-exit v0

    return-void

    :cond_170
    :goto_170
    monitor-exit v0

    return-void

    :catchall_172
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final registerReceiver()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setBoosterActResume(ZLcom/android/server/am/ActivityRecord;)V
    .registers 12

    const-string/jumbo v0, "setBoosterActResume()"

    const/4 v1, 0x0

    if-eqz p2, :cond_9

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_a

    :cond_9
    move-object v2, v1

    :goto_a
    sget-boolean v3, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v3, :cond_89

    if-eqz p2, :cond_13

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_14

    :cond_13
    move-object v3, v1

    :goto_14
    move-object v4, v1

    :try_start_15
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_1c

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_1b} :catch_1f

    goto :goto_1d

    :cond_1c
    move-object v6, v1

    :goto_1d
    move-object v4, v6

    goto :goto_24

    :catch_1f
    move-exception v5

    const/4 v4, 0x0

    invoke-virtual {v5}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_24
    const-string v5, "ActivityManagerPerformance"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setBoosterActResume() onoff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", r: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "), curBoost: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v5, :cond_89

    const-string v5, "ActivityManagerPerformance"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setBoosterActResume() Trace\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_89
    if-eqz p1, :cond_a7

    const-string v3, "com.sec.android.app.camera"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9b

    const-string v3, "com.android.server.telecom"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    :cond_9b
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v2}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_a7
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v3, :cond_b7

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v4, "AMS_ACT_RESUME"

    const/16 v5, 0x15

    invoke-static {v3, v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

    :cond_b7
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v3, :cond_c4

    const-string v1, "ActivityManagerPerformance"

    const-string/jumbo v4, "setBoosterActResume() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c4
    const/4 v4, 0x3

    if-eqz p1, :cond_158

    if-eqz p2, :cond_d2

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v5

    if-eqz v5, :cond_d2

    const/16 v5, 0x1f4

    goto :goto_d4

    :cond_d2
    sget v5, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_ACT_RESUME:I

    :goto_d4
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v6, v4}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->removeMessages(I)V

    :try_start_d9
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockActResume:Ljava/lang/Object;

    monitor-enter v6
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_dc} :catch_f9

    :try_start_dc
    invoke-virtual {v3}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    monitor-exit v6
    :try_end_e2
    .catchall {:try_start_dc .. :try_end_e2} :catchall_f6

    :try_start_e2
    const-string v6, "ActivityManagerPerformance"

    const-string v7, "AMP_acquire() ACT_RESUME"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v6, v4, p2}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    int-to-long v7, v5

    invoke-virtual {v6, v4, v7, v8}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_f5} :catch_f9

    goto :goto_157

    :catchall_f6
    move-exception v4

    :try_start_f7
    monitor-exit v6
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f6

    :try_start_f8
    throw v4
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_f9} :catch_f9

    :catch_f9
    move-exception v4

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-eqz v6, :cond_103

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    nop

    :cond_103
    const-string v6, "ActivityManagerPerformance"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AMP_acquire() ACT_RESUME failed. stop boosting of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v6, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v6, :cond_14e

    const-string v6, "ActivityManagerPerformance"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AMP_acquire() ACT_RESUME failed. e: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14e
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    invoke-direct {p0, v6, v7}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/am/ActivityRecord;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_157
    goto :goto_1a8

    :cond_158
    :try_start_158
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockActResume:Ljava/lang/Object;

    monitor-enter v5
    :try_end_15b
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_15b} :catch_177

    :try_start_15b
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-nez v6, :cond_161

    monitor-exit v5

    return-void

    :cond_161
    invoke-virtual {v3}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    monitor-exit v5
    :try_end_167
    .catchall {:try_start_15b .. :try_end_167} :catchall_174

    :try_start_167
    const-string v1, "ActivityManagerPerformance"

    const-string v5, "AMP_release() ACT_RESUME"

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->removeMessages(I)V
    :try_end_173
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_173} :catch_177

    goto :goto_1a8

    :catchall_174
    move-exception v1

    :try_start_175
    monitor-exit v5
    :try_end_176
    .catchall {:try_start_175 .. :try_end_176} :catchall_174

    :try_start_176
    throw v1
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_177} :catch_177

    :catch_177
    move-exception v1

    const-string v4, "ActivityManagerPerformance"

    const-string v5, "AMP_release() ACT_RESUME failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v4, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_1a5

    const-string v4, "ActivityManagerPerformance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AMP_release() ACT_RESUME failed. e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1a8
    return-void
.end method

.method private setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V
    .registers 13

    const-string/jumbo v0, "setBoosterActStart()"

    const/4 v1, 0x0

    if-eqz p2, :cond_9

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_a

    :cond_9
    move-object v2, v1

    :goto_a
    sget-boolean v3, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v3, :cond_89

    if-eqz p2, :cond_13

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_14

    :cond_13
    move-object v3, v1

    :goto_14
    move-object v4, v1

    :try_start_15
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_1c

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_1b} :catch_1f

    goto :goto_1d

    :cond_1c
    move-object v6, v1

    :goto_1d
    move-object v4, v6

    goto :goto_24

    :catch_1f
    move-exception v5

    const/4 v4, 0x0

    invoke-virtual {v5}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_24
    const-string v5, "ActivityManagerPerformance"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setBoosterActStart() onoff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", r: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "), curBoost: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v5, :cond_89

    const-string v5, "ActivityManagerPerformance"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setBoosterActStart() Trace\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_89
    if-eqz p1, :cond_a7

    const-string v3, "com.sec.android.app.camera"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9b

    const-string v3, "com.android.server.telecom"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    :cond_9b
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v2}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_a7
    sget-boolean v3, Lcom/android/server/am/ActivityManagerPerformance;->isChinaModel:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_126

    if-eqz p2, :cond_126

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_126

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_126

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v5, "LuckyMoneyReceiveUI"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_126

    if-eqz p1, :cond_125

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLuckyMoneyBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_11e

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v3, "LuckyMoneyBooster"

    const/16 v5, 0xc

    invoke-static {v1, v3, v5}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLuckyMoneyBooster:Lcom/samsung/android/os/SemDvfsManager;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLuckyMoneyBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_104

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLuckyMoneyBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v1

    if-eqz v1, :cond_ea

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLuckyMoneyBooster:Lcom/samsung/android/os/SemDvfsManager;

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    goto :goto_11e

    :cond_ea
    const-string v3, "ActivityManagerPerformance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBoosterActStart() skipped. Hongbao getSupportedFrequency() failed. AMP_PERF_ENABLE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_104
    const-string v1, "ActivityManagerPerformance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBoosterActStart() skipped. Hongbao SemDvfsManager.createInstance() failed. AMP_PERF_ENABLE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11e
    :goto_11e
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLuckyMoneyBooster:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v3, 0x1388

    invoke-virtual {v1, v3}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    :cond_125
    return-void

    :cond_126
    sget-boolean v3, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    const/16 v5, 0x15

    if-eqz v3, :cond_13b

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v3, :cond_13b

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v6, "AMS_ACT_START"

    invoke-static {v3, v6, v5}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

    goto :goto_14d

    :cond_13b
    sget-boolean v3, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-nez v3, :cond_14d

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v3, :cond_14d

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v6, "AMS_RESUME"

    invoke-static {v3, v6, v5}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

    :cond_14d
    :goto_14d
    sget-boolean v3, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-eqz v3, :cond_154

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

    goto :goto_156

    :cond_154
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

    :goto_156
    if-nez v3, :cond_172

    const-string v1, "ActivityManagerPerformance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBoosterActStart() skipped. SemDvfsManager.createInstance() failed. AMP_PERF_ENABLE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_172
    const/4 v5, 0x2

    if-eqz p1, :cond_20c

    if-eqz p2, :cond_180

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v6

    if-eqz v6, :cond_180

    const/16 v6, 0x1f4

    goto :goto_189

    :cond_180
    sget-boolean v6, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-eqz v6, :cond_187

    sget v6, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_ACT_START:I

    goto :goto_189

    :cond_187
    sget v6, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_PREV_RESUME:I

    :goto_189
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v7, v5}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->removeMessages(I)V

    :try_start_18e
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockActStart:Ljava/lang/Object;

    monitor-enter v7
    :try_end_191
    .catch Ljava/lang/Exception; {:try_start_18e .. :try_end_191} :catch_1ae

    :try_start_191
    invoke-virtual {v3}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    monitor-exit v7
    :try_end_197
    .catchall {:try_start_191 .. :try_end_197} :catchall_1ab

    :try_start_197
    const-string v7, "ActivityManagerPerformance"

    const-string v8, "AMP_acquire() ACT_START"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v7, v5, p2}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    int-to-long v8, v6

    invoke-virtual {v7, v5, v8, v9}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1aa
    .catch Ljava/lang/Exception; {:try_start_197 .. :try_end_1aa} :catch_1ae

    goto :goto_20b

    :catchall_1ab
    move-exception v5

    :try_start_1ac
    monitor-exit v7
    :try_end_1ad
    .catchall {:try_start_1ac .. :try_end_1ad} :catchall_1ab

    :try_start_1ad
    throw v5
    :try_end_1ae
    .catch Ljava/lang/Exception; {:try_start_1ad .. :try_end_1ae} :catch_1ae

    :catch_1ae
    move-exception v5

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eqz v7, :cond_1b8

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    nop

    :cond_1b8
    const-string v7, "ActivityManagerPerformance"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AMP_acquire() ACT_START failed. stop boosting of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v7, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v7, :cond_203

    const-string v7, "ActivityManagerPerformance"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AMP_acquire() ACT_START failed. e: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_203
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    invoke-direct {p0, v4, v7}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_20b
    goto :goto_25f

    :cond_20c
    invoke-direct {p0, v4, p2}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterTail(ZLcom/android/server/am/ActivityRecord;)V

    :try_start_20f
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockActStart:Ljava/lang/Object;

    monitor-enter v4
    :try_end_212
    .catch Ljava/lang/Exception; {:try_start_20f .. :try_end_212} :catch_22e

    :try_start_212
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-nez v6, :cond_218

    monitor-exit v4

    return-void

    :cond_218
    invoke-virtual {v3}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    monitor-exit v4
    :try_end_21e
    .catchall {:try_start_212 .. :try_end_21e} :catchall_22b

    :try_start_21e
    const-string v1, "ActivityManagerPerformance"

    const-string v4, "AMP_release() ACT_START"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->removeMessages(I)V
    :try_end_22a
    .catch Ljava/lang/Exception; {:try_start_21e .. :try_end_22a} :catch_22e

    goto :goto_25f

    :catchall_22b
    move-exception v1

    :try_start_22c
    monitor-exit v4
    :try_end_22d
    .catchall {:try_start_22c .. :try_end_22d} :catchall_22b

    :try_start_22d
    throw v1
    :try_end_22e
    .catch Ljava/lang/Exception; {:try_start_22d .. :try_end_22e} :catch_22e

    :catch_22e
    move-exception v1

    const-string v4, "ActivityManagerPerformance"

    const-string v5, "AMP_release() ACT_START failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v4, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_25c

    const-string v4, "ActivityManagerPerformance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AMP_release() ACT_START failed. e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25c
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_25f
    return-void
.end method

.method private setBoosterAppSwitch(ZLcom/android/server/am/ActivityRecord;)V
    .registers 12

    const-string/jumbo v0, "setBoosterAppSwitch()"

    const/4 v1, 0x0

    if-eqz p2, :cond_9

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_a

    :cond_9
    move-object v2, v1

    :goto_a
    sget-boolean v3, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v3, :cond_89

    if-eqz p2, :cond_13

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_14

    :cond_13
    move-object v3, v1

    :goto_14
    move-object v4, v1

    :try_start_15
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_1c

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_1b} :catch_1f

    goto :goto_1d

    :cond_1c
    move-object v6, v1

    :goto_1d
    move-object v4, v6

    goto :goto_24

    :catch_1f
    move-exception v5

    const/4 v4, 0x0

    invoke-virtual {v5}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_24
    const-string v5, "ActivityManagerPerformance"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setBoosterAppSwitch() onoff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", r: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "), curBoost: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v5, :cond_89

    const-string v5, "ActivityManagerPerformance"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setBoosterAppSwitch() Trace\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_89
    if-eqz p1, :cond_a7

    const-string v3, "com.sec.android.app.camera"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9b

    const-string v3, "com.android.server.telecom"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    :cond_9b
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v2}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_a7
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v3, :cond_b7

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v4, "AMS_APP_SWITCH"

    const/16 v5, 0x15

    invoke-static {v3, v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

    :cond_b7
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v3, :cond_c4

    const-string v1, "ActivityManagerPerformance"

    const-string/jumbo v4, "setBoosterAppSwitch() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c4
    const/4 v4, 0x1

    if-eqz p1, :cond_164

    if-eqz p2, :cond_d2

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v5

    if-eqz v5, :cond_d2

    const/16 v5, 0x1f4

    goto :goto_d4

    :cond_d2
    sget v5, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_APP_SWITCH:I

    :goto_d4
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v6, v4}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->removeMessages(I)V

    :try_start_d9
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockAppSwitch:Ljava/lang/Object;

    monitor-enter v6
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_dc} :catch_105

    :try_start_dc
    invoke-virtual {v3}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    monitor-exit v6
    :try_end_e2
    .catchall {:try_start_dc .. :try_end_e2} :catchall_102

    :try_start_e2
    const-string v6, "ActivityManagerPerformance"

    const-string v7, "AMP_acquire() APP_SWITCH"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v6, v4, p2}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    int-to-long v7, v5

    invoke-virtual {v6, v4, v7, v8}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v8, 0x6

    invoke-virtual {v7, v8, v2}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_101} :catch_105

    goto :goto_163

    :catchall_102
    move-exception v4

    :try_start_103
    monitor-exit v6
    :try_end_104
    .catchall {:try_start_103 .. :try_end_104} :catchall_102

    :try_start_104
    throw v4
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_105} :catch_105

    :catch_105
    move-exception v4

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eqz v6, :cond_10f

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    nop

    :cond_10f
    const-string v6, "ActivityManagerPerformance"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AMP_acquire() APP_SWITCH failed. stop boosting of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v6, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v6, :cond_15a

    const-string v6, "ActivityManagerPerformance"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AMP_acquire() APP_SWITCH failed. e: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15a
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    invoke-direct {p0, v6, v7}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/am/ActivityRecord;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_163
    goto :goto_1b8

    :cond_164
    invoke-direct {p0, v4, p2}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterTail(ZLcom/android/server/am/ActivityRecord;)V

    :try_start_167
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockAppSwitch:Ljava/lang/Object;

    monitor-enter v5
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_16a} :catch_186

    :try_start_16a
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-nez v6, :cond_170

    monitor-exit v5

    return-void

    :cond_170
    invoke-virtual {v3}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    monitor-exit v5
    :try_end_176
    .catchall {:try_start_16a .. :try_end_176} :catchall_183

    :try_start_176
    const-string v1, "ActivityManagerPerformance"

    const-string v5, "AMP_release() APP_SWITCH"

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->removeMessages(I)V
    :try_end_182
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_182} :catch_186

    goto :goto_1b8

    :catchall_183
    move-exception v1

    :try_start_184
    monitor-exit v5
    :try_end_185
    .catchall {:try_start_184 .. :try_end_185} :catchall_183

    :try_start_185
    throw v1
    :try_end_186
    .catch Ljava/lang/Exception; {:try_start_185 .. :try_end_186} :catch_186

    :catch_186
    move-exception v1

    const-string v4, "ActivityManagerPerformance"

    const-string v5, "AMP_release() APP_SWITCH failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v4, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_1b5

    const-string v4, "ActivityManagerPerformance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBoosterAppSwitch() AMP_release failed. e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1b8
    return-void
.end method

.method private setBoosterHome(ZZLcom/android/server/am/ActivityRecord;)V
    .registers 13

    const-string/jumbo v0, "setBoosterHome()"

    const/4 v1, 0x0

    if-eqz p3, :cond_9

    iget-object v2, p3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_a

    :cond_9
    move-object v2, v1

    :goto_a
    sget-boolean v3, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v3, :cond_7f

    if-eqz p3, :cond_13

    iget-object v1, p3, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    nop

    :cond_13
    const-string v3, "ActivityManagerPerformance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBoosterHome() fastBoost: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", startAct: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", curTopState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    invoke-static {v5}, Lcom/android/server/am/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", r: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "), pkgName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v3, :cond_7f

    const-string v3, "ActivityManagerPerformance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBoosterHome() Trace\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7f
    sget v1, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    if-nez v1, :cond_8c

    const-string v1, "ActivityManagerPerformance"

    const-string/jumbo v3, "setBoosterHome() skipped. Method is called by non-system_server"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8c
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v1, :cond_9d

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_9c

    const-string v1, "ActivityManagerPerformance"

    const-string/jumbo v3, "setBoosterHome() skipped. mIsScreenOn: false"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9c
    return-void

    :cond_9d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v1, 0x2

    const-wide/16 v5, 0xc8

    if-eqz p1, :cond_f9

    if-nez p3, :cond_ab

    iput-wide v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->lastHomePressedTime:J

    goto :goto_bc

    :cond_ab
    iget-wide v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->lastHomePressedTime:J

    sub-long v7, v3, v7

    cmp-long v7, v7, v5

    if-ltz v7, :cond_e4

    iget-wide v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->lastHomeBoostedTime:J

    sub-long v7, v3, v7

    cmp-long v5, v7, v5

    if-gez v5, :cond_bc

    goto :goto_e4

    :cond_bc
    :goto_bc
    if-nez p3, :cond_1ae

    sget v5, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    if-ne v5, v1, :cond_1ae

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_e3

    const-string v1, "ActivityManagerPerformance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBoosterHome() skipped. Home key was pressed, but curTopState is already "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e3
    return-void

    :cond_e4
    :goto_e4
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/am/ActivityRecord;

    if-eq v1, p3, :cond_ec

    if-eqz p3, :cond_ec

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/am/ActivityRecord;

    :cond_ec
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_f8

    const-string v1, "ActivityManagerPerformance"

    const-string/jumbo v5, "setBoosterHome() skipped. uninterrupted boosting"

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f8
    return-void

    :cond_f9
    iget-wide v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->lastHomePressedTime:J

    sub-long v7, v3, v7

    cmp-long v7, v7, v5

    if-ltz v7, :cond_213

    iget-wide v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->lastHomeBoostedTime:J

    sub-long v7, v3, v7

    cmp-long v5, v7, v5

    if-gez v5, :cond_10b

    goto/16 :goto_213

    :cond_10b
    sget v5, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    if-ne v5, v1, :cond_1ae

    :try_start_10f
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eqz p3, :cond_14f

    if-eq v1, p3, :cond_131

    if-eq v5, p3, :cond_131

    if-eqz v1, :cond_125

    iget-object v6, p3, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_131

    :cond_125
    if-eqz v5, :cond_14f

    iget-object v6, p3, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14f

    :cond_131
    sget-boolean v6, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v6, :cond_14e

    const-string v6, "ActivityManagerPerformance"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setBoosterHome() skipped. already boosted "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p3, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14e
    .catch Ljava/lang/NullPointerException; {:try_start_10f .. :try_end_14e} :catch_1a9

    :cond_14e
    return-void

    :cond_14f
    nop

    const/4 v1, 0x1

    if-eqz p2, :cond_163

    sget-boolean v5, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v5, :cond_15f

    const-string v5, "ActivityManagerPerformance"

    const-string/jumbo v6, "setBoosterHome() call setBoosterActStart()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15f
    invoke-direct {p0, v1, p3}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V

    goto :goto_1a3

    :cond_163
    :try_start_163
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-eqz p3, :cond_193

    if-eq v5, p3, :cond_175

    if-eqz v5, :cond_193

    iget-object v6, p3, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_193

    :cond_175
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_192

    const-string v1, "ActivityManagerPerformance"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setBoosterHome() skipped. already boosted "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p3, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_192
    .catch Ljava/lang/NullPointerException; {:try_start_163 .. :try_end_192} :catch_1a4

    :cond_192
    return-void

    :cond_193
    nop

    sget-boolean v5, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v5, :cond_1a0

    const-string v5, "ActivityManagerPerformance"

    const-string/jumbo v6, "setBoosterHome() call setBoosterActResume()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a0
    invoke-direct {p0, v1, p3}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/am/ActivityRecord;)V

    :goto_1a3
    return-void

    :catch_1a4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void

    :catch_1a9
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void

    :cond_1ae
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_1be

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v5, "AMS_APP_HOME"

    const/16 v6, 0x15

    invoke-static {v1, v5, v6}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

    :cond_1be
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_1cb

    const-string v5, "ActivityManagerPerformance"

    const-string/jumbo v6, "setBoosterHome() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1cb
    iput-wide v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->lastHomeBoostedTime:J

    :try_start_1cd
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockHome:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1d0
    .catch Ljava/lang/Exception; {:try_start_1cd .. :try_end_1d0} :catch_1e1

    :try_start_1d0
    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/am/ActivityRecord;

    monitor-exit v5
    :try_end_1d6
    .catchall {:try_start_1d0 .. :try_end_1d6} :catchall_1de

    :try_start_1d6
    const-string v5, "ActivityManagerPerformance"

    const-string v6, "AMP_acquire() HOME"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1dd
    .catch Ljava/lang/Exception; {:try_start_1d6 .. :try_end_1dd} :catch_1e1

    goto :goto_212

    :catchall_1de
    move-exception v6

    :try_start_1df
    monitor-exit v5
    :try_end_1e0
    .catchall {:try_start_1df .. :try_end_1e0} :catchall_1de

    :try_start_1e0
    throw v6
    :try_end_1e1
    .catch Ljava/lang/Exception; {:try_start_1e0 .. :try_end_1e1} :catch_1e1

    :catch_1e1
    move-exception v5

    const-string v6, "ActivityManagerPerformance"

    const-string v7, "AMP_acquire() HOME failed"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v6, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v6, :cond_20f

    const-string v6, "ActivityManagerPerformance"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AMP_acquire() HOME failed. e: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20f
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_212
    return-void

    :cond_213
    :goto_213
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/am/ActivityRecord;

    if-eq v1, p3, :cond_21b

    if-eqz p3, :cond_21b

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/am/ActivityRecord;

    :cond_21b
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_227

    const-string v1, "ActivityManagerPerformance"

    const-string/jumbo v5, "setBoosterHome() skipped. uninterrupted boosting"

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_227
    return-void
.end method

.method private setBoosterRelaunchResume(Lcom/android/server/am/ActivityRecord;)V
    .registers 8

    const-string/jumbo v0, "setBoosterRelaunchResume()"

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_58

    if-eqz p1, :cond_c

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    const-string v2, "ActivityManagerPerformance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBoosterRelaunchResume() r: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v2, :cond_58

    const-string v2, "ActivityManagerPerformance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBoosterRelaunchResume() Trace\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_58
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_68

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v2, "AMS_RELAUNCH_RESUME"

    const/16 v3, 0x15

    invoke-static {v1, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

    :cond_68
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_75

    const-string v2, "ActivityManagerPerformance"

    const-string/jumbo v3, "setBoosterRelaunchResume() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_75
    :try_start_75
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockRelaunchResume:Ljava/lang/Object;

    monitor-enter v2
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_78} :catch_89

    :try_start_78
    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastRelaunchResume:Lcom/android/server/am/ActivityRecord;

    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_78 .. :try_end_7e} :catchall_86

    :try_start_7e
    const-string v2, "ActivityManagerPerformance"

    const-string v3, "AMP_acquire() RELAUNCH_RESUME"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_85} :catch_89

    goto :goto_ba

    :catchall_86
    move-exception v3

    :try_start_87
    monitor-exit v2
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    :try_start_88
    throw v3
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_89} :catch_89

    :catch_89
    move-exception v2

    const-string v3, "ActivityManagerPerformance"

    const-string v4, "AMP_acquire() RELAUNCH_RESUME failed"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v3, :cond_b7

    const-string v3, "ActivityManagerPerformance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AMP_acquire() RELAUNCH_RESUME failed. e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b7
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_ba
    return-void
.end method

.method private setBoosterTail(ZLcom/android/server/am/ActivityRecord;)V
    .registers 10

    const-string/jumbo v0, "setBoosterTail()"

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_67

    if-eqz p2, :cond_c

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    const-string v2, "ActivityManagerPerformance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBoosterTail() from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1f

    const-string v4, "AppSwitch"

    goto :goto_21

    :cond_1f
    const-string v4, "ActStart"

    :goto_21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", r: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v2, :cond_67

    const-string v2, "ActivityManagerPerformance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBoosterTail() Trace\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_67
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v1, :cond_78

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_77

    const-string v1, "ActivityManagerPerformance"

    const-string/jumbo v2, "setBoosterTail() skipped. mIsScreenOn: false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    return-void

    :cond_78
    if-eqz p1, :cond_7e

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-nez v1, :cond_84

    :cond_7e
    if-nez p1, :cond_ac

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_ac

    :cond_84
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_ab

    const-string v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBoosterTail() skipped. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_9a

    const-string v3, "AppSwitch"

    goto :goto_9c

    :cond_9a
    const-string v3, "ActStart"

    :goto_9c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not finished"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ab
    return-void

    :cond_ac
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v2, 0x15

    if-nez v1, :cond_bc

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v3, "AMS_RESUME_TAIL"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

    :cond_bc
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterLazy:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_ca

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v3, "AMS_ACT_LAZY"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterLazy:Lcom/samsung/android/os/SemDvfsManager;

    :cond_ca
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_d7

    const-string v2, "ActivityManagerPerformance"

    const-string/jumbo v3, "setBoosterTail() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d7
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterLazy:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v2, :cond_e4

    const-string v3, "ActivityManagerPerformance"

    const-string/jumbo v4, "setBoosterTail() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e4
    :try_start_e4
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockTail:Ljava/lang/Object;

    monitor-enter v3
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_e7} :catch_fb

    :try_start_e7
    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActTail:Lcom/android/server/am/ActivityRecord;

    monitor-exit v3
    :try_end_f0
    .catchall {:try_start_e7 .. :try_end_f0} :catchall_f8

    :try_start_f0
    const-string v3, "ActivityManagerPerformance"

    const-string v4, "AMP_acquire() TAIL"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_f7} :catch_fb

    goto :goto_12c

    :catchall_f8
    move-exception v4

    :try_start_f9
    monitor-exit v3
    :try_end_fa
    .catchall {:try_start_f9 .. :try_end_fa} :catchall_f8

    :try_start_fa
    throw v4
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_fb} :catch_fb

    :catch_fb
    move-exception v3

    const-string v4, "ActivityManagerPerformance"

    const-string v5, "AMP_acquire() TAIL failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v4, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_129

    const-string v4, "ActivityManagerPerformance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AMP_acquire() TAIL failed. e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_129
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_12c
    return-void
.end method

.method static topStateToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NO_STATE_NUM_OF_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_15
    const-string v0, "TOP_STATE_APP"

    return-object v0

    :pswitch_18
    const-string v0, "TOP_STATE_RECENTS_APP"

    return-object v0

    :pswitch_1b
    const-string v0, "TOP_STATE_HOME"

    return-object v0

    :pswitch_1e
    const-string v0, "TOP_STATE_IS_CREATING"

    return-object v0

    :pswitch_21
    const-string v0, "TOP_STATE_INIT"

    return-object v0

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method private final unregisterReceiver()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "ACTIVITY MANAGER AMP (dumpsys activity amp)\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method getCurBoostInfoStr()Ljava/lang/String;
    .registers 5

    const-string v0, "===== ActivityManagerPerformance, getCurBoostInfoStr info ====="

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nAMP_ENABLE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", AMP_PERF_ENABLE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsScreenOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-eqz v1, :cond_5b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nTIMEOUT_ACT_RESUME: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_ACT_RESUME:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", TIMEOUT_ACT_START: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_ACT_START:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", TIMEOUT_APP_SWITCH: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_APP_SWITCH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_71

    :cond_5b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nTIMEOUT_PREV_RESUME: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_PREV_RESUME:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n[curTopState] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n[rCurBoostAppSwitch] procName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    const/4 v3, 0x0

    if-eqz v2, :cond_b3

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_b4

    :cond_b3
    move-object v2, v3

    :goto_b4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n[rCurBoostActStart] procName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_e0

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_e1

    :cond_e0
    move-object v2, v3

    :goto_e1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n[rCurBoostActResume] procName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_10d

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_10e

    :cond_10d
    move-object v2, v3

    :goto_10e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n[rLastActTail] procName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActTail:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_13a

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActTail:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_13b

    :cond_13a
    move-object v2, v3

    :goto_13b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActTail:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n[rLastActHome] procName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_167

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_168

    :cond_167
    move-object v2, v3

    :goto_168
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n[rLastRelaunchResume] procName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastRelaunchResume:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_194

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastRelaunchResume:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    nop

    :cond_194
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastRelaunchResume:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n===== ActivityManagerPerformance, getCurBoostInfoStr end  ====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isHomeKeyPressed()V
    .registers 5

    sget-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v0, :cond_36

    const-string/jumbo v0, "isHomeKeyPressed()"

    const-string v1, "ActivityManagerPerformance"

    const-string/jumbo v2, "isHomeKeyPressed() called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v1, :cond_36

    const-string v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isHomeKeyPressed() Trace\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_36
    sget-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz v0, :cond_46

    sget-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-nez v0, :cond_3f

    goto :goto_46

    :cond_3f
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterHome(ZZLcom/android/server/am/ActivityRecord;)V

    return-void

    :cond_46
    :goto_46
    return-void
.end method

.method public onActivityRelaunchLocked(Lcom/android/server/am/ActivityRecord;Z)V
    .registers 8

    const-string/jumbo v0, "onActivityRelaunchLocked()"

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_5b

    if-eqz p1, :cond_c

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    const-string v2, "ActivityManagerPerformance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityRelaunchLocked() r: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "), andResume: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v2, :cond_5b

    const-string v2, "ActivityManagerPerformance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityRelaunchLocked() Trace\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5b
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->AMP_RELAUNCH_RESUME_ON:Z

    if-nez v1, :cond_60

    return-void

    :cond_60
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v1, :cond_71

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_70

    const-string v1, "ActivityManagerPerformance"

    const-string/jumbo v2, "onActivityRelaunchLocked() skipped. mIsScreenOn: false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    return-void

    :cond_71
    if-eqz p2, :cond_76

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterRelaunchResume(Lcom/android/server/am/ActivityRecord;)V

    :cond_76
    return-void
.end method

.method onActivityResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 9

    const-string/jumbo v0, "onActivityResumeLocked()"

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_54

    const-string v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityResumeLocked() r: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v1, :cond_54

    const-string v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityResumeLocked() Trace\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_54
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-nez v1, :cond_59

    return-void

    :cond_59
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_60

    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    :cond_60
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v1, :cond_71

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_70

    const-string v1, "ActivityManagerPerformance"

    const-string/jumbo v2, "onActivityResumeLocked() skipped. mIsScreenOn: false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    return-void

    :cond_71
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->needSkipResume:Z

    if-eqz v1, :cond_84

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_81

    const-string v1, "ActivityManagerPerformance"

    const-string/jumbo v3, "onActivityResumeLocked() skipped. needSkipResume is true"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->needSkipResume:Z

    return-void

    :cond_84
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    const/4 v3, 0x1

    if-nez v1, :cond_c3

    :try_start_89
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eq v1, p1, :cond_a0

    if-eqz v1, :cond_9a

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_97
    .catch Ljava/lang/NullPointerException; {:try_start_89 .. :try_end_97} :catch_be

    if-eqz v2, :cond_9a

    goto :goto_a0

    :cond_9a
    nop

    invoke-direct {p0, v3, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_1de

    :cond_a0
    :goto_a0
    :try_start_a0
    sget-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v2, :cond_bd

    const-string v2, "ActivityManagerPerformance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityResumeLocked() skipped. already boosted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catch Ljava/lang/NullPointerException; {:try_start_a0 .. :try_end_bd} :catch_be

    :cond_bd
    return-void

    :catch_be
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void

    :cond_c3
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_cd

    invoke-direct {p0, v2, v2, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterHome(ZZLcom/android/server/am/ActivityRecord;)V

    return-void

    :cond_cd
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isActivityTypeRecents()Z

    move-result v1

    if-eqz v1, :cond_11c

    :try_start_d3
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eq v2, p1, :cond_f9

    if-eq v1, p1, :cond_f9

    if-eqz v2, :cond_e7

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f9

    :cond_e7
    if-eqz v1, :cond_f4

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_f1
    .catch Ljava/lang/NullPointerException; {:try_start_d3 .. :try_end_f1} :catch_117

    if-eqz v4, :cond_f4

    goto :goto_f9

    :cond_f4
    nop

    invoke-direct {p0, v3, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/am/ActivityRecord;)V

    return-void

    :cond_f9
    :goto_f9
    :try_start_f9
    sget-boolean v3, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v3, :cond_116

    const-string v3, "ActivityManagerPerformance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onActivityResumeLocked() skipped. already boosted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_116
    .catch Ljava/lang/NullPointerException; {:try_start_f9 .. :try_end_116} :catch_117

    :cond_116
    return-void

    :catch_117
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void

    :cond_11c
    sget-object v1, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_186

    sget-object v1, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_186

    :try_start_12c
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eq v4, p1, :cond_163

    if-eq v2, p1, :cond_163

    if-eq v1, p1, :cond_163

    if-eqz v4, :cond_144

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_163

    :cond_144
    if-eqz v2, :cond_150

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_163

    :cond_150
    if-eqz v1, :cond_15d

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_15a
    .catch Ljava/lang/NullPointerException; {:try_start_12c .. :try_end_15a} :catch_181

    if-eqz v5, :cond_15d

    goto :goto_163

    :cond_15d
    nop

    invoke-direct {p0, v3, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_1de

    :cond_163
    :goto_163
    :try_start_163
    sget-boolean v3, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v3, :cond_180

    const-string v3, "ActivityManagerPerformance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onActivityResumeLocked() skipped. already boosted "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_180
    .catch Ljava/lang/NullPointerException; {:try_start_163 .. :try_end_180} :catch_181

    :cond_180
    return-void

    :catch_181
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void

    :cond_186
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-nez v1, :cond_1c9

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-nez v1, :cond_1c9

    :try_start_18e
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-eq v1, p1, :cond_1a6

    if-eqz v1, :cond_19f

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_19c
    .catch Ljava/lang/NullPointerException; {:try_start_18e .. :try_end_19c} :catch_1c4

    if-eqz v2, :cond_19f

    goto :goto_1a6

    :cond_19f
    nop

    iput-boolean v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    invoke-direct {p0, v3, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/am/ActivityRecord;)V

    goto :goto_1de

    :cond_1a6
    :goto_1a6
    :try_start_1a6
    sget-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v2, :cond_1c3

    const-string v2, "ActivityManagerPerformance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityResumeLocked() skipped. already boosted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c3
    .catch Ljava/lang/NullPointerException; {:try_start_1a6 .. :try_end_1c3} :catch_1c4

    :cond_1c3
    return-void

    :catch_1c4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void

    :cond_1c9
    :try_start_1c9
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eq v1, p1, :cond_1df

    if-eqz v1, :cond_1da

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1d7
    .catch Ljava/lang/NullPointerException; {:try_start_1c9 .. :try_end_1d7} :catch_1fd

    if-eqz v2, :cond_1da

    goto :goto_1df

    :cond_1da
    nop

    invoke-direct {p0, v3, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/am/ActivityRecord;)V

    :goto_1de
    return-void

    :cond_1df
    :goto_1df
    :try_start_1df
    sget-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v2, :cond_1fc

    const-string v2, "ActivityManagerPerformance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityResumeLocked() skipped. already boosted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1fc
    .catch Ljava/lang/NullPointerException; {:try_start_1df .. :try_end_1fc} :catch_1fd

    :cond_1fc
    return-void

    :catch_1fd
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void
.end method

.method onActivityStartLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 8

    const-string/jumbo v0, "onActivityStartLocked()"

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_54

    const-string v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityStartLocked() r: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v1, :cond_54

    const-string v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityStartLocked() Trace\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_54
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-nez v1, :cond_59

    return-void

    :cond_59
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_60

    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    :cond_60
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v1, :cond_71

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_70

    const-string v1, "ActivityManagerPerformance"

    const-string/jumbo v2, "onActivityStartLocked() skipped. mIsScreenOn: false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    return-void

    :cond_71
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->needSkipResume:Z

    if-eqz v1, :cond_77

    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->needSkipResume:Z

    :cond_77
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    const/4 v3, 0x1

    if-nez v1, :cond_80

    invoke-direct {p0, v3, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V

    return-void

    :cond_80
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_8a

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterHome(ZZLcom/android/server/am/ActivityRecord;)V

    return-void

    :cond_8a
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isActivityTypeRecents()Z

    move-result v1

    if-eqz v1, :cond_94

    invoke-direct {p0, v3, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V

    return-void

    :cond_94
    sget-object v1, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_ed

    sget-object v1, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ed

    :try_start_a4
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eq v1, p1, :cond_ca

    if-eq v2, p1, :cond_ca

    if-eqz v1, :cond_b8

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ca

    :cond_b8
    if-eqz v2, :cond_c5

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_c2
    .catch Ljava/lang/NullPointerException; {:try_start_a4 .. :try_end_c2} :catch_e8

    if-eqz v4, :cond_c5

    goto :goto_ca

    :cond_c5
    nop

    invoke-direct {p0, v3, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V

    goto :goto_102

    :cond_ca
    :goto_ca
    :try_start_ca
    sget-boolean v3, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v3, :cond_e7

    const-string v3, "ActivityManagerPerformance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onActivityStartLocked() skipped. already boosted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e7
    .catch Ljava/lang/NullPointerException; {:try_start_ca .. :try_end_e7} :catch_e8

    :cond_e7
    return-void

    :catch_e8
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void

    :cond_ed
    :try_start_ed
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eq v1, p1, :cond_103

    if-eqz v1, :cond_fe

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_fb
    .catch Ljava/lang/NullPointerException; {:try_start_ed .. :try_end_fb} :catch_121

    if-eqz v2, :cond_fe

    goto :goto_103

    :cond_fe
    nop

    invoke-direct {p0, v3, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/am/ActivityRecord;)V

    :goto_102
    return-void

    :cond_103
    :goto_103
    :try_start_103
    sget-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v2, :cond_120

    const-string v2, "ActivityManagerPerformance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityStartLocked() skipped. already boosted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_120
    .catch Ljava/lang/NullPointerException; {:try_start_103 .. :try_end_120} :catch_121

    :cond_120
    return-void

    :catch_121
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void
.end method

.method onActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 6

    sget-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v0, :cond_54

    const-string/jumbo v0, "onActivityVisibleLocked()"

    const-string v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityVisibleLocked() r: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v1, :cond_54

    const-string v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityVisibleLocked() Trace\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_54
    sget-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-nez v0, :cond_59

    return-void

    :cond_59
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_60

    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    :cond_60
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_67

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/am/ActivityRecord;)V

    :cond_67
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_6e

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V

    :cond_6e
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_75

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/am/ActivityRecord;)V

    :cond_75
    return-void
.end method
