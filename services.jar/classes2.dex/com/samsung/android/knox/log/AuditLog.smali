.class public Lcom/samsung/android/knox/log/AuditLog;
.super Ljava/lang/Object;
.source "AuditLog.java"


# static fields
.field public static final ACTION_AUDIT_CRITICAL_SIZE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.AUDIT_CRITICAL_SIZE"

.field public static final ACTION_AUDIT_FULL_SIZE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.AUDIT_FULL_SIZE"

.field public static final ACTION_AUDIT_MAXIMUM_SIZE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.AUDIT_MAXIMUM_SIZE"

.field public static final ACTION_DUMP_LOG_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.DUMP_LOG_RESULT"

.field public static final ACTION_LOG_EXCEPTION:Ljava/lang/String; = "com.samsung.android.knox.intent.action.LOG_EXCEPTION"

.field public static final AUDIT_LOG_GROUP_APPLICATION:I = 0x5

.field public static final AUDIT_LOG_GROUP_EVENTS:I = 0x4

.field public static final AUDIT_LOG_GROUP_NETWORK:I = 0x3

.field public static final AUDIT_LOG_GROUP_SECURITY:I = 0x1

.field public static final AUDIT_LOG_GROUP_SYSTEM:I = 0x2

.field public static final AUDIT_LOG_SEVERITY_ALERT:I = 0x1

.field public static final AUDIT_LOG_SEVERITY_CRITICAL:I = 0x2

.field public static final AUDIT_LOG_SEVERITY_ERROR:I = 0x3

.field public static final AUDIT_LOG_SEVERITY_NOTICE:I = 0x5

.field public static final AUDIT_LOG_SEVERITY_WARNING:I = 0x4

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_UNKNOWN:I = -0x7d0

.field public static final EXTRA_AUDIT_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.AUDIT_RESULT"

.field private static final TAG:Ljava/lang/String; = "AuditLog"

.field private static mAuditLog:Lcom/samsung/android/knox/log/AuditLog;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private mAuditService:Lcom/samsung/android/knox/log/IAuditLog;

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/log/AuditLog;->mSync:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static a(IZILjava/lang/String;Ljava/lang/String;)V
    .registers 15

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "AuditLog.a"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v1, "auditlog"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/log/IAuditLog$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v1

    if-eqz v1, :cond_2e

    const/4 v4, 0x1

    move-object v2, v1

    move-object v3, v0

    move v5, p0

    move v6, p1

    move v7, p2

    move-object v8, p3

    move-object v9, p4

    :try_start_22
    invoke-interface/range {v2 .. v9}, Lcom/samsung/android/knox/log/IAuditLog;->AuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_2e

    :catch_26
    move-exception v2

    const-string v3, "AuditLog"

    const-string v4, "Access to AuditLogger not allowed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    :goto_2e
    return-void
.end method

.method public static c(IZILjava/lang/String;Ljava/lang/String;)V
    .registers 15

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "AuditLog.c"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v1, "auditlog"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/log/IAuditLog$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v1

    if-eqz v1, :cond_2e

    const/4 v4, 0x2

    move-object v2, v1

    move-object v3, v0

    move v5, p0

    move v6, p1

    move v7, p2

    move-object v8, p3

    move-object v9, p4

    :try_start_22
    invoke-interface/range {v2 .. v9}, Lcom/samsung/android/knox/log/IAuditLog;->AuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_2e

    :catch_26
    move-exception v2

    const-string v3, "AuditLog"

    const-string v4, "Access to AuditLogger not allowed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    :goto_2e
    return-void
.end method

.method public static createInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/log/AuditLog;
    .registers 4

    new-instance v0, Lcom/samsung/android/knox/log/AuditLog;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/log/AuditLog;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    return-object v0
.end method

