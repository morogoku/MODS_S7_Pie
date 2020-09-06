.class public Lcom/android/server/am/MARsTrigger;
.super Ljava/lang/Object;
.source "MARsTrigger.java"


# static fields
.field private static final ACTION_CHECK_CHARGING:Ljava/lang/String; = "android.os.action.CHARGING"

.field private static final ACTION_CHECK_DISCHARGING:Ljava/lang/String; = "android.os.action.DISCHARGING"

.field private static final ACTION_MARS_UPDATE_ARES_SETTING:Ljava/lang/String; = "ACTION_MARS_UPDATE_ARES_SETTING"

.field static final ACTION_MEMORY_NOT_ENOUGH_ARES:Ljava/lang/String; = "com.android.server.am.ACTION_MEMORY_NOT_ENOUGH_ARES"

.field static final ACTION_PACKAGE_NOTUSED_RECENTLY:Ljava/lang/String; = "com.android.server.am.ACTION_PACKAGE_NOTUSED_RECENTLY"

.field public static final ACTION_POWER_SAVE_WHITELIST_CHANGED:Ljava/lang/String; = "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

.field static final ACTION_REQUEST_FILLIN_SMDB_FROMSM:Ljava/lang/String; = "MARS_REQUEST_PKG_INFO"

.field static final ACTION_REQUEST_UPDATE_MARSDB_FROMSM:Ljava/lang/String; = "MARS_REQUEST_POLICY_INFO"

.field static final ACTION_UI_SET_ALWAYS_OPTIMIZING:Ljava/lang/String; = "com.android.server.am.ACTION_UI_SET_ALWAYS_OPTIMIZING"

.field public static final ACTION_UI_SET_AUTORUN_OFF:Ljava/lang/String; = "com.android.server.am.ACTION_UI_SET_AUTORUN_OFF"

.field public static final ACTION_UI_TRIGGER_POLICY_SPECIFIC_PACKAGE:Ljava/lang/String; = "com.samsung.android.server.am.ACTION_UI_TRIGGER_POLICY"

.field private static final FIRST_ALARM_FREECESS:Ljava/lang/String; = "FIRST_ALARM_FREECESS"

.field private static final FIRST_ALARM_FREECESS_TRAFFIC_STAT:Ljava/lang/String; = "FIRST_ALARM_FREECESS_TRAFFIC_STAT"

.field public static final MARS_CANCEL_GAME_MODE_POLICY:Ljava/lang/String; = "com.android.server.am.MARS_CANCEL_GAME_MODE_POLICY"

.field public static final MARS_CANCEL_SBIKE_MODE_POLICY:Ljava/lang/String; = "com.android.server.am.MARS_CANCEL_SBIKE_MODE_POLICY"

.field public static final MARS_CANCEL_UDS_POLICY:Ljava/lang/String; = "com.android.server.am.MARS_CANCEL_UDS_POLICY"

.field public static final MARS_TRIGGER_GAME_MODE_POLICY:Ljava/lang/String; = "com.android.server.am.MARS_TRIGGER_GAME_MODE_POLICY"

.field public static final MARS_TRIGGER_SBIKE_MODE_POLICY:Ljava/lang/String; = "com.android.server.am.MARS_TRIGGER_SBIKE_MODE_POLICY"

.field public static final MARS_TRIGGER_UDS_POLICY:Ljava/lang/String; = "com.android.server.am.MARS_TRIGGER_UDS_POLICY"

.field public static final PRELOAD_POLICY_ALARM:Ljava/lang/String; = "PRELOAD_POLICY_ALARM"

.field private static final REPEAT_ALARM_FREECESS_TRAFFIC_STAT:Ljava/lang/String; = "REPEAT_ALARM_FREECESS_TRAFFIC_STAT"

.field public static final SCPM_BROADCAST_MESSAGE_FREECESS:Ljava/lang/String; = "sec.app.policy.UPDATE.ssrm_update_freecess"

.field public static final SECURE_FOLDER_SETUP_COMPLETE:Ljava/lang/String; = "com.samsung.knox.securefolder.SETUP_COMPLETE"

.field static final TAG:Ljava/lang/String; = "MARsTrigger"


# instance fields
.field private mAlarm:Landroid/app/AlarmManager;

.field private mAppStartUpIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mCheckCharging:Z

.field mContext:Landroid/content/Context;

.field private mDualAppPkgIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mDualAppReceiverRegistered:Z

.field private mEmStateReceiverRegistered:Z

.field private mEmergencyKillForce:Z

