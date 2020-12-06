.class public Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SyncScheduler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TestFileObserver;,
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;,
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMBroadcastReceiver;,
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;,
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;,
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;,
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;
    }
.end annotation


# static fields
.field private static final MAX_LIST_SIZE:J = 0x1388L

.field private static final SYNC_COPRIME_VALUE:J = 0xea60L

.field private static final SYNC_MAX_VALUE:J = 0x1b77400L

.field private static final SYNC_MIN_VALUE:J = 0x493e0L

.field private static final SYNC_WATCH_VALUE:J = 0x186a0L


# instance fields
.field private ENABLE_FORCED_ADJUSTMENT:Z

.field private WHITELIST:Z

.field private WHITELIST_PLUS_AUTO_ADD:Z

.field private boot_filter:Landroid/content/IntentFilter;

.field private filter:Landroid/content/IntentFilter;

.field private filter2:Landroid/content/IntentFilter;

.field private gIntervalGcd:Ljava/math/BigInteger;

.field private isGalaxyViewUSBConnected:Z

.field private isUSBConnected:Z

.field private final mAccountsPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdjustableRepeatingAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;"
        }
    .end annotation
.end field

.field private final mAmsLock:Ljava/lang/Object;

.field private final mBlacklistAppSync3P:Lcom/android/server/AlarmManagerServiceExt$PackageList;

.field private final mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

.field private final mBlacklistPackagesFromConfig:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBlacklistPackagesFromConfig3P:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBootIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mChnAppsBundling:Z

.field private mChnSolDeactivateInScreenOn:Z

.field private mChnSolDeactivateInUSB:Z

.field private mChnSolEnable:Z

.field private final mContext:Landroid/content/Context;

.field private final mCscPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultDeltaFromTriggers:J

.field private mDefaultIntervalInChn:J

.field private mEmailPid:I

.field private mEmailUid:I

.field private final mExtraWhiteListPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIntentReceiver2:Landroid/content/BroadcastReceiver;

.field private mLockExt:Ljava/lang/Object;

.field private mLockFgAct:Ljava/lang/Object;

.field private final mLockSuspiciousTagSet:Ljava/lang/Object;

.field private final mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

.field private final mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

.field private final mLockUserApps:Ljava/lang/Object;

.field private mMultiUserMgr:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;

.field private mNextSlotInChn:J

.field private mPMReceiver:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

.field private final mPermanentWhitelistPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSCPMReceiver:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMBroadcastReceiver;

.field private mScreenOffTime:J

.field mSuspiciousTagSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSuspiciousTagSetFromApi:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSuspiciousTagSetFromSCPM:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTestFileObserver:Landroid/os/FileObserver;

.field mUserAppTagSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field pm:Landroid/content/pm/PackageManager;

.field preloadedPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private statOpCount:J

.field private statOpTime:D

.field private statOpTimeMax:D

.field private statOpTimeMaxUid:J

.field private ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

