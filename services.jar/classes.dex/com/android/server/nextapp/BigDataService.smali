.class public Lcom/android/server/nextapp/BigDataService;
.super Landroid/app/job/JobService;
.source "BigDataService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/nextapp/BigDataService$BigDataRunnable;
    }
.end annotation


# static fields
.field private static final MAPREFS:Ljava/lang/String; = "/data/system/bigdata-pkgaccuracy"

.field private static final TAG:Ljava/lang/String; = "PkgPredictorService-BigDataService"

.field private static mContext:Landroid/content/Context;

.field private static mPkgAccuracyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static sBigDataService:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/nextapp/BigDataService;->mContext:Landroid/content/Context;

    sput-object v0, Lcom/android/server/nextapp/BigDataService;->mPkgAccuracyMap:Ljava/util/HashMap;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/server/nextapp/BigDataService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/nextapp/BigDataService;->sBigDataService:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/android/server/nextapp/BigDataService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getPkgAccuracyMap()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/nextapp/BigDataService;->mPkgAccuracyMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static initPkgAccuracyMap()V
    .registers 5

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/bigdata-pkgaccuracy"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5e

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_f
    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/data/system/bigdata-pkgaccuracy"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    sput-object v3, Lcom/android/server/nextapp/BigDataService;->mPkgAccuracyMap:Ljava/util/HashMap;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_25} :catch_30
    .catchall {:try_start_f .. :try_end_25} :catchall_2e

    nop

    :try_start_26
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    nop

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2d} :catch_3a

    goto :goto_47

    :catchall_2e
    move-exception v3

    goto :goto_49

    :catch_30
    move-exception v3

    :try_start_31
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_2e

    if-eqz v2, :cond_3c

    :try_start_36
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_3c

    :catch_3a
    move-exception v3

    goto :goto_42

    :cond_3c
    :goto_3c
    if-eqz v1, :cond_47

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_41} :catch_3a

    goto :goto_47

    :goto_42
    nop

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_48

    :cond_47
    :goto_47
    nop

    :goto_48
    goto :goto_66

    :goto_49
    nop

    if-eqz v2, :cond_52

    :try_start_4c
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_52

    :catch_50
    move-exception v4

    goto :goto_58

    :cond_52
    :goto_52
    if-eqz v1, :cond_5d

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_57} :catch_50

    goto :goto_5d

    :goto_58
    nop

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    nop

    :cond_5d
    :goto_5d
    throw v3

    :cond_5e
    const-string v1, "PkgPredictorService-BigDataService"

    const-string/jumbo v2, "pkgAccuracyMap file not exists"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_66
    return-void
.end method

.method public static savePkgAccuracyMap()V
    .registers 4

    sget-object v0, Lcom/android/server/nextapp/BigDataService;->mPkgAccuracyMap:Ljava/util/HashMap;

    if-nez v0, :cond_c

    const-string v0, "PkgPredictorService-BigDataService"

    const-string v1, "Save error: mPkgAccuracyMap == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_e
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/data/system/bigdata-pkgaccuracy"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    sget-object v2, Lcom/android/server/nextapp/BigDataService;->mPkgAccuracyMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_24} :catch_38
    .catchall {:try_start_e .. :try_end_24} :catchall_36

    nop

    :try_start_25
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_2b

    :catch_29
    move-exception v2

    goto :goto_30

    :goto_2b
    nop

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2f} :catch_29

    goto :goto_35

    :goto_30
    nop

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_47

    :cond_35
    :goto_35
    goto :goto_47

    :catchall_36
    move-exception v2

    goto :goto_48

    :catch_38
    move-exception v2

    :try_start_39
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_36

    if-eqz v1, :cond_41

    :try_start_3e
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    :cond_41
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_46} :catch_29

    goto :goto_35

    :goto_47
    return-void

    :goto_48
    nop

    if-eqz v1, :cond_51

    :try_start_4b
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_51

    :catch_4f
    move-exception v3

    goto :goto_57

    :cond_51
    :goto_51
    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_56} :catch_4f

    goto :goto_5c

    :goto_57
    nop

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    nop

    :cond_5c
    :goto_5c
    throw v2
.end method

.method public static schedule(Landroid/content/Context;)V
    .registers 8

    sput-object p0, Lcom/android/server/nextapp/BigDataService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/nextapp/BigDataService;->initPkgAccuracyMap()V

    const-string/jumbo v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    new-instance v1, Landroid/app/job/JobInfo$Builder;

    sget-object v2, Lcom/android/server/nextapp/BigDataService;->sBigDataService:Landroid/content/ComponentName;

    const/16 v3, 0x2582

    invoke-direct {v1, v3, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    const-wide/32 v3, 0xf731400

    const-wide/32 v5, 0x5265c00

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    sget-boolean v2, Lcom/android/server/nextapp/PkgPredictorService;->DEBUG:Z

    if-eqz v2, :cond_3d

    const-string v2, "PkgPredictorService-BigDataService"

    const-string/jumbo v3, "schedule send bigData job..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return-void
.end method

.method public static updatePkgAccuracyMap(Ljava/util/HashMap;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lcom/android/server/nextapp/BigDataService;->mPkgAccuracyMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 4

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/nextapp/BigDataService$BigDataRunnable;

    invoke-direct {v1, p0, p1}, Lcom/android/server/nextapp/BigDataService$BigDataRunnable;-><init>(Lcom/android/server/nextapp/BigDataService;Landroid/app/job/JobParameters;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