.field private mEmergencyStateChangedReceiver:Landroid/content/BroadcastReceiver;

.field mFreecessPolicyInterval:J

.field mFreecessRepeatAlarmInterval:J

.field private mFreecessTrafficStatCollectorInterval:J

.field mHandlerManager:Lcom/android/server/am/MARsHandler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastTimeChangeClockTime:J

.field private mLastTimeChangeRealtime:J

.field private mMARsFreecessPolicyAlarmIntent:Landroid/app/PendingIntent;

.field private mMARsFreecessPolicyTrafficStatAlarmIntent:Landroid/app/PendingIntent;

.field private mMARsFreecessTrafficStatRepeatAlarmIntent:Landroid/app/PendingIntent;

.field private mPkgIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPolicyGameIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPolicyIntentReceiver:Landroid/content/BroadcastReceiver;

.field mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

.field private mPolicySBikeIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPolicyUDSIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPreloadAlarmIntent:Landroid/app/PendingIntent;

.field private mPrelodPolicyInterval:J

.field private mReceiverRegistered:Z

.field private mSMDBChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mSMDBChangedReceiverRegistered:Z

.field private mSecureFolderPkgIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSecureFolderReceiverRegistered:Z

.field private mTimeIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTriggerIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mUserActionReceiver:Landroid/content/BroadcastReceiver;

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;Lcom/android/server/am/MARsHandler;Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mEmergencyKillForce:Z

    const-wide/16 v1, 0x1388

    iput-wide v1, p0, Lcom/android/server/am/MARsTrigger;->mFreecessPolicyInterval:J

    const-wide/32 v1, 0xea60

    iput-wide v1, p0, Lcom/android/server/am/MARsTrigger;->mFreecessRepeatAlarmInterval:J

    const-wide/16 v1, 0x7d0

    iput-wide v1, p0, Lcom/android/server/am/MARsTrigger;->mFreecessTrafficStatCollectorInterval:J

    iput-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mCheckCharging:Z

    iput-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mReceiverRegistered:Z

    iput-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mEmStateReceiverRegistered:Z

    iput-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mSMDBChangedReceiverRegistered:Z

    iput-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mSecureFolderReceiverRegistered:Z

    iput-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mDualAppReceiverRegistered:Z

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/android/server/am/MARsTrigger;->mPrelodPolicyInterval:J

    new-instance v0, Lcom/android/server/am/MARsTrigger$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$1;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/am/MARsTrigger$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$2;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mTriggerIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/am/MARsTrigger$3;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$3;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mPolicyIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/am/MARsTrigger$4;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$4;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mPolicyUDSIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/am/MARsTrigger$5;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$5;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mPolicySBikeIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/am/MARsTrigger$6;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$6;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mPolicyGameIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/am/MARsTrigger$7;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$7;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mPkgIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/am/MARsTrigger$8;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$8;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mSecureFolderPkgIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/am/MARsTrigger$9;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$9;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mDualAppPkgIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/am/MARsTrigger$10;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$10;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mTimeIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/am/MARsTrigger$11;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$11;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mUserActionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/am/MARsTrigger$12;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$12;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/am/MARsTrigger$13;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$13;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mAppStartUpIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/am/MARsTrigger$14;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$14;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mEmergencyStateChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/am/MARsTrigger$15;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$15;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mSMDBChangedReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iput-object p2, p0, Lcom/android/server/am/MARsTrigger;->mHandlerManager:Lcom/android/server/am/MARsHandler;

    iput-object p3, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->user:Landroid/os/UserHandle;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/MARsTrigger;->mLastTimeChangeClockTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/MARsTrigger;->mLastTimeChangeRealtime:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mMARsFreecessPolicyAlarmIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/MARsTrigger;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/MARsTrigger;->mLastTimeChangeRealtime:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/android/server/am/MARsTrigger;J)J
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/MARsTrigger;->mLastTimeChangeRealtime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/server/am/MARsTrigger;Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsTrigger;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mPreloadAlarmIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/MARsTrigger;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mCheckCharging:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/am/MARsTrigger;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/MARsTrigger;->mCheckCharging:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/am/MARsTrigger;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/MARsTrigger;->mPrelodPolicyInterval:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/MARsTrigger;->setAlarm(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsTrigger;->actionToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsTrigger;->policyNameToInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/am/MARsTrigger;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mEmergencyKillForce:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/am/MARsTrigger;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/MARsTrigger;->mLastTimeChangeClockTime:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/android/server/am/MARsTrigger;J)J
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/MARsTrigger;->mLastTimeChangeClockTime:J

    return-wide p1
