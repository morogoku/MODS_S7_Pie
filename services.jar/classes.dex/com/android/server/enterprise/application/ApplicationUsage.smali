.class public Lcom/android/server/enterprise/application/ApplicationUsage;
.super Ljava/lang/Object;
.source "ApplicationUsage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;,
        Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;,
        Lcom/android/server/enterprise/application/ApplicationUsage$UsageHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ApplicationUsage"

.field private static appBackGroundStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;",
            ">;"
        }
    .end annotation
.end field

.field private static appForeGroundStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;",
            ">;"
        }
    .end annotation
.end field

.field private static mStatsLock:Ljava/lang/Object;

.field private static volatile mUsageHandler:Landroid/os/Handler;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    if-nez v0, :cond_2b

    monitor-enter p0

    :try_start_a
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    move-object v0, v1

    if-nez v0, :cond_26

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MDMAppUsageHandlerThread"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/server/enterprise/application/ApplicationUsage$UsageHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/enterprise/application/ApplicationUsage$UsageHandler;-><init>(Lcom/android/server/enterprise/application/ApplicationUsage;Landroid/os/Looper;)V

    sput-object v2, Lcom/android/server/enterprise/application/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    :cond_26
    monitor-exit p0

    goto :goto_2b

    :catchall_28
    move-exception v1

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_28

    throw v1

    :cond_2b
    :goto_2b
    return-void
.end method

