.class public Lcom/android/server/fingerprint/BioLoggingManager;
.super Ljava/lang/Object;
.source "BioLoggingManager.java"


# static fields
.field public static final DEBUG:Z

.field private static final LOG_ARRAY_SIZE:I

.field public static final RESULT_ETC:Ljava/lang/String; = ""

.field public static final RESULT_EXCEPTION:Ljava/lang/String; = "E"

.field public static final RESULT_FAIL:Ljava/lang/String; = "F"

.field public static final RESULT_MATCH:Ljava/lang/String; = "M"

.field public static final RESULT_NO_MATCH:Ljava/lang/String; = "N"

.field public static final RESULT_SUCCESS:Ljava/lang/String; = "S"

.field public static final RESULT_TIMEOUT:Ljava/lang/String; = "T"

.field private static final TAG:Ljava/lang/String; = "FingerprintService"

.field public static final TYPE_AUTHENTICATE:Ljava/lang/String; = "A"

.field public static final TYPE_ENROLL:Ljava/lang/String; = "E"

.field public static final TYPE_REMOVE:Ljava/lang/String; = "R"

.field private static sLogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPackageName:Ljava/lang/String;

.field private static sRequestTimestamp:J

.field private static sType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/fingerprint/BioLoggingManager;->DEBUG:Z

    sget-boolean v0, Lcom/android/server/fingerprint/BioLoggingManager;->DEBUG:Z

    if-eqz v0, :cond_b

    const/16 v0, 0x32

    goto :goto_d

    :cond_b
    const/16 v0, 0x14

    :goto_d
    sput v0, Lcom/android/server/fingerprint/BioLoggingManager;->LOG_ARRAY_SIZE:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/fingerprint/BioLoggingManager;->sLogList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/fingerprint/BioLoggingManager;->sPackageName:Ljava/lang/String;

    sput-object v0, Lcom/android/server/fingerprint/BioLoggingManager;->sType:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/fingerprint/BioLoggingManager;->sRequestTimestamp:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDateFromTime(J)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd HH:mm:ss.SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static readLog()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/fingerprint/BioLoggingManager;->sLogList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static setResult(Ljava/lang/String;)V
    .registers 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_4
    sget-wide v2, Lcom/android/server/fingerprint/BioLoggingManager;->sRequestTimestamp:J

    sub-long v2, v0, v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "%s, %s, %s, %s, %d, %s"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v7, Lcom/android/server/fingerprint/BioLoggingManager;->sType:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    sget-object v9, Lcom/android/server/fingerprint/BioLoggingManager;->sPackageName:Ljava/lang/String;

    aput-object v9, v6, v7

    const/4 v7, 0x2

    sget-wide v9, Lcom/android/server/fingerprint/BioLoggingManager;->sRequestTimestamp:J

    invoke-static {v9, v10}, Lcom/android/server/fingerprint/BioLoggingManager;->getDateFromTime(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x3

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/BioLoggingManager;->getDateFromTime(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x5

    aput-object p0, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/server/fingerprint/BioLoggingManager;->sLogList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3e
    sget-object v5, Lcom/android/server/fingerprint/BioLoggingManager;->sLogList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sget v6, Lcom/android/server/fingerprint/BioLoggingManager;->LOG_ARRAY_SIZE:I

    if-lt v5, v6, :cond_4e

    sget-object v5, Lcom/android/server/fingerprint/BioLoggingManager;->sLogList:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4d} :catch_4f

    goto :goto_3e

    :cond_4e
    goto :goto_6a

    :catch_4f
    move-exception v2

    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set log info : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6a
    return-void
.end method

.method public static setStartTime(J)V
    .registers 2

    sput-wide p0, Lcom/android/server/fingerprint/BioLoggingManager;->sRequestTimestamp:J

    return-void
.end method

.method public static setType(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sput-object p0, Lcom/android/server/fingerprint/BioLoggingManager;->sType:Ljava/lang/String;

    sput-object p1, Lcom/android/server/fingerprint/BioLoggingManager;->sPackageName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/fingerprint/BioLoggingManager;->sRequestTimestamp:J

    return-void
.end method