.end method

.method private actionToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "com.android.server.am.ACTION_UI_SET_ALWAYS_OPTIMIZING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "User Set Always Optimizing"

    return-object v0

    :cond_b
    const-string v0, "com.android.server.am.ACTION_PACKAGE_NOTUSED_RECENTLY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "Package Not Used Recently"

    return-object v0

    :cond_16
    const-string v0, "com.android.server.am.ACTION_UI_SET_AUTORUN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "User Set Auto Run Off(China Model)"

    return-object v0

    :cond_21
    const-string v0, "FIRST_ALARM_FREECESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "Freecess First -- 5Sec"

    return-object v0

    :cond_2c
    const-string v0, "com.samsung.android.server.am.ACTION_UI_TRIGGER_POLICY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "User Trigger Policy"

    return-object v0

    :cond_37
    const-string v0, "com.android.server.am.MARS_TRIGGER_UDS_POLICY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "Trigger UDS(Ultra Data Saving) Policy"

    return-object v0

    :cond_42
    const-string v0, "com.android.server.am.MARS_TRIGGER_SBIKE_MODE_POLICY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string v0, "Trigger S Bike Policy"

    return-object v0

    :cond_4d
    const-string v0, "com.android.server.am.MARS_TRIGGER_GAME_MODE_POLICY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    const-string v0, "Trigger GAME MODE Policy"

    return-object v0

    :cond_58
    const/4 v0, 0x0

    return-object v0
.end method

.method private getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    return-object v1
.end method

.method private policyNameToInt(Ljava/lang/String;)I
    .registers 3

    const-string v0, "applocker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const-string v0, "autorun"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    return v0

    :cond_14
    const-string v0, "ares"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x3

    return v0

    :cond_1e
    const-string/jumbo v0, "freecess"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x4

    return v0

    :cond_29
    const-string/jumbo v0, "udspolicy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x5

    return v0

    :cond_34
    const-string/jumbo v0, "sbikepolicy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const/4 v0, 0x6

    return v0

    :cond_3f
    const-string/jumbo v0, "gamepolicy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const/16 v0, 0x9

    return v0

    :cond_4b
    const/4 v0, 0x0

    return v0
.end method