.field final synthetic this$0:Lcom/android/server/AlarmManagerServiceExt;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerServiceExt;Landroid/content/Context;Lcom/android/server/AlarmManagerService;Ljava/lang/Object;)V
    .registers 12

    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerServiceExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST_PLUS_AUTO_ADD:Z

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ENABLE_FORCED_ADJUSTMENT:Z

    const-wide/32 v2, 0x1b77400

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    iput v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I

    iput v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailPid:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-direct {v2}, Lcom/android/server/AlarmManagerServiceExt$PackageList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    new-instance v2, Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-direct {v2}, Lcom/android/server/AlarmManagerServiceExt$PackageList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistAppSync3P:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackagesFromConfig:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackagesFromConfig3P:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnAppsBundling:Z

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInScreenOn:Z

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInUSB:Z

    const-wide/32 v2, 0x493e0

    iput-wide v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultIntervalInChn:J

    const-wide/16 v2, 0x2710

    iput-wide v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultDeltaFromTriggers:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInChn:J

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockFgAct:Ljava/lang/Object;

    iput-wide v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpCount:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTime:D

    iput-wide v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMax:D

    iput-wide v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMaxUid:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mScreenOffTime:J

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockUserApps:Ljava/lang/Object;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mUserAppTagSet:Ljava/util/Set;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSet:Ljava/lang/Object;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSet:Ljava/util/Set;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromApi:Ljava/util/Set;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->pm:Landroid/content/pm/PackageManager;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mExtraWhiteListPkgs:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isUSBConnected:Z

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->filter:Landroid/content/IntentFilter;

    new-instance v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isGalaxyViewUSBConnected:Z

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->filter2:Landroid/content/IntentFilter;

    new-instance v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$2;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$2;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mIntentReceiver2:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->boot_filter:Landroid/content/IntentFilter;

    new-instance v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBootIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mMultiUserMgr:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTestFileObserver:Landroid/os/FileObserver;

    iput-object p2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAmsLock:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_ParamAppSync"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v4

    :try_start_11b
    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v5}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->clear()V

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistAppSync3P:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v5}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->clear()V

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->initializeFromConfigFile()V

    aget-object v5, v3, v1

    const-string/jumbo v6, "whitelist"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14b

    nop

    :goto_13e
    array-length v5, v3

    if-ge v0, v5, :cond_1b5

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_13e

    :cond_14b
    aget-object v5, v3, v1

    const-string v6, "blacklist"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16e

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST:Z

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST_PLUS_AUTO_ADD:Z

    nop

    :goto_15a
    array-length v5, v3

    if-ge v0, v5, :cond_1b5

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_15a

    :cond_16e
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v5, "com.sec.spp.push"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v5, "com.sec.chaton"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v5, "com.facebook.katana"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v5, "com.twitter.android"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v5, "com.facebook.orca"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v5, "com.kakao.talk"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v5, "com.google.android.apps.plus"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v5, "com.mobilesrepublic.appygeek"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string/jumbo v5, "mnn.Android"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v5, "com.google.android.apps.maps"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b5
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST:Z

    if-eqz v0, :cond_203

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->loadAppSyncBlackList()V

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistAppSync3P:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->loadAppSync3PlusBlackList()V

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackagesFromConfig:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v6, v5}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1e2

    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v6, v5}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    :cond_1e2
    goto :goto_1c9

    :cond_1e3
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackagesFromConfig3P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_203

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistAppSync3P:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v6, v5}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_202

    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistAppSync3P:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v6, v5}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    :cond_202
    goto :goto_1e9

    :cond_203
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;

    const-string v5, "com.samsung.location"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_215
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_227

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_215

    :cond_227
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22d

    :cond_23f
    nop

    :goto_240
    move v0, v1

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_272

    const-string v1, "AlarmManagerEXT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<TargetPackages> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v0, 0x1

    goto :goto_240

    :cond_272
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/AlarmManagerServiceExt;->isAppSync3PlusTarget(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnAppsBundling:Z

    const-string v0, "AlarmManagerEXT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mChnAppsBundling = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnAppsBundling:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->boot_filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBootIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->boot_filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnAppsBundling:Z

    if-eqz v0, :cond_32f

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z

    if-eqz v0, :cond_32f

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInUSB:Z

    if-eqz v0, :cond_2bf

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2bf
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->sIsGalaxyView:Z

    if-eqz v0, :cond_2d3

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->filter2:Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mIntentReceiver2:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->filter2:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2d3
    new-instance v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMBroadcastReceiver;

    invoke-direct {v0, p0, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMBroadcastReceiver;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSCPMReceiver:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMBroadcastReceiver;

    new-instance v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    invoke-direct {v0, p0, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPMReceiver:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->pm:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v1, "com.facebook.katana"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v1, "com.facebook.orca"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v1, "com.facebook.pages.app"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v1, "com.facebook.appmanager"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v1, "com.facebook.system"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v1, "com.whatsapp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v1, "com.instagram.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v1, "com.skype.raider"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v1, "com.microsoft.skydrive"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v1, "com.samsung.android.opencalendar"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_32f
    monitor-exit v4
    :try_end_330
    .catchall {:try_start_11b .. :try_end_330} :catchall_35d

    :try_start_330
    new-instance v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-direct {v0, p0, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;
    :try_end_337
    .catch Ljava/net/SocketException; {:try_start_330 .. :try_end_337} :catch_347
    .catch Ljava/net/UnknownHostException; {:try_start_330 .. :try_end_337} :catch_342
    .catch Ljava/io/IOException; {:try_start_330 .. :try_end_337} :catch_33d
    .catch Ljava/lang/Exception; {:try_start_330 .. :try_end_337} :catch_338

    goto :goto_34b

    :catch_338
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34c

    :catch_33d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34b

    :catch_342
    move-exception v0

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_34b

    :catch_347
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    :goto_34b
    nop

    :goto_34c
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    if-eqz v0, :cond_355

    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->doTest()V

    :cond_355
    const-string v0, "AlarmManagerEXT"

    const-string v1, "SyncScheduler created "

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_35d
    move-exception v0

    :try_start_35e
    monitor-exit v4
    :try_end_35f
    .catchall {:try_start_35e .. :try_end_35f} :catchall_35d

    throw v0
.end method

.method static synthetic access$102(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isUSBConnected:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockFgAct:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;IJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateRepeatingAlarmLocked(IJ)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)I
    .registers 2

    iget v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)I
    .registers 2

    iget v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailPid:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAmsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isGalaxyViewUSBConnected:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isGalaxyViewUSBConnected:Z

    return p1
.end method

.method static synthetic access$3102(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;J)J
    .registers 3

    iput-wide p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mScreenOffTime:J

    return-wide p1
.end method

.method static synthetic access$3200(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isTargetApplication(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isIgnorePackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->getPackageTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockUserApps:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->getUserIdFromTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Landroid/os/FileObserver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTestFileObserver:Landroid/os/FileObserver;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/os/FileObserver;)Landroid/os/FileObserver;
    .registers 2

    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTestFileObserver:Landroid/os/FileObserver;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnAppsBundling:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;)Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;
    .registers 2

    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mMultiUserMgr:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateSuspiciousPolicy(Landroid/content/Context;)V

    return-void
.end method

.method private addCollection(Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1a

    if-nez p2, :cond_5

    goto :goto_1a

    :cond_5
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_19
    return-void

    :cond_1a
    :goto_1a
    return-void
.end method

.method private addPackageWithLock(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    if-nez p3, :cond_7

    goto :goto_10

    :cond_7
    monitor-enter p1

    :try_start_8
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw v0

    :cond_10
    :goto_10
    return-void
.end method

.method private addRepeatingAlarmLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_c

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38

    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    iget-object v4, p1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_29
    goto :goto_10

    :cond_2a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gez v2, :cond_38

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    :goto_38
    return-void
.end method

.method private adjustAlarmForChinaApplication(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JJ)Z
    .registers 21

    move-object v8, p0

    move-object v9, p1

    move-object/from16 v10, p2

    iget-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/32 v2, 0x1b77400

    cmp-long v0, v0, v2

    if-gtz v0, :cond_fb

    iget-boolean v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInScreenOn:Z

    const-wide/16 v11, 0x0

    if-eqz v0, :cond_1f

    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mScreenOffTime:J

    cmp-long v0, v0, v11

    if-nez v0, :cond_1f

    iget-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    cmp-long v0, v0, v11

    if-lez v0, :cond_fb

    :cond_1f
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_a6

    const-string v0, "AlarmManagerEXT"

    const-string v1, "XXX:: Control China Apps on"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iget-wide v1, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget v3, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    if-gt v3, v13, :cond_3a

    move-wide v3, v11

    goto :goto_3c

    :cond_3a
    move-wide/from16 v3, p3

    :goto_3c
    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {v0}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mChn_setTime T:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    if-eqz v4, :cond_6a

    iget-object v4, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    goto :goto_74

    :cond_6a
    iget-object v4, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listener:Landroid/app/IAlarmListener;

    if-eqz v4, :cond_71

    iget-object v4, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listener:Landroid/app/IAlarmListener;

    goto :goto_74

    :cond_71
    const-string/jumbo v4, "null"

    :goto_74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", INT:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v3, "AlarmManagerEXT"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a6
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isSuspiciousAlarm()Z

    move-result v0

    if-nez v0, :cond_bd

    sget-object v0, Lcom/android/server/AppSyncWrapper$SET_TYPE;->SUSPICIOUS_PACKAGES:Lcom/android/server/AppSyncWrapper$SET_TYPE;

    iget-object v1, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->packageName:Ljava/lang/String;

    iget v2, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {v8, v0, v1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->containsPackageAsUser(Lcom/android/server/AppSyncWrapper$SET_TYPE;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_bd

    return v13

    :cond_bd
    iget-wide v2, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInChn:J

    iget-wide v4, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultIntervalInChn:J

    move-object v0, v8

    move-object v1, v10

    move-wide/from16 v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmForFixedPeriodicWakeups(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JJJ)V

    iget-wide v0, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iput-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget-wide v0, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iput-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    cmp-long v0, v0, v11

    if-lez v0, :cond_d9

    const-wide/16 v0, 0x1

    goto :goto_da

    :cond_d9
    move-wide v0, v11

    :goto_da
    iput-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    iget-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v2, v9, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    add-long/2addr v0, v2

    iput-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    # getter for: Lcom/android/server/AlarmManagerServiceExt;->ABOVE_ANDROID_M:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_ed

    iget-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iput-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    :cond_ed
    invoke-direct {v8, v9}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateExpectedWhen(Lcom/android/server/AlarmManagerService$Alarm;)V

    iget-wide v0, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v0, v0, v11

    if-lez v0, :cond_fa

    iget-wide v0, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iput-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    :cond_fa
    return v13

    :cond_fb
    const/4 v0, 0x0

    return v0
.end method

.method private adjustAlarmForFixedPeriodicWakeups(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JJJ)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v6

    if-eqz v6, :cond_34

    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    add-long v7, v2, p6

    invoke-virtual {v6, v7, v8}, Landroid/text/format/Time;->set(J)V

    const-string v7, "AlarmManagerEXT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FPW_initialSlot 1= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-nez v8, :cond_4a

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x40dd4c0000000000L    # 30000.0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-long v9, v4, p4

    int-to-long v6, v8

    add-long/2addr v9, v6

    goto :goto_52

    :cond_4a
    move-wide v9, v2

    :goto_4b
    cmp-long v6, v9, v4

    if-gez v6, :cond_52

    add-long v9, v9, p4

    goto :goto_4b

    :cond_52
    :goto_52
    iput-wide v9, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInChn:J

    const-wide/16 v2, 0x0

    iget-wide v6, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    cmp-long v6, v6, v9

    if-lez v6, :cond_76

    iget-wide v7, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    sub-long/2addr v7, v9

    div-long v7, v7, p4

    move-wide v12, v2

    iget-wide v2, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    mul-long v14, v7, p4

    add-long/2addr v14, v9

    sub-long/2addr v2, v14

    move-wide/from16 v16, v4

    iget-wide v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultDeltaFromTriggers:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_73

    const-wide/16 v4, 0x1

    add-long/2addr v7, v4

    :cond_73
    mul-long v2, v7, p4

    goto :goto_79

    :cond_76
    move-wide v12, v2

    move-wide/from16 v16, v4

    :goto_79
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v4

    if-eqz v4, :cond_bb

    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    add-long v5, v9, p6

    invoke-virtual {v4, v5, v6}, Landroid/text/format/Time;->set(J)V

    const-string v5, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FPW_changedSlot 2= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", gIntervalGcd: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v7}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", numberOfSlot= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v7, v2, p4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bb
    add-long v4, v9, v2

    iput-wide v4, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iget-wide v4, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iget v6, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v7, 0x1

    if-gt v6, v7, :cond_c9

    move-wide/from16 v6, p6

    goto :goto_cb

    :cond_c9
    const-wide/16 v6, 0x0

    :goto_cb
    add-long/2addr v4, v6

    iput-wide v4, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget-wide v4, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iput-wide v4, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhenElapsed:J

    iget-wide v4, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_f3

    iget-wide v4, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultDeltaFromTriggers:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_ef

    iget-wide v4, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultDeltaFromTriggers:J

    sub-long/2addr v4, v6

    div-long v4, v4, p4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    mul-long v4, v4, p4

    goto :goto_f1

    :cond_ef
    move-wide/from16 v4, p4

    :goto_f1
    iput-wide v4, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    :cond_f3
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v4

    if-eqz v4, :cond_165

    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    iget-wide v5, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    add-long v5, v5, p6

    invoke-virtual {v4, v5, v6}, Landroid/text/format/Time;->set(J)V

    const-string v5, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--->>> T:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    if-eqz v7, :cond_12e

    iget-object v7, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    goto :goto_138

    :cond_12e
    iget-object v7, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listener:Landroid/app/IAlarmListener;

    if-eqz v7, :cond_135

    iget-object v7, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listener:Landroid/app/IAlarmListener;

    goto :goto_138

    :cond_135
    const-string/jumbo v7, "null"

    :goto_138
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", INT:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_165
    return-void
.end method

.method private adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V
    .registers 43

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-gt v0, v9, :cond_c

    move v0, v9

    goto :goto_d

    :cond_c
    move v0, v8

    :goto_d
    move v10, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    sub-long v15, v11, v13

    const-wide/16 v17, 0x0

    if-eqz v10, :cond_1e

    move-wide v0, v15

    goto :goto_20

    :cond_1e
    move-wide/from16 v0, v17

    :goto_20
    move-wide/from16 v19, v0

    const-wide v21, 0x7fffffffffffffffL

    const-wide v23, 0x7fffffffffffffffL

    move-wide/from16 v25, p2

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    iget-wide v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    const-wide/16 v2, 0x3e8

    add-long v30, v0, v2

    iget-wide v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v0, v0, v17

    if-lez v0, :cond_44

    iget-wide v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    iget-wide v2, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    sub-long/2addr v0, v2

    goto :goto_46

    :cond_44
    iget-wide v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    :goto_46
    move-wide/from16 v32, v0

    const/16 v34, 0x0

    cmp-long v0, v25, v17

    if-eqz v0, :cond_1dc

    iget-object v0, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v17

    if-nez v0, :cond_5a

    goto/16 :goto_1dc

    :cond_5a
    iget-boolean v0, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ENABLE_FORCED_ADJUSTMENT:Z

    if-nez v0, :cond_6f

    iget-wide v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    iget-object v2, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    rem-long/2addr v0, v2

    cmp-long v0, v0, v17

    if-nez v0, :cond_6c

    goto :goto_6f

    :cond_6c
    move-object/from16 v0, v34

    goto :goto_ab

    :cond_6f
    :goto_6f
    iget-object v1, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    iget-object v2, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listener:Landroid/app/IAlarmListener;

    iget-wide v3, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-object v0, v6

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->timeToNextRepeatingAlarmLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;JZ)Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    move-result-object v0

    if-eqz v0, :cond_ab

    iget-wide v1, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget v3, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    if-gt v3, v9, :cond_86

    move-wide v3, v15

    goto :goto_88

    :cond_86
    move-wide/from16 v3, v17

    :goto_88
    sub-long v21, v1, v3

    iget-wide v1, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    const-wide/32 v34, 0x493e0

    rem-long v3, v3, v34

    cmp-long v3, v3, v17

    if-nez v3, :cond_ab

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v25

    :cond_ab
    :goto_ab
    cmp-long v1, v25, v17

    if-eqz v1, :cond_bd

    iget-object v1, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    rem-long v1, v25, v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_bd

    iput-boolean v9, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    :cond_bd
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, v21, v1

    if-eqz v1, :cond_1bf

    add-long v21, v21, v19

    iget-wide v1, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v1, v1, v17

    if-lez v1, :cond_da

    add-long v1, v13, v19

    sub-long v1, v30, v1

    iget-wide v3, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_da

    const/16 v27, 0x1

    :cond_da
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->NEW_ALARM_MANAGER:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_f1

    iget-wide v1, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iget-wide v3, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhenElapsed:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_ee

    iget-wide v1, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v1, v1, v17

    if-lez v1, :cond_f1

    :cond_ee
    const/4 v1, 0x1

    move/from16 v27, v1

    :cond_f1
    cmp-long v1, v21, v30

    const-wide/16 v2, 0x1

    if-gtz v1, :cond_12a

    iget-boolean v1, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ENABLE_FORCED_ADJUSTMENT:Z

    if-eqz v1, :cond_10d

    iget-object v1, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    rem-long v4, p2, v4

    cmp-long v1, v4, v17

    if-eqz v1, :cond_10d

    iget-object v1, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v25

    :cond_10d
    sub-long v4, v30, v21

    div-long v4, v4, v25

    if-eqz v27, :cond_121

    :goto_113
    add-long v8, v4, v2

    mul-long v8, v8, v25

    add-long v8, v21, v8

    add-long v17, v30, v32

    cmp-long v1, v8, v17

    if-gtz v1, :cond_121

    add-long/2addr v4, v2

    goto :goto_113

    :cond_121
    mul-long v1, v25, v4

    add-long v1, v21, v1

    iput-wide v1, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v1, v25

    goto :goto_184

    :cond_12a
    cmp-long v1, v25, v17

    if-eqz v1, :cond_132

    sub-long v4, v21, v30

    div-long v28, v4, v25

    :cond_132
    sub-long v4, v30, v25

    add-long v36, v13, v19

    cmp-long v1, v4, v36

    if-gez v1, :cond_178

    add-long v4, v28, v2

    mul-long v4, v4, v25

    sub-long v4, v21, v4

    add-long v36, v13, v19

    cmp-long v1, v4, v36

    if-gez v1, :cond_178

    iget-wide v4, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v1, v4, v17

    if-gtz v1, :cond_178

    iget v1, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->uid:I

    iget v4, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I

    if-ne v1, v4, :cond_15f

    const-wide/16 v4, 0x2

    div-long v4, v25, v4

    sub-long v4, v30, v4

    add-long v17, v13, v19

    cmp-long v1, v4, v17

    if-gtz v1, :cond_15f

    goto :goto_178

    :cond_15f
    if-eqz v27, :cond_175

    :goto_161
    mul-long v4, v25, v28

    sub-long v4, v21, v4

    add-long v8, v30, v32

    cmp-long v1, v4, v8

    if-ltz v1, :cond_16e

    add-long v28, v28, v2

    goto :goto_161

    :cond_16e
    mul-long v1, v25, v28

    sub-long v1, v21, v1

    iput-wide v1, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    goto :goto_180

    :cond_175
    iput-boolean v8, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    goto :goto_180

    :cond_178
    :goto_178
    add-long v28, v28, v2

    mul-long v1, v25, v28

    sub-long v1, v21, v1

    iput-wide v1, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    :goto_180
    move-wide/from16 v1, v25

    move-wide/from16 v4, v28

    :goto_184
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v3

    if-eqz v3, :cond_1ba

    const-string v3, "AlarmManagerEXT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " next: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", unit: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", C: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", WL:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ba
    move-wide/from16 v25, v1

    move-wide/from16 v28, v4

    goto :goto_1db

    :cond_1bf
    const-string v1, "AlarmManagerEXT"

    const-string v2, " next == MAX_VALUE"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v1, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v1, v1, v17

    if-lez v1, :cond_1db

    iget-wide v1, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    iget-object v3, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    rem-long/2addr v1, v3

    cmp-long v1, v1, v17

    if-eqz v1, :cond_1db

    iput-boolean v8, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    :cond_1db
    :goto_1db
    return-void

    :cond_1dc
    :goto_1dc
    return-void
.end method

.method private calculateGcdOfRepeatIntervals(JJ)J
    .registers 13

    invoke-static {p3, p4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    move-object v2, v1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-lez v4, :cond_27

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_27

    move-object v2, v3

    :cond_27
    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    return-wide v4
.end method

.method private containsPackageAsUser(Lcom/android/server/AppSyncWrapper$SET_TYPE;Ljava/lang/String;I)Z
    .registers 7

    if-nez p2, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/AlarmManagerServiceExt$1;->$SwitchMap$com$android$server$AppSyncWrapper$SET_TYPE:[I

    invoke-virtual {p1}, Lcom/android/server/AppSyncWrapper$SET_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_24

    return v0

    :pswitch_11
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSet:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSet:Ljava/util/Set;

    invoke-direct {p0, v1, v2, p2, p3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->containsTagWithLock(Ljava/lang/Object;Ljava/util/Collection;Ljava/lang/String;I)Z

    move-result v1

    return v1

    :pswitch_1a
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockUserApps:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mUserAppTagSet:Ljava/util/Set;

    invoke-direct {p0, v1, v2, p2, p3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->containsTagWithLock(Ljava/lang/Object;Ljava/util/Collection;Ljava/lang/String;I)Z

    move-result v1

    return v1

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_11
    .end packed-switch
.end method

.method private containsTagWithLock(Ljava/lang/Object;Ljava/util/Collection;Ljava/lang/String;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_26

    if-eqz p2, :cond_26

    if-nez p3, :cond_8

    goto :goto_26

    :cond_8
    invoke-direct {p0, p3, p4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->getPackageTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {p0, p3, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->getPackageTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    monitor-enter p1

    :try_start_12
    invoke-interface {p2, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_20

    :cond_1f
    goto :goto_21

    :cond_20
    :goto_20
    const/4 v0, 0x1

    :goto_21
    monitor-exit p1

    return v0

    :catchall_23
    move-exception v0

    monitor-exit p1
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_23

    throw v0

    :cond_26
    :goto_26
    return v0
.end method

.method private doDumpCollectionWithLock(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Collection;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p3

    :try_start_1
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   (AppSync) ---------< "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   (AppSync) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1c

    :cond_40
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "   (AppSync) ---------"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit p3

    return-void

    :catchall_4a
    move-exception v0

    monitor-exit p3
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method private doTest()V
    .registers 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/app_sync_log_enable"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "AlarmManagerEXT"

    const-string v2, "No exist test interface file : /data/system/app_sync_log_enable"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    new-instance v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TestFileObserver;

    const-string v2, "/data/system/app_sync_log_enable"

    invoke-direct {v1, p0, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TestFileObserver;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTestFileObserver:Landroid/os/FileObserver;

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTestFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    return-void
.end method

.method private getPackageTag(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTarget(Lcom/android/server/AlarmManagerService$Alarm;)I
    .registers 5

    sget-object v0, Lcom/android/server/AppSyncWrapper$SET_TYPE;->APPSYNC3P_PACKAGES:Lcom/android/server/AppSyncWrapper$SET_TYPE;

    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->containsPackageAsUser(Lcom/android/server/AppSyncWrapper$SET_TYPE;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    return v0

    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method private getUserIdFromTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_6

    const-string/jumbo v0, "unknown"

    return-object v0

    :cond_6
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_14

    const-string/jumbo v1, "unknown"

    return-object v1

    :cond_14
    const/4 v1, 0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method private initializeFromConfigFile()V
    .registers 16

    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "AlarmManagerEXT"

    const-string/jumbo v1, "initializeFromConfigFile "

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 v0, 0x0

    :try_start_f
    new-instance v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;

    const-string v2, "/data/misc/lpnet/lpnetConfig"

    invoke-direct {v1, p0, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_16} :catch_20b

    move-object v0, v1

    nop

    nop

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "APPSYNC_INIT"

    const-string/jumbo v5, "enableChnSolution"

    iget-boolean v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z

    const-string v4, "APPSYNC_INIT"

    const-string v5, "DeactivateInScreenOn"

    iget-boolean v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInScreenOn:Z

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInScreenOn:Z

    const-string v4, "APPSYNC_INIT"

    const-string v5, "DeactivateInUSB"

    iget-boolean v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInUSB:Z

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInUSB:Z

    const-wide/16 v4, 0x0

    const-string v6, "APPSYNC_INIT"

    const-string/jumbo v7, "syncInterval"

    iget-wide v8, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultIntervalInChn:J

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v8, v4, v6

    const-wide/16 v9, 0x3e8

    if-ltz v8, :cond_61

    const-wide/16 v11, 0xe10

    cmp-long v8, v4, v11

    if-gtz v8, :cond_61

    mul-long v11, v4, v9

    iput-wide v11, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultIntervalInChn:J

    goto :goto_79

    :cond_61
    const-string v8, "AlarmManagerEXT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Out of bounds, Allowed Values 1s ~ 3600s, Setting syncInterval : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultIntervalInChn:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_79
    const-wide/16 v4, 0x0

    const-string v8, "APPSYNC_INIT"

    const-string/jumbo v11, "deltaFromTriggers"

    iget-wide v12, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultDeltaFromTriggers:J

    invoke-virtual {v0, v8, v11, v12, v13}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v6, v4, v6

    const-wide/32 v7, 0x186a0

    const-wide/16 v11, 0x4b

    if-ltz v6, :cond_9b

    iget-wide v13, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultIntervalInChn:J

    mul-long/2addr v13, v11

    div-long/2addr v13, v7

    cmp-long v6, v4, v13

    if-gez v6, :cond_9b

    mul-long/2addr v9, v4

    iput-wide v9, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultDeltaFromTriggers:J

    goto :goto_c0

    :cond_9b
    const-string v6, "AlarmManagerEXT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Out of bounds, Allowed Values 1s ~ "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultIntervalInChn:J

    mul-long/2addr v13, v11

    div-long/2addr v13, v7

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "s, Setting deltaFromTriggers : "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultDeltaFromTriggers:J

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c0
    const-string v6, "APPSYNC_INIT"

    const-string v7, "BlackList"

    invoke-virtual {v0, v6, v7, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f6

    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackagesFromConfig:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, ","

    invoke-direct {v6, v1, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d6
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_f6

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_f5

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_f5

    iget-object v8, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackagesFromConfig:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f5
    goto :goto_d6

    :cond_f6
    const-string v6, "APPSYNC_INIT"

    const-string v7, "BlackList3P"

    invoke-virtual {v0, v6, v7, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12c

    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackagesFromConfig3P:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, ","

    invoke-direct {v6, v2, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_10c
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_12c

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_12b

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_12b

    iget-object v8, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackagesFromConfig3P:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12b
    goto :goto_10c

    :cond_12c
    const-string v6, "APPSYNC_INIT"

    const-string v7, "ExtraWhiteList"

    invoke-virtual {v0, v6, v7, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_162

    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mExtraWhiteListPkgs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, ","

    invoke-direct {v6, v3, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_142
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_162

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_161

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_161

    iget-object v8, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mExtraWhiteListPkgs:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_161
    goto :goto_142

    :cond_162
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v6

    if-eqz v6, :cond_20a

    const-string v6, "AlarmManagerEXT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mChnSolEnable : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "AlarmManagerEXT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mChnSolDeactivateInScreenOn : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInScreenOn:Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "AlarmManagerEXT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mDefaultIntervalInChn : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultIntervalInChn:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "AlarmManagerEXT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mDefaultDeltaFromTriggers : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultDeltaFromTriggers:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "AlarmManagerEXT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stringBlackList : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "AlarmManagerEXT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stringExtraWhitelist : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20a
    return-void

    :catch_20b
    move-exception v1

    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v2

    if-eqz v2, :cond_228

    const-string v2, "AlarmManagerEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException on Parsing Config FILE :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_228
    return-void
.end method

.method private isChinaControlAlarm(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isUSBConnected:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnAppsBundling:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isGalaxyViewUSBConnected:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private isIgnoreAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 6

    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerServiceExt;

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerServiceExt;

    iget-object v2, v2, Lcom/android/server/AlarmManagerServiceExt;->mAms:Lcom/android/server/AlarmManagerService;

    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    # invokes: Lcom/android/server/AlarmManagerServiceExt;->getInfoFromPendingIntent(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Landroid/content/Intent;
    invoke-static {v0, v2, v3}, Lcom/android/server/AlarmManagerServiceExt;->access$1100(Lcom/android/server/AlarmManagerServiceExt;Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_13

    :cond_12
    move-object v0, v1

    :goto_13
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_1a
    iget-object v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isIgnorePackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_33

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "action.time_tick"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    goto :goto_33

    :cond_31
    const/4 v2, 0x0

    return v2

    :cond_33
    :goto_33
    const/4 v2, 0x1

    return v2
.end method

.method private isIgnorePackage(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v2, v1}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistAppSync3P:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v2, v1}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_1a

    :cond_19
    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    :goto_1b
    return v0
.end method

.method private isSystemApplication(I)Z
    .registers 3

    and-int/lit8 v0, p1, 0x1

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isTargetApplication(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    .registers 5

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isSystemApplication(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    return v1

    :cond_1b
    const/4 v0, 0x1

    return v0
.end method

.method private lookForPackageLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_1a

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v2, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    return v1

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method private lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_1e

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v2, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    return v1

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method private lookForTargetPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private queryAccounts()V
    .registers 10

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v2

    :try_start_14
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    array-length v3, v1

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v3, :cond_34

    aget-object v5, v1, v4

    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    iget-object v7, v5, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_31

    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    iget-object v7, v5, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_34
    iget-boolean v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST_PLUS_AUTO_ADD:Z

    if-eqz v3, :cond_b5

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_43

    :cond_55
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :cond_72
    goto :goto_5b

    :cond_73
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_79
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_79

    :cond_8b
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_91
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "AlarmManagerEXT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<TargetPackages> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    :cond_b4
    goto :goto_de

    :cond_b5
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_bb
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_de

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<AccPackages> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bb

    :cond_de
    :goto_de
    monitor-exit v2

    return-void

    :catchall_e0
    move-exception v3

    monitor-exit v2
    :try_end_e2
    .catchall {:try_start_14 .. :try_end_e2} :catchall_e0

    throw v3
.end method

.method private recalculateGcdOfRepeatIntervalsLocked()V
    .registers 20

    move-object/from16 v0, p0

    const-wide/32 v1, 0x1b77400

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v4, v6

    iget-object v8, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_16
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget v10, v9, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v11, 0x1

    if-gt v10, v11, :cond_28

    goto :goto_29

    :cond_28
    const/4 v11, 0x0

    :goto_29
    move v10, v11

    iget-wide v11, v9, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    const-wide/16 v13, 0x0

    if-eqz v10, :cond_32

    move-wide v15, v13

    goto :goto_33

    :cond_32
    move-wide v15, v6

    :goto_33
    add-long/2addr v11, v15

    cmp-long v15, v4, v11

    if-gez v15, :cond_49

    move-wide/from16 v17, v4

    iget-wide v4, v9, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    cmp-long v4, v4, v13

    if-lez v4, :cond_4b

    iget-wide v4, v9, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    :cond_49
    move-wide/from16 v17, v4

    :cond_4b
    :goto_4b
    move-wide/from16 v4, v17

    goto :goto_16

    :cond_4e
    move-wide/from16 v17, v4

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v4

    if-eqz v4, :cond_7c

    const-string v4, "AlarmManagerEXT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " GCD_NEW("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "):"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7c
    return-void
.end method

.method private removeLocked(Ljava/util/ArrayList;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_8

    return v0

    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    :cond_28
    goto :goto_c

    :cond_29
    return v0
.end method

.method private removeLocked(Ljava/util/ArrayList;IZ)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;IZ)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_8

    return v0

    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->uid:I

    if-ne v3, p2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    :cond_20
    goto :goto_c

    :cond_21
    return v0
.end method

.method private removeLocked(Ljava/util/ArrayList;Landroid/app/IAlarmListener;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;",
            "Landroid/app/IAlarmListener;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_8

    return v0

    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p2}, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    :cond_23
    goto :goto_c

    :cond_24
    return v0
.end method

.method private removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_8

    return v0

    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    :cond_24
    goto :goto_c

    :cond_25
    return v0
.end method

.method private removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_8

    return v0

    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    :cond_28
    goto :goto_c

    :cond_29
    return v0
.end method

.method private removePackage(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_f

    if-nez p2, :cond_5

    goto :goto_f

    :cond_5
    invoke-interface {p2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_e
    return-void

    :cond_f
    :goto_f
    return-void
.end method

.method private removePackageWithLock(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    if-nez p3, :cond_7

    goto :goto_10

    :cond_7
    monitor-enter p1

    :try_start_8
    invoke-direct {p0, p2, p3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removePackage(Ljava/lang/String;Ljava/util/Collection;)V

    monitor-exit p1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw v0

    :cond_10
    :goto_10
    return-void
.end method

.method private swapPackage(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_14

    if-eqz p2, :cond_14

    if-nez p3, :cond_7

    goto :goto_14

    :cond_7
    invoke-interface {p2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_10
    invoke-interface {p3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    :cond_14
    :goto_14
    return-void
.end method

.method private timeToNextRepeatingAlarmLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;JZ)Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .registers 41

    move-object/from16 v0, p0

    const-wide v1, 0x7fffffffffffffffL

    const-wide v3, 0x7fffffffffffffffL

    const-wide v5, 0x7fffffffffffffffL

    const-wide v7, 0x7fffffffffffffffL

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    sub-long v15, v13, v15

    move-wide/from16 v17, v1

    iget-object v1, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    cmp-long v1, p3, v1

    if-nez v1, :cond_32

    const/4 v1, 0x1

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :goto_33
    const-wide/16 v19, 0x0

    iget-object v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_15b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v23, v2

    move-object/from16 v2, v22

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    iget-wide v9, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    const-wide/32 v26, 0x1b77400

    cmp-long v9, v9, v26

    if-gtz v9, :cond_143

    iget-wide v9, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    const-wide/32 v26, 0x493e0

    cmp-long v9, v9, v26

    if-ltz v9, :cond_143

    iget-wide v9, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-object/from16 v28, v11

    iget-object v11, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v11}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v26

    rem-long v9, v9, v26

    const-wide/16 v26, 0x0

    cmp-long v9, v9, v26

    if-nez v9, :cond_13c

    iget-boolean v9, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    if-eqz v9, :cond_13c

    if-nez p5, :cond_8c

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-virtual {v2, v10, v11}, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v22

    if-eqz v22, :cond_90

    move-object/from16 v2, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v11, v28

    goto :goto_3b

    :cond_8c
    move-object/from16 v10, p1

    move-object/from16 v11, p2

    :cond_90
    iget v9, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v10, 0x1

    if-gt v9, v10, :cond_97

    move v9, v10

    goto :goto_98

    :cond_97
    const/4 v9, 0x0

    :goto_98
    iget-wide v10, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    if-eqz v9, :cond_9f

    move-wide/from16 v21, v26

    goto :goto_a1

    :cond_9f
    move-wide/from16 v21, v15

    :goto_a1
    add-long v10, v10, v21

    move/from16 v29, v9

    iget-object v9, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v9}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v21

    add-long v21, v10, v21

    cmp-long v9, v13, v21

    if-gez v9, :cond_13c

    if-eqz v1, :cond_ca

    cmp-long v9, v10, v17

    if-gez v9, :cond_c2

    move-wide/from16 v17, v10

    move-object v9, v2

    move-wide/from16 v30, v13

    move-object/from16 v10, v25

    move-object/from16 v11, v28

    goto/16 :goto_155

    :cond_c2
    move-wide/from16 v33, v7

    move-object/from16 v32, v12

    move-wide/from16 v30, v13

    goto/16 :goto_14b

    :cond_ca
    invoke-static/range {p3 .. p4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    move-object/from16 v32, v12

    move-wide/from16 v30, v13

    iget-wide v12, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v12

    move-wide/from16 v33, v7

    iget-wide v7, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    cmp-long v7, v7, p3

    if-nez v7, :cond_f3

    cmp-long v7, v10, v3

    if-gez v7, :cond_14b

    move-wide v3, v10

    move-object v7, v2

    move-object v10, v7

    move-object/from16 v9, v24

    goto/16 :goto_14f

    :cond_f3
    cmp-long v7, v12, p3

    if-nez v7, :cond_103

    cmp-long v7, v10, v5

    if-gez v7, :cond_14b

    move-wide v5, v10

    move-object v7, v2

    move-object v11, v7

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    goto :goto_151

    :cond_103
    cmp-long v7, v12, v26

    if-eqz v7, :cond_132

    iget-object v7, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v7}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v7

    rem-long v7, v12, v7

    cmp-long v7, v7, v26

    if-nez v7, :cond_132

    cmp-long v7, v12, v19

    if-ltz v7, :cond_132

    cmp-long v7, v12, v19

    if-nez v7, :cond_123

    cmp-long v7, v10, v33

    if-gez v7, :cond_120

    goto :goto_123

    :cond_120
    move-object/from16 v14, v32

    goto :goto_127

    :cond_123
    :goto_123
    move-wide v7, v10

    move-object v14, v2

    move-wide/from16 v33, v7

    :goto_127
    move-wide v7, v12

    move-wide/from16 v19, v7

    move-object v12, v14

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v11, v28

    goto :goto_153

    :cond_132
    cmp-long v7, v10, v17

    if-gez v7, :cond_14b

    move-wide v7, v10

    nop

    move-object v9, v2

    move-wide/from16 v17, v7

    goto :goto_14d

    :cond_13c
    move-wide/from16 v33, v7

    move-object/from16 v32, v12

    move-wide/from16 v30, v13

    goto :goto_14b

    :cond_143
    move-wide/from16 v33, v7

    move-object/from16 v28, v11

    move-object/from16 v32, v12

    move-wide/from16 v30, v13

    :cond_14b
    :goto_14b
    move-object/from16 v9, v24

    :goto_14d
    move-object/from16 v10, v25

    :goto_14f
    move-object/from16 v11, v28

    :goto_151
    move-object/from16 v12, v32

    :goto_153
    move-wide/from16 v7, v33

    :goto_155
    move-object/from16 v2, v23

    move-wide/from16 v13, v30

    goto/16 :goto_3b

    :cond_15b
    move-wide/from16 v33, v7

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v28, v11

    move-object/from16 v32, v12

    move-wide/from16 v30, v13

    if-eqz v32, :cond_16d

    move-object/from16 v9, v32

    move-object/from16 v24, v9

    :cond_16d
    if-eqz v28, :cond_171

    move-object/from16 v24, v28

    :cond_171
    if-eqz v25, :cond_175

    move-object/from16 v24, v25

    :cond_175
    return-object v24
.end method

.method private updateExpectedWhen(Lcom/android/server/AlarmManagerService$Alarm;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateExpectedWhen(Lcom/android/server/AlarmManagerService$Alarm;Z)V

    return-void
.end method

.method private updateExpectedWhen(Lcom/android/server/AlarmManagerService$Alarm;Z)V
    .registers 11

    # getter for: Lcom/android/server/AlarmManagerServiceExt;->ANDROID_P_OR_LATER:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$900()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-nez p2, :cond_12

    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_12

    return-void

    :cond_12
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    if-eqz v0, :cond_106

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-wide v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget v5, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x1

    if-gt v5, v6, :cond_38

    const-wide/16 v5, 0x0

    goto :goto_39

    :cond_38
    move-wide v5, v1

    :goto_39
    add-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {v0}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AlarmManagerEXT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updated expectedWhen (T:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v6, :cond_b1

    iget-object v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->hashCode()I

    move-result v6

    goto :goto_bb

    :cond_b1
    iget-object v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v6}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :goto_bb
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v6, :cond_d6

    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerServiceExt;

    iget-object v6, v6, Lcom/android/server/AlarmManagerServiceExt;->mAms:Lcom/android/server/AlarmManagerService;

    iget-object v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    # invokes: Lcom/android/server/AlarmManagerServiceExt;->getKidFromPendingIntent(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)I
    invoke-static {v6, v7}, Lcom/android/server/AlarmManagerServiceExt;->access$000(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)I

    move-result v6

    goto :goto_e0

    :cond_d6
    iget-object v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v6}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :goto_e0
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_106
    return-void
.end method

.method private updateRepeatingAlarmLocked(IJ)V
    .registers 38

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->keyId:I

    move/from16 v4, p1

    if-ne v3, v4, :cond_9d

    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isIntervalChanged:Z

    move-wide/from16 v5, p2

    iput-wide v5, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iget-wide v7, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-lez v1, :cond_2c

    iget-wide v7, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    goto :goto_37

    :cond_2c
    iget-wide v7, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iget-wide v9, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhenElapsed:J

    iget-wide v11, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    sub-long/2addr v9, v11

    invoke-static {v7, v8, v9, v10}, Lcom/android/server/AlarmManagerServiceExt;->maxRepeatInterval(JJ)J

    move-result-wide v7

    :goto_37
    iput-wide v7, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    new-instance v1, Lcom/android/server/AlarmManagerService$Alarm;

    iget v10, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    iget-wide v11, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget-wide v13, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iget-wide v7, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->windowLength:J

    iget-wide v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhenElapsed:J

    iget-wide v5, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iget-object v15, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    iget-object v9, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listener:Landroid/app/IAlarmListener;

    iget-object v0, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listenerTag:Ljava/lang/String;

    move-object/from16 v29, v0

    iget-object v0, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->workSource:Landroid/os/WorkSource;

    move-object/from16 v30, v0

    iget v0, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->flags:I

    move/from16 v31, v0

    iget-object v0, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v32, v0

    iget v0, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->uid:I

    move/from16 v33, v0

    iget-object v0, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->packageName:Ljava/lang/String;

    move-object/from16 v22, v9

    move-object v9, v1

    move-object/from16 v21, v15

    move-wide v15, v7

    move-wide/from16 v17, v3

    move-wide/from16 v19, v5

    move-object/from16 v23, v29

    move-object/from16 v24, v30

    move/from16 v25, v31

    move-object/from16 v26, v32

    move/from16 v27, v33

    move-object/from16 v28, v0

    invoke-direct/range {v9 .. v28}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    move-object v0, v1

    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v1

    if-eqz v1, :cond_97

    const-string v1, "AlarmManagerEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TA] Updating the alarm... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_97
    move-object/from16 v3, p0

    invoke-virtual {v3, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateExplicitRepeatingAlarmsLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    return-void

    :cond_9d
    move-object v3, v0

    goto/16 :goto_8

    :cond_a0
    move-object v3, v0

    return-void
.end method

.method private updateSuspiciousPolicy(Landroid/content/Context;)V
    .registers 10

    new-instance v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->isSCPMAvailable()Z

    move-result v1

    const-wide/16 v2, 0x2710

    if-nez v1, :cond_2c

    # getter for: Lcom/android/server/AlarmManagerServiceExt;->DEBUG_MID:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1400()Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "AlarmManagerEXT"

    const-string v4, "SCPM is unavailable now"

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    sput-wide v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->SUSPICIOUS_TIME_THRESHOLD:J

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1f
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_29

    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateSuspiciousTags()V

    return-void

    :catchall_29
    move-exception v2

    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v2

    :cond_2c
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->getSuspiciousTimeLimitFromSCPM()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->getSuspiciousTagFromSCPM()Ljava/util/ArrayList;

    move-result-object v1

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_3b

    goto :goto_3c

    :cond_3b
    move-wide v2, v4

    :goto_3c
    sput-wide v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->SUSPICIOUS_TIME_THRESHOLD:J

    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v2

    if-eqz v2, :cond_5c

    const-string v2, "AlarmManagerEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[POLICY] SUSPICIOUS THRESHOLD TIME : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v6, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->SUSPICIOUS_TIME_THRESHOLD:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5f
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    invoke-direct {p0, v1, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->addCollection(Ljava/util/Collection;Ljava/util/Collection;)V

    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_5f .. :try_end_6a} :catchall_6e

    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateSuspiciousTags()V

    return-void

    :catchall_6e
    move-exception v3

    :try_start_6f
    monitor-exit v2
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v3
.end method

.method private updateSuspiciousTags()V
    .registers 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_24

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

    monitor-enter v2

    :try_start_11
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromApi:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_21

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSet:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1a
    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSet:Ljava/util/Set;

    monitor-exit v1

    return-void

    :catchall_1e
    move-exception v2

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_1e

    throw v2

    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1

    :catchall_24
    move-exception v2

    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v2
.end method


# virtual methods
.method public disableSuspiciousPackageControlAsUser(Ljava/lang/String;I)Z
    .registers 7

    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->getPackageTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromApi:Ljava/util/Set;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removePackageWithLock(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    monitor-enter v1

    :try_start_e
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSet:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSet:Ljava/util/Set;

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->addPackageWithLock(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_25

    :cond_1e
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSet:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSet:Ljava/util/Set;

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removePackageWithLock(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)V

    :goto_25
    monitor-exit v1

    const/4 v1, 0x1

    return v1

    :catchall_28
    move-exception v2

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_28

    throw v2
.end method

.method public doDump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 17

    move-object v7, p0

    move-object v8, p1

    const/4 v9, 0x0

    const-string v0, "  <AppSync3 Whitelist>"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    # getter for: Lcom/android/server/AlarmManagerServiceExt;->DEBUG_MID:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v1, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v1

    :try_start_11
    iget-object v0, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   (AppSync) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_17

    :cond_3b
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "   (AppSync) ---------"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_48

    :catchall_45
    move-exception v0

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_11 .. :try_end_47} :catchall_45

    throw v0

    :cond_48
    :goto_48
    iget-object v4, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockUserApps:Ljava/lang/Object;

    iget-object v5, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mUserAppTagSet:Ljava/util/Set;

    const-string v6, "AppSync3+ Packages"

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->doDumpCollectionWithLock(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Collection;Ljava/lang/String;)V

    iget-object v4, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSet:Ljava/lang/Object;

    iget-object v5, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSet:Ljava/util/Set;

    const-string v6, "Suspicious Packages"

    invoke-direct/range {v1 .. v6}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->doDumpCollectionWithLock(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Collection;Ljava/lang/String;)V

    iget-object v4, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

    iget-object v5, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromApi:Ljava/util/Set;

    const-string v6, "Suspicious Packages From API"

    invoke-direct/range {v1 .. v6}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->doDumpCollectionWithLock(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Collection;Ljava/lang/String;)V

    iget-object v4, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    iget-object v5, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    const-string v6, "Suspicious Packages From SCPM"

    invoke-direct/range {v1 .. v6}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->doDumpCollectionWithLock(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Collection;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suspicious Threshold Time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->SUSPICIOUS_TIME_THRESHOLD:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "[millis]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    const/4 v1, 0x1

    if-eqz v0, :cond_9c

    iget-object v0, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-virtual {v0, v1, v8}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->printWhitelist(ZLjava/io/PrintWriter;)V

    iget-object v0, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->getWhitelistCount()I

    move-result v0

    add-int/2addr v9, v0

    :cond_9c
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  (AppSync) ### "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " added ###"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    # getter for: Lcom/android/server/AlarmManagerServiceExt;->DEBUG_MID:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_ff

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  (AppSync) Processing time (avg/max) : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%.2f"

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTime:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMax:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "(UID:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMaxUid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ") [ms]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_ff
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->DEBUG_MID:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_1c9

    iget-object v2, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v2

    :try_start_108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-object v0, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_117
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_193

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    iget-wide v10, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget v12, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    if-gt v12, v1, :cond_131

    const-wide/16 v12, 0x0

    goto :goto_132

    :cond_131
    move-wide v12, v3

    :goto_132
    add-long/2addr v10, v12

    invoke-virtual {v6, v10, v11}, Landroid/text/format/Time;->set(J)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    [AppSync] T:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", INT:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isExact:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_117

    :cond_193
    monitor-exit v2
    :try_end_194
    .catchall {:try_start_108 .. :try_end_194} :catchall_1c6

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " GCD:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_1c9

    const-string/jumbo v0, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c9

    iget-object v0, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1, v8}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->removeUnusedAlarmRecord(JZLjava/io/PrintWriter;)V

    goto :goto_1c9

    :catchall_1c6
    move-exception v0

    :try_start_1c7
    monitor-exit v2
    :try_end_1c8
    .catchall {:try_start_1c7 .. :try_end_1c8} :catchall_1c6

    throw v0

    :cond_1c9
    :goto_1c9
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->DEBUG_MID:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_232

    const-string v0, "  <AppSync3 Blacklist>"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1d7
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   (AppSync) "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "   (AppSync) ---------"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_1fd
    .catchall {:try_start_1d7 .. :try_end_1fd} :catchall_22f

    const-string v0, "  <AppSync3p Blacklist>"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v2

    :try_start_205
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   (AppSync) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistAppSync3P:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "   (AppSync) ---------"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v2

    goto :goto_232

    :catchall_22c
    move-exception v0

    monitor-exit v2
    :try_end_22e
    .catchall {:try_start_205 .. :try_end_22e} :catchall_22c

    throw v0

    :catchall_22f
    move-exception v0

    :try_start_230
    monitor-exit v1
    :try_end_231
    .catchall {:try_start_230 .. :try_end_231} :catchall_22f

    throw v0

    :cond_232
    :goto_232
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Fixed Wakeups: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnAppsBundling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public doGarbageCollection(J)V
    .registers 23

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    const/4 v4, 0x0

    const-string v0, "AlarmManagerEXT"

    const-string v5, "<AppSync3 Whitelist>"

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v5, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v5

    :try_start_15
    iget-object v0, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "AlarmManagerEXT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(AppSync) "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_3e
    const-string v0, "AlarmManagerEXT"

    const-string v6, "(AppSync) ---------"

    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto :goto_4a

    :catchall_47
    move-exception v0

    monitor-exit v5
    :try_end_49
    .catchall {:try_start_15 .. :try_end_49} :catchall_47

    throw v0

    :cond_4a
    :goto_4a
    iget-object v0, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v0, :cond_5c

    iget-object v0, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-virtual {v0, v6, v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->printWhitelist(ZLjava/io/PrintWriter;)V

    iget-object v0, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->getWhitelistCount()I

    move-result v0

    add-int/2addr v4, v0

    :cond_5c
    const-string v0, "AlarmManagerEXT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(AppSync) ### "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " added ###"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_bd

    const-string v0, "AlarmManagerEXT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(SyncScheduler) Processing time (avg/max) : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "%.2f"

    new-array v10, v7, [Ljava/lang/Object;

    iget-wide v11, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTime:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMax:D

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v9, "(UID:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMaxUid:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ") [ms]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bd
    iget-object v8, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v8

    :try_start_c0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long/2addr v9, v11

    iget-object v0, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_cf
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_18b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget v12, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    rem-int/lit8 v12, v12, 0x2

    if-nez v12, :cond_103

    iget v12, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    if-gt v12, v7, :cond_e7

    move v12, v7

    goto :goto_e8

    :cond_e7
    move v12, v6

    :goto_e8
    iget-wide v13, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    if-eqz v12, :cond_ef

    const-wide/16 v17, 0x0

    goto :goto_f1

    :cond_ef
    move-wide/from16 v17, v9

    :goto_f1
    add-long v13, v13, v17

    iget-wide v5, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v17, 0x3

    mul-long v5, v5, v17

    add-long/2addr v5, v13

    cmp-long v5, v5, v2

    if-gez v5, :cond_103

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_187

    :cond_103
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v5

    if-eqz v5, :cond_186

    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    iget-wide v12, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget v6, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    if-gt v6, v7, :cond_117

    const-wide/16 v15, 0x0

    goto :goto_118

    :cond_117
    move-wide v15, v9

    :goto_118
    add-long/2addr v12, v15

    invoke-virtual {v5, v12, v13}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {v5}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v6

    const-string v12, "AlarmManagerEXT"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[AppSync] T:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    if-eqz v14, :cond_145

    iget-object v14, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    goto :goto_14f

    :cond_145
    iget-object v14, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listener:Landroid/app/IAlarmListener;

    if-eqz v14, :cond_14c

    iget-object v14, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listener:Landroid/app/IAlarmListener;

    goto :goto_14f

    :cond_14c
    const-string/jumbo v14, "null"

    :goto_14f
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ", INT:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isExact:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_186
    nop

    :goto_187
    const/4 v5, 0x0

    const/4 v6, 0x0

    goto/16 :goto_cf

    :cond_18b
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v5

    if-eqz v5, :cond_1a9

    const-string v5, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " GCD:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a9
    monitor-exit v8
    :try_end_1aa
    .catchall {:try_start_c0 .. :try_end_1aa} :catchall_1b6

    iget-object v0, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_1b5

    iget-object v0, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v3, v5, v6}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->removeUnusedAlarmRecord(JZLjava/io/PrintWriter;)V

    :cond_1b5
    return-void

    :catchall_1b6
    move-exception v0

    :try_start_1b7
    monitor-exit v8
    :try_end_1b8
    .catchall {:try_start_1b7 .. :try_end_1b8} :catchall_1b6

    throw v0
.end method

.method public enableSuspiciousPackageControlAsUser(Ljava/lang/String;I)Z
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->getPackageTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromApi:Ljava/util/Set;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->addPackageWithLock(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSet:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSet:Ljava/util/Set;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->addPackageWithLock(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)V

    const/4 v1, 0x1

    return v1
.end method

.method public lookForNonAdjustableAlarm(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;J)Z
    .registers 14

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v3

    if-eqz v3, :cond_5b

    iget-wide v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenOriginal:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_5b

    iget-wide v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenOriginal:J

    cmp-long v3, v3, p3

    if-eqz v3, :cond_36

    iget-wide v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenOriginal:J

    sub-long/2addr v3, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v7, 0x1f4

    cmp-long v3, v3, v7

    if-gez v3, :cond_5b

    :cond_36
    iget-wide v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->lastTriggerWhen:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5b

    iget v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->uid:I

    iget v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I

    if-eq v3, v4, :cond_5b

    const-string v1, "AlarmManagerEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OOI="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_5b
    goto :goto_9

    :cond_5c
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_5f
    move-exception v1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_5f

    throw v1
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->queryAccounts()V

    return-void
.end method

.method public removeRepeatingAlarm(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeLocked(Ljava/util/ArrayList;I)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->recalculateGcdOfRepeatIntervalsLocked()V

    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1b

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->removeAlarmRecord(Ljava/lang/String;II)V

    :cond_1a
    return-void

    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public removeRepeatingAlarm(IZ)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeLocked(Ljava/util/ArrayList;IZ)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->recalculateGcdOfRepeatIntervalsLocked()V

    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1b

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->removeAlarmRecord(Ljava/lang/String;II)V

    :cond_1a
    return-void

    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public removeRepeatingAlarm(Landroid/app/IAlarmListener;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeLocked(Ljava/util/ArrayList;Landroid/app/IAlarmListener;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->recalculateGcdOfRepeatIntervalsLocked()V

    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public removeRepeatingAlarm(Landroid/app/PendingIntent;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->recalculateGcdOfRepeatIntervalsLocked()V

    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public removeRepeatingAlarm(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->recalculateGcdOfRepeatIntervalsLocked()V

    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1a

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->removeAlarmRecord(Ljava/lang/String;II)V

    :cond_19
    return-void

    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public schedulingRepeatingAlarms(Lcom/android/server/AlarmManagerService$Alarm;)J
    .registers 57

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    :try_start_4
    iget-object v1, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v1
    :try_end_7
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_4 .. :try_end_7} :catch_29
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_7} :catch_24

    :try_start_7
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isIgnoreAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    if-eqz v0, :cond_1f

    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "AlarmManagerEXT"

    const-string/jumbo v2, "schedulingRepeatingAlarms exception appsync"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    iget-wide v2, v9, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    monitor-exit v1

    return-wide v2

    :cond_1f
    monitor-exit v1

    goto :goto_2d

    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    :try_start_23
    throw v0
    :try_end_24
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_23 .. :try_end_24} :catch_29
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_24} :catch_24

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2e

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/util/regex/PatternSyntaxException;->printStackTrace()V

    :goto_2d
    nop

    :goto_2e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v10, v0

    new-instance v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v1, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerServiceExt;

    iget-object v1, v1, Lcom/android/server/AlarmManagerServiceExt;->mAms:Lcom/android/server/AlarmManagerService;

    invoke-direct {v0, v9, v1}, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;-><init>(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService;)V

    move-object v12, v0

    iget-wide v13, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    const-wide/16 v15, -0x1

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-wide/from16 v17, v0

    iget v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_55

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    goto :goto_59

    :cond_55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    :goto_59
    move-wide/from16 v21, v2

    iget-wide v1, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v24, v10

    const-wide/16 v10, 0x0

    cmp-long v0, v1, v10

    if-nez v0, :cond_76

    iget-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    sub-long v0, v0, v19

    cmp-long v2, v0, v10

    if-gez v2, :cond_73

    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isPassedAlarm:Z

    const-wide/16 v2, -0x1

    mul-long/2addr v0, v2

    :cond_73
    move-wide v2, v0

    :goto_74
    move-wide v4, v0

    goto :goto_86

    :cond_76
    iget-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    iget-wide v2, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    cmp-long v2, v2, v19

    if-gez v2, :cond_81

    iget-wide v2, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    goto :goto_85

    :cond_81
    iget-wide v2, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    sub-long v2, v2, v19

    :goto_85
    goto :goto_74

    :goto_86
    invoke-virtual {v12, v2, v3}, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->checkSuspiciousAlarm(J)V

    const-wide/32 v0, 0x325aa0

    cmp-long v0, v4, v0

    if-ltz v0, :cond_94

    const-wide/32 v0, 0xea60

    goto :goto_96

    :cond_94
    const-wide/16 v0, 0x2710

    :goto_96
    move-wide v6, v0

    long-to-double v0, v4

    long-to-double v10, v6

    div-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    mul-long v10, v0, v6

    long-to-double v0, v2

    move-wide/from16 v28, v2

    long-to-double v2, v6

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    mul-long v17, v0, v6

    iget-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b5

    iput-wide v10, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    :cond_b5
    iget-object v2, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v2

    :try_start_b8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    sub-long v21, v0, v21

    iget-object v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->packageName:Ljava/lang/String;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->getTarget(Lcom/android/server/AlarmManagerService$Alarm;)I

    move-result v1

    move/from16 v28, v1

    if-eqz v28, :cond_4e1

    # invokes: Lcom/android/server/AlarmManagerServiceExt;->isActiveAlarm(Lcom/android/server/AlarmManagerService$Alarm;)Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/AlarmManagerServiceExt;->access$1000(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v1
    :try_end_d0
    .catchall {:try_start_b8 .. :try_end_d0} :catchall_502

    if-nez v1, :cond_ea

    :try_start_d2
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v1

    if-eqz v1, :cond_df

    const-string v1, "AlarmManagerEXT"

    const-string v3, "Skip to sched alarm : The alarm gonna be controlled by ASB"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_df
    monitor-exit v2
    :try_end_e0
    .catchall {:try_start_d2 .. :try_end_e0} :catchall_e1

    return-wide v13

    :catchall_e1
    move-exception v0

    move-object/from16 v23, v2

    move-wide/from16 v29, v4

    move-wide/from16 v39, v6

    goto/16 :goto_509

    :cond_ea
    :try_start_ea
    iget-object v1, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;
    :try_end_ec
    .catchall {:try_start_ea .. :try_end_ec} :catchall_502

    if-nez v1, :cond_fd

    move-wide/from16 v30, v4

    :try_start_f0
    iget-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    monitor-exit v2
    :try_end_f3
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_f4

    return-wide v3

    :catchall_f4
    move-exception v0

    move-object/from16 v23, v2

    move-wide/from16 v39, v6

    :goto_f9
    move-wide/from16 v29, v30

    goto/16 :goto_509

    :cond_fd
    move-wide/from16 v30, v4

    :try_start_ff
    iget-object v1, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-direct {v8, v1, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->lookForTargetPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    iget-boolean v3, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST:Z

    const-wide/32 v4, 0x186a0

    const-wide/32 v32, 0x1b77400

    const-wide/32 v34, 0x493e0

    if-ne v1, v3, :cond_298

    const-wide/16 v36, 0x0

    const-string v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_11a
    .catchall {:try_start_ff .. :try_end_11a} :catchall_4d9

    if-nez v1, :cond_1b2

    :try_start_11c
    const-string v1, "com.samsung.android.email.sync"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12b

    move-object/from16 v38, v0

    move-wide/from16 v39, v6

    const/4 v0, 0x1

    goto/16 :goto_1b7

    :cond_12b
    cmp-long v1, v10, v32

    if-gtz v1, :cond_19d

    cmp-long v1, v10, v34

    if-ltz v1, :cond_19d

    rem-long v3, v10, v4

    const-wide/16 v26, 0x0

    cmp-long v1, v3, v26

    if-nez v1, :cond_19d

    rem-long v3, v10, v34

    cmp-long v1, v3, v26

    if-nez v1, :cond_162

    iput-wide v10, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iget-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J
    :try_end_145
    .catchall {:try_start_11c .. :try_end_145} :catchall_1a9

    cmp-long v1, v3, v26

    if-lez v1, :cond_150

    :try_start_149
    iget-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J
    :try_end_14b
    .catchall {:try_start_149 .. :try_end_14b} :catchall_f4

    move-object/from16 v38, v0

    move-wide/from16 v39, v6

    goto :goto_15f

    :cond_150
    :try_start_150
    iget-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    move-object/from16 v38, v0

    iget-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhenElapsed:J
    :try_end_156
    .catchall {:try_start_150 .. :try_end_156} :catchall_1a9

    move-wide/from16 v39, v6

    :try_start_158
    iget-wide v5, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    sub-long/2addr v0, v5

    invoke-static {v3, v4, v0, v1}, Lcom/android/server/AlarmManagerServiceExt;->maxRepeatInterval(JJ)J

    move-result-wide v3

    :goto_15f
    iput-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    goto :goto_166

    :cond_162
    move-object/from16 v38, v0

    move-wide/from16 v39, v6

    :goto_166
    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_172

    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-virtual {v0, v12, v10, v11}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->queryTrafficPeriodicity(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;J)J

    move-result-wide v0

    move-wide/from16 v36, v0

    :cond_172
    const-wide/16 v0, 0x0

    cmp-long v3, v36, v0

    if-ltz v3, :cond_184

    iget-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v3, v3, v0

    if-eqz v3, :cond_184

    iput-wide v10, v9, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    iput-wide v10, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iput-wide v10, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    :cond_184
    iget-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v0, v17, v0

    if-gez v0, :cond_196

    const-wide/16 v36, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iput-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    const/4 v0, 0x1

    iput-boolean v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isIntervalChanged:Z
    :try_end_195
    .catchall {:try_start_158 .. :try_end_195} :catchall_1c4

    goto :goto_1a2

    :cond_196
    move-object/from16 v23, v2

    move-wide/from16 v29, v30

    const/4 v7, 0x1

    goto/16 :goto_287

    :cond_19d
    move-object/from16 v38, v0

    move-wide/from16 v39, v6

    const/4 v0, 0x1

    :goto_1a2
    move v7, v0

    move-object/from16 v23, v2

    move-wide/from16 v29, v30

    goto/16 :goto_287

    :catchall_1a9
    move-exception v0

    move-object/from16 v23, v2

    move-wide/from16 v39, v6

    move-wide/from16 v29, v30

    goto/16 :goto_509

    :cond_1b2
    move-object/from16 v38, v0

    move-wide/from16 v39, v6

    const/4 v0, 0x1

    :goto_1b7
    :try_start_1b7
    iget v1, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I
    :try_end_1b9
    .catchall {:try_start_1b7 .. :try_end_1b9} :catchall_291

    if-nez v1, :cond_1c9

    :try_start_1bb
    iget-object v1, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    iput v1, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I
    :try_end_1c3
    .catchall {:try_start_1bb .. :try_end_1c3} :catchall_1c4

    goto :goto_1c9

    :catchall_1c4
    move-exception v0

    move-object/from16 v23, v2

    goto/16 :goto_f9

    :cond_1c9
    :goto_1c9
    :try_start_1c9
    iget v1, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailPid:I
    :try_end_1cb
    .catchall {:try_start_1c9 .. :try_end_1cb} :catchall_291

    if-nez v1, :cond_1d3

    :try_start_1cd
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailPid:I
    :try_end_1d3
    .catchall {:try_start_1cd .. :try_end_1d3} :catchall_1c4

    :cond_1d3
    :try_start_1d3
    iget-object v1, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerServiceExt;

    iget-object v3, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerServiceExt;

    iget-object v3, v3, Lcom/android/server/AlarmManagerServiceExt;->mAms:Lcom/android/server/AlarmManagerService;

    iget-object v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    # invokes: Lcom/android/server/AlarmManagerServiceExt;->getInfoFromPendingIntent(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Landroid/content/Intent;
    invoke-static {v1, v3, v4}, Lcom/android/server/AlarmManagerServiceExt;->access$1100(Lcom/android/server/AlarmManagerServiceExt;Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object v1

    move-object v7, v1

    if-eqz v7, :cond_282

    const-string v1, "com.android.email.intent.extra.ACCOUNT"

    const-wide/16 v3, -0x2

    invoke-virtual {v7, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v1, "com.android.email.intent.extra.ACCOUNT_INFO"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    const-wide/16 v41, 0x2

    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v23
    :try_end_1f6
    .catchall {:try_start_1d3 .. :try_end_1f6} :catchall_291

    if-eqz v23, :cond_216

    :try_start_1f8
    const-string v0, "AlarmManagerEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(Email) ID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_216
    const-wide/16 v3, -0x2

    cmp-long v0, v5, v3

    if-nez v0, :cond_247

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_247

    const-string v0, "com.android.email.intent.action.ACTION_RESET_IDLE"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_247

    long-to-double v3, v10

    const-wide v44, 0x41124f8000000000L    # 300000.0

    div-double v3, v3, v44

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-long v3, v3

    mul-long v3, v3, v34

    iput-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J
    :try_end_23f
    .catchall {:try_start_1f8 .. :try_end_23f} :catchall_1c4

    move-object/from16 v23, v2

    move-wide/from16 v36, v3

    move-wide/from16 v29, v30

    const/4 v7, 0x1

    goto :goto_287

    :cond_247
    const-wide/16 v3, -0x2

    cmp-long v0, v5, v3

    if-eqz v0, :cond_27c

    if-eqz v1, :cond_27c

    :try_start_24f
    array-length v0, v1

    int-to-long v3, v0

    const-wide/16 v44, 0x2

    rem-long v3, v3, v44

    const-wide/16 v26, 0x0

    cmp-long v0, v3, v26

    if-nez v0, :cond_27c

    iget-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J
    :try_end_25d
    .catchall {:try_start_24f .. :try_end_25d} :catchall_291

    move-object v0, v1

    move-object/from16 v46, v7

    const/4 v7, 0x1

    move-object v1, v8

    move-object/from16 v23, v2

    move-wide/from16 v43, v3

    move-wide v2, v5

    move-wide/from16 v47, v5

    move-wide/from16 v29, v30

    move-wide/from16 v4, v43

    move-object v6, v0

    :try_start_26e
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateEmailSyncStatus(JJ[J)J

    move-result-wide v1

    iput-wide v1, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iget-wide v1, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iput-wide v1, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide v0, v1

    move-wide/from16 v36, v0

    goto :goto_287

    :cond_27c
    move-object/from16 v23, v2

    move-wide/from16 v29, v30

    const/4 v7, 0x1

    goto :goto_287

    :cond_282
    move v7, v0

    move-object/from16 v23, v2

    move-wide/from16 v29, v30

    :goto_287
    const-wide/16 v0, 0x0

    cmp-long v2, v36, v0

    if-ltz v2, :cond_290

    iget-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide v15, v0

    :cond_290
    goto :goto_2da

    :catchall_291
    move-exception v0

    move-object/from16 v23, v2

    move-wide/from16 v29, v30

    goto/16 :goto_509

    :cond_298
    move-object/from16 v38, v0

    move-object/from16 v23, v2

    move-wide/from16 v39, v6

    move-wide/from16 v29, v30

    const/4 v7, 0x1

    cmp-long v0, v10, v32

    if-gtz v0, :cond_2da

    cmp-long v0, v10, v34

    if-ltz v0, :cond_2da

    rem-long v0, v10, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2da

    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_2bc

    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-virtual {v0, v12, v10, v11}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->queryTrafficPeriodicity(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;J)J

    move-result-wide v0

    move-wide v15, v0

    :cond_2bc
    const-wide/16 v0, 0x0

    cmp-long v2, v15, v0

    if-lez v2, :cond_2da

    iput-wide v10, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iget-wide v2, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_2cd

    iget-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    goto :goto_2d8

    :cond_2cd
    iget-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iget-wide v2, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhenElapsed:J

    iget-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/AlarmManagerServiceExt;->maxRepeatInterval(JJ)J

    move-result-wide v0

    :goto_2d8
    iput-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J
    :try_end_2da
    .catchall {:try_start_26e .. :try_end_2da} :catchall_50b

    :cond_2da
    :goto_2da
    move-wide v1, v15

    :try_start_2db
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0
    :try_end_2df
    .catchall {:try_start_2db .. :try_end_2df} :catchall_4d3

    if-eqz v0, :cond_30b

    :try_start_2e1
    const-string v0, "AlarmManagerEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TA] Periodicity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30b

    :catchall_307
    move-exception v0

    move-wide v15, v1

    goto/16 :goto_509

    :cond_30b
    :goto_30b
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_328

    iget-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v0, v4, v34

    if-ltz v0, :cond_328

    iget-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v0, v4, v32

    if-gtz v0, :cond_328

    const-wide/16 v4, 0x0

    iput-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    iput-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    invoke-direct {v8, v12}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->addRepeatingAlarmLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;)V

    goto/16 :goto_45f

    :cond_328
    const-wide/16 v4, 0x0

    cmp-long v0, v1, v4

    if-lez v0, :cond_45f

    iget-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v0, v4, v34

    if-ltz v0, :cond_376

    iget-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v0, v4, v32

    if-gtz v0, :cond_376

    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    move-wide/from16 v49, v4

    iget-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v5, v49

    invoke-direct {v8, v5, v6, v3, v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    iget-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v5

    rem-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_36d

    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    const/4 v0, 0x0

    invoke-direct {v8, v12, v3, v4, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    invoke-direct {v8, v12}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->addRepeatingAlarmLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;)V

    goto :goto_373

    :cond_36d
    iget-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const/4 v0, 0x0

    invoke-direct {v8, v12, v3, v4, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    :goto_373
    const-wide/16 v5, 0x0

    goto :goto_3a2

    :cond_376
    iget-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_3a2

    cmp-long v0, v1, v32

    if-gtz v0, :cond_3a2

    cmp-long v0, v1, v34

    if-ltz v0, :cond_3a2

    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    invoke-direct {v8, v3, v4, v1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    invoke-direct {v8, v12, v3, v4, v7}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    invoke-direct {v8, v12}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->addRepeatingAlarmLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;)V

    :cond_3a2
    :goto_3a2
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->NEW_ALARM_MANAGER:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_3c7

    iget-boolean v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    if-eqz v0, :cond_3c7

    nop

    iget v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    if-gt v0, v7, :cond_3b6

    iget-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    sub-long v3, v3, v21

    goto :goto_3b8

    :cond_3b6
    iget-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    :goto_3b8
    iput-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iput-wide v3, v9, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iget-wide v5, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    add-long/2addr v3, v5

    iput-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhenElapsed:J

    iget-wide v3, v9, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v3, v9, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    :cond_3c7
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->ABOVE_ANDROID_M:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_3d1

    iget-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iput-wide v3, v9, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    :cond_3d1
    invoke-direct {v8, v9, v7}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateExpectedWhen(Lcom/android/server/AlarmManagerService$Alarm;Z)V

    const-string/jumbo v0, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e7

    iget-wide v3, v9, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget-wide v5, v9, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_3ed

    :cond_3e7
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    if-eqz v0, :cond_45f

    :cond_3ed
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iget-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget v5, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    if-gt v5, v7, :cond_3fb

    const-wide/16 v51, 0x0

    goto :goto_3fd

    :cond_3fb
    move-wide/from16 v51, v21

    :goto_3fd
    add-long v3, v3, v51

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {v0}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---> T:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_42e
    .catchall {:try_start_2e1 .. :try_end_42e} :catchall_307

    :try_start_42e
    iget-wide v7, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", INT:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v5, "AlarmManagerEXT"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_458
    .catchall {:try_start_42e .. :try_end_458} :catchall_459

    goto :goto_45f

    :catchall_459
    move-exception v0

    move-wide v15, v1

    move-object/from16 v8, p0

    goto/16 :goto_509

    :cond_45f
    :goto_45f
    :try_start_45f
    iget-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide v13, v3

    monitor-exit v23
    :try_end_463
    .catchall {:try_start_45f .. :try_end_463} :catchall_4cd

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-double v3, v3

    sub-double v3, v3, v24

    move-object/from16 v8, p0

    iget-wide v5, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTime:D

    move-wide/from16 v53, v1

    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpCount:J

    long-to-double v0, v0

    mul-double/2addr v5, v0

    add-double/2addr v5, v3

    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpCount:J

    const-wide/16 v15, 0x1

    add-long/2addr v0, v15

    iput-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpCount:J

    long-to-double v0, v0

    div-double/2addr v5, v0

    iput-wide v5, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTime:D

    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMax:D

    cmpl-double v0, v3, v0

    if-lez v0, :cond_491

    iput-wide v3, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMax:D

    iget-object v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMaxUid:J

    :cond_491
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    if-eqz v0, :cond_4cc

    const-string v0, "AlarmManagerEXT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (SyncScheduler) Processed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " (avg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%.2f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-wide v6, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTime:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") [ms]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4cc
    return-wide v13

    :catchall_4cd
    move-exception v0

    move-wide/from16 v53, v1

    move-object/from16 v8, p0

    goto :goto_4d6

    :catchall_4d3
    move-exception v0

    move-wide/from16 v53, v1

    :goto_4d6
    move-wide/from16 v15, v53

    goto :goto_509

    :catchall_4d9
    move-exception v0

    move-object/from16 v23, v2

    move-wide/from16 v39, v6

    move-wide/from16 v29, v30

    goto :goto_509

    :cond_4e1
    move-object/from16 v38, v0

    move-object/from16 v23, v2

    move-wide/from16 v29, v4

    move-wide/from16 v39, v6

    :try_start_4e9
    invoke-direct {v8, v12}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isChinaControlAlarm(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    if-eqz v0, :cond_500

    move-object v1, v8

    move-object v2, v9

    move-object v3, v12

    move-wide/from16 v4, v21

    move-wide/from16 v6, v17

    invoke-direct/range {v1 .. v7}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmForChinaApplication(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JJ)Z

    move-result v1

    if-eqz v1, :cond_500

    iget-wide v1, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    monitor-exit v23

    return-wide v1

    :cond_500
    monitor-exit v23

    return-wide v13

    :catchall_502
    move-exception v0

    move-object/from16 v23, v2

    move-wide/from16 v29, v4

    move-wide/from16 v39, v6

    :goto_509
    monitor-exit v23
    :try_end_50a
    .catchall {:try_start_4e9 .. :try_end_50a} :catchall_50b

    throw v0

    :catchall_50b
    move-exception v0

    goto :goto_509
.end method

.method public updateAlarmTriggerInfo(Lcom/android/server/AlarmManagerService$Alarm;IJ)V
    .registers 12

    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-nez v0, :cond_9

    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    if-nez v1, :cond_f

    return-void

    :cond_f
    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->getPackageTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1e
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockUserApps:Ljava/lang/Object;

    monitor-enter v3
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_7b

    :try_start_21
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mUserAppTagSet:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    const/4 v0, 0x1

    :cond_2a
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_78

    :try_start_2b
    iget-boolean v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isUSBConnected:Z

    if-nez v3, :cond_3d

    iget-boolean v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnAppsBundling:Z

    if-eqz v3, :cond_3d

    iget-boolean v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z

    if-eqz v3, :cond_3d

    iget-boolean v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isGalaxyViewUSBConnected:Z

    if-nez v3, :cond_3d

    if-eqz v0, :cond_76

    :cond_3d
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_67

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v5, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v5

    if-eqz v5, :cond_66

    iput p2, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->count:I

    iput-wide p3, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->lastTriggerWhen:J

    iget-boolean v3, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isPassedAlarm:Z

    if-eqz v3, :cond_67

    const/4 v3, 0x0

    iput-boolean v3, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isPassedAlarm:Z

    monitor-exit v2

    return-void

    :cond_66
    goto :goto_43

    :cond_67
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v3, :cond_76

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v3, :cond_76

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    iget-object v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, p2, p3, p4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->updateAlarmTriggerInfo(Landroid/app/PendingIntent;IJ)V

    :cond_76
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_2b .. :try_end_77} :catchall_7b

    return-void

    :catchall_78
    move-exception v4

    :try_start_79
    monitor-exit v3
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    :try_start_7a
    throw v4

    :catchall_7b
    move-exception v3

    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_7b

    throw v3
.end method

.method public updateEmailSyncStatus(JJ[J)J
    .registers 13

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->updateEmailSyncStatus(JJ[J)J

    move-result-wide v0

    return-wide v0

    :cond_e
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public updateExplicitRepeatingAlarms(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 29

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    const/4 v1, 0x0

    move v11, v1

    :try_start_6
    iget-object v2, v9, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_6 .. :try_end_9} :catch_29
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_9} :catch_24

    :try_start_9
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isIgnoreAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    if-eqz v0, :cond_1f

    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "AlarmManagerEXT"

    const-string/jumbo v3, "updateExplicitRepeatingAlarms exception appsync"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    monitor-exit v2

    return v1

    :cond_1f
    monitor-exit v2

    goto :goto_2d

    :catchall_21
    move-exception v0

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_21

    :try_start_23
    throw v0
    :try_end_24
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_23 .. :try_end_24} :catch_29
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_24} :catch_24

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2e

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/util/regex/PatternSyntaxException;->printStackTrace()V

    :goto_2d
    nop

    :goto_2e
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->getTarget(Lcom/android/server/AlarmManagerService$Alarm;)I

    move-result v12

    packed-switch v12, :pswitch_data_108

    :cond_35
    move/from16 v26, v11

    move/from16 v25, v12

    goto/16 :goto_105

    :pswitch_3b
    # invokes: Lcom/android/server/AlarmManagerServiceExt;->isActiveAlarm(Lcom/android/server/AlarmManagerService$Alarm;)Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/AlarmManagerServiceExt;->access$1000(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    if-nez v0, :cond_4f

    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    if-eqz v0, :cond_4e

    const-string v0, "AlarmManagerEXT"

    const-string v1, "Skip to resched alarm : The alarm gonna be controlled by ASB"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    return v11

    :cond_4f
    iget-object v2, v9, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v2

    :try_start_52
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateExplicitRepeatingAlarmsLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    move v11, v0

    monitor-exit v2

    :cond_58
    move/from16 v26, v11

    move/from16 v25, v12

    goto/16 :goto_105

    :catchall_5e
    move-exception v0

    monitor-exit v2
    :try_end_60
    .catchall {:try_start_52 .. :try_end_60} :catchall_5e

    throw v0

    :pswitch_61
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isChinaControlAlarm(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-wide v2, v10, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/32 v4, 0x1b77400

    cmp-long v2, v2, v4

    if-gtz v2, :cond_35

    iget-wide v2, v10, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    sget-boolean v4, Lcom/android/server/AlarmManagerServiceExt;->COUNTRY_CODE_CHN:Z

    if-eqz v4, :cond_77

    goto :goto_79

    :cond_77
    const/16 v1, 0x2710

    :goto_79
    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gtz v1, :cond_88

    iget-object v1, v9, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mExtraWhiteListPkgs:Ljava/util/ArrayList;

    iget-object v2, v10, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    :cond_88
    new-instance v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v2, v9, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerServiceExt;

    iget-object v2, v2, Lcom/android/server/AlarmManagerServiceExt;->mAms:Lcom/android/server/AlarmManagerService;

    invoke-direct {v1, v10, v2}, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;-><init>(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService;)V

    move-object v13, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v18, v14, v16

    iget-wide v1, v10, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long v1, v16, v1

    iget-wide v3, v10, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    div-long/2addr v1, v3

    const-wide/16 v7, 0x1

    add-long v20, v7, v1

    iget-wide v1, v13, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget-wide v3, v13, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    mul-long v3, v3, v20

    add-long/2addr v1, v3

    iput-wide v1, v13, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget v1, v13, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v5, 0x1

    if-gt v1, v5, :cond_ba

    iget-wide v1, v13, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    sub-long v1, v1, v18

    goto :goto_bc

    :cond_ba
    iget-wide v1, v13, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    :goto_bc
    iput-wide v1, v13, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iget-wide v3, v9, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInChn:J

    iget-wide v1, v9, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultIntervalInChn:J

    move-wide/from16 v22, v1

    move-object v1, v9

    move-object v2, v13

    move/from16 v24, v5

    move-wide/from16 v5, v22

    move/from16 v26, v11

    move/from16 v25, v12

    move-wide v11, v7

    move-wide/from16 v7, v18

    invoke-direct/range {v1 .. v8}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmForFixedPeriodicWakeups(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JJJ)V

    iget-wide v1, v13, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_e0

    iget-wide v1, v13, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iput-wide v1, v10, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    :cond_e0
    iget-wide v1, v13, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget-wide v3, v13, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    sub-long/2addr v1, v3

    iput-wide v1, v10, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget-wide v1, v13, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iget-wide v3, v13, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    sub-long/2addr v1, v3

    iput-wide v1, v10, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v11, v10, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    iget-wide v1, v10, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v3, v10, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    add-long/2addr v1, v3

    iput-wide v1, v10, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    # getter for: Lcom/android/server/AlarmManagerServiceExt;->ABOVE_ANDROID_M:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_101

    iget-wide v1, v10, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iput-wide v1, v10, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    :cond_101
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateExpectedWhen(Lcom/android/server/AlarmManagerService$Alarm;)V

    return v24

    :goto_105
    return v26

    nop

    nop

    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_61
        :pswitch_3b
    .end packed-switch
.end method

.method public updateExplicitRepeatingAlarmsLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v7, v3, v5

    iget-object v9, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_15
    :goto_15
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_197

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v11, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v12, v1, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-virtual {v10, v11, v12}, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v11

    if-eqz v11, :cond_15

    iget-wide v11, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-gtz v11, :cond_34

    goto :goto_15

    :cond_34
    iget-wide v11, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    cmp-long v9, v11, v13

    if-nez v9, :cond_3d

    iget-wide v11, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    goto :goto_3f

    :cond_3d
    iget-wide v11, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    :goto_3f
    iget-wide v13, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iput-wide v13, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iput-wide v13, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->lastTriggerWhen:J

    iget-wide v13, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long v13, v5, v13

    move/from16 v17, v2

    move-wide/from16 v18, v3

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    div-long/2addr v13, v2

    const-wide/16 v2, 0x1

    add-long/2addr v13, v2

    iget-wide v2, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    mul-long v20, v13, v11

    add-long v2, v2, v20

    iput-wide v2, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget-boolean v2, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isIntervalChanged:Z

    if-eqz v2, :cond_67

    iget-wide v3, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    const-wide/16 v15, 0x0

    cmp-long v2, v3, v15

    if-gtz v2, :cond_6c

    :cond_67
    iget-boolean v2, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_194

    :cond_6c
    iget-object v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    move-wide/from16 v22, v5

    iget-wide v4, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    iget-wide v2, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    rem-long/2addr v2, v4

    const-wide/16 v15, 0x0

    cmp-long v2, v2, v15

    const/4 v3, 0x0

    if-nez v2, :cond_9a

    iget-object v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    invoke-direct {v0, v10, v4, v5, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    goto :goto_9f

    :cond_9a
    iget-wide v4, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    invoke-direct {v0, v10, v4, v5, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    :goto_9f
    iget-boolean v2, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    if-eqz v2, :cond_ec

    iput-boolean v3, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isIntervalChanged:Z

    const/4 v2, 0x1

    iget-wide v3, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iput-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    :goto_aa
    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget v5, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v6, 0x1

    if-gt v5, v6, :cond_b4

    move-wide/from16 v5, v18

    goto :goto_b6

    :cond_b4
    move-wide/from16 v5, v22

    :goto_b6
    cmp-long v3, v3, v5

    if-lez v3, :cond_c0

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long/2addr v3, v11

    iput-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    goto :goto_aa

    :cond_c0
    nop

    iget v3, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v4, 0x1

    if-gt v3, v4, :cond_ca

    iget-wide v3, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    sub-long/2addr v3, v7

    goto :goto_cc

    :cond_ca
    iget-wide v3, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    :goto_cc
    iput-wide v3, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    nop

    iget v3, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v4, 0x1

    if-gt v3, v4, :cond_d8

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long/2addr v3, v7

    goto :goto_da

    :cond_d8
    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    :goto_da
    iput-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v3, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iget-wide v5, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    add-long/2addr v3, v5

    iput-wide v3, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhenElapsed:J

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    const-wide/16 v3, 0x1

    iput-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    goto :goto_ee

    :cond_ec
    move/from16 v2, v17

    :goto_ee
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->ABOVE_ANDROID_M:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1300()Z

    move-result v3

    if-eqz v3, :cond_f8

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iput-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    :cond_f8
    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateExpectedWhen(Lcom/android/server/AlarmManagerService$Alarm;Z)V

    const-string/jumbo v3, "eng"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10f

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget-wide v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_115

    :cond_10f
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v3

    if-eqz v3, :cond_18f

    :cond_115
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    iget-wide v4, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget v6, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v9, 0x1

    if-gt v6, v9, :cond_122

    goto :goto_123

    :cond_122
    move-wide v15, v7

    :goto_123
    add-long/2addr v4, v15

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {v3}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--->> T:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    if-eqz v9, :cond_150

    iget-object v9, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    goto :goto_15a

    :cond_150
    iget-object v9, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listener:Landroid/app/IAlarmListener;

    if-eqz v9, :cond_157

    iget-object v9, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listener:Landroid/app/IAlarmListener;

    goto :goto_15a

    :cond_157
    const-string/jumbo v9, "null"

    :goto_15a
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " ("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v24, v2

    move-object/from16 v25, v3

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", INT:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ") count:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_191

    :cond_18f
    move/from16 v24, v2

    :goto_191
    move/from16 v17, v24

    goto :goto_19d

    :cond_194
    move-wide/from16 v22, v5

    goto :goto_19d

    :cond_197
    move/from16 v17, v2

    move-wide/from16 v18, v3

    move-wide/from16 v22, v5

    :goto_19d
    return v17
.end method
