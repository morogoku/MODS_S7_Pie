.class public Lcom/android/server/sepunion/friends/util/LogFrs;
.super Ljava/lang/Object;
.source "LogFrs.java"


# static fields
.field private static final DEBUG_LEVEL_HIGH:Ljava/lang/String; = "0x4948"

.field private static final DEBUG_LEVEL_LOW:Ljava/lang/String; = "0x4f4c"

.field private static final DEBUG_LEVEL_MID:Ljava/lang/String; = "0x494d"

.field private static final LEVEL_DEBUG:I = 0x4

.field private static final LEVEL_ERROR:I = 0x1

.field private static final LEVEL_INFO:I = 0x3

.field private static final LEVEL_NONE:I = 0x0

.field private static final LEVEL_VERBOSE:I = 0x5

.field private static final LEVEL_WARN:I = 0x2

.field private static final TIME_DIFF:J = 0x12a05f200L

.field private static sCurLogLevel:I

.field private static sLateUpdated:J

.field private static sSafeString:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->internalLogLevel()I

    move-result v0

    sput v0, Lcom/android/server/sepunion/friends/util/LogFrs;->sCurLogLevel:I

    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->internalUseSafeString()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/sepunion/friends/util/LogFrs;->sSafeString:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/sepunion/friends/util/LogFrs;->sLateUpdated:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->updateLogLevel()V

    if-eqz p1, :cond_1a

    sget v0, Lcom/android/server/sepunion/friends/util/LogFrs;->sCurLogLevel:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_b

    goto :goto_1a

    :cond_b
    array-length v0, p2

    if-lez v0, :cond_12

    invoke-static {p1, p2}, Lcom/android/server/sepunion/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_12
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->updateLogLevel()V

    if-eqz p1, :cond_1a

    sget v0, Lcom/android/server/sepunion/friends/util/LogFrs;->sCurLogLevel:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_b

    goto :goto_1a

    :cond_b
    array-length v0, p2

    if-lez v0, :cond_12

    invoke-static {p1, p2}, Lcom/android/server/sepunion/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_12
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDateString(J)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static varargs getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRoBootDebugLevel()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "ro.boot.debug_level"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRoDebugLevel()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "ro.debug_level"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSafe(I)I
    .registers 2

    sget-boolean v0, Lcom/android/server/sepunion/friends/util/LogFrs;->sSafeString:Z

    if-eqz v0, :cond_8

    const v0, 0xffffff

    goto :goto_9

    :cond_8
    move v0, p0

    :goto_9
    return v0
.end method

.method public static getSafe(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-boolean v0, Lcom/android/server/sepunion/friends/util/LogFrs;->sSafeString:Z

    if-eqz v0, :cond_7

    const-string v0, "..."

    goto :goto_d

    :cond_7
    if-eqz p0, :cond_b

    move-object v0, p0

    goto :goto_d

    :cond_b
    const-string v0, ""

    :goto_d
    return-object v0
.end method

.method private static getTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "SEP_UNION_FrsSvc"

    if-eqz p0, :cond_19

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1a

    :cond_19
    move-object v1, v0

    :goto_1a
    return-object v1
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->updateLogLevel()V

    if-eqz p1, :cond_1a

    sget v0, Lcom/android/server/sepunion/friends/util/LogFrs;->sCurLogLevel:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_b

    goto :goto_1a

    :cond_b
    array-length v0, p2

    if-lez v0, :cond_12

    invoke-static {p1, p2}, Lcom/android/server/sepunion/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_12
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method private static internalLogLevel()I
    .registers 9

    invoke-static {}, Lcom/android/server/sepunion/friends/common/FwDependency;->isProductDev()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_8

    :goto_7
    goto :goto_10

    :cond_8
    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->isRoDebugLevelMid()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_7

    :cond_f
    const/4 v1, 0x3

    :goto_10
    move v0, v1

    const-string v1, "debug.mate.log.service"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    const-string/jumbo v3, "none"

    const-string v4, "error"

    const-string/jumbo v5, "warning"

    const-string v6, "info"

    const-string v7, "debug"

    const-string/jumbo v8, "verbose"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    move v5, v3

    move v3, v4

    :goto_38
    array-length v6, v2

    if-ge v5, v6, :cond_48

    aget-object v6, v2, v5

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    move v3, v5

    goto :goto_48

    :cond_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    :cond_48
    :goto_48
    if-le v3, v4, :cond_4e

    array-length v4, v2

    if-ge v3, v4, :cond_4e

    move v0, v3

    :cond_4e
    return v0
.end method

.method private static internalUseSafeString()Z
    .registers 3

    invoke-static {}, Lcom/android/server/sepunion/friends/common/FwDependency;->isProductDev()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "debug.mate.log.safe_string"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v0, 0x0

    goto :goto_22

    :cond_18
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v0, 0x1

    :cond_22
    :goto_22
    return v0
.end method

.method public static isDebugLogLevel()Z
    .registers 2

    sget v0, Lcom/android/server/sepunion/friends/util/LogFrs;->sCurLogLevel:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static isRoDebugLevelMid()Z
    .registers 3

    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->getRoDebugLevel()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->getRoBootDebugLevel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0x494d"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    const-string v2, "0x4948"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    const-string v2, "0x494d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    const-string v2, "0x4948"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v2, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v2, 0x1

    :goto_2c
    return v2
.end method

.method public static logLevel()I
    .registers 1

    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->updateLogLevel()V

    sget v0, Lcom/android/server/sepunion/friends/util/LogFrs;->sCurLogLevel:I

    return v0
.end method

.method public static printThrowableStackTrace(Ljava/lang/Throwable;)V
    .registers 4

    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->isDebugLogLevel()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->isRoDebugLevelMid()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1d

    :cond_d
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_20

    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_20
    return-void
.end method

.method private static updateLogLevel()V
    .registers 6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/sepunion/friends/util/LogFrs;->sLateUpdated:J

    sub-long v2, v0, v2

    const-wide v4, 0x12a05f200L

    cmp-long v2, v2, v4

    if-lez v2, :cond_1f

    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->internalLogLevel()I

    move-result v2

    sput v2, Lcom/android/server/sepunion/friends/util/LogFrs;->sCurLogLevel:I

    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->internalUseSafeString()Z

    move-result v2

    sput-boolean v2, Lcom/android/server/sepunion/friends/util/LogFrs;->sSafeString:Z

    sput-wide v0, Lcom/android/server/sepunion/friends/util/LogFrs;->sLateUpdated:J

    :cond_1f
    return-void
.end method

.method public static useSafeString()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/sepunion/friends/util/LogFrs;->sSafeString:Z

    return v0
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->updateLogLevel()V

    if-eqz p1, :cond_1a

    sget v0, Lcom/android/server/sepunion/friends/util/LogFrs;->sCurLogLevel:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_b

    goto :goto_1a

    :cond_b
    array-length v0, p2

    if-lez v0, :cond_12

    invoke-static {p1, p2}, Lcom/android/server/sepunion/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_12
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->updateLogLevel()V

    if-eqz p1, :cond_1a

    sget v0, Lcom/android/server/sepunion/friends/util/LogFrs;->sCurLogLevel:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_b

    goto :goto_1a

    :cond_b
    array-length v0, p2

    if-lez v0, :cond_12

    invoke-static {p1, p2}, Lcom/android/server/sepunion/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_12
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return-object v0
.end method