.method private setAlarm(Ljava/lang/String;J)V
    .registers 9

    const-string v0, "FIRST_ALARM_FREECESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mMARsFreecessPolicyAlarmIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_28

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger;->user:Landroid/os/UserHandle;

    invoke-static {v1, v2, v0, v2, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsTrigger;->mMARsFreecessPolicyAlarmIntent:Landroid/app/PendingIntent;

    :cond_28
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, p2

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mMARsFreecessPolicyAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_67

    :cond_35
    const-string v0, "PRELOAD_POLICY_ALARM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mPreloadAlarmIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_5a

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger;->user:Landroid/os/UserHandle;

    invoke-static {v1, v2, v0, v2, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsTrigger;->mPreloadAlarmIntent:Landroid/app/PendingIntent;

    :cond_5a
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger;->mPreloadAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :cond_67
    :goto_67
    return-void
.end method


# virtual methods
.method registerDualAppReceiver(I)V
    .registers 9

    iget-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mDualAppReceiverRegistered:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger;->mDualAppPkgIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/MARsTrigger;->mDualAppReceiverRegistered:Z

    return-void
.end method

.method registerEmStateReceiver()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mEmStateReceiverRegistered:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger;->mEmergencyStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/MARsTrigger;->mEmStateReceiverRegistered:Z

    return-void
.end method

.method public registerGameReceiver()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.server.am.MARS_TRIGGER_GAME_MODE_POLICY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.am.MARS_CANCEL_GAME_MODE_POLICY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger;->mPolicyGameIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public registerReceiver(Z)V
    .registers 13

    iget-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mReceiverRegistered:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "MARS_REQUEST_POLICY_INFO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.CHARGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.DISCHARGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "sec.app.policy.UPDATE.ssrm_update_freecess"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger;->mTriggerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.android.server.am.ACTION_UI_SET_ALWAYS_OPTIMIZING"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.android.server.am.ACTION_PACKAGE_NOTUSED_RECENTLY"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.android.server.am.ACTION_UI_SET_AUTORUN_OFF"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "FIRST_ALARM_FREECESS"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.android.server.am.ACTION_MEMORY_NOT_ENOUGH_ARES"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "PRELOAD_POLICY_ALARM"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger;->mPolicyIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "com.samsung.android.server.am.ACTION_UI_TRIGGER_POLICY"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "ACTION_MARS_UPDATE_ARES_SETTING"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/am/MARsTrigger;->mPolicyIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string v6, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.intent.action.USER_ADDED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.samsung.knox.securefolder.SETUP_COMPLETE"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.USER_STOPPED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger;->mUserActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.REBOOT"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger;->mAppStartUpIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    if-eqz p1, :cond_113

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v7, "package"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger;->mPkgIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v8, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/am/MARsTrigger;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v9, "android.intent.action.TIME_SET"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/am/MARsTrigger;->mTimeIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_113
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/am/MARsTrigger;->mReceiverRegistered:Z

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;

    if-nez v6, :cond_126

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    const-string v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    iput-object v6, p0, Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;

    :cond_126
    return-void
.end method

.method public registerSBikeReceiver()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.server.am.MARS_TRIGGER_SBIKE_MODE_POLICY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.am.MARS_CANCEL_SBIKE_MODE_POLICY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger;->mPolicySBikeIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method registerSMDBChangedReceiver()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mSMDBChangedReceiverRegistered:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "MARS_REQUEST_PKG_INFO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger;->mSMDBChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/MARsTrigger;->mSMDBChangedReceiverRegistered:Z

    return-void
.end method

.method registerSecureFolderReceiver(I)V
    .registers 9

    iget-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mSecureFolderReceiverRegistered:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.knox.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger;->mSecureFolderPkgIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/MARsTrigger;->mSecureFolderReceiverRegistered:Z

    return-void
.end method

.method public registerUDSReceiver()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.server.am.MARS_TRIGGER_UDS_POLICY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.am.MARS_CANCEL_UDS_POLICY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger;->mPolicyUDSIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mMARsFreecessPolicyAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mMARsFreecessPolicyAlarmIntent:Landroid/app/PendingIntent;

    :cond_7
    iput-object p1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->user:Landroid/os/UserHandle;

    return-void
.end method

.method unregisterDualAppReceiver()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mDualAppReceiverRegistered:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mDualAppPkgIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mDualAppReceiverRegistered:Z
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_f} :catch_10

    goto :goto_18

    :catch_10
    move-exception v0

    const-string v1, "MARsTrigger"

    const-string v2, "IllegalArgumentException occurred in unregisterDualAppReceiver()"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    return-void
.end method

.method unregisterEmStateReceiver()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mEmStateReceiverRegistered:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mEmergencyStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mEmStateReceiverRegistered:Z
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_f} :catch_10

    goto :goto_18

    :catch_10
    move-exception v0

    const-string v1, "MARsTrigger"

    const-string v2, "IllegalArgumentException occurred in unregisterEmStateReceiver()"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    return-void
.end method

.method public unregisterGameReceiver()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mPolicyGameIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public unregisterReceiver(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mReceiverRegistered:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_1f

    :try_start_7
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mPkgIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mTimeIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1f

    :catch_1d
    move-exception v0

    goto :goto_43

    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mTriggerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mPolicyIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mUserActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mAppStartUpIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_42} :catch_1d

    goto :goto_47

    :goto_43
    nop

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mReceiverRegistered:Z

    return-void
.end method

.method public unregisterSBikeReceiver()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mPolicySBikeIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    const-string v1, "MARsTrigger"

    const-string v2, "IllegalArgumentException occurred in unregisterSBikeReceiver()"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    return-void
.end method

.method unregisterSMDBChangedReceiver()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mSMDBChangedReceiverRegistered:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mSMDBChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mSMDBChangedReceiverRegistered:Z
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_f} :catch_10

    goto :goto_18

    :catch_10
    move-exception v0

    const-string v1, "MARsTrigger"

    const-string v2, "IllegalArgumentException occurred in unregisterSMDBChangedReceiver()"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    return-void
.end method

.method unregisterSecureFolderReceiver()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mSecureFolderReceiverRegistered:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mSecureFolderPkgIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mSecureFolderReceiverRegistered:Z
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_f} :catch_10

    goto :goto_18

    :catch_10
    move-exception v0

    const-string v1, "MARsTrigger"

    const-string v2, "IllegalArgumentException occurred in unregisterSecureFolderReceiver()"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    return-void
.end method

.method public unregisterUDSReceiver()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mPolicyUDSIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    const-string v1, "MARsTrigger"

    const-string v2, "IllegalArgumentException occurred in unregisterUDSReceiver()"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    return-void
.end method
