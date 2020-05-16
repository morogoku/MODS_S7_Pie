.class public Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;
.super Ljava/lang/Object;
.source "DiagMonSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$DiagMonHelper;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;

.field private static config:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

.field private static elp:Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;

.field private static instance:Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DIAGMON_SDK"

    sput-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->config:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/IssueBuilder;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->issueReport(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/IssueBuilder;)Z

    move-result v0

    return v0
.end method

.method protected static configChecker(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->TAG:Ljava/lang/String;

    const-string v2, "Configuration is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getServiceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->TAG:Ljava/lang/String;

    const-string v2, "ServiceId is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getAgree()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->TAG:Ljava/lang/String;

    const-string v2, "Not Agreed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static getSDKVer()Ljava/lang/String;
    .locals 1

    const-string v0, "1.1"

    return-object v0
.end method

.method private static issueReport(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/IssueBuilder;)Z
    .locals 5

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->instance:Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->TAG:Ljava/lang/String;

    const-string v2, "DiagMonSDK is null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->TAG:Ljava/lang/String;

    const-string v2, "DiagMonSDK is ok"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->config:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getAgree()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->TAG:Ljava/lang/String;

    const-string v2, "not agreed"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Agreement is ok - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->config:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v3}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getAgree()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->config:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getServiceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->TAG:Ljava/lang/String;

    const-string v2, "serviceId is empty"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serviceId is ok - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->config:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v3}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getServiceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->config:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getLogList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_3

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->TAG:Ljava/lang/String;

    const-string v2, "No log List"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logList size is ok - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->config:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v4}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getLogList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/provider/IssueBuilder;->getResultCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->TAG:Ljava/lang/String;

    const-string v2, "ResultCode is empty"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResultCode is ok - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/provider/IssueBuilder;->getResultCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->config:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonUtil;->makeBundle(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;Lcom/sec/android/diagmonagent/log/provider/IssueBuilder;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->TAG:Ljava/lang/String;

    const-string v1, "SendBroadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static setConfiguration(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;
    .locals 3

    const-class v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->configChecker(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->TAG:Ljava/lang/String;

    const-string v2, "DiagMonConfig can\'t be set"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    invoke-direct {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;-><init>()V

    sput-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->instance:Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    sput-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->config:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    new-instance v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;

    invoke-direct {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;-><init>()V

    sput-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->elp:Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->elp:Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;

    invoke-virtual {v1, p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;->setConfiguration(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)V

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->instance:Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