.method public static e(IZILjava/lang/String;Ljava/lang/String;)V
    .registers 15

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "AuditLog.e"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v1, "auditlog"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/log/IAuditLog$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v1

    if-eqz v1, :cond_2e

    const/4 v4, 0x3

    move-object v2, v1

    move-object v3, v0

    move v5, p0

    move v6, p1

    move v7, p2

    move-object v8, p3

    move-object v9, p4

    :try_start_22
    invoke-interface/range {v2 .. v9}, Lcom/samsung/android/knox/log/IAuditLog;->AuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_2e

    :catch_26
    move-exception v2

    const-string v3, "AuditLog"

    const-string v4, "Access to AuditLogger not allowed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    :goto_2e
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/log/AuditLog;
    .registers 5

    sget-object v0, Lcom/samsung/android/knox/log/AuditLog;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/log/AuditLog;->mAuditLog:Lcom/samsung/android/knox/log/AuditLog;

    if-nez v1, :cond_1d

    if-eqz p0, :cond_1d

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    new-instance v2, Lcom/samsung/android/knox/log/AuditLog;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/samsung/android/knox/log/AuditLog;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v2, Lcom/samsung/android/knox/log/AuditLog;->mAuditLog:Lcom/samsung/android/knox/log/AuditLog;

    :cond_1d
    sget-object v1, Lcom/samsung/android/knox/log/AuditLog;->mAuditLog:Lcom/samsung/android/knox/log/AuditLog;

    monitor-exit v0

    return-object v1

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private getService()Lcom/samsung/android/knox/log/IAuditLog;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mAuditService:Lcom/samsung/android/knox/log/IAuditLog;

    if-nez v0, :cond_10

    const-string v0, "auditlog"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/log/IAuditLog$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mAuditService:Lcom/samsung/android/knox/log/IAuditLog;

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mAuditService:Lcom/samsung/android/knox/log/IAuditLog;

    return-object v0
.end method

.method public static n(IZILjava/lang/String;Ljava/lang/String;)V
    .registers 15

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "AuditLog.n"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v1, "auditlog"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/log/IAuditLog$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v1

    if-eqz v1, :cond_2e

    const/4 v4, 0x5

    move-object v2, v1

    move-object v3, v0

    move v5, p0

    move v6, p1

    move v7, p2

    move-object v8, p3

    move-object v9, p4

    :try_start_22
    invoke-interface/range {v2 .. v9}, Lcom/samsung/android/knox/log/IAuditLog;->AuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_2e

    :catch_26
    move-exception v2

    const-string v3, "AuditLog"

    const-string v4, "Access to AuditLogger not allowed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    :goto_2e
    return-void
.end method

.method public static w(IZILjava/lang/String;Ljava/lang/String;)V
    .registers 15

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "AuditLog.w"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v1, "auditlog"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/log/IAuditLog$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v1

    if-eqz v1, :cond_2e

    const/4 v4, 0x4

    move-object v2, v1

    move-object v3, v0

    move v5, p0

    move v6, p1

    move v7, p2

    move-object v8, p3

    move-object v9, p4

    :try_start_22
    invoke-interface/range {v2 .. v9}, Lcom/samsung/android/knox/log/IAuditLog;->AuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_2e

    :catch_26
    move-exception v2

    const-string v3, "AuditLog"

    const-string v4, "Access to AuditLogger not allowed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    :goto_2e
    return-void
.end method


