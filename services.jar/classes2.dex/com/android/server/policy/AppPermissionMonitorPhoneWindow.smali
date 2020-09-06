.class public Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;
.super Ljava/lang/Object;
.source "AppPermissionMonitorPhoneWindow.java"


# static fields
.field private static final APM_FLAG_OVERLAY:I = 0x400000

.field private static final APP_UID:I = 0x2710

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEFAULT_MONITOR:Ljava/lang/String; = "5242951"

.field private static final LOG_TAG_APM:Ljava/lang/String; = "PhoneWindow_APM : "

.field private static final TIME_INTERVAL:J = 0xea60L


# instance fields
.field private mAPM:Landroid/os/IPermissionMonitor;

.field private mAppPermMonitor:Ljava/lang/String;

.field private mCallingCacheDisplay:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private final mIsAppPermissionMonitorSupported:Z

.field private mIsMonitoredFeature:Z

.field private mSEAMS:Lcom/android/server/SEAMService;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->mCallingCacheDisplay:Landroid/util/LruCache;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->mAPM:Landroid/os/IPermissionMonitor;

    const-string v0, "SEAMService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/SEAMService;

    iput-object v0, p0, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->mSEAMS:Lcom/android/server/SEAMService;

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_APP_PERMISSION_MONITOR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->mIsAppPermissionMonitorSupported:Z

    return-void
.end method

.method private isCalledPackage(Ljava/lang/String;)Z
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->isExpired(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->mCallingCacheDisplay:Landroid/util/LruCache;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "PhoneWindow_APM : "

    const-string v3, "isCalledPackage return false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_1c
    const-string v2, "PhoneWindow_APM : "

    const-string v3, "isCalledPackage return true"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2
.end method

.method private isExpired(Ljava/lang/String;J)Z
    .registers 9

    iget-object v0, p0, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->mCallingCacheDisplay:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v1, p2, v1

    const-wide/32 v3, 0xea60

    cmp-long v1, v1, v3

    if-gez v1, :cond_23

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long/2addr v1, p2

    cmp-long v1, v1, v3

    if-ltz v1, :cond_21

    goto :goto_23

    :cond_21
    const/4 v1, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v1, 0x1

    :goto_24
    return v1
.end method


# virtual methods
.method public checkUser(ILjava/lang/String;)I
    .registers 6

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v1, 0x0

    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_18

    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne p1, v2, :cond_15

    return p1

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_18
    const/4 v1, -0x1

    return v1
.end method

.method checkingEnforcing(I)Z
    .registers 6

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v0

    if-nez v0, :cond_48

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_48

    :try_start_18
    iget-object v0, p0, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->mSEAMS:Lcom/android/server/SEAMService;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->mSEAMS:Lcom/android/server/SEAMService;

    iget-object v1, p0, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/SEAMService;->getAPMStatus(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_30

    const-string v0, "PhoneWindow_APM : "

    const-string v1, "Enforcing User"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2e} :catch_31

    const/4 v0, 0x1

    return v0

    :cond_30
    goto :goto_48

    :catch_31
    move-exception v0

    const-string v1, "PhoneWindow_APM : "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enforcing User :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    :goto_48
    const/4 v0, 0x0

    return v0
.end method

.method public isEnforcedInUser(Landroid/content/pm/ApplicationInfo;I)I
    .registers 4

    if-lez p2, :cond_d

    invoke-virtual {p0, p2}, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->checkingEnforcing(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->isWhitelistedAppInUser(Landroid/content/pm/ApplicationInfo;I)I

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public isWhitelistedAppInUser(Landroid/content/pm/ApplicationInfo;I)I
    .registers 5

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_7

    return p2

    :cond_7
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    const-string v1, "apm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->apmWL:Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->apmWL:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->checkUser(ILjava/lang/String;)I

    move-result v0

    return v0

    :cond_1c
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    const-string/jumbo v1, "untrusted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    const-string v1, "apm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    return p2

    :cond_32
    const/4 v0, -0x1

    return v0
.end method

.method public sendNotificationForAppPermissionMonitor(II)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->mIsAppPermissionMonitorSupported:Z

    if-eqz v1, :cond_b4

    invoke-direct {p0, v0}, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->isCalledPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b4

    const-string/jumbo v1, "persist.app.permission.monitor"

    const-string v2, "5242951"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->mAppPermMonitor:Ljava/lang/String;

    const/high16 v1, 0x400000

    :try_start_33
    iget-object v2, p0, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->mAppPermMonitor:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    and-int/2addr v2, v1

    if-lez v2, :cond_3e

    const/4 v2, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v2, 0x0

    :goto_3f
    iput-boolean v2, p0, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->mIsMonitoredFeature:Z
    :try_end_41
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_41} :catch_42

    goto :goto_5d

    :catch_42
    move-exception v2

    const-string v3, "PhoneWindow_APM : "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception notify permission monitor service about access from APM_FLAG_OVERLAY nfe = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5d
    iget-boolean v2, p0, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->mIsMonitoredFeature:Z

    if-eqz v2, :cond_b4

    const/16 v2, 0x2710

    if-lt p2, v2, :cond_b4

    :try_start_65
    iget-object v2, p0, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->mAPM:Landroid/os/IPermissionMonitor;

    if-nez v2, :cond_76

    const-string/jumbo v2, "permission.monitor"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPermissionMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPermissionMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->mAPM:Landroid/os/IPermissionMonitor;

    :cond_76
    iget-object v2, p0, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->mAPM:Landroid/os/IPermissionMonitor;

    invoke-interface {v2, p2, p1, v1}, Landroid/os/IPermissionMonitor;->sendAPMNotification(III)V
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_7b} :catch_98
    .catch Ljava/lang/NullPointerException; {:try_start_65 .. :try_end_7b} :catch_7c

    goto :goto_b3

    :catch_7c
    move-exception v1

    const-string v2, "PhoneWindow_APM : "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception notify permission monitor service about access from APM_FLAG_OVERLAY ex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4

    :catch_98
    move-exception v1

    const-string v2, "PhoneWindow_APM : "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception notify permission monitor service about access from APM_FLAG_OVERLAY re = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b3
    nop

    :cond_b4
    :goto_b4
    return-void
.end method
