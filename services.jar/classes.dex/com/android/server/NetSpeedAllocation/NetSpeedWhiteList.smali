.class public Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;
.super Ljava/lang/Object;
.source "NetSpeedWhiteList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList$SCPMReceiver;,
        Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList$BootCompleteReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_SCPM_UPDATE_BROADCAST:Ljava/lang/String; = "sec.app.policy.UPDATE.dnbanet"

.field private static final CATEGORY:Ljava/lang/String; = "category"

.field private static final DATA1:Ljava/lang/String; = "data1"

.field static DEBUG_SCPM:Z = false

.field public static final DNBANET_CATEGORY:Ljava/lang/String; = "whitelist"

.field private static final DNBANET_ITEM:Ljava/lang/String; = "unlimit_pkg"

.field private static final ITEM:Ljava/lang/String; = "item"

.field private static final SCPM_AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.policy"

.field private static final SCPM_POLICY_NAME:Ljava/lang/String; = "dnbanet"

.field private static final TAG:Ljava/lang/String; = "NetSpeedWhiteList"

.field public static final whiteList:[Ljava/lang/String;


# instance fields
.field public final SCPM_URI_DNBANET:Landroid/net/Uri;

.field public final SCPM_URI_POLICY:Landroid/net/Uri;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBootCompleteReceiver:Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList$BootCompleteReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mNwLock:Ljava/lang/Object;

.field private mSCPMReceiver:Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList$SCPMReceiver;

.field public mWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mWhitelistIgnoreNetworkLimit:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mWhitelistUnlimitNetwork:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-string v0, "com.android.settings"

    const-string v1, "com.sec.android.app.launcher"

    const-string v2, "com.samsung.android.app.notes"

    const-string v3, "com.samsung.android.calendar"

    const-string v4, "com.sec.android.app.popupcalculator"

    const-string v5, "com.samsung.android.packageinstaller"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->whiteList:[Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->DEBUG_SCPM:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mAudioManager:Landroid/media/AudioManager;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mNwLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mWhiteList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mWhitelistUnlimitNetwork:Ljava/util/ArrayList;

    const-string v0, "content://com.samsung.android.sm.policy/policy_item/dnbanet"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->SCPM_URI_DNBANET:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.sm.policy/policy_item/policy_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->SCPM_URI_POLICY:Landroid/net/Uri;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mWhitelistIgnoreNetworkLimit:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList$SCPMReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList$SCPMReceiver;-><init>(Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;)V

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mSCPMReceiver:Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList$SCPMReceiver;

    new-instance v0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList$BootCompleteReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList$BootCompleteReceiver;-><init>(Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;)V

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mBootCompleteReceiver:Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList$BootCompleteReceiver;

    iput-object p2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->whiteList:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_4c
    if-ge v3, v2, :cond_6b

    aget-object v4, v1, v3

    :try_start_50
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const v6, 0xa200

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mWhiteList:Ljava/util/List;

    iget v7, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_66
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_50 .. :try_end_66} :catch_67

    goto :goto_68

    :catch_67
    move-exception v5

    :goto_68
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    :cond_6b
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getSCPMPolicyItemFromDB()V
    .registers 11

    const/4 v0, 0x0

    const-string/jumbo v1, "item"

    const-string v2, "category"

    const-string v3, "data1"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    const-string v2, "NetSpeedWhiteList"

    const-string/jumbo v3, "getSCPMPolicyItemFromDB!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_15
    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->SCPM_URI_DNBANET:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_24} :catch_26

    move-object v0, v2

    goto :goto_44

    :catch_26
    move-exception v2

    const-string v3, "NetSpeedWhiteList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception with contentResolver : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_44
    if-eqz v0, :cond_aa

    :cond_46
    :goto_46
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a6

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_46

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "unlimit_pkg"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a5

    const-string/jumbo v5, "whitelist"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a5

    move-object v5, v4

    iget-object v7, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mNwLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_77
    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mWhitelistIgnoreNetworkLimit:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v7
    :try_end_7d
    .catchall {:try_start_77 .. :try_end_7d} :catchall_a2

    sget-boolean v1, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->DEBUG_SCPM:Z

    if-eqz v1, :cond_a0

    const-string v1, "NetSpeedWhiteList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSCPMPolicyItemFromDB category = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ,scpm pkg: data1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a0
    move-object v1, v5

    goto :goto_a5

    :catchall_a2
    move-exception v1

    :try_start_a3
    monitor-exit v7
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    throw v1

    :cond_a5
    :goto_a5
    goto :goto_46

    :cond_a6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_b2

    :cond_aa
    const-string v2, "NetSpeedWhiteList"

    const-string/jumbo v3, "getSCPMPolicyItemFromDB error, no database!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b2
    return-void
.end method

