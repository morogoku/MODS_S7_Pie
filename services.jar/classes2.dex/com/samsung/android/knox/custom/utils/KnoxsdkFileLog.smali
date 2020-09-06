.class public final Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;
.super Ljava/lang/Object;
.source "KnoxsdkFileLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog$KnoxsdkFileLogHolder;
    }
.end annotation


# static fields
.field private static final LOG_FILE_MAX_COUNT:I = 0x2

.field private static final LOG_FILE_SIZE_LIMIT:I = 0x7a120

.field private static TAG:Ljava/lang/String;

.field private static sLogger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "knoxsdk/filelog"

    sput-object v0, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->init()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->fileLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->fileLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static fileLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-static {}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->getInstance()Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;

    sget-object v0, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->sLogger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->getInstance()Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;

    sget-object v0, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->sLogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, " %s : %s\n"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;
    .registers 1

    sget-object v0, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog$KnoxsdkFileLogHolder;->INSTANCE:Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->fileLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static init()V
    .registers 6

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/logging/FileHandler;

    const-string v2, "/data/log/knoxsdk.log"

    const v3, 0x7a120

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;IIZ)V

    new-instance v2, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog$1;-><init>(Ljava/text/SimpleDateFormat;)V

    invoke-virtual {v1, v2}, Ljava/util/logging/FileHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    const-class v2, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->sLogger:Ljava/util/logging/Logger;

    sget-object v2, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->sLogger:Ljava/util/logging/Logger;

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    sget-object v2, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->sLogger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    sget-object v2, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->sLogger:Ljava/util/logging/Logger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V

    sget-object v2, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->TAG:Ljava/lang/String;

    const-string v3, "init success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_44} :catch_45

    goto :goto_60

    :catch_45
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init failure : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_60
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->fileLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->fileLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
