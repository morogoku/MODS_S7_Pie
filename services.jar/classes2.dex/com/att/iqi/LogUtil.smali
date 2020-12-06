.class public Lcom/att/iqi/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field private static sDebug:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/att/iqi/LogUtil;->sDebug:Z

    const-string v0, "IQIConcierge"

    sput-object v0, Lcom/att/iqi/LogUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableLogging(Z)V
    .registers 1

    sput-boolean p0, Lcom/att/iqi/LogUtil;->sDebug:Z

    return-void
.end method

.method public static isLoggingEnabled()Z
    .registers 1

    sget-boolean v0, Lcom/att/iqi/LogUtil;->sDebug:Z

    return v0
.end method

.method public static logd(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/att/iqi/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logd(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    sget-object v0, Lcom/att/iqi/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static loge(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/att/iqi/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    sget-object v0, Lcom/att/iqi/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static logw(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/att/iqi/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    sget-object v0, Lcom/att/iqi/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