# virtual methods
.method public disableAuditLog()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AuditLog.disableAuditLog"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/log/AuditLog;->getService()Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mAuditService:Lcom/samsung/android/knox/log/IAuditLog;

    iget-object v1, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/log/IAuditLog;->disableAuditLog(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    const-string v1, "AuditLog"

    const-string v2, "Failed to disableAuditLog"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public disableIPTablesLogging()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AuditLog.disableIPTablesLogging"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/log/AuditLog;->getService()Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mAuditService:Lcom/samsung/android/knox/log/IAuditLog;

    iget-object v1, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/log/IAuditLog;->disableIPTablesLogging(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    const-string v1, "AuditLog"

    const-string v2, "Failed to disableIPTablesLogging"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public dumpLogFile(JJLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    .registers 16

    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AuditLog.dumpLogFile"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/log/AuditLog;->getService()Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v0

    if-eqz v0, :cond_22

    :try_start_d
    iget-object v1, p0, Lcom/samsung/android/knox/log/AuditLog;->mAuditService:Lcom/samsung/android/knox/log/IAuditLog;

    iget-object v2, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/samsung/android/knox/log/IAuditLog;->dumpLogFile(Lcom/samsung/android/knox/ContextInfo;JJLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_19} :catch_1a

    return v0

    :catch_1a
    move-exception v0

    const-string v1, "AuditLog"

    const-string v2, "Failed to dumpLogFile"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public enableAuditLog()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AuditLog.enableAuditLog"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/log/AuditLog;->getService()Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mAuditService:Lcom/samsung/android/knox/log/IAuditLog;

    iget-object v1, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/log/IAuditLog;->enableAuditLog(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    const-string v1, "AuditLog"

    const-string v2, "Failed to enableAuditLog"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public enableIPTablesLogging()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AuditLog.enableIPTablesLogging"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/log/AuditLog;->getService()Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mAuditService:Lcom/samsung/android/knox/log/IAuditLog;

    iget-object v1, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/log/IAuditLog;->enableIPTablesLogging(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    const-string v1, "AuditLog"

    const-string v2, "Failed to enableIPTablesLogging"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public getAuditLogRules()Lcom/samsung/android/knox/log/AuditLogRulesInfo;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AuditLog.getAuditLogRules"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/log/AuditLog;->getService()Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v0

    if-eqz v0, :cond_31

    const-string v0, "25"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2a

    :try_start_18
    iget-object v1, p0, Lcom/samsung/android/knox/log/AuditLog;->mAuditService:Lcom/samsung/android/knox/log/IAuditLog;

    iget-object v2, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/log/IAuditLog;->getAuditLogRules(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    move-result-object v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_20} :catch_21

    return-object v1

    :catch_21
    move-exception v1

    const-string v2, "AuditLog"

    const-string v3, "Failed to getAuditLogFilter"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    :cond_2a
    const-string v1, "AuditLog"

    const-string v2, "getAuditLogRules() : This device doesn\'t support this API."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    :goto_31
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCriticalLogSize()I
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AuditLog.getCriticalLogSize"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/log/AuditLog;->getService()Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mAuditService:Lcom/samsung/android/knox/log/IAuditLog;

    iget-object v1, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/log/IAuditLog;->getCriticalLogSize(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return v0

    :catch_17
    move-exception v0

    const-string v1, "AuditLog"

    const-string v2, "Failed to get current log size"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentLogFileSize()I
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AuditLog.getCurrentLogFileSize"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/log/AuditLog;->getService()Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mAuditService:Lcom/samsung/android/knox/log/IAuditLog;

    iget-object v1, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/log/IAuditLog;->getCurrentLogFileSize(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return v0

    :catch_17
    move-exception v0

    const-string v1, "AuditLog"

    const-string v2, "Failed to get current log size"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public getMaximumLogSize()I
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AuditLog.getMaximumLogSize"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/log/AuditLog;->getService()Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mAuditService:Lcom/samsung/android/knox/log/IAuditLog;

    iget-object v1, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/log/IAuditLog;->getMaximumLogSize(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return v0

    :catch_17
    move-exception v0

    const-string v1, "AuditLog"

    const-string v2, "Failed to get current log size"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public isAuditLogEnabled()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AuditLog.isAuditLogEnabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/log/AuditLog;->getService()Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mAuditService:Lcom/samsung/android/knox/log/IAuditLog;

    iget-object v1, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/log/IAuditLog;->isAuditLogEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return v0

    :catch_17
    move-exception v0

    const-string v1, "AuditLog"

    const-string v2, "Failed to isAuditLogEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public isIPTablesLoggingEnabled()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AuditLog.isIPTablesLoggingEnabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/log/AuditLog;->getService()Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mAuditService:Lcom/samsung/android/knox/log/IAuditLog;

    iget-object v1, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/log/IAuditLog;->isIPTablesLoggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return v0

    :catch_17
    move-exception v0

    const-string v1, "AuditLog"

    const-string v2, "Failed to isIPTablesLoggingEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public setAuditLogRules(Lcom/samsung/android/knox/log/AuditLogRulesInfo;)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AuditLog.setAuditLogRules"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/log/AuditLog;->getService()Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v0

    if-eqz v0, :cond_31

    const-string v0, "25"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_29

    :try_start_17
    iget-object v1, p0, Lcom/samsung/android/knox/log/AuditLog;->mAuditService:Lcom/samsung/android/knox/log/IAuditLog;

    iget-object v2, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/log/IAuditLog;->setAuditLogRules(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/log/AuditLogRulesInfo;)Z

    move-result v1
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1f} :catch_20

    return v1

    :catch_20
    move-exception v1

    const-string v2, "AuditLog"

    const-string v3, "Failed to setAuditLogFilter"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    :cond_29
    const-string v1, "AuditLog"

    const-string/jumbo v2, "setAuditLogRules() : This device doesn\'t support this API."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    :goto_31
    const/4 v0, 0x0

    return v0
.end method

.method public setCriticalLogSize(I)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AuditLog.setCriticalLogSize"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/log/AuditLog;->getService()Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v0

    if-eqz v0, :cond_2d

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mAuditService:Lcom/samsung/android/knox/log/IAuditLog;

    iget-object v1, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/log/IAuditLog;->setCriticalLogSize(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    const-string v1, "AuditLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to setCriticalLogSize size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    const/4 v0, 0x0

    return v0
.end method

.method public setMaximumLogSize(I)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AuditLog.setMaximumLogSize"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/log/AuditLog;->getService()Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v0

    if-eqz v0, :cond_2d

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mAuditService:Lcom/samsung/android/knox/log/IAuditLog;

    iget-object v1, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/log/IAuditLog;->setMaximumLogSize(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    const-string v1, "AuditLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to setMaximumLogSize size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    const/4 v0, 0x0

    return v0
.end method