.method private hasValidItemFromDB()Z
    .registers 11

    const/4 v0, 0x0

    const-string/jumbo v1, "item"

    const-string v2, "category"

    const-string v3, "data1"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "NetSpeedWhiteList"

    const-string/jumbo v4, "hasValidItemFromDB!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_16
    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->SCPM_URI_DNBANET:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_25} :catch_27

    move-object v0, v3

    goto :goto_45

    :catch_27
    move-exception v3

    const-string v4, "NetSpeedWhiteList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception with contentResolver : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_45
    if-eqz v0, :cond_89

    :cond_47
    :goto_47
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_85

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_47

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "unlimit_pkg"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_84

    const-string/jumbo v7, "whitelist"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_84

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mNwLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_78
    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mWhitelistIgnoreNetworkLimit:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    monitor-exit v8

    nop

    move v2, v7

    goto :goto_85

    :catchall_81
    move-exception v2

    monitor-exit v8
    :try_end_83
    .catchall {:try_start_78 .. :try_end_83} :catchall_81

    throw v2

    :cond_84
    goto :goto_47

    :cond_85
    :goto_85
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_91

    :cond_89
    const-string v3, "NetSpeedWhiteList"

    const-string/jumbo v4, "hasValidItemFromDB error, no database!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_91
    return v2
.end method

.method private isMusicOrRecordActive(Ljava/lang/String;I)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mAudioManager:Landroid/media/AudioManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->semIsRecordActive(I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1, p2}, Landroid/media/AudioManager;->isUsingAudio(Ljava/lang/String;I)Z

    move-result v2

    if-nez v0, :cond_2b

    if-eqz v1, :cond_2f

    :cond_2b
    if-eqz v2, :cond_2f

    const/4 v3, 0x1

    return v3

    :cond_2f
    const/4 v0, 0x0

    return v0
.end method

.method private isNeedUpdateSCPMPolicy()Z
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->DEBUG_SCPM:Z

    if-eqz v2, :cond_e

    const-string v2, "NetSpeedWhiteList"

    const-string/jumbo v3, "isNeedUpdateSCPMPolicy"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->SCPM_URI_POLICY:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1e} :catch_20

    move-object v0, v2

    goto :goto_29

    :catch_20
    move-exception v2

    const-string v3, "NetSpeedWhiteList"

    const-string/jumbo v4, "policy list is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    if-eqz v0, :cond_75

    :goto_2b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_72

    const-string/jumbo v2, "policyName"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "policyVersion"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "dnbanet"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    const-string v4, "NetSpeedWhiteList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isNeedUpdateSCPMPolicy: policyName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " , policyVersion="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_72

    :cond_71
    goto :goto_2b

    :cond_72
    :goto_72
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_75
    return v1
.end method

.method private isSCPMAvailable()Z
    .registers 4

    sget-boolean v0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->DEBUG_SCPM:Z

    if-eqz v0, :cond_c

    const-string v0, "NetSpeedWhiteList"

    const-string/jumbo v1, "isSCPMAvailable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.sm.policy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_1d

    const/4 v2, 0x1

    nop

    :cond_1d
    return v2
.end method

.method private isSCPMWhitelsit(Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mNwLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mWhitelistIgnoreNetworkLimit:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_1e
    goto :goto_9

    :cond_1f
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private isShowIconPackage(Ljava/lang/String;)Z
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_25

    const/4 v2, 0x1

    return v2

    :cond_25
    return v2
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 6

    const-string/jumbo v0, "mWhitelistIgnoreNetworkLimit:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mNwLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mWhitelistIgnoreNetworkLimit:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    :cond_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public isWhitelistNONetworkBandwidth(I)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mWhiteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    goto :goto_6

    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public isWhitelistNONetworkBandwidth(Ljava/lang/String;)Z
    .registers 8

    sget-object v0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->whiteList:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v0, 0x1

    return v0

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_14
    return v2
.end method

.method public isWhitelistUnlimitNetwork(Ljava/lang/String;I)Z
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->isSCPMWhitelsit(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    const-string v0, "NetSpeedWhiteList"

    const-string v2, " isSCPMWhitelsit "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->isMusicOrRecordActive(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "NetSpeedWhiteList"

    const-string v2, " isMusicOrRecordActive "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public updateSCPMParametersFromDB()V
    .registers 3

    sget-boolean v0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->DEBUG_SCPM:Z

    if-eqz v0, :cond_c

    const-string v0, "NetSpeedWhiteList"

    const-string/jumbo v1, "updateSCPMParametersFromDB"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-direct {p0}, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->isSCPMAvailable()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    invoke-direct {p0}, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->isNeedUpdateSCPMPolicy()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-direct {p0}, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->hasValidItemFromDB()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-direct {p0}, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->getSCPMPolicyItemFromDB()V

    goto :goto_2b

    :cond_23
    const-string v0, "NetSpeedWhiteList"

    const-string/jumbo v1, "scpm doesn\'t find the Policy name for dnbanet"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b
    return-void
.end method