.method private calculateAvgPerMonth(ILjava/lang/String;I)I
    .registers 16

    const/4 v0, 0x0

    if-eqz p1, :cond_58

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, ":"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17

    const-string v4, ":"

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object p2, v4, v5

    :cond_17
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/application/ApplicationUsage;->getAppInstallTimeInMiliSec(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationUsage;->getFatatoryDataResetTime()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_24

    move-wide v4, v6

    :cond_24
    const-wide/16 v8, -0x1

    cmp-long v8, v8, v4

    if-eqz v8, :cond_32

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/application/ApplicationUsage;->getMonth(J)I

    move-result v2

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/application/ApplicationUsage;->getYear(J)I

    move-result v3

    :cond_32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/android/server/enterprise/application/ApplicationUsage;->getYear(J)I

    move-result v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {p0, v9, v10}, Lcom/android/server/enterprise/application/ApplicationUsage;->getMonth(J)I

    move-result v9

    if-eqz v2, :cond_52

    if-eqz v3, :cond_52

    if-le v8, v3, :cond_4d

    sub-int v10, v8, v3

    mul-int/lit8 v11, v10, 0xc

    add-int/2addr v1, v11

    :cond_4d
    if-le v9, v2, :cond_52

    sub-int v10, v9, v2

    add-int/2addr v1, v10

    :cond_52
    if-eqz v1, :cond_57

    div-int v0, p1, v1

    goto :goto_58

    :cond_57
    move v0, p1

    :cond_58
    :goto_58
    return v0
.end method

.method private filterUnInstalledApps([Lcom/samsung/android/knox/application/AppInfoLastUsage;II)[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "application_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_22

    move v5, v1

    move v1, v3

    :goto_10
    if-ge v1, p2, :cond_21

    aget-object v6, p1, v1

    iget-object v6, v6, Lcom/samsung/android/knox/application/AppInfoLastUsage;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v6

    if-ne v6, v4, :cond_1e

    add-int/lit8 v5, v5, 0x1

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_21
    move v1, v5

    :cond_22
    if-nez v1, :cond_25

    return-object v0

    :cond_25
    new-array v0, v1, [Lcom/samsung/android/knox/application/AppInfoLastUsage;

    nop

    const/4 v5, 0x0

    :goto_29
    if-ge v5, p2, :cond_3e

    aget-object v6, p1, v5

    iget-object v6, v6, Lcom/samsung/android/knox/application/AppInfoLastUsage;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v6

    if-ne v6, v4, :cond_3b

    aget-object v6, p1, v5

    aput-object v6, v0, v3

    add-int/lit8 v3, v3, 0x1

    :cond_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    :cond_3e
    return-object v0
.end method

.method private getAppInstallTimeInMiliSec(Ljava/lang/String;I)J
    .registers 13

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/16 v3, 0x80

    const-wide/16 v4, -0x1

    :try_start_e
    invoke-virtual {v0, p1, v3, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-nez v3, :cond_20

    const-string v6, "ApplicationUsage"

    const-string v7, "ApplicationUsage::getAppInstallTimeInMiliSec @ fail to get application info"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1b} :catch_33
    .catchall {:try_start_e .. :try_end_1b} :catchall_31

    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v4

    :cond_20
    :try_start_20
    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v8
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2b} :catch_33
    .catchall {:try_start_20 .. :try_end_2b} :catchall_31

    move-wide v4, v8

    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v4

    :catchall_31
    move-exception v3

    goto :goto_3c

    :catch_33
    move-exception v3

    :try_start_34
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_31

    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v4

    :goto_3c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getFatatoryDataResetTime()J
    .registers 7

    const-string/jumbo v0, "factorydatareset"

    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/sec_efs/LastResetDate.txt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_40

    const/4 v2, 0x0

    :try_start_11
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    :goto_1c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_20} :catch_2e
    .catchall {:try_start_11 .. :try_end_20} :catchall_2c

    move-object v4, v3

    if-eqz v3, :cond_25

    move-object v0, v4

    goto :goto_1c

    :cond_25
    nop

    :try_start_26
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    :goto_29
    goto :goto_40

    :catch_2a
    move-exception v3

    goto :goto_29

    :catchall_2c
    move-exception v3

    goto :goto_38

    :catch_2e
    move-exception v3

    :try_start_2f
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_2c

    if-eqz v2, :cond_40

    :try_start_34
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_2a

    goto :goto_29

    :goto_38
    if-eqz v2, :cond_3f

    :try_start_3a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_3f

    :catch_3e
    move-exception v4

    :cond_3f
    :goto_3f
    throw v3

    :cond_40
    :goto_40
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/dd/yyyy HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    :try_start_49
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J
    :try_end_50
    .catch Ljava/text/ParseException; {:try_start_49 .. :try_end_50} :catch_51

    goto :goto_55

    :catch_51
    move-exception v5

    invoke-virtual {v5}, Ljava/text/ParseException;->printStackTrace()V

    :goto_55
    return-wide v3
.end method

.method private getMonth(J)I
    .registers 5

    const-string v0, "GMT+0"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private getYear(J)I
    .registers 5

    const-string v0, "GMT+0"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method private updateBackGroundUsageDetails()V
    .registers 17

    new-instance v0, Lcom/android/server/enterprise/application/ApplicationUsageDb;

    move-object/from16 v6, p0

    iget-object v1, v6, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationUsageDb;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    if-eqz v1, :cond_77

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_77

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v1

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_25
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;

    iget-wide v1, v15, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStopTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4f

    iget-wide v2, v15, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    iget-wide v4, v15, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStopTime:J

    move-object v1, v14

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->updateBackGroundUsageDetails(Ljava/lang/String;JJ)Z

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    :cond_4f
    iget-wide v12, v15, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object v10, v0

    move-object v11, v14

    move-object v3, v14

    move-object v4, v15

    move-wide v14, v1

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->updateBackGroundUsageDetails(Ljava/lang/String;JJ)Z

    :goto_5d
    goto :goto_25

    :cond_5e
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_77

    const/4 v1, 0x0

    :goto_65
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_77

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    :cond_77
    return-void
.end method

.method private updateForeGroundUsageData()V
    .registers 19

    new-instance v0, Lcom/android/server/enterprise/application/ApplicationUsageDb;

    move-object/from16 v7, p0

    iget-object v1, v7, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationUsageDb;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    if-eqz v1, :cond_7b

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7b

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_25
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;

    iget-wide v1, v15, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastPausetime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_51

    iget v2, v15, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    iget-wide v3, v15, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    iget-wide v5, v15, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastPausetime:J

    move-object v1, v14

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->updateForeGroundUsageDetails(Ljava/lang/String;IJJ)Z

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_61

    :cond_51
    iget v13, v15, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    iget-wide v1, v15, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object v11, v0

    move-object v12, v14

    move-object v3, v14

    move-object v4, v15

    move-wide v14, v1

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->updateForeGroundUsageDetails(Ljava/lang/String;IJJ)Z

    :goto_61
    goto :goto_25

    :cond_62
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_7b

    const/4 v1, 0x0

    :goto_69
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7b

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    :cond_7b
    return-void
.end method

.method private updateNetworkUsage()V
    .registers 2

    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateDataUsageDb()V

    return-void
.end method


# virtual methods
.method public _appLaunchCount(Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;

    iget v2, v1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastPausetime:J

    goto :goto_41

    :cond_2a
    new-instance v1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;-><init>(Lcom/android/server/enterprise/application/ApplicationUsage$1;)V

    iget v2, v1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_41
    monitor-exit v0

    return-void

    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public _appPauseTime(Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastPausetime:J

    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public _appServiceStartTime(Landroid/app/ActivityManager$RunningServiceInfo;)V
    .registers 9

    if-eqz p1, :cond_72

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    if-nez v0, :cond_7

    goto :goto_72

    :cond_7
    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-nez v0, :cond_10

    iget v0, p1, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-nez v0, :cond_10

    return-void

    :cond_10
    iget v0, p1, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_17

    return-void

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3a
    sget-object v2, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;

    iget-wide v3, v2, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_59

    nop

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    :cond_59
    iput-wide v5, v2, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStopTime:J

    goto :goto_6d

    :cond_5c
    new-instance v2, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;-><init>(Lcom/android/server/enterprise/application/ApplicationUsage$1;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    sget-object v3, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6d
    monitor-exit v1

    return-void

    :catchall_6f
    move-exception v2

    monitor-exit v1
    :try_end_71
    .catchall {:try_start_3a .. :try_end_71} :catchall_6f

    throw v2

    :cond_72
    :goto_72
    return-void
.end method

.method public _appServiceStopTime(Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStopTime:J

    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public _insertToAppControlDB()V
    .registers 5

    const-string v0, "ApplicationUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating Usage Statistics in DB @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1a
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_2b

    :try_start_1d
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationUsage;->updateForeGroundUsageData()V

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationUsage;->updateBackGroundUsageDetails()V

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationUsage;->updateNetworkUsage()V

    monitor-exit v0

    goto :goto_2f

    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_28

    :try_start_2a
    throw v1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2b} :catch_2b

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2f
    const-string v0, "ApplicationUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Done Updating Usage Statistics in DB @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public appLaunchCount(Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public appPauseTime(Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public appServiceStartTime(Landroid/app/ActivityManager$RunningServiceInfo;)V
    .registers 4

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public appServiceStopTime(Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public deletePackageFromDb(Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_APP_MGMT"

    const-string v3, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "ApplicationPolicy"

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/enterprise/application/ApplicationUsageDb;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationUsageDb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->deletePackageFromDb(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAllAppLastUsage(I)[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    .registers 14

    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationUsage;->_insertToAppControlDB()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    :try_start_8
    new-instance v5, Lcom/android/server/enterprise/application/ApplicationUsageDb;

    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/server/enterprise/application/ApplicationUsageDb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppUsageData()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, v5

    if-eqz v0, :cond_6a

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6a

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v6

    new-array v6, v6, [Lcom/samsung/android/knox/application/AppInfoLastUsage;

    move-object v1, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_51

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    aget-object v10, v7, v11

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move v6, v10

    goto :goto_56

    :cond_51
    new-array v10, v11, [Ljava/lang/String;

    move-object v7, v10

    aput-object v9, v7, v3

    :goto_56
    if-eq v6, p1, :cond_59

    goto :goto_2d

    :cond_59
    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/knox/application/AppInfoLastUsage;

    aput-object v10, v1, v4

    aget-object v10, v1, v4

    aget-object v11, v7, v3

    iput-object v11, v10, Lcom/samsung/android/knox/application/AppInfoLastUsage;->packageName:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_6a
    if-eqz v1, :cond_71

    invoke-direct {p0, v1, v4, p1}, Lcom/android/server/enterprise/application/ApplicationUsage;->filterUnInstalledApps([Lcom/samsung/android/knox/application/AppInfoLastUsage;II)[Lcom/samsung/android/knox/application/AppInfoLastUsage;

    move-result-object v3
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_70} :catch_73

    move-object v2, v3

    :cond_71
    nop

    return-object v2

    :catch_73
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v5, 0x0

    return-object v5
.end method

.method public getAvgNoAppUsagePerMonth(I)[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    .registers 22

    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/application/ApplicationUsage;->_insertToAppControlDB()V

    :try_start_c
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_1b6

    :try_start_f
    const-string/jumbo v0, "getAvgNoUsagePerMonthOfApp=================="

    const-string v9, "called"

    invoke-static {v0, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v5, v0

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v9
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_1ad

    if-eqz v9, :cond_58

    :try_start_29
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_58

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    sget-object v12, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;

    iget v13, v12, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    if-eqz v13, :cond_52

    iget v13, v12, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    invoke-direct {v1, v13, v11, v2}, Lcom/android/server/enterprise/application/ApplicationUsage;->calculateAvgPerMonth(ILjava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catchall {:try_start_29 .. :try_end_52} :catchall_53

    :cond_52
    goto :goto_2d

    :catchall_53
    move-exception v0

    move-object/from16 v18, v4

    goto/16 :goto_1b0

    :cond_58
    :try_start_58
    new-instance v10, Lcom/android/server/enterprise/application/ApplicationUsageDb;

    iget-object v11, v1, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/application/ApplicationUsageDb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getLaunchCountOfAllApplication()Ljava/util/HashMap;

    move-result-object v10

    move-object v6, v10

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10
    :try_end_68
    .catchall {:try_start_58 .. :try_end_68} :catchall_1ad

    if-nez v10, :cond_13a

    if-eqz v6, :cond_c6

    :try_start_6c
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_c6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b0

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v11, v15

    if-eqz v11, :cond_af

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_af
    goto :goto_c5

    :cond_b0
    invoke-virtual {v6, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eqz v11, :cond_c5

    invoke-virtual {v6, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v5, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c5
    .catchall {:try_start_6c .. :try_end_c5} :catchall_53

    :cond_c5
    :goto_c5
    goto :goto_7a

    :cond_c6
    :try_start_c6
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v11

    new-array v11, v11, [Lcom/samsung/android/knox/application/AppInfoLastUsage;

    move-object v3, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_d7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_134

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_e9
    .catchall {:try_start_c6 .. :try_end_e9} :catchall_1ad

    if-eqz v15, :cond_fd

    :try_start_eb
    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object v12, v15

    move-object/from16 v17, v0

    const/4 v15, 0x1

    aget-object v0, v12, v15

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_fb
    .catchall {:try_start_eb .. :try_end_fb} :catchall_53

    move v11, v0

    goto :goto_107

    :cond_fd
    move-object/from16 v17, v0

    const/4 v0, 0x1

    :try_start_100
    new-array v15, v0, [Ljava/lang/String;

    move-object v0, v15

    const/4 v12, 0x0

    aput-object v14, v0, v12

    move-object v12, v0

    :goto_107
    if-eq v11, v2, :cond_10d

    nop

    move-object/from16 v0, v17

    goto :goto_d7

    :cond_10d
    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v15, Lcom/samsung/android/knox/application/AppInfoLastUsage;

    invoke-direct {v15}, Lcom/samsung/android/knox/application/AppInfoLastUsage;-><init>()V

    aput-object v15, v3, v7

    aget-object v15, v3, v7
    :try_end_120
    .catchall {:try_start_100 .. :try_end_120} :catchall_1ad

    move-object/from16 v18, v4

    const/16 v16, 0x0

    :try_start_124
    aget-object v4, v12, v16

    iput-object v4, v15, Lcom/samsung/android/knox/application/AppInfoLastUsage;->packageName:Ljava/lang/String;

    aget-object v4, v3, v7

    iput v0, v4, Lcom/samsung/android/knox/application/AppInfoLastUsage;->launchCountPerMonth:I

    add-int/lit8 v7, v7, 0x1

    nop

    move-object/from16 v0, v17

    move-object/from16 v4, v18

    goto :goto_d7

    :cond_134
    move-object/from16 v17, v0

    move-object/from16 v18, v4

    goto/16 :goto_1a6

    :cond_13a
    move-object/from16 v17, v0

    move-object/from16 v18, v4

    if-eqz v6, :cond_1a6

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v4

    new-array v4, v4, [Lcom/samsung/android/knox/application/AppInfoLastUsage;

    move-object v3, v4

    const/4 v4, 0x0

    const/4 v10, 0x0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_157
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1a6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_17c

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    const/4 v13, 0x1

    aget-object v14, v10, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move v4, v13

    const/4 v13, 0x1

    goto :goto_183

    :cond_17c
    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/String;

    move-object v10, v14

    const/4 v14, 0x0

    aput-object v12, v10, v14

    :goto_183
    if-eq v4, v2, :cond_186

    goto :goto_157

    :cond_186
    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    new-instance v15, Lcom/samsung/android/knox/application/AppInfoLastUsage;

    invoke-direct {v15}, Lcom/samsung/android/knox/application/AppInfoLastUsage;-><init>()V

    aput-object v15, v3, v7

    aget-object v15, v3, v7

    const/16 v16, 0x0

    aget-object v13, v10, v16

    iput-object v13, v15, Lcom/samsung/android/knox/application/AppInfoLastUsage;->packageName:Ljava/lang/String;

    aget-object v13, v3, v7

    iput v14, v13, Lcom/samsung/android/knox/application/AppInfoLastUsage;->launchCountPerMonth:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_157

    :cond_1a6
    :goto_1a6
    monitor-exit v8
    :try_end_1a7
    .catchall {:try_start_124 .. :try_end_1a7} :catchall_1b4

    :try_start_1a7
    invoke-direct {v1, v3, v7, v2}, Lcom/android/server/enterprise/application/ApplicationUsage;->filterUnInstalledApps([Lcom/samsung/android/knox/application/AppInfoLastUsage;II)[Lcom/samsung/android/knox/application/AppInfoLastUsage;

    move-result-object v0
    :try_end_1ab
    .catch Ljava/lang/Exception; {:try_start_1a7 .. :try_end_1ab} :catch_1b2

    nop

    return-object v0

    :catchall_1ad
    move-exception v0

    move-object/from16 v18, v4

    :goto_1b0
    :try_start_1b0
    monitor-exit v8
    :try_end_1b1
    .catchall {:try_start_1b0 .. :try_end_1b1} :catchall_1b4

    :try_start_1b1
    throw v0
    :try_end_1b2
    .catch Ljava/lang/Exception; {:try_start_1b1 .. :try_end_1b2} :catch_1b2

    :catch_1b2
    move-exception v0

    goto :goto_1b9

    :catchall_1b4
    move-exception v0

    goto :goto_1b0

    :catch_1b6
    move-exception v0

    move-object/from16 v18, v4

    :goto_1b9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v4, "ApplicationUsage::getAvgNoAppUsagePerMonth"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    return-object v4
.end method

.method public getLastUsageTime(Ljava/lang/String;)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public insertToAppControlDB()V
    .registers 3

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
